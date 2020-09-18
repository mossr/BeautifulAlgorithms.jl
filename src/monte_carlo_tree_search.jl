struct MDPᴳ γ; 𝒮; 𝒜; T; R; G end

struct MonteCarloTreeSearch
    𝒫::MDPᴳ # problem with generative model
    N # visit counts
    Q # action value estimates
    d # depth
    k_max # number of simulations
    c # exploration constant
    π # rollout policy
end

function (π::MonteCarloTreeSearch)(s)
    for k in 1:π.k_max
        simulate!(π, s)
    end
    return argmax([π.Q[(s,a)] for a in π.𝒫.𝒜])
end

function simulate!(π::MonteCarloTreeSearch, s, d=π.d)
    if d ≤ 0
        return 0.0
    end
    (𝒫, N, Q, c) = (π.𝒫, π.N, π.Q, π.c)
    (𝒜, G, γ) = (𝒫.𝒜, 𝒫.G, 𝒫.γ)
    if !haskey(N, (s, first(𝒜)))
        for a in 𝒜
            N[(s,a)] = 0
            Q[(s,a)] = 0.0
        end
        return rollout(𝒫, s, π.π, d)
    end
    a = explore(π, s)
    s′, r = G(s, a)
    q = r + γ*simulate!(π, s′, d-1)
    N[(s,a)] += 1
    Q[(s,a)] += (q-Q[(s,a)])/N[(s,a)]
    return q
end

function explore(π::MonteCarloTreeSearch, s)
    (𝒜, N, Q, c) = (π.𝒫.𝒜, π.N, π.Q, π.c)
    Ns = sum(N[(s,a)] for a in 𝒜)
    Ns = (Ns == 0) ? Inf : Ns
    return 𝒜[argmax([Q[(s,a)] + c*sqrt(log(Ns)/N[(s,a)]) for a in 𝒜])]
end

function rollout(𝒫, s, π, d)
    if d ≤ 0
        return 0.0
    end
    a = π(s)
    s′, r = 𝒫.G(s, a)
    return r + 𝒫.γ*rollout(𝒫, s′, π, d-1)
end
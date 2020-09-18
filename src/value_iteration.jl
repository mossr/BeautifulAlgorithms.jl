struct MDP γ; 𝒮; 𝒜; T; R end

function lookahead(𝒫::MDP, U::Vector, s, a)
    (𝒮, T, R, γ) = (𝒫.𝒮, 𝒫.T, 𝒫.R, 𝒫.γ)
    return R(s,a) + γ*sum(T(s,a,s′)*U[i] for (i,s′) in enumerate(𝒮))
end

function value_iteration(𝒫::MDP, k_max)
    (𝒮, 𝒜, T, R, γ) = (𝒫.𝒮, 𝒫.𝒜, 𝒫.T, 𝒫.R, 𝒫.γ)
    U = [0.0 for s in 𝒮]
    for k = 1:k_max
        U′ = [maximum(lookahead(𝒫, U, s, a) for a in 𝒜) for s in 𝒮]
        U = U′
    end
    return U
end

policy(s; 𝒫, U) = findmax([lookahead(𝒫, U, s, a) for a in 𝒫.𝒜])[end]
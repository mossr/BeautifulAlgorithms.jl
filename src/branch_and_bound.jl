struct MDP γ; 𝒮; 𝒜; T; R end

function branch_and_bound(𝒫::MDP, s, d, 𝑈₋, 𝑄⁻)
    (𝒮, T, R, γ) = (𝒫.𝒮, 𝒫.T, 𝒫.R, 𝒫.γ)
    if d ≤ 0
        return (a=nothing, u=𝑈₋(s))
    end
    best = (a=nothing, u=-Inf)
    𝑈′ = s -> branch_and_bound(𝒫, s, d-1, 𝑈₋, 𝑄⁻).u
    for a in 𝒫.𝒜
        if 𝑄⁻(s,a) < best.u
            return best # prune
        end
        u = R(s,a) + γ*sum(T(s,a,s′)*𝑈′(s′) for s′ in 𝒮)
        if u > best.u
            best = (a=a, u=u)
        end
    end
    return best
end
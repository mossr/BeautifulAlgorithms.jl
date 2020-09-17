using Distributions, LinearAlgebra

struct POMDP γ; 𝒮; 𝒜; 𝒪; T; R; O end

function particle_filter(belief::Vector, 𝒫::POMDP, a, o)
    (T, O) = (𝒫.T, 𝒫.O)
    𝐬′ = [rand(T(s, a)) for s in belief]
    𝐰 = [O(a, s′, o) for s′ in 𝐬′]
    return 𝐬′[rand(Categorical(normalize(𝐰,1)), length(𝐬′))]
end
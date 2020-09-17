using Distributions, LinearAlgebra

struct POMDP γ; 𝒮; 𝒜; 𝒪; T; R; O end

function particle_filter(𝐛::Vector, 𝒫::POMDP, a, o)
    (T, O) = (𝒫.T, 𝒫.O)
    𝐬′ = rand.(T.(𝐛, a))
    𝐰 = O.(a, 𝐬′, o)
    D = Categorical(normalize(𝐰, 1))
    return 𝐬′[rand(D, length(𝐬′))]
end
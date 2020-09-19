using LinearAlgebra

ReLU(z) = max(z, 0)

function neural_network(x, 𝐕, 𝐰, φ, g=ReLU)
    𝐡 = map(𝐯ⱼ -> g(𝐯ⱼ ⋅ φ(x)), 𝐕)
    𝐰 ⋅ 𝐡
end
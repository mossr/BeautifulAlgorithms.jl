using LinearAlgebra

function multi_layer_neural_network(x, 𝐖, φ, 𝐠)
    𝐡ᵢ = φ(x)
    for (i,g) in enumerate(𝐠)
        𝐡ᵢ = map(𝐰ⱼ -> g(𝐰ⱼ ⋅ 𝐡ᵢ), 𝐖[i])
    end
    𝐡ᵢ ⋅ last(𝐖)
end
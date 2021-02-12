using LinearAlgebra
using Statistics

function k_means_clustering(φ, 𝒟, K; T=100)
    local z
    μ = rand(first.(𝒟), K)
    for t in 1:T
        z = Dict(map(k->Pair(k, []), 1:K))
        for i in 1:length(𝒟)
            xᵢ = first(𝒟[i])
            push!(z[argmin([norm(φ(xᵢ) - μₖ)^2 for μₖ in μ])], i)
        end
        for k in 1:length(μ)
            if !isempty(z[k])
                μ[k] = mean(φ(first(𝒟[i])) for i in z[k])
            end
        end
    end
    return (z, μ)
end
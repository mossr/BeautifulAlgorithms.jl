using Statistics

function k_means_clustering(φ, 𝒟, dist, K; T=100)
    μ = rand(first.(𝒟), K)
    z = Dict(map(k->Pair(k, []), 1:K))
    for t in 1:T
        for i in 1:length(𝒟)
            xᵢ = first(𝒟[i])
            push!(z[argmin([dist(φ(xᵢ), μₖ) for μₖ in μ])], i)
        end
        for k in 1:length(μ)
            if !isempty(z[k])
                μ[k] = mean(φ(first(𝒟[i])) for i in z[k])
            end
        end
    end
    return μ
end
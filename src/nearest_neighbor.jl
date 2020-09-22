function nearest_neighbor(x′, φ, 𝒟, dist)
    𝒟[argmin([dist(φ(x), φ(x′)) for (x,y) in 𝒟])][end]
end
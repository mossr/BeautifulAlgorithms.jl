function k_nearest_neighbors(x′, φ, 𝒟, dist, k)
    last.(𝒟[partialsortperm([dist(φ(x), φ(x′)) for (x,y) in 𝒟], 1:k)])
end
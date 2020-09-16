using LinearAlgebra

dist_manhattan(𝐯, 𝐯′) = norm(𝐯 - 𝐯′, 1)
dist_euclidean(𝐯, 𝐯′) = norm(𝐯 - 𝐯′, 2)
dist_supremum(𝐯, 𝐯′)  = norm(𝐯 - 𝐯′, Inf)

function nearest_neighbors(x′, φ, 𝒟train, dist)
    𝒟train[argmin([dist(φ(x), φ(x′)) for (x,y) in 𝒟train])][end]
end
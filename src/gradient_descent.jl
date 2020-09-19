using Statistics, LinearAlgebra

function gradient_descent(𝒟train, φ, ∇loss; η=0.1, T=100)
    𝐰 = zeros(length(φ(𝒟train[1][1])))
    for t in 1:T
        𝐰 = 𝐰 .- η*mean(∇loss(x, y, 𝐰, φ) for (x,y) ∈ 𝒟train)
    end
    return 𝐰
end
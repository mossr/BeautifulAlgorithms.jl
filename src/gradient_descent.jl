using Statistics, LinearAlgebra
function gradient_descent(𝒟train, φ; η=0.1, T=100)
    𝐰 = zeros(length(φ(𝒟train[1][1])))
    for t in 1:T
        𝐰 = 𝐰 .- η*mean(2(𝐰⋅φ(x) - y)*φ(x) for (x,y) ∈ 𝒟train)
    end
    return 𝐰
end
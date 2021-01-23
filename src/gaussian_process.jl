using Distributions
using LinearAlgebra

struct GaussianProcess
    m::Function # mean function
    k::Function # covariance function
end

𝛍(X, m) = [m(𝐱) for 𝐱 in X]
𝚺(X, k) = [k(𝐱,𝐱′) for 𝐱 in X, 𝐱′ in X]

function Base.rand(𝒢::GaussianProcess, X, inflation=1e-6)
    𝒩 = MvNormal(𝛍(X, 𝒢.m), 𝚺(X, 𝒢.k) + inflation*I)
    return rand(𝒩)
end
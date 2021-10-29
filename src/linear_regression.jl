using LinearAlgebra

function linear_regression(X::Vector{<:Real}, y)
    θ = pinv(X)*y
    return x -> θ'x
end

function linear_regression(X::Vector{<:Vector}, y)
    𝐗 = mapreduce(x->[1; x]', vcat, X)
    𝛉 = pinv(𝐗)*y
    return x -> 𝛉⋅[1; x]
end
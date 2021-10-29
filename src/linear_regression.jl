using LinearAlgebra

function linear_regression(X, y)
    𝐗 = mapreduce(x->[1; x]', vcat, X)
    𝛉 = pinv(𝐗)*y
    return x -> 𝛉⋅[1; x]
end
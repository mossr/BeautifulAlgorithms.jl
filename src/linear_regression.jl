using LinearAlgebra

function linear_regression(X, y)
    n, m = length(first(X)), length(X)
    𝐗 = [j==0 ? 1.0 : X[i][j] for i in 1:m, j in 0:n]
    𝛉 = pinv(𝐗)*y
    return x -> 𝛉⋅[1; x]
end
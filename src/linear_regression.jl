function linear_regression(X, y)
    𝐗 = [ones(size(y)) X]
    θ = 𝐗\y
    return x -> [1;x]'θ
end
function ridge_regression(X, y, k)
    𝐗 = mapreduce(x->[1;x]', vcat, X)
    θ = (𝐗'𝐗 + k*I)\𝐗'y
    return x -> [1;x]'θ
end
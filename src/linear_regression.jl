function linear_regression(X, y)
    𝐗 = mapreduce(x->[1;x]', vcat, X)
    𝛉 = 𝐗\y
    return x -> [1;x]'𝛉
end
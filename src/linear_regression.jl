function linear_regression(X, y)
    𝐗 = mapreduce(x->[1;x]', vcat, X)
    θ = 𝐗\y
    return x -> [ones(size(x,1)) x]*θ
end

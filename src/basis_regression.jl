function basis_regression(X, y, φ)
    B = mapreduce(x->φ(x)', vcat, X)
    θ = B\y
    return x -> φ(x)'θ
end
using LinearAlgebra

function radial_basis_regression(X, y; σ=1, p=2)
    ψ = r->exp(-r^2 / (2σ^2))
    φ(x) = [ψ(norm(x - c, p)) for c in X]
    B = mapreduce(x->φ(x)', vcat, X)
    θ = B\y
    return x -> φ(x)'θ
end
using LinearAlgebra

function radial_basis_regression(X, y; σ=1, p=2)
    ψ = r->exp(-r^2 / (2σ^2))
    bases = [x->ψ(norm(x - c, p)) for c in X]
    B = [b(x) for x in X, b in bases]
    θ = pinv(B)*y
    return x -> sum(θ[i] * bases[i](x) for i in 1:length(θ))
end
σ(X, θ) = 1 ./ (1 .+ exp.(-X*θ))

predict(f, x) = f(x) > 0.5

function logistic_regression(X, y; T=1000, α=1e-4)
    𝐗 = mapreduce(x->[1;x]', vcat, X)
    θ = zeros(2)
    for iteration in 1:T
        θ = θ + α * 𝐗' * (y - σ(𝐗,θ))
    end
    return x -> σ([1;x]', θ)
end
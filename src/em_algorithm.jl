using Distributions, LinearAlgebra

function e_step(θ, x)
    φ, μ, Σ = θ.φ, θ.μ, θ.Σ
    n, k = length(x), length(φ)
    w = Matrix{Real}(undef, n, k)
    for i in 1:n
        for j in 1:k
            normalization = sum(pdf(MvNormal(μ[l], Σ[l]), x[i]) * φ[l] for l in 1:k)
            w[i,j] = (pdf(MvNormal(μ[j], Σ[j]), x[i]) * φ[j]) / normalization
        end
    end
    return w
end

function m_step!(θ, w, x)
    φ, μ, Σ = θ.φ, θ.μ, θ.Σ
    n, k = length(x), length(φ)
    for j in 1:k
        sum_w = sum(w[i,j] for i in 1:n)
        φ[j] = 1/n * sum_w
        μ[j] = sum(w[i,j]*x[i] for i in 1:n) / sum_w
        Σ[j] = sum(w[i,j]*(x[i]-μ[j])*(x[i]-μ[j])' for i in 1:n) / sum_w |> Hermitian
    end
    return θ
end

function em_algorithm(x, θ; tol=eps(Float32))
    while true
        θ₋₁ = deepcopy(θ)
        w = e_step(θ, x)
        m_step!(θ, w, x)
        all([norm(θ₋₁.μ - θ.μ), norm(θ₋₁.Σ - θ.Σ), norm(θ₋₁.φ - θ.φ)] .< tol) && break
    end
    return θ
end

classify(xᵢ, θ) = argmax([pdf(MvNormal(θ.μ[j], θ.Σ[j]), xᵢ) for j in 1:length(θ.μ)])
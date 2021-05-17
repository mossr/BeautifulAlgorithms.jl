using Random
using Distributions

@testset "The EM algorithm" begin
    Random.seed!(1)

    φ = [0.2, 0.8] # ф (see: https://en.wikipedia.org/wiki/Phi)
    z = Multinomial(1, φ)
    x_z₁ = MvNormal([1, 1], [2 0; 0 2])
    x_z₂ = MvNormal([4, 4], [1 0.5; 0.5 1])
    n = 1000

    x₁_samples = []
    x₂_samples = []
    for i in 1:n
        # Sample from Multinomial to determine which Gaussian to pick
        if rand(z)[1] == 1
            push!(x₁_samples, rand(x_z₁)) # Sample from (x | z = 1)
        else
            push!(x₂_samples, rand(x_z₂)) # Sample from (x | z = 2)
        end
    end

    permutation = randperm(n)
    x = vcat(x₁_samples, x₂_samples)[permutation]
    y = vcat(ones(length(x₁_samples)), 2ones(length(x₂_samples)))[permutation]

    # Implied k=2
    φ̂ = [0.5, 0.5]
    μ̂ = [randn(2), randn(2)]
    Σ̂ = [randn(2,2), randn(2,2)]

    # Ensure symmetric, PSD, and Hermitian
    Σ̂[1] = Hermitian(Σ̂[1]'Σ̂[1] + I)
    Σ̂[2] = Hermitian(Σ̂[2]'Σ̂[2] + I)

    # Full parameters
    θ = (φ=φ̂, μ=μ̂, Σ=Σ̂)

    classify(xᵢ, θ) = argmax([pdf(MvNormal(θ.μ[j], θ.Σ[j]), xᵢ) for j in 1:length(θ.μ)])

    θ = em_algorithm(x, θ)
    ŷ = map(xᵢ -> classify(xᵢ, θ), x)
    accuracy = sum(y .== ŷ) / length(y)

    @test abs(θ.φ[1] - φ[1]) < 1e-2
    @test abs(θ.μ[2][1] - x_z₂.μ[1]) < 1e-1
    @test abs(θ.Σ[2][1] - x_z₂.Σ[1]) < 1e-1
    @test accuracy == 0.952
end

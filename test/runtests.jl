using Test
using BeautifulAlgorithms


@testset "Cross-Entropy Method" begin
    import Random: seed!
    import LinearAlgebra: norm
    seed!(0)
    f = x->norm(x)
    μ = [0.5, 1.5]
    Σ = [1.0 0.2; 0.2 2.0]
    P = MvNormal(μ, Σ)
    k_max = 10
    P = cross_entropy_method(f, P, k_max)

    @test P.μ ≈ [-6.13623e-7, -1.37216e-6] 
end


@testset "Value Iteration" begin
    P = MDP(0.95, [1:100;], [+1, -1], (s,a,s′)->s + a == s′ ? 0.7 : 0, (s,a)->s == 50 ? 1 : 0)

    U = value_iteration(P, 100)

    reshape(U, 10, 10)

    # Optimal policy (𝒜 = [+1, -1])
    @test all(policy.(1:50, 𝒫=P, U=U) .== 1) # go forwards toward 50
    @test all(policy.(51:100, 𝒫=P, U=U) .== 2) # go backwards toward 50
end

using Test
using BeautifulAlgorithms


@testset "Cross-Entropy Method" begin
    using Distributions
    import Random: seed!
    import LinearAlgebra: norm
    seed!(0)
    f = x->norm(x)
    μ = [0.5, 1.5]
    Σ = [1.0 0.2; 0.2 2.0]
    P = MvNormal(μ, Σ)
    k_max = 10
    P = cross_entropy_method(f, P, k_max)

    @test isapprox(P.μ, [-6.13623e-7, -1.37216e-6], atol=1e-5)
end


@testset "Value Iteration" begin
    P = MDP(0.95, [1:100;], [+1, -1], (s,a,s′)->s + a == s′ ? 0.7 : 0, (s,a)->s == 50 ? 1 : 0)

    U = value_iteration(P, 100)

    reshape(U, 10, 10)

    # Optimal policy (𝒜 = [+1, -1])
    @test all(policy.(1:50, 𝒫=P, U=U) .== 1) # go forwards toward 50
    @test all(policy.(51:100, 𝒫=P, U=U) .== 2) # go backwards toward 50
end


@testset "Monte Carlo Tree Search" begin
    import Random: seed!
    seed!(0)

    𝒮 = [1:100;]
    𝒜 = [+1, -1]
    T = (s,a,s′)->s + a == s′ ? 0.7 : 0
    R = (s,a)->s == 50 ? 1 : 0
    G = (s, a)-> begin
        s′ = rand([s, s+a, s-a])
        r = R(s, a)
        return (s′, r)
    end
    P = MDPG(0.95, 𝒮, 𝒜, T, R, G)

    mcts = MonteCarloTreeSearch(P, Dict(), Dict(), 50, 1000, 1, s->rand(map(a->s+a, 𝒜)))

    @test mcts(1) == 1
    @test mcts(55) == 2
    @test mcts(100) == 1
end

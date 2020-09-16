using Test
using BeautifulAlgorithms


@testset "Gradient Descent" begin
    using Statistics
    using LinearAlgebra

    mutable struct Decay i end
    Base.:*(δη::Decay, x) = x/sqrt(δη.i+=1)

    loss_squared(x, y, 𝐰, φ) = (𝐰⋅φ(x) - y)^2
    mean_loss(𝐰, 𝒟train, φ, loss) = mean(loss(x, y, 𝐰, φ) for (x,y) ∈ 𝒟train)

    """
    Single-dimensional training input data.
    """
    function test_gradient_descent()
        𝒟train = [(3,4), (-1,3), (-1,0)]
        𝐰_opt = gradient_descent(𝒟train, x->x)
        y_opt = mean_loss(𝐰_opt, 𝒟train, x->x, loss_squared)
        return (𝐰_opt, y_opt)
    end

    """
    Decay learning rate η.
    """
    function test_gradient_descent_decay(T)
        # Decay learning rate
        𝒟train = [(3,4), (-1,3), (-1,0)]
        𝐰_opt = gradient_descent(𝒟train, x->x; η=Decay(0), T=T)
        y_opt = mean_loss(𝐰_opt, 𝒟train, x->x, loss_squared)
        return (𝐰_opt, y_opt)
    end

    """
    Multi-dimensional training data input.
    """
    function test_gradient_descent_multi()
        𝒟train = [([3,0.7],4), ([-1,0.3],3), ([-1,-3],0)]
        𝐰_opt = gradient_descent(𝒟train, x->x)
        y_opt = mean_loss(𝐰_opt, 𝒟train, x->x, loss_squared)
        return (𝐰_opt, y_opt)
    end

    𝐰, y = test_gradient_descent()
    @test 𝐰 ≈ [0.8181818181818182]
    @test y ≈ 5.878787878787879

    𝐰, y = test_gradient_descent_decay(30)
    @test 𝐰 ≈ [0.41794205540127405]
    @test y ≈ 6.466158060393507

    𝐰, y = test_gradient_descent_multi()
    @test 𝐰 ≈ [0.8314306533883896, -0.03036191401505953]
    @test y ≈ 5.876487733786738
end


@testset "Stochastic Gradeient Descent" begin
    Base.:*(δη::Decay, x) = x/sqrt(δη.i+=1)

    loss_squared(x, y, 𝐰, φ) = (𝐰⋅φ(x) - y)^2
    mean_loss(𝐰, 𝒟train, φ, loss) = mean(loss(x, y, 𝐰, φ) for (x,y) ∈ 𝒟train)

    function test_stochastic_gradient_descent()
        𝒟train = [([3,0.7],4), ([-1,0.3],3), ([-1,-3],0)]
        𝐰_opt = stochastic_gradient_descent(𝒟train, x->x; η=0.01)
        y_opt = mean_loss(𝐰_opt, 𝒟train, x->x, loss_squared)
        return (𝐰_opt, y_opt)
    end

    𝐰, y = test_stochastic_gradient_descent()

    @test 𝐰 ≈ [0.8286227687981166, -0.07376395387093937]
    @test y ≈ 5.882922020275335
end


@testset "One-Layer Neural Network" begin
    function test_neural_network(g=σ)
        x = 2
        φ = x -> [x, x^2, sqrt(abs(x))]
        𝐕 = [[2,-1,3], [3,0,1]]
        𝐰 = [+1, -1]
        neural_network(x, 𝐕, 𝐰, φ, g)
    end

    @test test_neural_network(σ) ≈ -0.013563772681566943
    @test test_neural_network(ReLU) ≈ -3.1715728752538093

    @test σ(0) == 0.5
    @test ReLU(1) == 1
    @test ReLU(-1) == 0
end


@testset "Nearest Neighbor" begin
    function test_nearest_neighbor()
        𝒟train = [([5,9],6),
                  ([5,5],7),
                  ([7,5],8),
                  ([9,9],10)]
        φ = x->x

        points = [[6.1,6.5], [9,6.5]]

        neighbor_manhattan = [nearest_neighbor(p, φ, 𝒟train, dist_manhattan) for p in points]
        @test neighbor_manhattan == [8, 10]

        neighbor_euclidean = [nearest_neighbor(p, φ, 𝒟train, dist_euclidean) for p in points]
        @test neighbor_euclidean == [8, 8]

        neighbor_supremum = [nearest_neighbor(p, φ, 𝒟train, dist_supremum) for p in points]
        @test neighbor_supremum == [7, 8]

        @test nearest_neighbor(0, x->x, [(0,0)], dist_manhattan) == 0
        @test dist_manhattan([0,0], [3,3]) == 6.0
        @test dist_euclidean([0,0], [3,3]) ≈ 4.242640687119285
        @test dist_supremum([0,0], [3,3]) == 3.0
    end

    test_nearest_neighbor()
end


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
    P = MDPᵣ(0.95, 𝒮, 𝒜, T, R, G)

    mcts = MonteCarloTreeSearch(P, Dict(), Dict(), 50, 1000, 1, s->rand(map(a->s+a, 𝒜)))

    @test mcts(1) == 1
    @test mcts(55) == 2
    @test mcts(100) == 1
end

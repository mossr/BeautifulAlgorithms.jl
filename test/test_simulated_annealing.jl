@testset "Simulated annealing" begin
    import Random: seed!
    seed!(0)

    f = x -> x^2
    k_max = 100
    t = k -> k_max/k - 1
    T = Normal(0, 1)
    x₀ = -10
    x_best = simulated_annealing(f, x₀, T, t, k_max)

    @test x_best ≈ 0.03216891139764366
    @test f(x_best) ≈ 0.0010348388605094484
end

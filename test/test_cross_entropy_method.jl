@testset "Cross-entropy method" begin
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

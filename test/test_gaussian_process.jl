@testset "Gaussian process" begin
    import Random: seed!
    seed!(0)

    𝒢 = GaussianProcess(m_zero, k_brownian)
    X = [0, 1]
    Y = rand(𝒢, X)

    @test Y ≈ [0.0006791074260357777, 0.8284138971066739]
end

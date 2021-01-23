@testset "Gaussian process kernels" begin
    import Random: seed!
    seed!(0)

    # Coverage
    GaussianProcess(m_zero, k_sqr_exp)
    GaussianProcess(m_zero, k_exp)
    GaussianProcess(m_zero, k_gamma_exp)
    GaussianProcess(m_zero, k_rat_quad)
    GaussianProcess(m_zero, k_nn)
    GaussianProcess(m_zero, k_brownian)

    @test true
end

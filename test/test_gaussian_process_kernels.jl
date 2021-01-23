@testset "Gaussian process kernels" begin
    import Random: seed!
    seed!(0)

    # Coverage
    X = [0, 1]
    rand(GaussianProcess(m_zero, k_sqr_exp), X)
    rand(GaussianProcess(m_zero, k_exp), X)
    rand(GaussianProcess(m_zero, k_gamma_exp), X)
    rand(GaussianProcess(m_zero, k_rat_quad), X)
    rand(GaussianProcess(m_zero, k_nn), X)
    rand(GaussianProcess(m_zero, k_brownian), X)

    @test true
end

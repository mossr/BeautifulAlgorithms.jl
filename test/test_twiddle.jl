@testset "Twiddle" begin
    f = X -> X[1]^2 + X[2]^2
    g = X -> X[1]*exp(-(X[1]^2 + X[2]^2))

    # Maximization.
    pf = twiddle(f, ones(2))
    @test f(pf) == Inf
    pg = twiddle(g, ones(2))
    @test isapprox(g(pg), 0.42888, atol=1e-5)

    # Minimization.
    pf = twiddle(X->-f(X), ones(2))
    @test f(pf) == 0.0
    pg = twiddle(X->-g(X), ones(2))
    @test isapprox(g(pg), -0.42888, atol=1e-5)
end

@testset "Basis regression" begin
    X = collect(1:5)
    y = [3, 4, 3, 6, -1]
    ϕ(x) = [1, x, x^2, x^3]

    f = basis_regression(X, y, ϕ)
    @test f(1) ≈ 3.285714285714497
end

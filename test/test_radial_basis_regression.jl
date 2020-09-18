@testset "Radial basis regression" begin
    D = [(1,1), (2,1), (3,3), (4,3)]
    X = map(first, D)
    y = map(last, D)
    f = radial_basis_regression(X, y)
    @test f(2.5) ≈ 1.9304121024661014
end

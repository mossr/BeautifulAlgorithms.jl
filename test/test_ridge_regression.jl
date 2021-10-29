@testset "Ridge regression" begin
    X = collect(1:5)
    y = [3, 4, 3, 6, -1]
    k = 0.77

    f = ridge_regression(X, y, k)
    # produces a "straight" horizontal line
    # so check that the swept values of x are all really close in difference
    @test all(isapprox.(diff(map(x->f(x), 1:10)), 0.00030994, atol=2))
end

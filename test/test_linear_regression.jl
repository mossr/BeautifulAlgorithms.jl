@testset "Linear regression" begin
    𝒟 = [(1,1), (2,3), (3,3), (4,4)]
    X = map(first, 𝒟)
    y = map(last, 𝒟)

    f = linear_regression(X,y)
    @test f(3) ≈ 3.2
end

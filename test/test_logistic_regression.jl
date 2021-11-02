using Distributions

@testset "Logistic regression" begin
    Random.seed!(0)
    X = collect(-50:50)
    y = vcat(rand(Bernoulli(0.1), 50), rand(Bernoulli(0.9), 51)); # target binary class

    f = logistic_regression(X,y)

    @test predict(f, -5) == false
    @test predict(f, 0) == true
    @test predict(f, 5) == true
    @test isapprox(f(0), 0.54, atol=1e-2)
end

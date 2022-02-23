@testset "Linear regression 1D" begin
    𝒟 = [(1,1), (2,3), (3,3), (4,4)]
    X = first.(𝒟)
    y = last.(𝒟)

    f = linear_regression(X,y)
    @test f(3) ≈ 3.2
end

@testset "Linear regression 2D" begin
    𝒟 = [([1,1],1), ([2,2],3), ([3,3],3), ([4,4],4)]
    X = first.(𝒟)
    X = hcat(X...)' # Turn into matrix
    y = last.(𝒟)

    f = linear_regression(X,y)
    @test f([3,4]) ≈ 3.65
end

@testset "Linear regression (one-liner)" begin
    import BeautifulAlgorithms.linear_regression
    include(joinpath(@__DIR__, "..", "src", "linear_regression_one_liner.jl"))
    𝒟 = [(1,1), (2,3), (3,3), (4,4)]
    X = first.(𝒟)
    y = last.(𝒟)

    f = linear_regression(X,y)
    @test f(3) ≈ 3.2
end

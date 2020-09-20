@testset "Bogo sort" begin
    X = rand(1:100, 5)
    bogo_sort!(X)
    @test issorted(X)
end

@testset "Bogo sort (one-liner)" begin
    import BeautifulAlgorithms.bogo_sort!
    include(joinpath(@__DIR__, "..", "src", "bogo_sort!_one_liner.jl"))
    X = rand(1:100, 5)
    bogo_sort!(X)
    @test issorted(X)
end
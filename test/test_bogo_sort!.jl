@testset "Bogo sort" begin
    X = rand(1:100, 5)
    bogo_sort!(X)
    @test issorted(X)
end
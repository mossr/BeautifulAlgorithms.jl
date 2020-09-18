@testset "Insertion sort" begin
    X = rand(1:100, rand(1:100))
    copyX = copy(X)
    insertion_sort!(X)
    @test issorted(X)
    @test X == sort(copyX) # checks for cᵥ necessity
end

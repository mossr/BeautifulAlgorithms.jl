@testset "Bubble sort" begin
    X = rand(1:1000, 100)
    bubble_sort!(X)
    @test issorted(X)
end

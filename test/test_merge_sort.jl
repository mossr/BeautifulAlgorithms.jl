@testset "Merge sort" begin
    X = rand(1:100, rand(1:100))
    X = merge_sort(X)
    @test issorted(X)
end

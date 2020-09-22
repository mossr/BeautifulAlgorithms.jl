@testset "Distance functions" begin
    @test dist_manhattan([0,0], [3,3]) == 6.0
    @test dist_euclidean([0,0], [3,3]) ≈ 4.242640687119285
    @test dist_supremum([0,0], [3,3]) == 3.0
end

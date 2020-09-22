@testset "Nearest neighbor" begin
    function test_nearest_neighbor()
        𝒟 = [([5,9],6),
             ([5,5],7),
             ([7,5],8),
             ([9,9],10)]
        φ = x->x

        points = [[6.1,6.5], [9,6.5]]

        neighbor_manhattan = [nearest_neighbor(p, φ, 𝒟, dist_manhattan) for p in points]
        @test neighbor_manhattan == [8, 10]

        neighbor_euclidean = [nearest_neighbor(p, φ, 𝒟, dist_euclidean) for p in points]
        @test neighbor_euclidean == [8, 8]

        neighbor_supremum = [nearest_neighbor(p, φ, 𝒟, dist_supremum) for p in points]
        @test neighbor_supremum == [7, 8]

        @test nearest_neighbor(0, x->x, [(0,0)], dist_manhattan) == 0
    end

    test_nearest_neighbor()
end

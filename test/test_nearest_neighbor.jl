@testset "Nearest Neighbor" begin
    function test_nearest_neighbor()
        𝒟train = [([5,9],6),
                  ([5,5],7),
                  ([7,5],8),
                  ([9,9],10)]
        φ = x->x

        points = [[6.1,6.5], [9,6.5]]

        neighbor_manhattan = [nearest_neighbor(p, φ, 𝒟train, dist_manhattan) for p in points]
        @test neighbor_manhattan == [8, 10]

        neighbor_euclidean = [nearest_neighbor(p, φ, 𝒟train, dist_euclidean) for p in points]
        @test neighbor_euclidean == [8, 8]

        neighbor_supremum = [nearest_neighbor(p, φ, 𝒟train, dist_supremum) for p in points]
        @test neighbor_supremum == [7, 8]

        @test nearest_neighbor(0, x->x, [(0,0)], dist_manhattan) == 0
        @test dist_manhattan([0,0], [3,3]) == 6.0
        @test dist_euclidean([0,0], [3,3]) ≈ 4.242640687119285
        @test dist_supremum([0,0], [3,3]) == 3.0
    end

    test_nearest_neighbor()
end

@testset "K-nearest neighbors" begin
    function test_k_nearest_neighbors()
        𝒟 = [([5,9],6),
             ([5,5],7),
             ([7,5],8),
             ([9,9],10)]
        φ = x->x

        points = [[6.1,6.5], [9,6.5]]

        neighbor_euclidean_k1 = [k_nearest_neighbors(p, φ, 𝒟, dist_euclidean, 1) for p in points]
        @test neighbor_euclidean_k1 == [[8], [8]]

        neighbor_euclidean_k2 = [k_nearest_neighbors(p, φ, 𝒟, dist_euclidean, 2) for p in points]
        @test neighbor_euclidean_k2 == [[8,7], [8,10]]

        neighbor_euclidean_k3 = [k_nearest_neighbors(p, φ, 𝒟, dist_euclidean, 3) for p in points]
        @test neighbor_euclidean_k3 == [[8,7,6], [8,10,7]]

        neighbor_euclidean_k4 = [k_nearest_neighbors(p, φ, 𝒟, dist_euclidean, 4) for p in points]
        @test neighbor_euclidean_k4 == [[8,7,6,10], [8,10,7,6]]
    end

    test_k_nearest_neighbors()
end

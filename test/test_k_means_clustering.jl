using Random

@testset "K-means clustering" begin
    Random.seed!(0)
    function test_k_means_clustering()
        𝒟 = [([5.0, 9.0], 6),
             ([5.0, 5.0], 7),
             ([7.0, 5.0], 8),
             ([9.0, 9.0], 10)]
        φ = x->x

        (z1, μ1) = k_means_clustering(φ, 𝒟, 2)
        @test sort(μ1) == [[6,5], [7,9]]

        (z2, μ2) = k_means_clustering(x->x, [0.0, 2.0, 10.0, 12.0], 2)
        @test sort(μ2) == [1, 11]
    end

    test_k_means_clustering()
end

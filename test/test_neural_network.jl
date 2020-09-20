@testset "Two-layer neural network" begin
    function test_neural_network(g=σ)
        x = 2
        φ = x -> [x, x^2, sqrt(abs(x))]
        𝐕 = [[2,-1,3], [3,0,1]]
        𝐰 = [+1, -1]
        neural_network(x, 𝐕, 𝐰, φ, g)
    end

    @test test_neural_network(σ) ≈ -0.013563772681566943
    @test test_neural_network(ReLU) ≈ -3.1715728752538093

    @test σ(0) == 0.5
    @test ReLU(1) == 1
    @test ReLU(-1) == 0
end

@testset "Neural network (one-liner)" begin
    import BeautifulAlgorithms.neural_network
    include(joinpath(@__DIR__, "..", "src", "neural_network_one_liner.jl"))
    x = 2
    φ = x -> [x, x^2, sqrt(abs(x))]
    𝐕 = [[2,-1,3], [3,0,1]]
    𝐰 = [+1, -1]
    @test neural_network(x, 𝐕, 𝐰, φ, ReLU) ≈ -3.1715728752538093
end
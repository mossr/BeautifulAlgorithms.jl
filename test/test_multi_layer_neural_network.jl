include("../src/multi_layer_neural_network.jl")
using BeautifulAlgorithms
using Test
@testset "Multi-layer neural network" begin
    function test_two_layer_neural_network(𝐠=[σ])
        x = 2
        φ = x -> [x, x^2, sqrt(abs(x))]
        𝐕 = [[2,-1,3], [3,0,1]]
        𝐰 = [+1, -1]
        𝐖 = [𝐕, 𝐰]
        multi_layer_neural_network(x, 𝐖, φ, 𝐠)
    end

    function test_five_layer_neural_network(𝐠)
        x = 2
        φ = x -> [x, x^2, sqrt(abs(x))]
        𝐕₁ = [[2,-1,3], [3,0,1], [7,5,3]]
        𝐕₂ = [[6,5,9], [3,3,3]]
        𝐕₃ = [[6,5], [3,3], [3,3], [3,3], [3,3]]
        𝐕₄ = [[1,2,3,4,5], [6,7,8,9,0]]
        𝐰 = [+1, -1]
        𝐖 = [𝐕₁, 𝐕₂, 𝐕₃, 𝐕₄, 𝐰]
        multi_layer_neural_network(x, 𝐖, φ, 𝐠)
    end

    @test test_two_layer_neural_network([σ]) ≈ -0.013563772681566943
    @test test_two_layer_neural_network([ReLU]) ≈ -3.1715728752538093
    @test test_five_layer_neural_network([σ,σ,σ,σ]) ≈ -3.1668639943749355e-7
end

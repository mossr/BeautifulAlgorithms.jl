@testset "Thompson sampling" begin
    using Random; Random.seed!(0)
    apply(xₜ) = [0.1, 0.5, 0.9][xₜ]
    estimates = thompson_sampling(ones(3), ones(3), apply)
    @test argmax(mean.(estimates)) == 3
end

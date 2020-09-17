@testset "Particle filter" begin
    using Random
    Random.seed!(228)

    # POMDP setup
    γ = 0.95
    𝒮 = -10:10
    𝒜 = Normal(0, 1)
    𝒪 = Uniform(-10, 10)
    transition = (s,a) -> clamp(s+a, minimum(𝒮), maximum(𝒮))
    T = (s,a) -> Normal(transition(s,a), abs(a))
    R = (s,a) -> 4 < s < 6 ? 100 : 0
    observation = (s′,a) -> Normal(s′, abs(a))
    O = (a,s′,o) -> pdf(observation(s′,a), o)
    𝒫 = POMDP(γ, 𝒮, 𝒜, 𝒪, T, R, O)

    # Particle filter updating with random 1D walking agent
    belief = rand(𝒮, 1000)
    o = rand(𝒪)
    s = o
    for i in 1:2000
        a = rand(𝒜)
        s = transition(s,a)
        o = rand(observation(s,a))
        belief = particle_filter(belief, 𝒫, a, o)
        μ_b = mean(belief)
        σ_b = std(belief)
        belief_error = abs(μ_b - s)
        @test (μ_b-3σ_b ≤ s ≤ μ_b+3σ_b) || belief_error ≤ 1.0
    end
end

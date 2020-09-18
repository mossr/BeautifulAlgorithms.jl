@testset "Branch and bound" begin
    γ = 0.95
    𝒮 = 1:10
    𝒜 = [+1, -1]
    T = (s,a,s′)->s + a == s′ ? 0.7 : 0
    R = (s,a)->s == 5 ? 100 : 0
    𝒫 = BranchAndBound.MDP(γ, 𝒮, 𝒜, T, R)

    d = 4 # depth
    𝑈₋ = s->0 # lower bound on value function at depth d
    𝑄⁻ = (s,a)->100 # upper bound on action-value function
    π = s -> branch_and_bound(𝒫, s, d, 𝑈₋, 𝑄⁻).a

    for s in 𝒮
        a = s ≤ 5 || s ∈ [9, 10] ? +1 : -1
        @test π(s) == a
    end
end

@testset "Stochastic gradeient descent" begin
    Base.:*(δη::Decay, x) = x/sqrt(δη.i+=1)

    loss_squared(x, y, 𝐰, φ) = (𝐰⋅φ(x) - y)^2
    mean_loss(𝐰, 𝒟train, φ, loss) = mean(loss(x, y, 𝐰, φ) for (x,y) ∈ 𝒟train)

    function test_stochastic_gradient_descent()
        𝒟train = [([3,0.7],4), ([-1,0.3],3), ([-1,-3],0)]
        𝐰_opt = stochastic_gradient_descent(𝒟train, x->x, ∇loss_squared; η=0.01)
        y_opt = mean_loss(𝐰_opt, 𝒟train, x->x, loss_squared)
        return (𝐰_opt, y_opt)
    end

    𝐰, y = test_stochastic_gradient_descent()

    @test 𝐰 ≈ [0.8286227687981166, -0.07376395387093937]
    @test y ≈ 5.882922020275335
end

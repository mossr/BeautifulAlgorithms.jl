@testset "Gradient descent" begin
    using Statistics
    using LinearAlgebra

    mutable struct Decay i end
    Base.:*(δη::Decay, x) = x/sqrt(δη.i+=1)

    loss_squared(x, y, 𝐰, φ) = (𝐰⋅φ(x) - y)^2
    mean_loss(𝐰, 𝒟train, φ, loss) = mean(loss(x, y, 𝐰, φ) for (x,y) ∈ 𝒟train)

    """
    Single-dimensional training input data.
    """
    function test_gradient_descent()
        𝒟train = [(3,4), (-1,3), (-1,0)]
        𝐰_opt = gradient_descent(𝒟train, x->x, ∇loss_squared)
        y_opt = mean_loss(𝐰_opt, 𝒟train, x->x, loss_squared)
        return (𝐰_opt, y_opt)
    end

    """
    Decay learning rate η.
    """
    function test_gradient_descent_decay(T)
        𝒟train = [(3,4), (-1,3), (-1,0)]
        𝐰_opt = gradient_descent(𝒟train, x->x, ∇loss_squared; η=Decay(0), T=T)
        y_opt = mean_loss(𝐰_opt, 𝒟train, x->x, loss_squared)
        return (𝐰_opt, y_opt)
    end

    """
    Multi-dimensional training data input.
    """
    function test_gradient_descent_multi()
        𝒟train = [([3,0.7],4), ([-1,0.3],3), ([-1,-3],0)]
        𝐰_opt = gradient_descent(𝒟train, x->x, ∇loss_squared)
        y_opt = mean_loss(𝐰_opt, 𝒟train, x->x, loss_squared)
        return (𝐰_opt, y_opt)
    end

    𝐰, y = test_gradient_descent()
    @test 𝐰 ≈ [0.8181818181818182]
    @test y ≈ 5.878787878787879

    𝐰, y = test_gradient_descent_decay(30)
    @test 𝐰 ≈ [0.41794205540127405]
    @test y ≈ 6.466158060393507

    𝐰, y = test_gradient_descent_multi()
    @test 𝐰 ≈ [0.8314306533883896, -0.03036191401505953]
    @test y ≈ 5.876487733786738
end

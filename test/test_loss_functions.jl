@testset "Loss functions" begin
    x_vec = [2.3, 1.2]
    𝐰_vec = [0.8, 1.1]
    x_scalar = 2.3
    𝐰_scalar = 3
    y = 0.5
    φ = x->x

    @test loss_01(x_scalar, y, 𝐰_scalar, φ) == 0

    for (x, 𝐰) in zip([x_vec, x_scalar], [𝐰_vec, 𝐰_scalar])
        for diff_method in [forward_difference, central_difference, backward_difference, complex_difference]
            iscomplex::Bool = diff_method == complex_difference
            @test iscomplex || isapprox(abs(sum(∇loss_absdev(x, y, 𝐰, φ))), abs(diff_method(𝐰ᵢ -> loss_absdev(x, y, 𝐰ᵢ, φ), 𝐰)), atol=1e-2)
            @test isapprox(abs(sum(∇loss_squared(x, y, 𝐰, φ))), abs(diff_method(𝐰ᵢ -> loss_squared(x, y, 𝐰ᵢ, φ), 𝐰)), atol=1e-2)
            @test iscomplex || isapprox(abs(sum(∇loss_hinge(x, y, 𝐰, φ))), abs(diff_method(𝐰ᵢ -> loss_hinge(x, y, 𝐰ᵢ, φ), 𝐰)), atol=1e-2)
            @test isapprox(abs(sum(∇loss_logistic(x, y, 𝐰, φ))), abs(diff_method(𝐰ᵢ -> loss_logistic(x, y, 𝐰ᵢ, φ), 𝐰)), atol=1e-2)
            @test isapprox(abs(sum(∇loss_cross_entropy(x, y, 𝐰, φ))), abs(diff_method(𝐰ᵢ -> loss_cross_entropy(x, y, 𝐰ᵢ, φ), 𝐰)), atol=1e-2)
        end
    end
end

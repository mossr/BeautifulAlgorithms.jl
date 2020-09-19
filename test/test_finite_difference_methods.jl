@testset "Finite difference methods" begin
    f = x->x^2
    x, df = 11, 22
    for diff_method in [forward_difference, central_difference, backward_difference, complex_difference]
        @test isapprox(diff_method(f, x), df)
    end
end

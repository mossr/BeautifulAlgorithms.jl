@testset "Newton's method" begin
    f = x->x^2 - 4
    @test newtons_method(f) == 2.0
    @test newtons_method(f; x=-rand()) == -2.0
end

using Zygote

function newtons_method(f; x=rand(), tol=eps(Float64))
    while !isapprox(f(x), 0, atol=tol)
        x = x - f(x)/f'(x)
    end
    return x
end
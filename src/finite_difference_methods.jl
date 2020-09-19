forward_difference(f, x; h=sqrt(eps()))  = (f(x .+ h) .- f(x))/h
central_difference(f, x; h=cbrt(eps()))  = (f(x .+ h/2) .- f(x .- h/2))/h
backward_difference(f, x; h=sqrt(eps())) = (f(x) .- f(x .- h))/h
complex_difference(f, x; h=1e-20)        = imag(f(x .+ h*im))/h
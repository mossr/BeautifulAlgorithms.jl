using LinearAlgebra

k_sqr_exp(x, x′; ℓ=1) = exp(-((x - x′)^2) / (2*ℓ^2))
k_exp(x, x′; ℓ=1) = exp(-(abs(x - x′)/ℓ))
k_gamma_exp(x, x′; ℓ=1, γ=0.5) = exp(-(abs(x - x′)/ℓ)^γ)
k_rat_quad(x, x′; ℓ=1, α=0.5) = (1 + ((x - x′)^2)/(2α*ℓ^2))^(-α)
k_nn(x, x′; Σ=I, _x=[1,x...], _x′=[1,x′...]) = asin((2*_x'*Σ*_x′)/sqrt((1+2*_x'*Σ*_x)*(1+2*_x′'Σ*_x′)))
k_brownian(x, x′; H=0.9) = 1/2 * (abs(x)^(2H) + abs(x′)^(2H) - abs(x - x′)^(2H))
m_zero(x) = zero(x)
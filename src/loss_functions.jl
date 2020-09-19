using LinearAlgebra

𝕀(b) = b ? 1 : 0
σ(z) = 1/(1 + exp(-z))

ŷ(x, 𝐰, φ, g=𝐱->𝐱)           = g(𝐰⋅φ(x))
margin(x, y, 𝐰, φ, g=𝐱->𝐱)   = ŷ(x, 𝐰, φ, g)*y
residual(x, y, 𝐰, φ, g=𝐱->𝐱) = ŷ(x, 𝐰, φ, g) - y

loss_01(x, y, 𝐰, φ)       = 𝕀(margin(x, y, 𝐰, φ) ≤ 0)
loss_absdev(x, y, 𝐰, φ)   = abs(residual(x, y, 𝐰, φ))
loss_squared(x, y, 𝐰, φ)  = residual(x, y, 𝐰, φ)^2
loss_hinge(x, y, 𝐰, φ)    = max(1 - margin(x, y, 𝐰, φ), 0)
loss_logistic(x, y, 𝐰, φ) = log(1 + exp(-margin(x, y, 𝐰, φ)))
loss_cross_entropy(x, y, 𝐰, φ) = -(y*log(ŷ(x, 𝐰, φ, σ)) + (1-y)*log(1-ŷ(x, 𝐰, φ, σ)))

∇loss_absdev(x, y, 𝐰, φ)   = φ(x)*residual(x, y, 𝐰, φ) / abs(residual(x, y, 𝐰, φ))
∇loss_squared(x, y, 𝐰, φ)  = 2residual(x, y, 𝐰, φ)*φ(x)
∇loss_hinge(x, y, 𝐰, φ)    = margin(x, y, 𝐰, φ) < 1 ? -φ(x)*y : 0
∇loss_logistic(x, y, 𝐰, φ) = -φ(x)*y / (exp(margin(x, y, 𝐰, φ)) + 1)
∇loss_cross_entropy(x, y, 𝐰, φ) = φ(x) .⋅ residual(x, y, 𝐰, φ, σ)'
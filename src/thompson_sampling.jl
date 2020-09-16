using Distributions
function thompson_sampling(𝛂, 𝛃, apply; T=100)
    for t in 1:T
        𝛉 = rand.(Beta.(𝛂, 𝛃))
        xₜ = argmax(𝛉)
        rₜ = apply(xₜ)
        𝛂[xₜ], 𝛃[xₜ] = (𝛂[xₜ] + rₜ, 𝛃[xₜ] + 1 - rₜ)
    end
    return Beta.(𝛂, 𝛃)
end
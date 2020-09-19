using Distributions

function thompson_sampling(𝛂, 𝛃, apply; T=100)
    for t in 1:T
        𝛉 = rand.(Beta.(𝛂, 𝛃))
        x = argmax(𝛉)
        r = apply(x)
        𝛂[x], 𝛃[x] = (𝛂[x] + r, 𝛃[x] + 1 - r)
    end
    return Beta.(𝛂, 𝛃)
end
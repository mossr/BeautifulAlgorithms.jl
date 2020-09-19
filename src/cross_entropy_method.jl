using Distributions

function cross_entropy_method(f, P, k_max, m=100, m_elite=10)
    for k in 1:k_max
        samples = rand(P, m)
        order = sortperm([f(samples[:,i]) for i in 1:m])
        P = fit(typeof(P), samples[:,order[1:m_elite]])
    end
    return P
end
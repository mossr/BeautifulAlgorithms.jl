function merge_sort(X)
    n = length(X)
    if n ≤ 1
        return X
    end
    L = merge_sort(X[1:n÷2])
    R = merge_sort(X[n÷2+1:end])
    return merge(L, R)
end

function Base.merge(L, R)
    nₗ, nᵣ, i, j = length(L), length(R), 1, 1
    combined = []
    for k in 1:(nₗ + nᵣ)
        l = i ≤ nₗ ? L[i] : Inf
        r = j ≤ nᵣ ? R[j] : Inf
        push!(combined, l < r ? l : r)
        l < r ? i+=1 : j+=1
    end
    return combined
end
function insertion_sort!(X)
    for i in 1:length(X)
        cᵥ = X[i]
        j = i - 1
        while j ≥ 1 && X[j] > cᵥ
            X[j+1] = X[j]
            j -= 1
        end
        X[j+1] = cᵥ
    end
end
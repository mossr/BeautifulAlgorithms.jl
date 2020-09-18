function bubble_sort!(X)
    for i in 1:length(X), j in 1:length(X)-i
        if X[j] > X[j+1]
            (X[j+1], X[j]) = (X[j], X[j+1])
        end
    end
end
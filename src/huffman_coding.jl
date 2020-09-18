function huffman_coding(C::Vector{Char}, F::Vector{<:Real})
    N = Dict{Any,Any}(Pair.(C, F))
    while length(N) > 1
        X = findmin(N); delete!(N, last(X))
        Y = findmin(N); delete!(N, last(Y))
        children = (left=last(X), right=last(Y))
        Z = Pair(children, first(X)+first(Y))
        push!(N, Z)
    end
    return first(first(N))
end
function hailstone(n::Int)
    N = [n]
    while n > 1
        n = iseven(n) ? n÷2 : 3n+1
        push!(N, n)
    end
    return N
end
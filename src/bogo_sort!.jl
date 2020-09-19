using Random

function bogo_sort!(X)
    while !issorted(X)
        shuffle!(X)
    end
end
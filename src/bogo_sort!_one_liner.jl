using Random

bogo_sort!(X) = while !issorted(X) shuffle!(X) end

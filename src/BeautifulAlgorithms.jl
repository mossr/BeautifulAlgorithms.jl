module BeautifulAlgorithms

export gradient_descent
include("gradient_descent.jl")

export stochastic_gradient_descent
include("stochastic_gradient_descent.jl")

export neural_network, σ, ReLU
include("neural_network.jl")

export nearest_neighbor, dist_manhattan, dist_euclidean, dist_supremum
include("nearest_neighbor.jl")

export linear_regression
include("linear_regression.jl")

export radial_basis_regression
include("radial_basis_regression.jl")

export cross_entropy_method
include("cross_entropy_method.jl")

export twiddle
include("twiddle.jl")

export thompson_sampling
include("thompson_sampling.jl")

export particle_filter, POMDP
include("particle_filter.jl")

export value_iteration, policy, lookahead, MDP
include("value_iteration.jl")

# suppress MDP redefinition
module BranchAndBound include("branch_and_bound.jl") end
import .BranchAndBound: branch_and_bound
export branch_and_bound, BranchAndBound

export MonteCarloTreeSearch, MDPᴳ, simulate!, explore, rollout
include("monte_carlo_tree_search.jl")

export huffman_coding
include("huffman_coding.jl")

export bubble_sort!
include("bubble_sort!.jl")

export merge_sort, merge
include("merge_sort.jl")

export insertion_sort!, merge
include("insertion_sort!.jl")

export bogo_sort!, merge
include("bogo_sort!.jl")

end # module
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

export thompson_sampling
include("thompson_sampling.jl")

export value_iteration, policy, lookahead, MDP
include("value_iteration.jl")

export MonteCarloTreeSearch, MDPᴳ, simulate!, explore, rollout
include("monte_carlo_tree_search.jl")

end # module
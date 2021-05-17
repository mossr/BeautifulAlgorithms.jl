module BeautifulAlgorithms

export gradient_descent
include("gradient_descent.jl")

export stochastic_gradient_descent
include("stochastic_gradient_descent.jl")

export neural_network, ReLU
include("neural_network.jl")

export multi_layer_neural_network
include("multi_layer_neural_network.jl")

export 𝕀, σ, ŷ, margin, residual, loss_01, loss_absdev, loss_squared, loss_hinge, loss_logistic, loss_cross_entropy, ∇loss_absdev, ∇loss_squared, ∇loss_hinge, ∇loss_logistic, ∇loss_cross_entropy
include("loss_functions.jl")

export dist_manhattan, dist_euclidean, dist_supremum
include("distance_functions.jl")

export nearest_neighbor, dist_manhattan, dist_euclidean, dist_supremum
include("nearest_neighbor.jl")

export k_nearest_neighbors
include("k_nearest_neighbors.jl")

export k_means_clustering
include("k_means_clustering.jl")

export em_algorithm
include("em_algorithm.jl")

export linear_regression
include("linear_regression.jl")

export radial_basis_regression
include("radial_basis_regression.jl")

export cross_entropy_method
include("cross_entropy_method.jl")

export forward_difference, central_difference, backward_difference, complex_difference
include("finite_difference_methods.jl")

export simulated_annealing
include("simulated_annealing.jl")

export twiddle
include("twiddle.jl")

export newtons_method
include("newtons_method.jl")

export k_sqr_exp, k_exp, k_gamma_exp, k_rat_quad, k_nn, k_brownian, m_zero
include("gaussian_process_kernels.jl")

export GaussianProcess
include("gaussian_process.jl")

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

export hailstone
include("hailstone.jl")

export bubble_sort!
include("bubble_sort!.jl")

export merge_sort, merge
include("merge_sort.jl")

export insertion_sort!, merge
include("insertion_sort!.jl")

export bogo_sort!, merge
include("bogo_sort!.jl")

end # module
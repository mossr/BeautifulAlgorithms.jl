module BeautifulAlgorithms

export cross_entropy_method
include("cross_entropy_method.jl")

export value_iteration, policy, lookahead, MDP
include("value_iteration.jl")

export MonteCarloTreeSearch, MDPG, simulate!, explore, rollout
include("monte_carlo_tree_search.jl")

end # module
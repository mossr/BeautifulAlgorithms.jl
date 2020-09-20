# BeautifulAlgorithms.jl
[![Build Status](https://travis-ci.com/mossr/BeautifulAlgorithms.jl.svg?branch=master)](https://travis-ci.com/mossr/BeautifulAlgorithms.jl) [![codecov](https://codecov.io/github/mossr/BeautifulAlgorithms.jl/coverage.svg?branch=master)](https://codecov.io/gh/mossr/BeautifulAlgorithms.jl)

Consice algorithms written in Julia and formatted with [Carbon](https://carbon.now.sh/).

Algorithms for machine learning, optimization, reinforcement learning, online planning, decision making under uncertainty, and sorting. All implementations are working and self-contained; refer to the [test cases](./test/).

```julia
] add http://github.com/mossr/BeautifulAlgorithms.jl
```

*Note: Algorithms are modified from their original sources.*

## Gradient descent
Percy Liang and Dorsa Sadigh, *Artificial Intelligence: Principles and Techniques*, Stanford University, 2019.
<p align="center"><a href="./src/gradient_descent.jl"> <img src="./img/gradient_descent.svg"></a></p>


## Stochastic gradient descent
Percy Liang and Dorsa Sadigh, *Artificial Intelligence: Principles and Techniques*, Stanford University, 2019.
<p align="center"><a href="./src/stochastic_gradient_descent.jl"> <img src="./img/stochastic_gradient_descent.svg"></a></p>


## Two-layer neural network
<p align="center"><a href="./src/neural_network.jl"> <img src="./img/neural_network.svg"></a></p>

##### Two-layer neural network (one-liner)
<p align="center"><a href="./src/neural_network_one_liner.jl"> <img src="./img/neural_network_one_liner.svg"></a></p>


## Multi-layer neural network
<p align="center"><a href="./src/multi_layer_neural_network.jl"> <img src="./img/multi_layer_neural_network.svg"></a></p>


## Loss functions
<p align="center"><a href="./src/loss_functions.jl"> <img src="./img/loss_functions.svg"></a></p>


## Nearest neighbor
<p align="center"><a href="./src/nearest_neighbor.jl"> <img src="./img/nearest_neighbor.svg"></a></p>


## Linear regression
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/linear_regression.jl"> <img src="./img/linear_regression.svg"></a></p>


## Radial basis regression
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/radial_basis_regression.jl"> <img src="./img/radial_basis_regression.svg"></a></p>


## Cross-entropy method
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/cross_entropy_method.jl"> <img src="./img/cross_entropy_method.svg"></a></p>


## Finite difference methods
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/finite_difference_methods.jl"> <img src="./img/finite_difference_methods.svg"></a></p>


## Twiddle
Sebatian Thurn, *Artificial Intelligence for Robotics*, Udacity, 2012.
<p align="center"><a href="./src/twiddle.jl"> <img src="./img/twiddle.svg"></a></p>


## Thompson sampling
Daniel J. Russo, Benjamin Van Roy, Abbas Kazerouni, Ian Osband, and Zheng Wen, *A Tutorial on Thompson Sampling*, arXiv:1707.02038, 2020.
<p align="center"><a href="./src/thompson_sampling.jl"> <img src="./img/thompson_sampling.svg"></a></p>


## Particle filter
Mykel J. Kochenderfer, Tim A. Wheeler, and Kyle H. Wray, *Algorithms for Decision Making*, Preprint.
<p align="center"><a href="./src/particle_filter.jl"> <img src="./img/particle_filter.svg"></a></p>


## Value iteration
Mykel J. Kochenderfer, Tim A. Wheeler, and Kyle H. Wray, *Algorithms for Decision Making*, Preprint.
<p align="center"><a href="./src/value_iteration.jl"> <img src="./img/value_iteration.svg"></a></p>


## Branch and bound
Mykel J. Kochenderfer, Tim A. Wheeler, and Kyle H. Wray, *Algorithms for Decision Making*, Preprint.
<p align="center"><a href="./src/branch_and_bound.jl"> <img src="./img/branch_and_bound.svg"></a></p>


## Monte Carlo tree search
Mykel J. Kochenderfer, Tim A. Wheeler, and Kyle H. Wray, *Algorithms for Decision Making*, Preprint.
<p align="center"><a href="./src/monte_carlo_tree_search.jl"> <img src="./img/monte_carlo_tree_search.svg"></a></p>


## Huffman coding
David A. Huffman, *A Method for the Construction of Minimum-Redundancy Codes*, IEEE, 1952.
<p align="center"><a href="./src/huffman_coding.jl"> <img src="./img/huffman_coding.svg"></a></p>


## Bubble sort
Karey Shi, *Design and Analysis of Algorithms*, Stanford University, 2020.
<p align="center"><a href="./src/bubble_sort!.jl"> <img src="./img/bubble_sort!.svg"></a></p>


## Merge sort
Karey Shi, *Design and Analysis of Algorithms*, Stanford University, 2020.
<p align="center"><a href="./src/merge_sort.jl"> <img src="./img/merge_sort.svg"></a></p>


## Insertion sort
Karey Shi, *Design and Analysis of Algorithms*, Stanford University, 2020.
<p align="center"><a href="./src/insertion_sort!.jl"> <img src="./img/insertion_sort!.svg"></a></p>


## Bogo sort
<p align="center"><a href="./src/bogo_sort!.jl"> <img src="./img/bogo_sort!.svg"></a></p>


## Quine
Nathan Daly, *Julia Discord*, 2019.<sup><a href="https://discourse.julialang.org/t/quines-and-loons-self-replicating-programs/12607/7" target="_blank">1</a></sup>
<p align="center"><a href="./src/quine.jl"> <img src="./img/quine.svg"></a></p>

---

Written by [Robert Moss](https://github.com/mossr).

# BeautifulAlgorithms.jl
[![Build Status](https://github.com/mossr/BeautifulAlgorithms.jl/workflows/CI/badge.svg)](https://github.com/mossr/BeautifulAlgorithms.jl/actions)
[![codecov](https://codecov.io/github/mossr/BeautifulAlgorithms.jl/coverage.svg?branch=master)](https://codecov.io/gh/mossr/BeautifulAlgorithms.jl)

Concise algorithms written in Julia and formatted with [Carbon](https://carbon.now.sh/).

Algorithms for machine learning, optimization, reinforcement learning, online planning, decision making under uncertainty, and sorting. All implementations are working and self-contained; refer to the [test cases](./test/).

```julia
] add http://github.com/mossr/BeautifulAlgorithms.jl
```

- [Gradient descent](#gradient-descent)
- [Stochastic gradient descent](#stochastic-gradient-descent)
- [Two-layer neural network](#two-layer-neural-network)
    - [Two-layer neural network (one-liner)](#two-layer-neural-network-one-liner)
- [Multi-layer neural network](#multi-layer-neural-network)
- [Loss functions](#loss-functions)
- [Distance functions](#distance-functions)
- [Nearest neighbor](#nearest-neighbor)
- [K-nearest neighbors](#k-nearest-neighbors)
- [K-means clustering](#k-means-clustering)
- [The EM algorithm](#the-em-algorithm)
- [Linear regression](#linear-regression)
- [Radial basis regression](#radial-basis-regression)
- [Cross-entropy method](#cross-entropy-method)
- [Finite difference methods](#finite-difference-methods)
- [Simulated annealing](#simulated-annealing)
- [Twiddle](#twiddle)
- [Newton's method](#newtons-method)
- [Gaussian process](#gaussian-process)
    - [Gaussian process kernels](#gaussian-process-kernels)
- [Thompson sampling](#thompson-sampling)
- [Particle filter](#particle-filter)
- [Value iteration](#value-iteration)
- [Branch and bound](#branch-and-bound)
- [Monte Carlo tree search](#monte-carlo-tree-search)
- [Huffman coding](#huffman-coding)
- [Hailstone sequence (Collatz conjecture)](#hailstone-sequence-collatz-conjecture)
- [Bubble sort](#bubble-sort)
- [Merge sort](#merge-sort)
- [Insertion sort](#insertion-sort)
- [Bogo sort](#bogo-sort)
    - [Bogo sort (one-liner)](#bogo-sort-one-liner)
- [Quine](#quine)

*Note: Algorithms are modified from their original sources.*

## Gradient descent
Percy Liang and Dorsa Sadigh, *Artificial Intelligence: Principles and Techniques*, Stanford University, 2019.
<p align="center"><a href="./src/gradient_descent.jl"> <img src="./img/svg/gradient_descent.svg"></a></p>


## Stochastic gradient descent
Percy Liang and Dorsa Sadigh, *Artificial Intelligence: Principles and Techniques*, Stanford University, 2019.
<p align="center"><a href="./src/stochastic_gradient_descent.jl"> <img src="./img/svg/stochastic_gradient_descent.svg"></a></p>


## Two-layer neural network
<p align="center"><a href="./src/neural_network.jl"> <img src="./img/svg/neural_network.svg"></a></p>

##### Two-layer neural network (one-liner)
<p align="center"><a href="./src/neural_network_one_liner.jl"> <img src="./img/svg/neural_network_one_liner.svg"></a></p>


## Multi-layer neural network
<p align="center"><a href="./src/multi_layer_neural_network.jl"> <img src="./img/svg/multi_layer_neural_network.svg"></a></p>


## Loss functions
<p align="center"><a href="./src/loss_functions.jl"> <img src="./img/svg/loss_functions.svg"></a></p>


## Distance functions
<p align="center"><a href="./src/distance_functions.jl"> <img src="./img/svg/distance_functions.svg"></a></p>


## Nearest neighbor
<p align="center"><a href="./src/nearest_neighbor.jl"> <img src="./img/svg/nearest_neighbor.svg"></a></p>


## K-nearest neighbors
<p align="center"><a href="./src/k_nearest_neighbors.jl"> <img src="./img/svg/k_nearest_neighbors.svg"></a></p>


## K-means clustering
Percy Liang and Dorsa Sadigh, *Artificial Intelligence: Principles and Techniques*, Stanford University, 2019.
<p align="center"><a href="./src/k_means_clustering.jl"> <img src="./img/svg/k_means_clustering.svg"></a></p>


## The EM algorithm
Andrew Ng, *Mixtures of Gaussians and the EM algorithm*, Stanford University, 2020.<sup><a href="http://cs229.stanford.edu/notes2020spring/cs229-notes7b.pdf">1</a></sup>
<p align="center"><a href="./src/em_algorithm.jl"> <img src="./img/svg/em_algorithm.svg"></a></p>


## Linear regression
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/linear_regression.jl"> <img src="./img/svg/linear_regression.svg"></a></p>


## Radial basis regression
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/radial_basis_regression.jl"> <img src="./img/svg/radial_basis_regression.svg"></a></p>


## Cross-entropy method
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/cross_entropy_method.jl"> <img src="./img/svg/cross_entropy_method.svg"></a></p>


## Finite difference methods
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/finite_difference_methods.jl"> <img src="./img/svg/finite_difference_methods.svg"></a></p>


## Simulated annealing
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/simulated_annealing.jl"> <img src="./img/svg/simulated_annealing.svg"></a></p>


## Twiddle
Sebatian Thurn, *Artificial Intelligence for Robotics*, Udacity, 2012.
<p align="center"><a href="./src/twiddle.jl"> <img src="./img/svg/twiddle.svg"></a></p>


## Newton's method
John Wallis, *A Treatise of Algebra both Historical and Practical*, 1685.
<p align="center"><a href="./src/newtons_method.jl"> <img src="./img/svg/newtons_method.svg"></a></p>


## Gaussian process
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/gaussian_process.jl"> <img src="./img/svg/gaussian_process.svg"></a></p>


## Gaussian process kernels
<p align="center"><a href="./src/gaussian_process_kernels.jl"> <img src="./img/svg/gaussian_process_kernels.svg"></a></p>


## Thompson sampling
Daniel J. Russo, Benjamin Van Roy, Abbas Kazerouni, Ian Osband, and Zheng Wen, *A Tutorial on Thompson Sampling*, arXiv:1707.02038, 2020.
<p align="center"><a href="./src/thompson_sampling.jl"> <img src="./img/svg/thompson_sampling.svg"></a></p>


## Particle filter
Mykel J. Kochenderfer, Tim A. Wheeler, and Kyle H. Wray, *Algorithms for Decision Making*, Preprint.
<p align="center"><a href="./src/particle_filter.jl"> <img src="./img/svg/particle_filter.svg"></a></p>


## Value iteration
Mykel J. Kochenderfer, Tim A. Wheeler, and Kyle H. Wray, *Algorithms for Decision Making*, Preprint.
<p align="center"><a href="./src/value_iteration.jl"> <img src="./img/svg/value_iteration.svg"></a></p>


## Branch and bound
Mykel J. Kochenderfer, Tim A. Wheeler, and Kyle H. Wray, *Algorithms for Decision Making*, Preprint.
<p align="center"><a href="./src/branch_and_bound.jl"> <img src="./img/svg/branch_and_bound.svg"></a></p>


## Monte Carlo tree search
Mykel J. Kochenderfer, Tim A. Wheeler, and Kyle H. Wray, *Algorithms for Decision Making*, Preprint.
<p align="center"><a href="./src/monte_carlo_tree_search.jl"> <img src="./img/svg/monte_carlo_tree_search.svg"></a></p>


## Huffman coding
David A. Huffman, *A Method for the Construction of Minimum-Redundancy Codes*, IEEE, 1952.
<p align="center"><a href="./src/huffman_coding.jl"> <img src="./img/svg/huffman_coding.svg"></a></p>


## Hailstone sequence (Collatz conjecture)
<p align="center"><a href="./src/hailstone.jl"> <img src="./img/svg/hailstone.svg"></a></p>


## Bubble sort
Karey Shi, *Design and Analysis of Algorithms*, Stanford University, 2020.
<p align="center"><a href="./src/bubble_sort!.jl"> <img src="./img/svg/bubble_sort!.svg"></a></p>


## Merge sort
Karey Shi, *Design and Analysis of Algorithms*, Stanford University, 2020.
<p align="center"><a href="./src/merge_sort.jl"> <img src="./img/svg/merge_sort.svg"></a></p>


## Insertion sort
Karey Shi, *Design and Analysis of Algorithms*, Stanford University, 2020.
<p align="center"><a href="./src/insertion_sort!.jl"> <img src="./img/svg/insertion_sort!.svg"></a></p>


## Bogo sort
<p align="center"><a href="./src/bogo_sort!.jl"> <img src="./img/svg/bogo_sort!.svg"></a></p>

##### Bogo sort (one-liner)
<p align="center"><a href="./src/bogo_sort!_one_liner.jl"> <img src="./img/svg/bogo_sort!_one_liner.svg"></a></p>


## Quine
Nathan Daly, *Julia Discord*, 2019.<sup><a href="https://discourse.julialang.org/t/quines-and-loons-self-replicating-programs/12607/7" target="_blank">2</a></sup>
<p align="center"><a href="./src/quine.jl"> <img src="./img/svg/quine.svg"></a></p>

---

Written by [Robert Moss](https://github.com/mossr).

# BeautifulAlgorithms.jl
[![Build Status](https://github.com/mossr/BeautifulAlgorithms.jl/workflows/CI/badge.svg)](https://github.com/mossr/BeautifulAlgorithms.jl/actions)
[![codecov](https://codecov.io/github/mossr/BeautifulAlgorithms.jl/coverage.svg?branch=master)](https://codecov.io/gh/mossr/BeautifulAlgorithms.jl)

Concise algorithms written in Julia and formatted with [Carbon](https://carbon.now.sh/).

Algorithms for machine learning, optimization, reinforcement learning, online planning, decision making under uncertainty, and sorting. All implementations are working and self-contained; refer to the [test cases](./test/).

> _Note, these are primarily for academic purposes and are not designed for real-world usage. There are many other Julia packages that implement more sound versons of these algorithms._

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
- [Ridge regression](#ridge-regression)
- [Basis regression](#basis-regression)
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
<p align="center"><a href="./src/gradient_descent.jl"> <img src="./img/png/gradient_descent.png"></a></p>


## Stochastic gradient descent
Percy Liang and Dorsa Sadigh, *Artificial Intelligence: Principles and Techniques*, Stanford University, 2019.
<p align="center"><a href="./src/stochastic_gradient_descent.jl"> <img src="./img/png/stochastic_gradient_descent.png"></a></p>


## Two-layer neural network
<p align="center"><a href="./src/neural_network.jl"> <img src="./img/png/neural_network.png"></a></p>

##### Two-layer neural network (one-liner)
<p align="center"><a href="./src/neural_network_one_liner.jl"> <img src="./img/png/neural_network_one_liner.png"></a></p>


## Multi-layer neural network
<p align="center"><a href="./src/multi_layer_neural_network.jl"> <img src="./img/png/multi_layer_neural_network.png"></a></p>


## Loss functions
<p align="center"><a href="./src/loss_functions.jl"> <img src="./img/png/loss_functions.png"></a></p>


## Distance functions
<p align="center"><a href="./src/distance_functions.jl"> <img src="./img/png/distance_functions.png"></a></p>


## Nearest neighbor
<p align="center"><a href="./src/nearest_neighbor.jl"> <img src="./img/png/nearest_neighbor.png"></a></p>


## K-nearest neighbors
<p align="center"><a href="./src/k_nearest_neighbors.jl"> <img src="./img/png/k_nearest_neighbors.png"></a></p>


## K-means clustering
Percy Liang and Dorsa Sadigh, *Artificial Intelligence: Principles and Techniques*, Stanford University, 2019.
<p align="center"><a href="./src/k_means_clustering.jl"> <img src="./img/png/k_means_clustering.png"></a></p>


## The EM algorithm
Andrew Ng, *Mixtures of Gaussians and the EM algorithm*, Stanford University, 2020.<sup><a href="http://cs229.stanford.edu/notes2020spring/cs229-notes7b.pdf">1</a></sup>
<p align="center"><a href="./src/em_algorithm.jl"> <img src="./img/png/em_algorithm.png"></a></p>


## Linear regression
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/linear_regression.jl"> <img src="./img/png/linear_regression.png"></a></p>


## Ridge regression
<p align="center"><a href="./src/ridge_regression.jl"> <img src="./img/png/ridge_regression.png"></a></p>


## Basis regression
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/basis_regression.jl"> <img src="./img/png/basis_regression.png"></a></p>


## Radial basis regression
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/radial_basis_regression.jl"> <img src="./img/png/radial_basis_regression.png"></a></p>


## Cross-entropy method
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/cross_entropy_method.jl"> <img src="./img/png/cross_entropy_method.png"></a></p>


## Finite difference methods
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/finite_difference_methods.jl"> <img src="./img/png/finite_difference_methods.png"></a></p>


## Simulated annealing
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/simulated_annealing.jl"> <img src="./img/png/simulated_annealing.png"></a></p>


## Twiddle
Sebatian Thurn, *Artificial Intelligence for Robotics*, Udacity, 2012.
<p align="center"><a href="./src/twiddle.jl"> <img src="./img/png/twiddle.png"></a></p>


## Newton's method
John Wallis, *A Treatise of Algebra both Historical and Practical*, 1685.
<p align="center"><a href="./src/newtons_method.jl"> <img src="./img/png/newtons_method.png"></a></p>


## Gaussian process
Mykel J. Kochenderfer and Tim A. Wheeler, *Algorithms for Optimization*, MIT Press, 2019.
<p align="center"><a href="./src/gaussian_process.jl"> <img src="./img/png/gaussian_process.png"></a></p>


## Gaussian process kernels
<p align="center"><a href="./src/gaussian_process_kernels.jl"> <img src="./img/png/gaussian_process_kernels.png"></a></p>


## Thompson sampling
Daniel J. Russo, Benjamin Van Roy, Abbas Kazerouni, Ian Osband, and Zheng Wen, *A Tutorial on Thompson Sampling*, arXiv:1707.02038, 2020.
<p align="center"><a href="./src/thompson_sampling.jl"> <img src="./img/png/thompson_sampling.png"></a></p>


## Particle filter
Mykel J. Kochenderfer, Tim A. Wheeler, and Kyle H. Wray, *Algorithms for Decision Making*, Preprint.
<p align="center"><a href="./src/particle_filter.jl"> <img src="./img/png/particle_filter.png"></a></p>


## Value iteration
Mykel J. Kochenderfer, Tim A. Wheeler, and Kyle H. Wray, *Algorithms for Decision Making*, Preprint.
<p align="center"><a href="./src/value_iteration.jl"> <img src="./img/png/value_iteration.png"></a></p>


## Branch and bound
Mykel J. Kochenderfer, Tim A. Wheeler, and Kyle H. Wray, *Algorithms for Decision Making*, Preprint.
<p align="center"><a href="./src/branch_and_bound.jl"> <img src="./img/png/branch_and_bound.png"></a></p>


## Monte Carlo tree search
Mykel J. Kochenderfer, Tim A. Wheeler, and Kyle H. Wray, *Algorithms for Decision Making*, Preprint.
<p align="center"><a href="./src/monte_carlo_tree_search.jl"> <img src="./img/png/monte_carlo_tree_search.png"></a></p>


## Huffman coding
David A. Huffman, *A Method for the Construction of Minimum-Redundancy Codes*, IEEE, 1952.
<p align="center"><a href="./src/huffman_coding.jl"> <img src="./img/png/huffman_coding.png"></a></p>


## Hailstone sequence (Collatz conjecture)
<p align="center"><a href="./src/hailstone.jl"> <img src="./img/png/hailstone.png"></a></p>


## Bubble sort
Karey Shi, *Design and Analysis of Algorithms*, Stanford University, 2020.
<p align="center"><a href="./src/bubble_sort!.jl"> <img src="./img/png/bubble_sort!.png"></a></p>


## Merge sort
Karey Shi, *Design and Analysis of Algorithms*, Stanford University, 2020.
<p align="center"><a href="./src/merge_sort.jl"> <img src="./img/png/merge_sort.png"></a></p>


## Insertion sort
Karey Shi, *Design and Analysis of Algorithms*, Stanford University, 2020.
<p align="center"><a href="./src/insertion_sort!.jl"> <img src="./img/png/insertion_sort!.png"></a></p>


## Bogo sort
<p align="center"><a href="./src/bogo_sort!.jl"> <img src="./img/png/bogo_sort!.png"></a></p>

##### Bogo sort (one-liner)
<p align="center"><a href="./src/bogo_sort!_one_liner.jl"> <img src="./img/png/bogo_sort!_one_liner.png"></a></p>


## Quine
Nathan Daly, *Julia Discord*, 2019.<sup><a href="https://discourse.julialang.org/t/quines-and-loons-self-replicating-programs/12607/7" target="_blank">2</a></sup>
<p align="center"><a href="./src/quine.jl"> <img src="./img/png/quine.png"></a></p>

---

Written by [Robert Moss](https://github.com/mossr).

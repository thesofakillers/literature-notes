+++
title = "Automating turbulence modelling by multi-agent reinforcement learning"
authors = "Guido Novati et al."
year = 2020 
+++

- The paper claims to have successfully automated the modelling (and hence
  simulation) of turbulence
- turbulent flows are characterized by flow structures that vary largely both in
  space and time.

- The two main approaches for simulating these flow structures so far have been

  - Direct Numerical Simulation (DNS)
    - solves Navier-Stokes equations
    - most accurate
    - not practical due to computational cost
  - Large Eddy Simulation (LES)
    - large flow structures are first resolved (HOW?)
    - turbulence closure models (?) used to account for interactions between
      finer scales and large scales.

- The authors proposed a new strategy: use reinforcement learning algorithms
  combined with physical insight to learn the best turbulence closure models
  from a DNS and apply them to the LES.

  - each grid point in the DNS are treated as RL agents, which observe thousands
    of flow simulations in the training process.
    - this of course necessitated the use of a supercomputer

- The new method outperforms well-established modelling approaches
- The new method generalises across grid sizes and flow conditions
- Perhaps the most exciting achievement of the work is the development of the
  "Remember and Forget Experience Replay" algorithm.
  - shown to outperform vast majority of existing RL algorithms on multiple
    benchmark problems, even outside of fluid dynamics.

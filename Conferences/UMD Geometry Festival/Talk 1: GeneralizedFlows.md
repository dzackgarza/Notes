---
title: Fluid Mechanics and Geometry
author: Yann Brenier
---

Outline:

- Geometric interpretation of Euler equations for incompressible fluids (Arnold 1966)
- Discrete fluids, combinatorial optimization, generalized incompressible flows
- Generalized minimizing geodesics with probability and convexity tools (1989-2012)
- The initial value problem, relates to the completeness of certain manifolds (2018)


## Euler Equations

First PDEs written in modern style: Euler, 1757.

The Euler flow is an incompressible fluid confined to a compact Riemannian manifolds, evolving according to the Euler equations. (It wasn't clear how to extend definition of Riemannian manifolds to infinite dimensions.) Evolve along geodesics, need to be volume-preserving. Look at action on gridded-up version of torus $T^2$.

Discrete version of incompressible motion - acts by permutation, i.e. a finite series of permutations on gridded cells. Compute "cost" of flow by adding squares of displacements, which increases if any step moves any given grid by a large amount.

There is some solution that gives the final permutation at the lowest cost -- the possibilities are finite, but large. This will be our "geodesic", i.e. optimal transport.

Example: find the minimal flow between $[1,2,\cdots n]$ and $[n, n-1, \cdots, 2, 1]$. Transpositions get it done in 12 steps. This is nice because it passes to the limit nicely, which ends up looking like a solution to Euler's equation. Observe pattern of each number "bouncing" off wall, while its neighboring number does so in a symmetric fashion the yields a rectangle.

Well-known: in 1D, there is no non-trivial solution.

In passing to the continuous limit, this solution can be improved by a factor of $\frac \pi {12}$. Actual solution in continuous case is known; all trigonometric functions. This shape is reflected in the finite numeric simulations.

This generalized solution has been discovered in an entirely different framework involving random walks on the symmetric group (Virag et al). The least action principle ruling the original problem is the limit of a large deviation principle ruling the random exchange of adjacent cells in the discrete model. This principle says that looking at Brownian motion to a point, conditioned on the motion being in a neighborhood of that point, converges to a geodesic in the limit as the noise goes to zero.



## Generalized Flows

A generalized incompressible flow on a compact Riemannian manifold $D$ is a probability measure $\mu$ on paths $\xi_t$ such that $\mu$ has finite average energy

$$
E_\mu \int_0^T \frac 1 2 \abs{\frac{d\xi}{dt}}^2 dt
$$

where we are taking the expectation of this integral.

Main results on minimizing geodesic (since 1992): let $\mu_{0, T}$ be a probability measure on $D \times D$ such that the projections $\mu_0=\mu_t = \mathcal{L}_D$, the Lebesgue measure on $D$. This measure is spanned by at least on generalized incompressible flow $\mu$ of minimal energy.

In fact, there is a unique pressure distribution $\nabla p(t, x)$ that relates to these solutions by an explicit equation, where we view this as an acceleration field. The uniqueness here is surprising. In Arnold's classical framework, approximate minimizing geodesics may not converge in the any classical sense but do converge to generalized solutions when the dimension is at least 3 *(Shnirelman 1985)*. In dimension 2, there is something to do with symplectic forms that prevents this. Note that there is no similar results for the dynamics of rigid bodies, i.e. geodesic curves along $SO(3)$ *(Y.B. 2012)*. Seems that the $d=2$ case is generally open.

Smoothness of these solutions is important.The existence of a unique $\nabla p$ follows from the convexity of the minimizing geodesic problem. Main open equation: is $\nabla p$ smooth? We currently know it is $L^2$ locally (1999/2008) and we have data for which $p$ is not better than locally semi-convex in $x$.

Last questions: what about the initial value problem? (Y.B. 2018)

A priori, convex minimization techniques are hopeless for the IVP. For a generalized incompressible flow $\mu$ with finite average energy, it does not make sense to prescribe any initial velocity $\left| \frac{d\xi}{dt}\right|_{t=0}$ for $\mu-$a.e. paths. But if we look at such a flow in minimal energy, we can set up a different equation that is tractable. The dual convex minimization problem is always solvable, and can uniquely recover the smooth classical solutions to the Euler equations for a short enough $T$. This can be seen as a kind of non-commutative optimal transport problem involving fields on non-negative symmetric matrices, which are of current interest.


We currently don't know if the Euler equations have global solutions, or even if they break down in finite time! Wide open, one of the main problems in non-linear PDEs.

Generally looking at space of volume-preserving diffeomorphisms, dense in the set of certain product measures? Gives a natural weak closure: goes by the name of bi-stochastic measures?

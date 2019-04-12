---
title: Spectral asymptotics on stationary spacetimes
author: Steven Zelditch
keywords:
    - The Weyl law
---

Want to look at a step function that jumps at eigenvalues by the multiplicity of each eigenvalues. Recall the wave equation $\square u = 0$, and introduce the propagator $e^{-it\sqrt{-\Delta}}$ which is a pseudo-differential operator that propagates time zero solutions.

Can look at the tempered distribution
$$
\Tr V(t) = \sum_{j=0}^\infty e^{it\lambda_j} = e_0(t) + \sum_{L} e_L(t)
$$

were $L$ are taken in the "length spectrum".

The singular support of $e_0$ is $\theset{0}$ and of $e_L$ is $\theset{L}$. Essentially amounts to take the fourier transform of the counting function and looking at its singularities. Need to assume that the sets of closed geodesics are nondegenerate (critical point for the length function on the loop space). Note that when you look at the family of closed geodesics of a given length, the number will depend on the geometry. A sphere has a manifold's worth, a torus a single parameter family, while on a hyperbolic surface each length is isolated.

Any closed geodesic is in the unit cotangent bundle $S\Sigma$, so pick a transversal. Can look at first return map, take the derivative to obtain the linear Poincare map. Shouldn't have 1 as an eigenvalue, otherwise you could deform the geodesic (condition is equivalent to being nondegenerate).

Major milestone: able to reduce complex determinants of Hessians of phase functions to (essentially) linear algebra. Some kind of "symbol calculus" of fourier operators.

General question: instead of solving Einstein's field equations, how do we instead let a wave equation evolve on a curved spacetime?

Uncurved spacetime is given by $\RR \cross \Sigma$ with a metric $-dt^2 + h_\Sigma$, the Euclidean metric? The generalization here is to globally hypberolic stationary spacetimes, want a compact Cauchy hypersurface. Globally hyperbolic is a condition used frequently in general relativity. We have $M^{3,1} \cong \RR \cross \Sigma$ topologically (not metrically), and so every causal curves (tangent vector has lorentz norm strictly positive?) intersects a given hypersurface $\Sigma$ exactly once.

Moreover $\square$ is essentially the Laplace-Beltrami operator on this space. Stationary means there exists a timelike Killing vector field, i.e. timelike flows are isometries. The killing field is our stand-in for $\dd{}{t}$, since there is no preferred time coordinate. This is a strong assumption, since the cosmological constant was found to be positive (i.e. expanding spacetime). What is the propagator, the eigenvalues, the lengths of closed geodesics?

Can look at $z = \dd{}{t}$ and $Dz = \frac 1 i \dd{}{t}$ and we can recover the Laplacian by looking at the eigenvalues of special solutions, $Du_J = \lambda u_j$, and the $u_j$ span $\ker \square_g$ the Klein-Gordon operator. Want to keep everything internal with Lorentzian geometry, so don't want to choose a particular Cauchy hypersurface extrinsically.

Can look at space of null-geodesic $N = \theset{\gamma \suchthat g(\dot\gamma, \dot\gamma) = 0}$ (equivalent to light rays) which is a symplectic manifold. Define $\mathrm{char}\square = \theset{\xi \in T^\dual M \suchthat \sigma_\square (x, \xi) = 0}$, then let $\RR$ act on this by Hamiltonian flows to obtain $N = \mathrm{char}\square/\RR$. Leads to studying $e^{tZ}$ the killing flow on $N$. Can get a bundle of the original space over the orbits of the killing flow, which has a natural connection $\theta$ where the metric on the base space is induced by the metric in the total space. The metric does not need to be integrable; this is equivalent to requiring the space to be static instead of stationary.

The theorem: look at the spectrum of $\restrictionof{D_z}{\ker\square}$. Want to define a trace, so need an inner product on $\ker\square$. This has a natural symplectic vector space structure, since it's a solution to variational problem (?), so we can just add an almost-complex structure (see books on QFT in curved spacetime, positive and negative frequency solutions, Robert Wahl?). Can use the energy-stress tensor to define such an inner product, this will be independent of the choice of a cauchy hypersurface.

**Theorem**: $\Tr ~\restrictionof{e^{tZ}}{\ker \square}$ is essentially the same summation formula as earlier, where the sum is over the periodic orbits of the killing flow, and this is something that makes sense for any dynamical system.

Picture to keep in mind: can evolve a hypersurface using the wave equation $\Sigma_0 \to e^{tZ}\Sigma_0$ and then look at the killing flow $e^{tZ}\Sigma_0 \to \Sigma_0$. This gives an operator that you can take the trace of.
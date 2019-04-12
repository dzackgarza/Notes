---
title: Zero Sets of Laplace Eigenfunctions
author: Aleksandr Logunov
---

Let $M$ be a closed Riemannian manifold, we will look at eigenfunctions of the Laplacian on on $M$.

Example: Eigenfunctions on $S^2$ are restrictions of homogeneous harmonic polynomials functions $f: \RR^3 \to S^2$, which has a basis of relatively simple polynomials where the eigenvalues are related to their degrees.

Two elementary questions:

- Does the number of critical points of eigenfunctions $\varphi_\lambda$,
$$
C_{\phi, \lambda} = \theset{x \suchthat \nabla \varphi_\lambda(x)= 0},
$$
tend to infinity as $\lambda \to \infty$?

- Flat eigenfunctions: is there a sequence of eigenfunctions on $S^2$ such that
$$
\max_M \abs{\varphi_\lambda(x)} \leq C \norm{\varphi_\lambda}_2?
$$
    - E.g. on $S^1$, all eigenfunctions $\sin(ax+b)$ are flat.
    - Such eigenfunctions exist on $S^{2d-1}$.
    - Sarnak's conjecture: there are no such sequences on $S^2$.

Nodal domains: a theorem of Courant (1923) says that the $k\dash$th eigenfunction has at most $k$ nodal domains (where they are ordered by size of eigenvalue). A result of Stern/Lewey shows that there are spherical harmonics of any odd degree with only two nodal domains.

Yau's conjecture: 
$$
c\sqrt\lambda \leq H^{n-1}(Z_{\varphi_\lambda}) \leq C \sqrt \lambda.
$$ 

Shown for algebraic manifolds and real-analytic manifolds, still open in the Riemannian case. Recent result: proves lower bound in dimensions above 2, some improvements closer to conjectured in dimension 2.

Nadirashvili's conjecture: Let $u$ be a non-constant harmonic function in $\RR^3$. Does $\mu(\theset{u=0}) = 0$? Believed we need to understand this for harmonic functions before understanding the zero sets of Laplacians. By 2016 work, yes, and there is a uniform lower bound (?).

An old trick: can translate questions about zero sets of eigenfunctions $\varphi + \lambda \varphi = 0$ into zero sets of harmonic functions $\Delta u = 0$, given by defining $u(x,t) = \varphi(x)e^{\sqrt\lambda t}$.

Work of Donnelly-Fefferman bounds the growth of Laplace eigenfunctions. There is a harmonic analog of Yau's conjecture, $H^{n-1}(Z_\varphi \intersect B_1) \leq CN(B_1)$ where $H$ is the Hausdorff measure and $N$ is the doubling index; Yau's would follow from this by setting $C=\sqrt\lambda$.

On the scale $c/\sqrt \lambda$, you can "shake" the eigenfunctions so they look like harmonic functions; i.e. there is a quasi-conformal change of coordinates that sends the zero set the eigenfunctions to the zero set of a harmonic function.

Landis conjecture: let $\Delta u + Vu = 0$ be an elliptic equation, where $V$ is a bounded potential $\abs V < 1$. If $\abs {u(x)} \leq\exp(-\abs{x}^{1+\varepsilon})$, then $u$ is identically zero. Can also be formulated in terms of the maximum number of nodal curves intersecting at a point. WIP: this is true for real potentials. Solutions behave very differently between the real and complex cases. Any counterexample would necessarily have many zeros.

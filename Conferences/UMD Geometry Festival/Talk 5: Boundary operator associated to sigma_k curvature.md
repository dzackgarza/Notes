---
keywords:
    - Dirichlet principle
    - Laplacian
    - Second fundamental form
    - Euler-Lagrange equations
    - Variational problems
    - Locally conformally flat
    - Conformal invariance
    - Polarization
    - Riemann curvature
    - Ricci curvature
    - Mean curvature
    - Elliptic/hyperbolic PDEs
    - Gauss-Bonnet formula

title: Boundary operator associated to sigma_k curvature
author: Yi Wang
---

Define the $k$-Hessian energy 
$$
\int_\Omega u \sigma_k D^2 u ~dx.
$$

When $k=1$ this recovers the Dirichlet energy $\int_\Omega -u\Delta u$. On a Riemannian manifold, we are instead interested in the Shouten tensor which is a combination of the Ricci curvature and the scalar curvature. Can decompose the Riemann curvature tensor into a conformally invariant Weyl curvature $W$ and and certain product.

We want to look at conformally invariant operators, and the most natural one is the conformal Laplacian $L_g = -\Delta +c_n R_g$. Under a conformal change of metric, we can look at the Yamabe problem which asks for a decomposition with $\hat R$ constant. This was solved in the 80s. It is a variational problem.

On 4-manifolds, there is a Chern-Gauss-Bonnet formula, which involves the $L_2$ norm of the Weyl tensor (local conformal invariant) and the other is a constant times $\sigma_2$, and so 
$$
\int_{X^4} \sigma_2 ~dv_g
$$ 
is a conformal invariant. 

This leads to a generalized Yamabe problem $\sigma_k = \text{constant}$. This is 2nd order elliptic PDE. This problem is variational (solutions are critical points of an energy functional) if $k=1,2$ or $g$ is locally conformally flat. Can write this functional, $\int \sigma_k ~\mathrm{vol}_g$, and can write an Euler-Lagrange equation for this to determine the gradient of this functional.

Open questions:
- Is there a Dirichlet principle for the Shouten tensor or the operator $\sigma_k(D^2u)$?

Why should this be possible? The $k\dash$Hessian energy is pointwise non-negative when $u=0$ on the boundary, so it is a generalized Dirichlet energy by integration by parts. Can obtain a Sobolev inequality for it when $\Sigma$ is $(k-1)$-convex (i.e. this holds for the second fundamental form) and $2k<n$. This gives an embedding into some $L^p$ space. For $2k=n$ obtain an Orlicz-type inequality; for $2k>n$ obtain embeddings into Holder spaces.

The well-known Dirichlet principle: for any $u$ where $\restrictionof{u}{\del M} = f$ and $\int_\Omega \abs{\nabla u}^2 dx \geq \int_\Omega \abs{u_f}^2 dx$ where $u_f$ is a harmonic extension of $f$ that solves 
$$
\begin{cases}
\Delta u = 0 & \text{on}~\Omega, \\
u=f & \text{on}~\del\Omega.
\end{cases}
$$

The main result is that for smooth domain with boundary, there is a multilinear differential operator along with a multilinear functional that is symmetric in its inputs that recovers the $k\dash$Hessian. This functional looks like 
$$
Q = -\int_\Omega u L_k + \oint_{\del \Omega} B_k
$$ 
where $L_k$ is a $k\dash$linear map and $B_k$ is a boundary operator.

Examples involve the Laplace-Beltrami operator.

The symmetric property in this theorem yields two nice properties: the functional's Euler-Lagrange equation is the one wanted earlier, and it is convex. With some assumptions, this will yield the desired Dirichlet principle for the $\sigma_k$ curvature.

The boundary operator involves some generalization of the mean curvature, called $H_k$ which is a linear combination of the Shouten tensor and the second fundamental form. The $L$ is an extension of the conformal Laplacian operator. When $k=1$, this recover Escoba Yamabe's functional.
Paper link: <http://www.numdam.org/article/PMIHES_1966__29__95_0.pdf>

Daniel's description: 
> compares algebraic de Rham cohomology to the usual notion for manifolds, using resolution of singularities.


- **Theorem 1**: If $X\in \Aff\Alg\Sch_{/\CC}$ is regular (non-singular), then $H^*_\sing(X; \CC)$ is isomorphic to the cohomology of the algebraic de Rham complex: differential forms on $X$ which are rational and everywhere defined.

- For $X \in \Pre\Sch_{/k}^{\ft}$ smooth, consider the complex of sheaves of regular differentials $\Omega_{X/k}^* \in \Ch(\Sheaves)$ with the exterior differential

- Can consider two different cohomologies: 
	- The Hodge cohomology $H^*(X; \Omega_{X/k}^*) = \prod_{p, q} H^q(X; \Omega_{X/k}^p)$, which is $\ZZ^2\dash$graded
	- The hypercohomology $\mathbf{H}^*(X, \Omega_{X/k}^*)$, which is $\ZZ\dash$graded.
- These are related by a spectral sequence:
$$
E_1^{p, q} = H^1(X; \Omega_{X/k}^p) \abuts \mathbf{H}^*(X)
$$
- If $X$ is affine, then $\mathbf{H}^*(X) = H^* \Gamma(X, \Omega_{X/k}^*)$, which is the usual de Rham cohomology..?
- Take $k=\CC$ and $X^\an$, then we can consider the analytic de Rham cohomology
	- Poincare's lemma shows that $\Omega^*_{X/\CC}\to \constantsheaf{\CC}$ is a resolution of the constant sheaf, so the hypercohomology is $H^*_\sing(X; \CC)$.
- There is some induced homomorphism $H^*(X) \to H^*(X^\an)$
- **Theorem 1'**: this is an isomorphism.
	- This reduces to theorem 1: take a cover $\mathcal{U}\covers X$ by affine opens to get a convergent spectral sequence
$$
E_2^{p, q} = H^p(\mathcal{U}, F) \abuts H^*(X)
$$
where $F\in \Presh(X)$ is $H^q(\wait)$.
	- Take a similar open cover $\mathcal{V}^\an \covers X^\an$ to get
		$$
	E_2^{p, q} = H^p(\mathcal{V}^\an, F) \abuts H^*(X^\an)
	$$
	- Reductions: $H^*(X) \to H^*(X^\an)$ is associated to a morphism of spectral sequences?
	So it suffices to show the $E_2$ pages are isomorphic.
	- It suffices to show this in the case where $X$ is a prescheme that is a finite intersection of opens: $X = \Intersect_{k=1}^n U_{i_k}$.
	- Reduces to the case when $X$ is contained in an affine scheme, and is thus separated
	- In this case the open sets $U_{i_k}$ are affine, so this is the situation in theorem 1.
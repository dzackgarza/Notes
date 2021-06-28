Paper link: <http://www.numdam.org/article/PMIHES_1966__29__95_0.pdf>
Resolution of singularities notes: <https://arxiv.org/pdf/math/0508332.pdf>

Daniel's description: 
> compares algebraic de Rham cohomology to the usual notion for manifolds, using resolution of singularities.

# To Look Up
- Hodge cohomology
- Algebraic de Rham complex
- Smooth scheme
- Regular differentials
- Hypercohomology
- Hodge cohomology
- Poincare Lemma
- Scheme
- Prescheme
- Complete variety
- GAGA
- Regular scheme
- Associated analytic space
- Hironaka's resolution of singularities
- Kahler forms
- Ample divisor
- Stein space
- Coherent sheaves
- $\OO_X\dash$modules
- Holomorphically convex subsets
- Projective closure of a subset
- Serre's vanishing theorem
- Projective morphism
- Birational morphism
- Normal crossings divisor
- Flasque sheaf
- Grauert-Remmert comparison theorem on projective morphisms of analytic spaces
- $\OO_{X, x}$
- Algebraic sheaf
- Leray spectral sequence for a morphisms of regular schemes
- Extension of scalars
- Complete nonsingular curve
- Period of a differential form
- Schneider's theorem
- Lefschetz principle
- Natural isomorphism de Rham to Hodge coming from splitting in a filtration?
- Tangent space of an abelian variety
- Radical groups of height one
- Restricted $p\dash$Lie algebras
- Carier duals
- Abelian schemes
- Modular schemes
- Differential of second kind
- Complex multiplication
- Proper map
- Specialization
- l-adic cohomology

# Notes

## Part 1

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
E_2^{p, q} = H^p(\mathcal{U}, F^q) \abuts H^*(X)
$$
where $F^q\in \Presh(X)$ is $H^q(\wait)$.
	- Take a similar open cover $\mathcal{V}^\an \covers X^\an$ to get
		$$
	E_2^{p, q} = H^p(\mathcal{V}^\an, F^q) \abuts H^*(X^\an)
	$$
	- Reductions: $H^*(X) \to H^*(X^\an)$ is associated to a morphism of spectral sequences?
	So it suffices to show the $E_2$ pages are isomorphic.
	- It suffices to show this in the case where $X$ is a prescheme that is a finite intersection of opens: $X = \Intersect_{k=1}^n U_{i_k}$.
	- Reduces to the case when $X$ is contained in an affine scheme, and is thus separated
	- In this case the open sets $U_{i_k}$ are affine, so this is the situation in theorem 1.

- If $X$ is complete, theorem 1' follows directly using the spectral sequences and GAGA

## Part 2

- Can deduce theorem 1 from a stronger purely local theorem, using that resolution of singularities is valid on complex analytic spaces
- **Theorem 2**: If $X$ is a reduced analytic space over $\CC$, $Y\subseteq X$ closed, $U := X\sm Y$ nonsingular and dense in $X$, then $Y$ can be locally defined by one equation.
	- Let $\Omega_X^*(\ast Y)$ be the complex of modules on $X$ of differential forms with polar singularities on $Y$
		- On $U$ this reduces to the complex of holomorphic differential forms on $U$
		- There is a canonical morphism, which is in fact an isomorphism: letting $f: U\injects X$,
		$$
	F^q( \Omega_X^* (\ast Y)) \to R^q f_* (\constantsheaf{\ro{\CC}{U} })
	$$

- Defining this sheaf of modules with polar singularities: take $f_*(\Omega_U^*)$, take the subsheaf whose sections on $V$ are holomorphic differential forms on $V\intersect U$ that are restrictions of Kahler forms on $V$.
- Corollary: if $H^{>0}(X, \Omega_X^q(\ast Y)) =0$ then there is an isomorphism
$$
H^q \Gamma (X, \Omega_X^*(\ast Y)) \mviso H^q_{\sing}(U; \CC)
$$
- In particular this holds in specific cases:
	- $X$ projective with $Y$ the support of an ample positive divisor on $X$
	- $X$ Stein
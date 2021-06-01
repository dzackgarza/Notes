# Talbot Talk 1: Vesna

- $\Pic(R)$: invertible \(R\dash\)modules and equivalences with $\tensor_R$.
- $\pi_0 \Pic(R)$: invertible \(R\dash\)modules modulo equivalence
- $\Omega \Pic(R) = \GL_1(R)$
- Taking the connected component of $R$ yields $(\Pic(R))_R = \B \GL_1(R)$
- $[X, \Pic(R)]$ equals bundles of invertible \(R\dash\)modules in $X$.
  - Classical example: $[X, \Pic(S^0)]$, stable spherical fibrations on $X$, motivates most of the development of this theory.
  Equivalently, what is $\Pic(S^0)$?
- $\ko$: connective real $K$ theory
  - The 0th space: $\Omega^ \infty \cong \ZZ \cross \B \Orth$, classifies stable real vector bundles.
  - There is a map
  \[
  [X, \ZZ\cross \B \Orth] &\mapsvia{\sim} [X, \Pic(S^0)] \\
  \xi/X &\mapsto \Th(\xi)
  .\]
  Yields an $\infty\dash$loop map Z\cross \B \Orth\to \Pic(S^0)$ and $\ko \to \pic(S^0)$.
  Yields Adams' $J\dash$homomorphis.
  - Story that develops here: can develop a theory of $R\dash$oriented bundles, twisted $R\dash$cohomology, twists by ordinary cohomology class, or twist by the space of maps $\PPic = \map(\HZ, \pic)$.

- There is also a Brauer space $\Br(R)$.


Questions:

- What are $\pi_* \GL_1(R)$?
- For a space $X$, show that $[X, \GL(R)] = R^0(X)^X$
- What are the invertible $S^0$ modules?

Computing things

- $\pi_0 \Br(R)$
- $\pi_1 \Br(R) = \pi_0 \Pic(R)$
- $\pi_2 \Br(R) = \pi_1 \Pic(R) = \pi_0 \GL_1(R) = (\pi_0 R)\units$
- $\pi_{>2} \Br(R) = \pi_{>1} \Pic(R) = \pi_{>0} \GL_1(R) = \pi_{>0} R$.

- Can compute low degree $k$ invariants for $\Pic(R)$, comes from looking at Steenrod operations
- How to compute more:
	- Comparison with algebra (relatively easy, could reduce to open problems)
	- Descent
	- Obstruction theory

Use that there is an injection $0\to \Pic(\pi_* R) \to \pi_0 \pic(R)$ when $R$ is connective or $R$ is weakly even periodic and $\pi_0 R$ is regular Noetherian.
	- This is $\Pic$ over graded rings
	- But it's much more complicated to have anything like this for the Brauer group.
- Theorem: the functors $\Pic$ and $\Br$, $\Calg(\Sp) \to \infloopspace$ satisfy etale and Galois descent (respectively)
	-  $R\to S$ a map of ring spectra if $\pi_0 R\to \pi_0 S$ is etale as a map of rings (smooth of dimension zero, or flat + unramified) and there is an equivalence $\pi_k R \tensor_{\pi_0 R} \pi_0 S \mapsvia{\sim} \pi_k S$.
	-  $\KO$ has no interesting etale extension
- $R\to S^{?}$ is $G\dash$Galois if 
	- $R \mapsvia{\sim}S^{hG}$, mapping to homotopy fixed points is an equivalence
	- $S\tensor_R S \mapsvia{\sim} \prod_G S$
- $\pi_* \ku = \ZZ[\bottclass ^{\pm 1}]$ and $\Pic(\pi_* \ku) = \ZZ/2$.
	In fact $\Pic(\KU) = \ZZ/2$, and descent yields $\Pic(\KO) = \Pic(\KU)^{hC_2}$
- See descent spectral sequence?
	- Descent is like a local to global principle.
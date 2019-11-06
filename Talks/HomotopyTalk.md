# History

# Motivation
- Smooth structures on $S^n$ -- $\pi_n^S$

- Framed Bordism Classes of manifolds -- $\pi_n^S$

# Background

**Definition (Homotopy)**

**Definition (Homotopic Maps)**

**Definition (Fundamental Group)**

**Definition (Higher Homotopy Groups)**

**Definition (CW Complex)**

**Definition (Cellular Map)**
A map between $f:X \to Y$ between CW complex is *cellular* if $f(X_{(k)}) \subseteq Y_{(k)}$ for every $k$.

**Theorem (Cellular Approximation):**
Any map $f: X \to Y$ is homotopic to a cellular map.

> Application: $\pi_k S^n = 0$ if $k < n$. Use $f\in \pi_kS^n \iff f\in [S_k, S_n]$, deform $f$ to be cellular, then $f(S^k_{(k)}) \injects S^n_{(k)} = \pt$, so $f \homotopic c_0$, a constant map.

**Definition (Homotopy Equivalence)**
Two spaces $X, Y$ are said to be *homotopy equivalent* if there exists a maps $f: X \to Y$ and $f\inv: Y \to X$ such that
$$
f\circ f\inv \homotopic \id_Y \\
f\inv \circ f \homotopic \id_X
$$

**Definition (Weak Equivalence)**
A continuous map
$$
f: X \to Y 
$$
is called a *weak homotopy equivalence* if the induced map
$$
f_*: \pi_*(X) \to \pi_*(Y)
$$
is a graded isomorphism.

> Note that this is a strictly weaker notion than homotopy equivalence -- we don't require an explicit inverse.

> Note that a weak homotopy equivalence also induces isomorphisms on all homology and cohomology.

> Note: 


**Definition (Connectedness):**
A space is said to be $n\dash$connected if $\pi_{\leq n} X = 0$.

> Recall that a space is *simply connected* iff $\pi_1 X = 0$.

**Theorem (Hurewicz):**
Given a fixed space $X$, any map $f \in \pi_kX = [S^k, X]$ has the type $f: S^k \to X$. This induces a map $f_*: H_* S^k \to H_* X$. Since $H_k S^k \cong \ZZ \cong \generators{\mu}$, define a family of maps
$$
h_k: \pi_k X \to H_k X \\
[f] \mapsto f_*(\mu)
$$

If $n\geq 2$ and $X$ is $n-1$ connected, then $h_k$ is an isomorphism for all $k\leq n$.

> Note: If $k=1$, then $h_1$ is the abelianization of $\pi_1$.

*Application*: If $X$ a simply connected, closed 3-manifold is a homology sphere, then it is a homotopy sphere. 

> - $H_0 X = \ZZ$ since $X$ is path-connected
> - $H_1 X = 0$ since $X$ is simply-connected
> - $H_3 X = \ZZ$ since $X$ is orientable
> - $H_2 X = H^1 X$ by Poincare duality. What group is this?
>   - $0 \rightarrow \operatorname{Ext}_{\ZZ}^{1}\left(H_{0}(X ; \mathbb{Z}), \mathbb{Z}\right) \rightarrow H^{1}(X ; \mathbb{Z}) \rightarrow \operatorname{Hom}_{\mathbb{Z}}\left(H_{1}(X ; \mathbb{Z}), \mathbb{Z}\right) \rightarrow 0$ yields
>   - $0 \rightarrow \operatorname{Ext}_{\ZZ}^{1}\left(\ZZ, \mathbb{Z}\right) \rightarrow H^{1}(X ; \mathbb{Z}) \rightarrow \operatorname{Hom}_{\mathbb{Z}}\left(0, \mathbb{Z}\right) \rightarrow 0$
>   - Then $\operatorname{Ext}_{\ZZ}^{1}\left(\ZZ, \mathbb{Z}\right) = 0$ because $\ZZ$ is a projective $\ZZ\dash$module, so $H^1 X = 0$.
> - So $H_*(X) = [\ZZ, 0, 0, \ZZ, 0, \cdots ]$
> - So $h_3: \pi_3 X \to H_3 X$ is an isomorphism. Pick some $f\in \pi_3 X \cong \ZZ$. By partial application, this induces an isomorphism $H_* S^3 \to H_* X$.
> - Since $S^3, X$ have the homotopy type of CW complexes, $f$ is a homotopy equivalence.

# Theorems


**Theorem (CW Approximation)**:
For every topological space $X$, there exists a CW complex $\tilde X$ and a weak homotopy equivalence $f: X \to \tilde X$.:w

**Theorem (Whitehead):**
If $f: X\to Y$ is a weak equivalence between CW complexes, then it is a homotopy equivalence.

> Corollary (Relative Whitehead): If $f:X\to Y$ 



**Theorem (Freudenthal Suspension):**

# Applications


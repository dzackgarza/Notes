# History

Poincare, *Analysis Situs* in 1895

# Motivation

Generalized Topological Poincare Conjecture: When is a homotopy sphere also a topological sphere? i.e. when does $\pi_* X \cong_{Grp} \pi_* S^n \implies X \cong_{Top} S^n$?

- $n=1$: True. Trivial
- $n=2$: True. Proved by Poincare, classical
- $n=3$: True. Perelman (2006) using Ricci flow + surgery
- $n=4$: True. Freedman (1982), Fields medal!
- $n=5$: True. Zeeman (1961)
- $n=6$: True. Stalling (1962)
- $n\geq 7$: True. Smale, 1961

Smooth Poincare Conjecture: When is a homotopy sphere a *smooth* sphere?


- $n=1$: True. Trivial
- $n=2$: True. Proved by Poincare, classical
- $n=3$: True.  (Top = PL = Smooth)
- $n=4$: **Open**
- $n=5$: Zeeman (1961)
- $n=6$: Stalling (1962)
- $n\geq 7$: False in general (Milnor and Kervaire, 1963), Exotic $S^n$, 28 smooth structures on $S^7$
  

> It is unknown whether or not $ B^4 $ admits an exotic smooth structure. If not, the smooth $ 4 $-dimensional Poincare conjecture would have an affirmative answer. 

> Current line of attack: Gluck twists on on $S^4$. Yield homeomorphic spheres, *suspected* not to be diffeomorphic, but no known invariants can distinguish smooth structures on $S^4$.

Relation to homotopy: Define a monoid $G_n$ with 

- Objects: smooth structures on the $n$ sphere (identified as oriented smooth $n\dash$manifolds which are homeomorphic to $S^n$)
- Binary operation: Connect sum

For $n\neq 4$, this is a group. Turns out to be isomorphic to $\Theta_n$, the group of $h\dash$cobordism classes of "homotopy $S^n$s"

Recently (almost) resolved question: what is $\Theta_n$ for all $n$? 

> Application: what spheres admit unique smooth structures?

Define $bP_{n+1} \leq \Theta_n$ the subgroup of spheres that bound *parallelizable* manifolds (define in a moment). 

> Parallelizable: Trivial tangent bundle, i.e. the principal frame bundle has a smooth global section. Parallelizable spheres $S^0, S^1, S^3, S^7$ corresponding to $\RR, \CC, \mathbb{H}, \mathbb{O}$.

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

**Theorem (Whitehead):**
If $f: X\to Y$ is a weak equivalence between CW complexes, then it is a homotopy equivalence.

> Corollary (Relative Whitehead): If $f:X\to Y$ between CW complexes induces an isomorphism $H_* X \cong H_* Y$, then $f$ is a weak equivalence.

**Theorem (CW Approximation)**:
For every topological space $X$, there exists a CW complex $\tilde X$ and a weak homotopy equivalence $f: X \to \tilde X$.

> Note: Weak equivalences = equivalences for CW complexes, which means we can essentially throw out the distinction!


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
> - Taking CW approximations for $S^3, X$, we find that $f$ is a homotopy equivalence.

# Theorems


**Theorem (Freudenthal Suspension):**
If $X$ is an $n\dash$connected CW complex, then there is a map
$$
\Sigma: \pi_i X \to \pi_{i+1}\Sigma X
$$

which is an isomorphism for $i \leq 2n$ and a surjection for $i=2n+1$.

> Note: $[S^k, X] \mapsto [\Sigma S^k, \Sigma X] = [S^{k+1}, \Sigma X]$

> Application: $\pi_2 S^2 = \pi_3 S^3 = \cdots$ since $2$ is already in the stable range.


# Other Topics

- The homotopy hypothesis
- Generalized Cohomology theories
- Stable Homotopy Theory
- Infinity Categories
- Higher Homotopy Groups of Spheres
- Eilenberg Mclane and Moore Spaces
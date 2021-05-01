Links: [[Topology]] | [[Algebraic Topology]] | [[Homotopy]] | [[Reference]]
Tags: #talks

<!--![](zettelkasten/figures/HomotopyTalk%20-%20GSTS.pdf)-->

# History

Poincaré, *Analysis Situs* papers in 1895. 
Coined "homeomorphism", defined homology, gave rigorous definition of homotopy, established "method of invariants" and essentially kicked off algebraic topology.

# Motivation

Generalized Topological Poincaré Conjecture: 
When is a homotopy sphere also a topological sphere? i.e. when does $\pi_* X \cong_{Grp} \pi_* S^n \implies X \cong_{Top} S^n$?

- $n=1$: True. Trivial
- $n=2$: True. Proved by Poincaré, classical
- $n=3$: True. Perelman (2006) using Ricci flow + surgery
- $n=4$: True. Freedman (1982), Fields medal!
- $n=5$: True. Zeeman (1961)
- $n=6$: True. Stalling (1962)
- $n\geq 7$: True. Smale (1961) using h-cobordism theorem, uses handle decomposition + Morse functions

Smooth Poincaré Conjecture: When is a homotopy sphere a *smooth* sphere?


- $n=1$: True. Trivial
- $n=2$: True. Proved by Poincaré, classical
- $n=3$: True.  (Top = PL = Smooth)
- $n=4$: **Open**
- $n=5$: Zeeman (1961)
- $n=6$: Stalling (1962)
- $n\geq 7$: False in general (Milnor and Kervaire, 1963), Exotic $S^n$, 28 smooth structures on $S^7$
  
Remarks:

- It is unknown whether or not $ B^4 $ admits an exotic smooth structure. If not, the smooth 4-dimensional Poincaré conjecture would have an affirmative answer. 

- Current line of attack: [[Gluck twists]] on on $S^4$. 
  Yield homeomorphic spheres, *suspected* not to be diffeomorphic, but no known invariants can distinguish smooth structures on $S^4$.

Relation to homotopy: Define a monoid $G_n$ with 

- Objects: smooth structures on the $n$ sphere (identified as oriented smooth $n\dash$manifolds which are homeomorphic to $S^n$)
- Binary operation: Connect sum

For $n\neq 4$, this is a group. Turns out to be isomorphic to $\Theta_n$, the group of $h\dash$cobordism classes of "homotopy $S^n$s"

Recently (almost) resolved question: what is $\Theta_n$ for all $n$? 

> Application: what spheres admit unique smooth structures?

- Define $bP_{n+1} \leq \Theta_n$ the subgroup of spheres that bound *parallelizable* manifolds (define in a moment). 
- The Kervaire invariant is an invariant of a framed manifold that measures whether the manifold could be surgically converted into a sphere. 0 if true, 1 otherwise.
- Hill/Hopkins/Ravenel (2016): = 0 for $n \geq 254$.
- Kervaire invariant = 1 only in 2, 6, 14, 30, 62. Open case: 126. 
- Punchline: there is a map $\Theta_n/bP_{n+1} \to \pi_n^S/ J$, (to be defined) and the Kervaire invariant influences the size of $bP_{n+1}$. This reduces the differential topology problem of classifying smooth structures to (essentially) computing homotopy groups of spheres.
- Open question: is there a manifold of dimension 126 with Kervaire invariant 1?

> Parallelizable/framed: Trivial tangent bundle, i.e. the principal frame bundle has a smooth global section. Parallelizable spheres $S^0, S^1, S^3, S^7$ corresponding to $\RR, \CC, \mathbb{H}, \mathbb{O}$.

- Framed Bordism Classes of manifolds -- $\Omega^{fr}_n \cong \pi_n^S$

> Note: bordism is one of the coarsest equivalence relations we can put on manifolds. Hope to understand completely!

# Background


:::{.definition title="Homotopy"}
Given two paths $P_1, P_2: I \to X$ (where we identify the paths with their images under these maps), then a *homotopy* from $P_1$ to $P_2$ is a function
$$
H: I \to (I \to X) \\
H(0, \wait) = x_0 \\
H(1, \wait) = x_1 \\ \\
H(\wait, 0) = P_1(\wait)\\
H(\wait, 1) = P_2(\wait)\\
$$

such that the associated "partially applied" function $H_t: I \to X$ is continuous.

:::

:::{.definition title="Homotopic maps"}
Given two maps $f, g: X \to Y$, we say $f$ is *homotopic* to $g$ and write $f \sim g$ if there is a homotopy
$$
H: I \to (X \to Y) \\
H(0, \wait) = f(\wait)\\
H(1, \wait) = g(\wait)\\
$$

such that $H_t: X \to Y$ is continuous.
:::

:::{.remark}
Can think of this as a map from the cylinder on $X$ into $Y$, or deformations through continuous functions.
This is an equivalence relation. If $f: X \to Y$ is a map, we write $[X, Y]$ to denote the homotopy classes of maps $X$ to $Y$. 
:::

:::{.definition title="Fundamental group"}
\[
\pi_1(X) \definedas [S^1, X].
,\]
which measures homotopy classes of *loops* in $X$.
:::

Example: $\pi_1 T^2 = \ZZ^{\ast 2}$, a *free* abelian group of rank 2.


:::{.definition title="Higher homotopy groups"}
\[
\pi_n(X) \definedas [S^n, X].
\]
:::

:::{.remark}
Introduced by Čech in 1932, Alexandrov reportedly told him to withdraw because it couldn't possibly be the right generalization due to the following theorem:
:::

:::{.theorem title="Higher homotopy groups are abelian"}
\[
n\geq 2 \implies [S^n, X] \in \Ab
\]
:::

:::{.remark}
We have a complete classification of (finitely generated) abelian groups, so we know $\pi_n(X) = F \oplus T$ for some free and torsion parts.
:::

:::{.theorem title="Hopf, 1931"}
\[
[S^3, S^2] = \ZZ \neq 0
\]
:::

:::{.remark}
Recall that *homology* vanishes above the dimension of a given manifold.
This group is generated by the *Hopf fibration*, and provides infinitely many ways of "wrapping" a 3-sphere around a 2-sphere nontrivially! This was surprising and unexpected.
:::

:::{.definition title="CW Complex"}
A CW complex is any space built from the following inductive process:
Write $X_n$ for the $n\dash$skeleton.
\

- Let $X_0$ by a discrete set of points. 
- Let $X_{n+1}$ be obtained from $X_n$ by taking a collection of $n\dash$ balls and glue them to $X_n$ by maps $$\phi: \del B^n \to X_n$$.
- If infinitely many stages, let $X = \union X_n$ with the **weak topology** $A \subset X$ is open iff $A \intersect X_n$ is open for all $n$.


:::

Example: Every graph is a 1-dimensional CW complex

Example: Identification polyhedra for surfaces

Example: $S_n = e_0 + e_n$ by gluing $B^{n+1}$ to a point by a map $\phi: \del B^{n+1} \to \pt$, i.e. $B^{n+1} / B^n \cong S^n$. Can also attach two hemispheres at each $i\leq n$ to get $S^n = e_0 + e_1 + 2e_2 + \cdots + 2e_n$.

> Note: Cellular homology is very easy to compute!

> Note: Replacing $\phi$ with a homotopic map yields an equivalent CW complex. So understanding CW complexes boils down to understanding $[S^n, S^m]$ for $m < n$, i.e. higher homotopy groups of spheres.



:::{.definition title="Cellular Map"}
A map between $f:X \to Y$ between CW complex is *cellular* if $f(X_{(k)}) \subseteq Y_{(k)}$ for every $k$.
:::

:::{.theorem title="Cellular approximation"}
Any map $f: X \to Y$ is homotopic to a cellular map.
:::

:::{.example title="Application: low degree homotopy groups of spheres"}
$\pi_k S^n = 0$ if $k < n$. Use $f\in \pi_kS^n \iff f\in [S_k, S_n]$, deform $f$ to be cellular, then $f(S^k_{(k)}) \injects S^n_{(k)} = \pt$, so $f \homotopic c_0$, a constant map.
:::

:::{.definition title="Homotopy equivalence"}
Two spaces $X, Y$ are said to be *homotopy equivalent* if there exists a maps $f: X \to Y$ and $f\inv: Y \to X$ such that
$$
f\circ f\inv \homotopic \id_Y \\
f\inv \circ f \homotopic \id_X
$$

:::

:::{.definition title="Weak Equivalence"}
A continuous map
$$
f: X \to Y 
$$
is called a *weak homotopy equivalence* if the induced map
$$
f_*: \pi_*(X) \to \pi_*(Y)
$$
is a graded isomorphism.
:::

:::{.remark}
This is a strictly weaker notion than homotopy equivalence -- we don't require an explicit inverse.
A weak homotopy equivalence also induces isomorphisms on all homology and cohomology.
:::

:::{.theorem title="Whitehead"}
If $f: X\to Y$ is a weak equivalence between CW complexes, then it is a homotopy equivalence.
:::

:::{.corollary title="Relative Whitehead"}
If $f:X\to Y$ between CW complexes induces an isomorphism $H_* X \cong H_* Y$, then $f$ is a weak equivalence.
:::

:::{.theorem title="CW Approximation"}
For every topological space $X$, there exists a CW complex $\tilde X$ and a weak homotopy equivalence $f: X \to \tilde X$.
:::

:::{.remark}
\envlist

- Weak equivalences = equivalences for CW complexes, which means we can essentially throw out the distinction!

- This says that if we understand CW complexes, we essentially understand the category $\ho\Top$ completely. Moreover, we only have to understand spaces up to *weak* equivalence, i.e. we just need to check induced maps on $\pi_*$ instead of checking for inverse maps.
:::

:::{.definition title="Connectedness"}
A space is said to be $n\dash$connected if $\pi_{\leq n} X = 0$.
Recall that a space is *simply connected* iff $\pi_1 X = 0$.
:::

:::{.theorem title="Hurewicz"}
Given a fixed space $X$, any map $f \in \pi_kX = [S^k, X]$ has the type $f: S^k \to X$. This induces a map $f_*: H_* S^k \to H_* X$. Since $H_k S^k \cong \ZZ \cong \generators{\mu}$, define a family of maps
$$
h_k: \pi_k X \to H_k X \\
[f] \mapsto f_*(\mu)
$$

If $n\geq 2$ and $X$ is $n-1$ connected, then $h_k$ is an isomorphism for all $k\leq n$.

:::

:::{.remark}
If $k=1$, then $h_1$ is the abelianization of $\pi_1$.
:::




## Application
If $X$ a simply connected, closed 3-manifold is a homology sphere, then it is a homotopy sphere. 

- $H_0 X = \ZZ$ since $X$ is path-connected
- $H_1 X = 0$ since $X$ is simply-connected
- $H_3 X = \ZZ$ since $X$ is orientable
- $H_2 X = H^1 X$ by **Poincaré duality**. What group is this?
  - $0 \rightarrow \operatorname{Ext}_{\ZZ}^{1}\left(H_{0}(X ; \mathbb{Z}), \mathbb{Z}\right) \rightarrow H^{1}(X ; \mathbb{Z}) \rightarrow \operatorname{Hom}_{\mathbb{Z}}\left(H_{1}(X ; \mathbb{Z}), \mathbb{Z}\right) \rightarrow 0$ yields
  - $0 \rightarrow \operatorname{Ext}_{\ZZ}^{1}\left(\ZZ, \mathbb{Z}\right) \rightarrow H^{1}(X ; \mathbb{Z}) \rightarrow \operatorname{Hom}_{\mathbb{Z}}\left(0, \mathbb{Z}\right) \rightarrow 0$
  - Then $\operatorname{Ext}_{\ZZ}^{1}\left(\ZZ, \mathbb{Z}\right) = 0$ because $\ZZ$ is a projective $\ZZ\dash$module, so $H^1 X = 0$.
- So $H_*(X) = [\ZZ, 0, 0, \ZZ, 0, \cdots ]$
- So $h_3: \pi_3 X \to H_3 X$ is an isomorphism by **Hurewicz**. Pick some $f\in \pi_3 X \cong \ZZ$. By partial application, this induces an isomorphism $H_* S^3 \to H_* X$.
- Taking **CW approximations** for $S^3, X$, we find that $f$ is a homotopy equivalence.

# Other Topics

**Theorem (Freudenthal Suspension):**
If $X$ is an $n\dash$connected CW complex, then there is a map
$$
\Sigma: \pi_i X \to \pi_{i+1}\Sigma X
$$

which is an isomorphism for $i \leq 2n$ and a surjection for $i=2n+1$.

> Note: $[S^k, X] \mapsto [\Sigma S^k, \Sigma X] = [S^{k+1}, \Sigma X]$

> Application: $\pi_2 S^2 = \pi_3 S^3 = \cdots$ since $2$ is already in the stable range.

A consequence: $\pi_1 X \to \pi_2 \Sigma X \to \pi_3 \Sigma^2 X \to \cdots$ is eventually constant, we say the homotopy groups *stabilize*. So define the *stable homotopy groups
$$
\pi_i^S \definedas \lim_{k\to\infty} \pi_{i+k} X
$$

$X = S^n$ yields *stable homotopy groups of spheres*, ties back to initial motivation.

Noting that $\Sigma S^n = S^{n+1}$, we could alternatively define $\mathbb{S} \definedas \lim_k \Sigma^k S^0$, then it turns out that $\pi_n \mathbb{S} = \pi_n^S$. 

This object is a *spectrum*, which vaguely resembles a chain complex with a differential:
$$
X_0 \mapsvia{\Sigma} X_2 \mapsvia{\Sigma} X_3 \mapsvia{\Sigma} \cdots
$$

Spectra *represent* invariant theories (like cohomology) in a precise way. For example, 
$$
HG \definedas \left(K(G, 1) \mapsvia{\Sigma} K(G, 2) \mapsvia{\Sigma} \cdots \right)
$$

then $H^n(X; G) \cong [X, K(G, 1)]$, and we can similarly extract $H^*(X; G)$ from (roughly) $\pi_* HG \definedas [\mathbb{S}, HG \bigwedge X]$.

> Note: this glosses over some important details! Also, smash product basically just looks like the tensor product in the category of spectra.

A modern direction is cooking up spectra that represent *extraordinary* cohomology theories. There are Eilenberg–Steenrod axioms that uniquely characterize homology on spaces; if we drop $H^* \pt = 0$, we get generalized alternatives.

# Other Topics

- The homotopy hypothesis
- Generalized Cohomology theories
- Stable Homotopy Theory
- Infinity Categories
- Higher Homotopy Groups of Spheres
- Eilenberg Mclane and Moore Spaces

![](../figures/2019-11-06-11:51.png)

- Below jagged line: Zero by cellular approximation, or stable by Freudenthal suspension.
- Above line: Unstable range. Need to throw everything in the book at these guys to compute!
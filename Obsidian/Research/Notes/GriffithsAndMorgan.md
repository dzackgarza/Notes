# Griffiths and Morgan

Overall purpose: want to relate $C^\infty$ forms on a manifold to AT invariants. One significant result: given a manifold $M$, the singular cohomology $H^*(M, \RR)$ is isomorphic to the cohomology of the differential graded algebra of $C^\infty$ forms, $H^*_{DR}(M)$.

> Is this the de Rham cohomology..?

This DGA of smooth forms is actually enough to calculate all of the AT invariants, and can be used to build the Postnikov tower of $M$ ($\tensor \RR$)

One construction is the localization of a CW complex at $\QQ$, this removes torsion and divisibility phenomena. The effect on the Postnikov tower is just then tensoring with $\QQ$.

Things that are homotopy equivalent to CW complexes:

- Manifolds
- Varieties
- Loop spaces of CW complexes
- Eilenberg-MacLane spaces? $K(\pi, n)$.

The Whitehead theorem holds for these:
$X \mapsvia{f} Y$ is an homotopy equivalence iff $\pi_*(X) \mapsvia{f_*} \pi_*(Y)$ is an isomorphism.

Recall the weak topology for infinite CW complex: $U$ is open in $X$ iff $U \cap X^n$ is open for every $n$.

Theorem: Given any $X \mapsvia{f} Y$, we can transform this into an inclusion up to homotopy equivalence. (Just replace $Y$ my the mapping cylinder of $f$, denoted $M_f \homotopic Y$).

A fibration is anything that satisfies the homotopy lifting property. Examples:

- Locally trivial fiber bundles
- Vector bundles
- Covering spaces

Path spaces are fibrations, loop spaces are contractible.

Homology can be defined with coefficients in any abelian group by tensoring the singular chain groups with $G$. That is, if we $H_*(X)$ obtained from

$\mapsvia{\del_{n+1}} C_n(X) \mapsvia{\del_n} C_{n-1}(X) \mapsvia{\del_{n-1}} C_{n-2}(X) \cdots \mapsvia{\del_1} C_0(X)$

then we can define $H_*(X; G)$ via

$\mapsvia{\del_{n+1}\otimes 1} C_n(X)\otimes G \mapsvia{\del_n\otimes 1} C_{n-1}(X) \otimes G \cdots \mapsvia{\del_1\otimes 1} C_0(X) \otimes G$

Note that homology has the structure of a graded group, while cohomology has the structure of a graded commutative ring.

Axioms of homology:

- $X \mapsvia{f} Y$ always induces a map on homology $H_*(X) \mapsvia{f_*}H_*(Y)$
- An orientation on $S^n$ induces an isomorphism $H_n(S^n) \cong \ZZ$; reversing orientation induces the map $\ZZ \mapsvia{\phi}\ZZ: \phi(1) = -1$
- $Y\subseteq X$ yields the definition of relative homology $H_*(X, Y)$, and Mayer Vietoris holds; i.e. there is a long exact sequence
  $\cdots H_n(Y) \into H_n(X) \into H_n(X, Y) \into H_{n-1}(Y) \cdots$
- Excision: $U \subset Y \subset X$ and $\bar U \subset Y^\circ$ implies $H_*(X-U, Y-U) \cong H_*(X,Y)$.

Any homology theory satisfying these properties is equivalent to singular homology.

Use notation $[X, Y]$ for homotopy classes of maps $X\into Y$, then $\pi_1(X) = [S^1, X]$ and we can define $\pi_n(X) = [S^n, X]$. Homotopy groups fail excision.

Whitehead theorem: for CW complexes, if $X \mapsvia{f} Y$ induces $\pi_n(X) \mapsvia{f_*} \pi_n(Y)$ and $f_*$ is an isomorphism (and $Y$ is connected), then $f$ is a homotopy equivalence. For spaces that aren't CW complexes, this may fail, and we say $f$ is a *weak homotopy equivalence* instead.

Hurewicz theorem: the bottom homology and homotopy groups are isomorphic, and homology below the bottom homology is zero.

General note: there are equivalent "relative versions" of most of these theorems.

**Spectral Sequence:** Page 45.

For any fibration $F \mapsvia{} E \mapsvia{\pi} B$, we get a LES in homotopy
$\pi_n(F) \into \pi_n(E) \into \pi_n(B) \mapsvia{\del} \pi_{n-1}(F)$

Basic question: How are the cohomologies of $F,E,B$ related? An easy case is when $E=F\cross B$, but even then $\pi_n(F\cross B) \neq \pi_n(F) \oplus \pi_n(B)$. Need the Kunneth theorem, formula is more complicated.

For CW complexes and a fibration, the relationship is nice - look at the total space of the fibration. It is filtered by increasing $n$-skeleta, and we use the LES. More general filtrations need a spectral sequence.

*Note: use LES as trivial example of spectral sequence! Write out the pages, differentials, etc*

The spectral sequence relates the cohomology of *successive pairs* in the filtration to the cohomology of the total space.

**Theorem**: If $B$ is path-connected and $\pi_1(B, b_0)$ acts trivially on $H^*(F)$, then there are isomorphisms
$$
H^n(E^p, E^{p-1}) \cong \prod_{\text{$p$-cells in $B$}} H^n(\pi^{-1}e^p, \pi^{-1}\del e^p) \\ \cong C^p(B; H^{n-p}(F))
$$
In other words, for any $k$, we can think of $H^*(E^p, E^{p-k})$ as a $k$-th approximation to $H^*(E^p)$.

(Should probably review results about polynomial and exterior algebras. And what does it mean for $\pi_1$ to act trivially on a fiber?)

**EXAMPLES OF COMPUTATION: Page 54**

- Cohomology of $\CP^n$ using $S^1 \into S^{2n+1} \into \CP^n$
- Cohomology of the infinite Grassmannian $\lim_n G(k, n)$

## Postnikov Towers

A decomposition dual to cell decomposition, the atoms of the space are Eilenberg-Maclane spaces $K(\pi, n)$. (Note the spheres are atomic in homology, while the $K$ are atomic in homotopy.)

Gives a way of going back and forth between $X$ and $\pi_*(X)$: defined as a tower of spaces $X_0 \leftarrow X_1 \leftarrow \cdots$

- $X_{i-1} \leftarrow X_i$ is a fibration
- $\pi_k(X_n) = \mathbb{1}[k \leq n]\cdot\pi_k(X) + \mathbb{1}[k > n]\cdot 0$
  - So all lower homotopy groups agree at the $n$-th spot
- (Probably) $X_i \injects X$

Unique up to homotopy, $X = \lim_n X_n$ (an inverse limit). Essentially constructs $X$ out of $K(\pi_n(X), n)$.

*Note: revisit and draw diagrams for Postnikov Towers*

Homotopy and homology commute with direct limits.

$(\cdot \tensor \QQ)$ is a right-exact functor, most results in this section are about how terms in exact sequences all become $\QQ$-vector spaces. 
In particular, $H^*(X; \QQ), H_*(X;\QQ)$ are.

Homotopy theory over $\QQ$ is much easier than over $\ZZ$. 
Sample results:
$$
\pi_i(S^{2n-1}) \otimes \QQ = \begin{cases}
\QQ & i=2n-1 \\
0 & \text{otherwise}
\end{cases}
$$

Then using the fact that $\pi_i(S^{2n-1})$ is always finitely generated, we can conclude
$$
\pi_i(S^{2n-1}) = \begin{cases}
\ZZ & i=2n-1 \\
\text{a finite group}  ~G & \text{otherwise}
\end{cases}
$$
This yields for even $n$:
$$
\pi_i(S^{n})  = \begin{cases}
\ZZ & i=n \\
\ZZ \oplus G & i=2n-1 \\
H & \text{otherwise}
\end{cases}
$$
for some finite groups $G,H$!

Can also obtain Bott Periodicity this way.



# Reference List

- **Rational Homotopy Theory and Differential Forms** by Griffiths and Morgan
- **Differential Forms in Algebraic Topology** by Bott and Tu
- **Differential Topology** by Hirsch
- **Comprehensive Introduction to DIfferential Geometry** by Spivak
- **Topology from the Differentiable Viewpoint** by Milnor
- **Topology and Geometry** by Bredon



# Griffiths and Morgan

Overall purpose: want to relate $C^\infty$ forms on a manifold to AT invariants. One significant result: given a manifold $M$, the singular cohomology $H^*(M, \RR)$ is isomorphic to the cohomology of the differential graded algebra of $C^\infty$ forms, $H^*_{DR}(M)$.

*Is this the de Rham cohomology..?*

This DGA of smooth forms is actually enough to calculate all of the AT invariants, and can be used to build the Postnikov tower of $M$ ($\tensor \RR$)

One construction is the localization of a CW complex at $\QQ$, this removes torsion and divisibility phenomena. The effect on the postnikov tower is just then tensoring with $\QQ$.

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
- $Y\subseteq X$ yields the definition of relative homology $H_*(X, Y)$, and mayer vietoris holds; i.e. there is a long exact sequence
  $\cdots H_n(Y) \into H_n(X) \into H_n(X, Y) \into H_{n-1}(Y) \cdots$
- Excision: $U \subset Y \subset X$ and $\bar U \subset Y^\circ$ implies $H_*(X-U, Y-U) \cong H_*(X,Y)$.

Any homology theory satisfying these properties is equivalent to singular homology.

Use notation $[X, Y]$ for homotopy classes of maps $X\into Y$, then $\pi_1(X) = [S^1, X]$ and we can define $\pi_n(X) = [S^n, X]$. Homotopy groups fail excision.

Whitehead theorem: for CW complexes, if $X \mapsvia{f} Y$ induces $\pi_n(X) \mapsvia{f_*} \pi_n(Y)$ and $f_*$ is an isomorphism (and $Y$ is connected), then $f$ is a homotopy equivalence. For spaces that aren't CW complexes, this may fail, and we say $f$ is a *weak homotopy equivalence* instead.

Hurewicz theorem: the bottom homology and homotopy groups are isomorphic, and homology below the bottom homology is zero.

General note: there are equivalent "relative versions" of most of these theorems.

**Spectral Sequence:** Page 45

For any fibration $F \mapsvia{} E \mapsvia{\pi} B$, we get a LES in homotopy
$\pi_n(F) \into \pi_n(E) \into \pi_n(B) \mapsvia{\del} \pi_{n-1}(F)$
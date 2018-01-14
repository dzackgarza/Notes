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


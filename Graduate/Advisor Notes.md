# Benson Farb

[Part 2: Surface bundles, mapping class groups, moduli spaces, and cohomology](https://www.youtube.com/watch?v=E_Ly2NWX1g8)

29th Workshop in Geometric Topology, Oregon State University, June 29, 2012

- Talk about the theory surface bundles.
  - This talk: not so much related to his personal work!
  - Will revisit

[Part 3: Reconstruction problems in geometry and topology](https://www.youtube.com/watch?v=X0XBnKBKSDI)

- Work-in-progress!

Geometric motivation: a map $\phi \RR^n \to \RR^n$ if there is a matrix $A \in \GL(n, \RR)$ such that $\exists \vector{w} \in \RR^n :\forall \vector{v} \in \RR^n, \phi(\vector{v}) = A \vector{v} + \vector{w}.$

In other words, a composition of a linear map and a translation. Takes lines to lines, planes to planes.

Fundamental Theorem of Affine Geometry:
Suppose you have a set map that is a bijection $\Phi: \theset{\text{affine subspaces of } \RR^n, \dim \geq 0} \selfmap$ which satisfies
$$
P_1 \subseteq P_2 \implies \Phi(P_1) \subseteq \Phi(P_2),
$$

then for $n\geq 3$, $\Phi$ is induced by a unique affine map $\phi$.

Much easier theorem: if you start with a bijective set map $\RR^n \selfmap$ which takes lines to lines, then it's affine. (Darboux 1800s)

Importance: proving [Mostow rigidity](https://en.wikipedia.org/wiki/Mostow_rigidity_theorem) (related to rigidity of lattices, semi-simple Lie groups, etc); many have seen in real hyperbolic case, but in higher rank cases (more important) for lattices in $\SL(n, \RR)$, this is a key ingredient in the proof.

A variation: suppose $\Phi: \theset{\text{lines in } \RR^n} \selfmap$ is a bijection. Look at $n=2$ case.

Suppose that for all distinct lines $L_1, L_2, L_3$, triple intersections are preserved:
$$
L_1 \intersect L_2 \intersect L_3 \neq \emptyset \iff \Phi(L_1) \intersect \Phi(L_2) \intersect \Phi(L_3) \neq \emptyset,
$$

then $\Phi$ is induced by an affine map $\phi$.

Remark: false if $\Phi$ only preserves double points (and not triple points).


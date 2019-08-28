# Intersection Theory

Interpretation: geometric interpretation of the cup product.

Recall that we had an idea of representation homology classes in a space $X$ by maps from a closed connected manifolds $f: P \to X$. We can then take the push forward of a fundamental class $f_*[P] \in H_p(X; \ZZ)$ where $[P] \in H_p(P)$

The best case is when $X = M^n$ is a closed $n\dash$dimensional closed manifold and $f$ is the inclusion of a *locally flat submanifold*.

Definition: A subset of $P \subseteq M^n$ which is locally homeomorphic to $\RR^p$ is a *locally flat submanifold* if at every point $x\in P$ there exists a neighborhood $U$ of $x$ in $M$ and a homeomorphism $$\phi: (U, U\cap P, x) \to (\RR^n, \RR^p \cross \theset{0}, \theset{0})$$.

Warning: An example of a non locally flat submanifold: take the trefoil knot $K$ in $S^3 \subset B^4$ and cone it to the origin to produce $CK$ - fails local flatness at the origin, despite the fact that $CK \cong B^2$. Every neighborhood of the origin contains a copy of $K$ and **not** a copy of $S^1 \in S^3$ unknotted.

In general, the operation of taking a cone on a smooth manifold will not produce a smooth manifold - but in the topological world, sometimes this works out.

Example: look at Poincare 3-sphere $P^3$, which has the same homology as $S^3$. Even though $\Sigma P^3$ may not be a manifold a priori, we actually have $\Sigma^2 P^3 \cong S^5$.

Note that while we may expect two $p\dash$ dimensional submanifolds to just intersect in some number of points (e.g. a curve intersecting a torus inside $B^4$ or something), but there may be some degenerate cases: they might be tangent, or part of one may lie inside the other.

Definition: If $P^p, Q^q$ are locally flat submanifolds of $M$, we say that they *intersect transversally* $P \pitchfork Q$ when:

1. Case 1
$p+q < n \implies P \cap Q = \emptyset$

2. Case 2
$p+1 \geq n$ then we require that $\forall x\in P \cap Q$, there exists a local neighborhood $U \subset M$ and a homeomorphism
$$\phi: (U, U\cap P\cup Q, x) \to (\RR^n, \RR^p \cross \theset{0} \cup \theset{0} \cross \RR^q, \theset{0})$$

Note: this ensures that $P\cap Q$ is a $(p+q-n)\dash$manifold.

Note: for vector spaces $X, Y \subset V$ where $p,q \leq n$, we can then say they are transverse exacty when $X \oplus Y = V$ (so $X, Y$ span $V$). This is primarily because $\dim (X \cap Y) = \dim X + \dim Y - \dim(X\oplus Y)$. In the case of smooth manifolds, you might actually use this as a definition: two manifolds intersect transversally iff their tangent planes span the ambient tangent space.


Remark: If we had smooth manifolds $P, Q$ (i.e. differential topology), then Sard's theorem plus extra work would show that there exist arbitrarily small perturbations of $P, Q$ such that $P \pitchfork Q$.

Example: look at parabola hitting a plane at a point. Move one way to make disjoint, get empty set intersection - trivially satisfies conditions of transversality. Move the other way to intersect exactly twice.

Makes certain degenerate cases easier - i.e. a curve intersecting a plane in an interval, or doing something like $\sin(1/x)$ on a surface.

Number of points of intersection is not exactly a homotopy invariant, since in the above example we could make the intersection number either 2 or 0. However, the *parity* can be proved to be such an invariant in the smooth setting. This leads into Morse theory. For example, look at cubic intersecting plane - perturbations will coalesce two intersection points, which would be a Morse critical point.

In this world, you'll have vocabulary available 

- Generic
- Stable
- Regular
- Transverse
- Random

For example, look at $\mathcal{M} = [S^1, \RR^3]$. Transverse maps are an open and dense subset of this parameter space. Imagine as blob cut up by "walls" which are the closed subsets of bad maps. Not only are the good maps dense, but they are stable - everything in a small enough neighborhood will also be good. A random map picked from this space will be good with probability 1. Two such maps can be generically homotoped without hitting the intersection of the singular walls (i.e. just going through walls, not intersection points). This ultimately just boils down to looking at Taylor series - generically, the first coefficient is nonzero, so intersects $x\dash$axis transversally - if not, the second coefficient is probably nonzero, so intersects quadratically, etc.

Theorem: If $P^p, Q^q$ are transverse in $M^n$ where $p+q=n$ (and everything closed and oriented), then $\#(P \cap Q)= \langle D^{-1}[P] \smile D^{-1}[Q], [M] \rangle$ where the first entry is a cup product between $H^q(M; \ZZ), H^p(M; \ZZ)$. This is an algebraic and homotopy invariant on the RHS, and geometric on the LHS.

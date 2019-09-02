# Homology

What is homology? Seems to be ubiquitous in mathematics, pops up in number theory, algebraic geometry, topology (obviously), ...?

Many routes to motivate it, we'll take the topological tact. Coming up:

1. Simplicial Homology
   Of simplicial complexes, a la Poincare ~1900
   Easier to compute
2. Singular Homology
   Easier to define, more general
   Harder to compute, need theorems



Definition: An *n-simplex* $\sigma = (a_0, \cdots a_n) \subseteq \RR^n$ is a *convex hull* of $n+1$ points when the points are *affinely independent*.

The convex hull is $\theset{\sum \lambda_i a_iL \mid 0 \leq \lambda_i \leq 1, \sum \lambda_i = 1}$, i.e. set of centers of gravity of masses placed at vertices.

They are affinely independent if there is a unique expression of every point in barycentric coordinates. $\sum v_i a_i = 0 \text{ and } \sum v_i = 0 \implies v_i = 0 ~\forall i$. It follows that if $\sum \lambda_i a_i = \sum \mu_i a_i$ then $\lambda_i = \mu_i ~\forall i$.

The *face* of an $n$-simplex are the subsets where the barycentric coordinates are 0. Consider a triangle with points $\lambda a, \mu b, \nu c$, then one edge is a face ($\lambda=0$), as is another $(\nu = 0$), as is the point $\mu b$ where $\nu  = \lambda = 0$. An $n$-simplex has $2^n - 1$ faces, including the entire thing ($2^n - 2$ otherwise)

A *simplicial complex* is a set $K$ of simplexes in $\RR^n$, say $K = \theset{\sigma_0, \sigma_1 \cdots \sigma_n}$, such that they are pasted together correctly, i.e.

1. $\sigma \in K \text{ and } \tau \subset \sigma \implies \tau \in K$
2. If $\sigma, \sigma' \in K$ then they overlap in a common face, i.e. either $\sigma \intersect \sigma' = \emptyset \or \sigma\intersect\sigma'$ is a face of both $\sigma,\sigma'$.

Given such a $K$, define $\abs{K} = \union_{\sigma\in K} \sigma \subseteq \RR^n$ a topological space.

A *triangulation* of a space $X$ is a homeomorphism $h: X \into \abs{K}$ for some $K$.

For example, $S^1 \cong $ a triangle (can't allow curved stuff or multiple edges!), has 6 simplexes

$S^2 \cong $ a tetrahedron with 14 simplexes.

Definition: an *abstract simplicial complex* is a set $V$ of vertices together with a set $K \subset P(V)$ of subsets of $V$ which is closed under taking subsets ($\sigma \in K \text{ and } \tau \subseteq \sigma \implies \tau \in K$)

Example, $V = \theset{1,2,3,4}$, then a simplex $K = \theset{\theset{1}, \theset{2}, \theset{3}, \theset{4}, \theset{1,2}. \theset{2,3}, \theset{1,3}, \theset{1,2,3}}$.

A geometric realization: we can embed $K$ inside $\RR^{\abs{V}}$ where each basis vector is in correspondence with each vertex. Then $\sigma$ maps to the convex hull of its vertices.

Moral of the story: abstract simplicial complexes can be realized as geometric simplicial complexes.

An *orientation* of a simplex is a choice of ordering of vertices up to even permutations, i.e. $(a,b,c) = (c,a,b) = (b,c,a) \neq (b,a,c) = (c,b,a) = (a,c,b)$. A point is a special case, there is two orientations, $\pm *$. Take $+*$ to be the canonical orientation. 

How does this work in 3 dimensions? Take $(a,b,c,d)$ be an orientation on a tetrahedron - this is roughly equivalent to choosing an oriented frame, but there are many interpretations. So just view as equivalence classes under modding out by even permutations.

Definition: If $K$ is a simplicial complex, let $C_n(K)$ be the free abelian group on oriented $n$-simplexes in $K$ quotiented by $\bar\sigma \sim -\sigma$. Add twice as many simplexes then quotient out..? Avoids making choices of orientation everywhere! Then each oriented $n$-simplex maps into $C_n(K)$ in a natural way.

Definition: A boundary map $\bd: C_n K \into C_{n-1} K$ by linearly extending the formula $\bd(a_0 \cdots a_n) = \sum_{i=1}^n (-1)^i (a_0, \cdots \hat{a_i} \cdots a_n)$, where the summand denotes the face spanned by all vertices except $a_i$.

Example: $\del (a,b) = (b) - (a)$, $\del(a,b,c) = (b,c) - (a,c) -+(a,b)$.

So a line segment $a \mapsto b$ goes to $-a$ and $+b$.

An oriented triangle $abc$ goes to the three line segments oriented in the same way.

Need to check that $\bd​$ is well defined - check that applying a transposition, e.g. $(a_0 a_1)​$. What happens?

$\bd (a_1, a_0, a_2, \cdots a_n) = (a_0, a_2, \cdots a_n) - (a_1, a_2, \cdots a_n) + \sum \text{stuff} = -\bd (a_0, a_1, a_2, \cdots a_n)$, so equality is preserved under even permutations.

Lemma: $\bd^2 = 0$

Consider $C_n K \into_{\del_n} C_{n-1} K \into_{\del_{n-1}} C_{n-2} \into \cdots$




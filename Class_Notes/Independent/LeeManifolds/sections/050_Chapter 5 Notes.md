# Chapter 5: Submanifolds 

[Textbook Reading, Manifolds (Lee)](../Textbook%20Reading,%20Manifolds%20(Lee).md)

## When Submanifolds are Embedded

The most important type of manifolds: embedded submanifolds.
Most often described as the *level set* of a smooth map, but needs extra conditions.
The level sets of constant rank maps are always embedded submanifolds.

More general: immersed submanifolds.
Locally embedded, but may have global topology different than the subspace topology.

:::{.definition title="Embedded Submanifolds"}
For $S\subseteq M$ in the subspace topology, with a smooth structure such that the inclusion $S\injects M$ is smooth.
If $S\injects M$ is a proper map, then $S$ is **properly embedded**.
:::

:::{.definition title="Embedded Hypersurface"}
An embedded submanifold of codimension 1.
:::


:::{.proposition title="Embedded Codimension 0 Subsets are Open Submanifolds"}
A subset $S\subseteq M$ of codimension zero is an embedded submanifold iff $S$ is an open submanifold.
:::

A way to produce submanifolds:
:::{.proposition}
If $F:N\to M$, then $F(N)$ is a submanifold of $M$ with the subspace topology and a unique smooth structure making $F$ a diffeomorphism onto its image and $F(N)\injects M$ and embedding. 
:::

Thus every embedded submanifold is the image of an embedding, namely its inclusion.

Embedded submanifolds are exactly the images of smooth embeddings:
:::{.proposition}
The slices $M\cross\theset{p}$ for $p\in N$ are embedded submanifolds of $M\cross N$ diffeomorphic to $M$.
:::

:::{.proposition}
For $f:U\to N$ with $U\subseteq M$,
\[  
\Gamma(f) \definedas \theset{(x, f(x)) \in M\cross N \suchthat x\in U} \injects M\cross N
\]
is an embedded submanifold.
:::

Note: any manifold that is locally the graph of a smooth function is an embedded submanifold.

:::{.proposition}
$S\injects M$ is a properly embedded submanifolds $\iff$ $S$ is a closed subset of $M$.
Thus every compact embedded submanifold is properly embedded.
:::

## The Slice Condition

Embedded submanifolds are locally modeled on the standard embedding $\RR^k \injects \RR^n$ where $\vector x \mapsto \thevector{\vector x, \vector 0}$.

:::{.proposition title="Local $k\dash$slice Condition"}
$S\subseteq M$ satisfies the **local $k\dash$slice condition** iff each $s\in S$ is in the domain of a smooth chart $(U, \phi)$ such that $S\intersect U$ is a single $k\dash$slice in $U$.
:::

:::{.proposition title="Local Slice Criterion for Embeddings"}
$S\injects M$ is an embedded $k\dash$dimensional submanifold $\iff$ $S$ satisfies the local $k\dash$slice condition.
Moreover, there is a unique smooth structure on $S$ for which this holds.
:::

For manifolds with boundary, $\bd M \injects M$ is a proper embedding.
Every such manifold can be embedded in a larger manifold $\tilde M$ without boundary.

## Level Sets

:::{.definition title="Level Sets"}
For $\phi:M\to N$ and $c\in N$, $\phi^{-1}(c)$ is a *level set* of $\phi$.
:::

Examples:

- $f(x, y) = x^2-y$, then $V(f) \injects \RR^2$ is an embedding since it is the graph of the smooth function $x\mapsto x^2$.
- $f(x, y) = x^2 - y^2$ is not an embedded submanifold.
- $f(x, y) = x^2 - y^3$ is not an embedded submanifold.


Every closed $S\subset M$ is the zero set of some smooth function $M\to \RR$.

:::{.theorem title="Constant Rank Level Set Theorem"}
For $\phi: M\to N$ with constant rank $r$, each level set of $\phi$ is a properly embedded codimension $r$ submanifold.
:::

:::{.corollary title="Submersion Level Set Theorem"}
If $\phi: M\to N$ is a smooth submersion, then the level sets are properly embedded of codimension $\dim N$.
:::

:::{.proof}
Every smooth submersion has constant rank equal to the dimension of the codomain.
:::

Analogy: for $L:\RR^m\to \RR^r$ a surjective linear map, $\ker L \leq \RR^m$ has codimension $r$ by rank-nullity.
Surjective linear maps are analogous to smooth submersions.

:::{.definition title="Regular and Critical Points"}
If $\phi: M\to N$ is smooth, $p\in M$ is a **regular point** if $d\phi$ is surjective and a **critical point** otherwise.
A point $c\in N$ is a **regular value** if every point in $\phi^{-1}(c)$ is a regular point, and a **critical value** otherwise.
A set $\phi^{-1}(c)$ is a **regular level set** iff $c$ is a regular value.
:::

Note that if every point of $M$ is critical then $\dim M < \dim N$, and every point is regular $\iff$ $F$ is a submersion.
The set of regular points is always open.

:::{.theorem title="Regular Level Set Theorem"}
Every regular level set of a smooth map $\phi: M\to N$ is a properly embedded submanifold of codimension $\dim N$.
:::

:::{.definition title="Defining Map for an Embedding"}
If $S\injects M$ is an embedded submanifold, a **defining map** for $S$ is the smooth map $\phi: M\to N$ such that $S$ is a regular level set of $\phi$, if such a map exists.
:::

Example: $f(\vector x) = \norm{\vector x}^2$ is the defining map for $S^n$.

Not every embedded submanifold is the level set of a smooth submersion globally, but this does hold locally.
I.e., every embedded submanifold admits a local defining map:
:::{.proposition}
$S_k\injects M_m$ is an embedded $k\dash$dimensional submanifold $\iff$ every $s\in S$ admits a neighborhood $U$ such that $U\intersect S$ is the level set of a smooth submersion $U\to \RR^{m-k}$.
:::

## Immersed Submanifolds

Immersed submanifolds: more general than embedded submanifolds.
Encountered when studying Lie subgroups, where subsets will be the images of injective immersions but not necessarily embeddings (example: figure eight curve).

:::{.definition title="Immersed Submanifold"}
A subset $S\subseteq M$ equipped with some topology for which the inclusion $S\injects M$ is a smooth immersion is said to be an **immersed submanifold**.
:::

Convention: smooth submanifolds always denote immersions, whereas embeddings are a special case.

# Chapter 5: Submanifolds 

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
\Gamma(f) \definedas \theset{(x, f(x)) \in M\cross N \suchthat x\in U,\} \injects M\cross N
\]
is an embedded submanifold.
:::

Note: any manifold that is locally the graph of a smooth function is an embedded submanifold.

:::{.proposition}
$S\injects M$ is a properly embedded submanifolds $\iff$ $S$ is a closed subset of $M$.
Thus every compact embedded submanifold is properly embedded.
:::

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


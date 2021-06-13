---
date: 2021-04-26
aliases: ["vector bundle"]
---

Tags: #homotopy #topology

Topics:

- [bundle](bundle.md)
- [Chern class](Chern%20class)
- [Chern character](Chern%20character)
- [Thom class](Thom%20class)
- [Thom space](Thom%20space.md)
- [Thom isomorphism](Thom%20isomorphism)
- [Thom-Pontryagin construction](Thom-Pontryagin%20construction)
- [stable framing](stable%20framing.md)
- [clutching function](clutching%20function)


# Definitions 

- Notation: $\Vect_r(X)$: isomorphism classes of rank $r$ vector bundles over $X$.


:::{.definition title="Rank of a vector bundle"}
A **rank $n$ vector bundle** is a [fiber bundle](fiber%20bundle.md) in which the fibers $F$ have the structure of a vector space $k^n$ for some field $k$; the [structure group](Reduction%20of%20structure%20group.md) of such a bundle is a subset of $\GL(n, k)$.
:::

> Note every rank 1 bundle is trivial: consider the [Möbius strip](Möbius%20strip).

:::{.remark}
Note that a vector bundle always has one [global section](section%20of%20a%20bundle.md): namely, since every fiber is a vector space, you can canonically choose the 0 element in every fiber.
This yields [[global section]], the [[zero section]].
:::

:::{.definition title="Trivial bundle"}
A vector bundle $F\to E\to B$ is **trivial** if $E \cong F \cross B$.
:::

See also [parallelizable](framed.md) manifolds.

:::{.proposition title="Trivial iff linearly independent sections"}
A rank $n$ vector bundle is trivial iff it admits $k$ linearly independent global sections.
:::

:::{.example title="?"}
The tangent bundle of a manifold is a vector bundle. Let $M^n$ be an $n\dash$dimensional manifold. For any point $x\in M$, the [tangent space](tangent%20bundle.md) $T_xM$ exists, and so we can define
$$
TM = \coprod_{x\in M} T_xM = \theset{(x, t) \mid x\in M, t \in T_xM}
$$

Then $TM$ is a manifold of dimension $2n$ and there is a corresponding fiber bundle
$$
\RR^n \to TM \mapsvia{\pi} M
$$

given by a natural projection $\pi:(x, t) \mapsto x$
:::

:::{.example title="?"}
A circle bundle is a [fiber bundle](fiber%20bundle.md) in which the fiber is isomorphic to $S^1$ as a topological group. Consider circle bundles over a circle, which are of the form
$$
S^1 \to E \mapsvia{\pi} S^1
$$

There is a trivial bundle, when $E = S^1 \cross S^1 = T^2$, the torus:
![torus bundle](figures/torus-bundle.png)

There is also a nontrivial bundle, $E = K$, the Klein bottle:
![Klein bottle](figures/klein-bottle.png)

As in the earlier example involving the [Möbius strip](Möbius%20strip), since $K$ is [nonorientable](orientable), $T^2 \not\cong K$ and there are thus at least two distinct bundles of this type.
:::





# Classification

-  There is an equivalence of categories between [To Review/2021-04-25_vector_bundles_ug](To%20Review/2021-04-25_vector_bundles_ug.md) and modules over continuous functionals:
$$
\Bun(\RR, X)_{\rk = n} \mapsvia{\sim} \modsleft{\Top(X, \RR)}^{\fg, \proj}_{\rk = n}
.$$ 
See [Swan's theorem](Swan's%20theorem), [projective modules](projective%20modules)
- A vector bundle continuously assigns a vector space to every point of $X$.  
- The $k\dash$dimensional vector bundles over $X$ are equivalent to the homotopy classes of maps from $X$ to a fixed space $[X, \B O_k]$. 
	- Dimension or rank???
- As with many geometric problems, classification of isomorphism classes of $k\dash$dimensional vector bundles is reduced to the computation of homotopy classes of maps. 
- Studying $\B\O_k$ is very useful for this probkem, it comes about by a standard construction which builds a [classifying space](classifying%20space.md), $\B G$, for any group $G$.

- Complex rank 1 bundles are classified by $\CP^\infty \homotopic \B \U_1(\CC)  \homotopic K(\ZZ, 2)$.
- Universal complex vector bundle:
$\xi_{n}: E_n \rightarrow \B \U_n(\CC)$
	where $\B \U_n \cong \Gr_n(\CC^\infty)$ is a [Grassmannian](Grassmannian.md).
	
	
Todo: clean up and make precise! #todo 
Maybe add from [To Review/2021-04-25_vector_bundles_ug](To%20Review/2021-04-25_vector_bundles_ug.md)


# Unsorted

![](attachments/Pasted%20image%2020210613122600.png)
![](attachments/Pasted%20image%2020210613122620.png)
![](attachments/Pasted%20image%2020210613122630.png)

- $E\dual \tensor F \cong \Hom(E, F)$.
- ![](attachments/Pasted%20image%2020210613122725.png)
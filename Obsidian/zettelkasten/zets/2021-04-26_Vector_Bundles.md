---
date: 2021-04-26
tags: 
  - Unfiled
---

# Vector Bundles

**Definition:** A _rank $n$ vector bundle_ is a fiber bundle in which the fibers $F$ have the structure of a vector space $k^n$ for some field $k$; the structure group of such a bundle is a subset of $\GL(n, k)$.

Note that a vector bundle always has one global section: namely, since every fiber is a vector space, you can canonically choose the 0 element to obtain a global zero section.

**Proposition**: A rank $n$ vector bundle is trivial iff it admits $k$ linearly independent global sections.

**Example:** The tangent bundle of a manifold is an $\RR$-vector bundle. Let $M^n$ be an $n\dash$dimensional manifold. For any point $x\in M$, the tangent space $T_xM$ exists, and so we can define
$$
TM = \coprod_{x\in M} T_xM = \theset{(x, t) \mid x\in M, t \in T_xM}
$$

Then $TM$ is a manifold of dimension $2n$ and there is a corresponding fiber bundle
$$
\RR^n \to TM \mapsvia{\pi} M
$$

given by a natural projection $\pi:(x, t) \mapsto x$

**Example** A circle bundle is a fiber bundle in which the fiber is isomorphic to $S^1$ as a topological group. Consider circle bundles over a circle, which are of the form
$$
S^1 \to E \mapsvia{\pi} S^1
$$

There is a trivial bundle, when $E = S^1 \cross S^1 = T^2$, the torus:
![torus bundle](figures/torus-bundle.png)

There is also a nontrivial bundle, $E = K$, the Klein bottle:
![Klein bottle](figures/klein-bottle.png)

As in the earlier example involving the Möbius strip, since $K$ is nonorientable, $T^2 \not\cong K$ and there are thus at least two distinct bundles of this type.

---

*Remark*: A section of the tangent bundle $TM$ is equivalent to a _vector field_ on $M$.

**Definition**: If the tangent bundle of a manifold is trivial, the manifold is said to be *parallelizable*.

**Proposition:** The circle $S^1$ is parallelizable.

*Proof* Let $M = S^1$, then there is a rank 1 vector bundle\
$$\RR \to TM \to M$$
and since $TM = S^1 \cross \RR$ (why?), we find that $S^1$ is parallelizable. $\qed$

**Proposition:** The sphere $S^2$ is not parallelizable.

*Proof*: Let $M = S^2$, which is associated to the rank 2 vector bundle
$$\RR^2 \to TM \to M$$

Then $TM$ is trivial iff there are 2 independent global sections. Since there is a zero section, a second independent section must be everywhere-nonzero - however, this would be a nowhere vanishing vector field on $S^2$, which by the Hairy Ball theorem does not exist.

Alternate proof: such a vector field would allow a homotopy between the identity and the antipodal map on $S^2$, contradiction by basic homotopy theory.$\qed$

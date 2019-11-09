---
title: Problem Set 1
---

# Problem 6

## Part 1

Let $M = S^2$ as a smooth manifold, and consider a vector field $X: M \to TM$ on $M$; we want to show that there is a point $p\in M$ such that $X(p) = 0$.

Every vector field on a compact manifold without boundary is complete, and since $S^2$ is compact with $\del S^2 = \emptyset$, the vector field $X$ is complete.

Thus every integral curve of $X$ exists for all time, yielding a well-defined flow 
$$
\phi: M \cross \RR \to M,
$$ 
and thus a one-parameter family 
$$
\phi_t: M \to M \in \mathrm{Diff{M, M}}.
$$ 

In particular, $\phi_0 = \id_M$, and $\phi_1$ is an arbitrary diffeomorphism of $M$, and moreover $\phi_0$ is homotopic to $\phi_1$ with homotopy given by 
$$
H: M \cross I \to M
(p, t) \mapsto \phi_t(p)
$$

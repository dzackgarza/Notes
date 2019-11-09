---
title: Problem Set 1
---

# Problem 6

## Part 1

Let $M = S^2$ as a smooth manifold, and consider a vector field on $M$,
$$
X: M \to TM
$$
We want to show that there is a point $p\in M$ such that $X(p) = 0$.

Every vector field on a compact manifold without boundary is complete, and since $S^2$ is compact with $\del S^2 = \emptyset$, $X$ is necessarily a complete vector field.

Thus every integral curve of $X$ exists for all time, yielding a well-defined flow 
$$
\phi: M \cross \RR \to M
$$ 
and thus a one-parameter family 
$$
\phi_t: M \to M \in \mathrm{Diff}(M, M).
$$ 

In particular, $\phi_0 = \id_M$, and $\phi_1 \in \mathrm{Diff}(M, M)$. Moreover $\phi_0$ is homotopic to $\phi_1$ via the homotopy

\begin{align*}
H: M \cross I &\to M \\
(p, t) &\mapsto \phi_t(p)
\end{align*}

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

given by solving the initial value problems
$$
\dd{}{s} \phi_s(p) \Bigm|_{s = t} = X(\phi_t(p)),\\
\phi_0(p) = p
$$
at every point $p\in M$.

This yields a one-parameter family 
$$
\phi_t: M \to M \in \mathrm{Diff}(M, M).
$$ 

In particular, $\phi_0 = \id_M$, and $\phi_1 \in \mathrm{Diff}(M, M)$. Moreover $\phi_0$ is homotopic to $\phi_1$ via the homotopy

\begin{align*}
H: M \cross I &\to M \\
(p, t) &\mapsto \phi_t(p).
\end{align*}

We can now apply the Lefschetz fixed-point theorem to $\phi_0$ and $\phi_1$. For an arbitrary map $f: M \to M$, we have
$$
\Lambda(f) = \sum_k \Tr\left( f_* \Bigm|_{H_k(X; \QQ)} \right).
$$

where $f_*: H_*(X; \QQ) \to H_*(X; \QQ)$ is the induced map on homology, and 

$$
\Lambda(f) \neq 0 \iff f\text{ has at least one fixed point.}
$$

In particular, we have
\begin{align*}
\Lambda(\id_M) &= \sum_k \Tr(\id_{H_k(X; \QQ)}) \\
&= \sum_k \dim H_k(X; \QQ) \\
&= \chi(M),
\end{align*}
the Euler characteristic of $M$.

Since homotopic maps induce equal maps on homology, we also have $\Lambda(\phi_1) = \chi(M)$.

Since 
$$
H_k(S^2) = \begin{cases}
\ZZ & k = 0, 2 \\
0 & \text{otherwise}
\end{cases}
$$

we have $\chi(S^2) = 2 \neq 0$, and thus $\phi_1$ has a fixed point, so 
\begin{align*}
\phi_1(p) =& p \\
\implies \dd{}{t} \phi_1(p) =& \dd{}{t} p = 0 \\
\implies \dd{}{t} \phi_1(p) \Bigm|_{t = 0} &= X(
\end{align*}
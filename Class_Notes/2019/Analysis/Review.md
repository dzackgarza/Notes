---
title: Review
---

# Fall 2019

## 4

> See Problem Set 8.

**Bessel's Inequality:**
For any orthonormal set in a Hilbert space (not necessarily a basis), we have
$$
\sum_{n=1}^\infty \abs{\inner{x}{u_n}}^2 \leq \norm{x}^2
$$

*Proof:*
$$
0 \leq\left\|x-\sum_{k=1}^{n}\left\langle x, e_{k}\right\rangle e_{k}\right\|^{2}
$$

**Corollary (Parseval's Identity):**
If $\span \theset{u_n}$ is dense in $\mathcal{H}$, so it is a basis, then this is an equality.

**Riesz-Fischer:**

1. The map

\begin{align*}

mathcal{H} &\to \ell^2(\NN) \\
\vector x &\mapsto \theset{\inner{\vector x}{\vector u_n}}_{n=1}^\infty
\end{align*}

is surjective.

2. If $\theset{\vector u_n}$ is orthonormal and $\theset{a_n} \in \ell^2(\NN)$, then there exists a $\vector x \in \mathcal{H}$ such that
$$
a_n = \inner{\vector x}{\vector u_n} \quad \forall n.
$$

3. $\vector x$ can be chosen such that
$$
\norm{\vector x}^2 = \sum \abs{a_n}^2
$$

> Note: the choice of $\vector x$ is unique $\iff$ $\theset{u_n}$ is **complete**, i.e. $\inner{\vector x}{\vector u_n} = 0$ for all $n$ implies $\vector x = \vector 0$.

*Proof:*

- Given $\theset{a_n}$, define $S_N = \sum^N a_n \vector u_n$.
- $S_N$ is Cauchy in $\mathcal{H}$ and so $S_N \to \vector x$ for some $\vector x \in \mathcal{H}$.
- $\inner{x}{u_n} = \inner{x - S_N}{u_n} + \inner{S_N}{u_n} \to a_n$
- By construction, $\norm{x-S_N}^2 = \norm{x}^2 - \sum^N \abs{a_n}^2 \to 0$, so $\norm{x}^2 = \sum^\infty \abs{a_n}^2$.

## 5

See Problem Set 5.

**Heine-Cantor theorem:**
Every continuous function on a compact set is uniformly continuous.

Uniform continuity:

\begin{align*}
    &\forall \varepsilon \quad \exists \delta(\varepsilon) \mid \quad \forall x, y, \quad \abs{x - y} < \delta \implies \abs{f(x) - f(y)} < \varepsilon \\
 \iff &\forall \varepsilon \quad \exists \delta(\varepsilon) \mid \quad \forall x, y, \quad \abs{y} < \delta \implies \abs{f(x-y) - f(y)} < \varepsilon \\
.\end{align*}

Fubini-Tonelli interchange of integrals, where the change of bounds becomes very important.

Continuity in $L^1$: 
$$
\lim_{y\to 0} \norm{\tau_y f - f}_1 = 0.
$$



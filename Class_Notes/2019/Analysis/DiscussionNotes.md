---
title: "Discussion Notes"
---

# Discussion 1

If $X$ is an $F_\sigma$ set, then
$$
X = \union_{i=1}^\infty F_i \quad \text{with each $F_i$ closed.}
$$

If $X$ is a $G_\delta$ set, then
$$
X = \intersect_{i=1}^\infty G_i \quad \text{with each $G_i$ open.}
$$

A set $A$ is *nowhere dense* iff $(\overline{A})^\circ = \emptyset$ iff for any interval $I$, there exists a subinterval $S$ such that $S \intersect A = \emptyset$. This is a set that is not dense in any nonempty open set. If the closure of a subset of $\RR$ contains no open intervals, it will be nowhere dense.

A set $A$ is *meager* or *first category* if it can be written as
$$
A = \union_{i\in \NN} A_i\quad \text{with each $A_i$ nowhere dense}
$$

A set $A$ is *null* if for any $\varepsilon$, there exists a cover of $A$ by countably many intervals of total length less than $\varepsilon$, i.e. there exists $\theset{I_k}_{j\in\NN}$ such that $A\subseteq \union_{j\in \NN} I_j$ and $\sum_{j\in \NN}\mu(I_j) < \varepsilon$. If $A$ is null, we say $\mu(A) = 0$.

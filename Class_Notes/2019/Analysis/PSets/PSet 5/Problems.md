---
title: Problem Set 5
---

# Problem 1

We first make the following definitions:
\[
\begin{align*}
S \coloneqq \sum_{j=1}^\infty \sum_{k=1}^\infty a_{jk} &= \sup \theset{\sum_{(j, k) \in B} a_{jk} \suchthat B \subset \NN^2,~ \abs B < \infty} \\
T \coloneqq \sum_{k=1}^\infty \sum_{j=1}^\infty a_{kj} &= \sup \theset{\sum_{(j, k) \in C} a_{kj} \suchthat C \subset \NN^2,~ \abs B < \infty}
.\end{align*}
\]

We will show that $S=T$ by showing that $S\leq T$ and $T \leq S$.

Let $B \subset \NN^2$ be finite, so $B \subseteq [0, I] \cross [0, J] \subset \NN^2$. 

Now letting $R > \max(I, J)$, we can define $C = [0, R]^2$, which satisfies $B \subseteq C \subset \NN^2$ and $\abs C < \infty$.

Moreover, since $a_{jk} \geq 0$ for all pairs $(j, k)$, we have the following inequality:
$$
\sum_{(j, k) \in B} a_{jk} <
\sum_{(k, j) \in C} a_{jk} \leq 
\sum_{(k, j) \in C} a_{jk} \leq 
T,
$$

since $T$ is a supremum over *all* such sets $C$, and the terms of any finite sum can be rearranged. 

But since this holds for every $B$, we this inequality also holds for the supremum of the smaller term by order-limit laws, and so
$$
S \coloneqq \sup_B \sum_{(k, j) \in B} a_{jk} \leq
T.
$$

An identical argument shows that $T \leq S$, yielding the desired equality. $\qed$

## Problem 2

We want to show the following equality:
$$
\int_0^1 g(x)~dx = \int_0^1 f(x)~dx
.$$

To that end, we can rewrite this using the integral definition of $g(x)$:
$$
\int_0^1 \int_x^1 \frac{f(t)}{t} ~dt~dx = \int_0^1 f(x)~dx
$$

Note that if we can switch the order of integration, we would have 
$$
\int_0^1 \int_x^1 \frac{f(t)}{t} ~dt~dx 
=_?
\int_0^1 \int_0^t \frac{f(t)}{t} ~dx~dt
$$

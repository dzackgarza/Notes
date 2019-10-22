---
title: Problem Set 5
---

# Problem 1

We first make the following definitions:
\[
\begin{align*}
S \coloneqq \sum_{j=1}^\infty \sum_{k=1}^\infty a_{jk} &= \sup \theset{\sum_{(j, k) \in B} a_{jk} \suchthat B \subset \NN^2,~ \abs B < \infty} \\
T \coloneqq \sum_{k=1}^\infty \sum_{j=1}^\infty a_{kj} &= \sup \theset{\sum_{(k, j) \in C} a_{kj} \suchthat C \subset \NN^2,~ \abs B < \infty}
.\end{align*}
\]

We will show that $S=T$ by showing that $S\leq T$ and $T \leq S$.

## $S \leq T$:
Let $B \subset \NN^2$ be finite, so $B \subseteq [0, I] \cross [0, J] \subset \NN^2$. 
Now letting $R = \max(I, J)$, we can define $C = [0, R]^2$, which satisfies $B \subseteq C \subset \NN^2$ and $\abs C < \infty$.
Moreover, since $a_{jk} \geq 0$ for all pairs $(j, k)$, we have the following inequality:
$$
\sum_{(j, k) \in B} a_{jk} \leq
\sum_{(j, k) \in C} a_{jk} \leq 
T
$$

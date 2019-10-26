---
title: Problem Set 7
---

# Regular Problems

## Problem 1

Note that if either $p=1$ or $q=1$, $G$ is a $p\dash$group, which is a nontrivial center that is always normal. So assume $p\neq 1$ and $q\neq 1$.

We want to show that $G$ has a non-trivial normal subgroup.
Noting that $\# G = p^2 q$, we will proceed by showing that either $n_p$ or $n_q$ must be 1.

We immediately note that
\[
\begin{align*}
n_p \equiv 1 \mod p &\quad& n_q \equiv 1 \mod q \\
n_p \divides q &\quad& n_q \divides p^2
,\end{align*}
\]

which forces 
$$
n_p \in \theset{1, q}, \quad n_1 \in \theset{1, p, p^2}.
$$

If either $n_p =1$ or $n_q = 1$, we are done, so suppose $n_p \neq 1$ and $n_1 \neq 1$. This forces $n_p = q$, and we proceed by cases:

### Case 1: $p = q$.

Then $\# G = p^3$ and $G$ is a $p\dash$group. 
But every $p\dash$group has a non-trivial center $Z(G) \leq G$, and the center is always a normal subgroup.

### Case 2: $p > q$.

Since $n_p \neq 1$ by assumption, we must have $n_p = q$. Now consider sub-cases for $n_q$:

- $n_q = p$: 
  If $n_q = p = 1 \mod q$ and $p < q$, this forces $p=1$.

- $n_q = p^2$:
  We will reach a contradiction by showing that this forces 
  $$
  \abs{P \coloneqq \union_{S_p \in \mathrm{Syl}(p, G)} S_p\setminus\theset{e}} + \abs{ Q \coloneqq \union_{S_q \in \mathrm{Syl}(q, G)} S_q\setminus\theset{e}} + \abs{\theset{e}} > \abs{G}.
  $$

  Towards this end, consider the contribution of $Q$, which is exactly $$n_q(q-1) = p^2(q-1) = p^2q - p^2$$ elements. 
  Every such element is of order $q$, so this leaves $$\abs{G} - \abs{Q} = p^2q -(p^2q - p^2) = p^2$$ elements of order **not** equal to $q$.

  The remaining nontrivial elements can only be of order $p$ or $p^2$.
  We thus have
  \[
  \begin{align*}
  \abs{P} + \abs{Q} + \abs{\theset{e}} &= n_p(q-1) + n_q(p^2 - 1) + 1 \\
  &= p^2(q-1) + q(p^2 - 1) + 1 \\
  &= p^2(q-1) + 1(p^2 - 1) + (q-1)(p^2-1) + 1 \quad \text{(since $q > 1)} \\
  &= p^2q - p^2 + p^2 - 1  + (q-1)(p^2-1) \\
  &= p^2q + (q-1)(p^2-1) \\
  &\geq p^2 q
  .\end{align*}
  \]


# Qual Problems

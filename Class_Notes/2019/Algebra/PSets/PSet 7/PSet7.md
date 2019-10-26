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

If either $n_p =1$ or $n_q = 1$, we are done, so suppose $n_p \neq 1$ and $n_1 \neq 1$. Proceeding by cases:

### Case 1: $p = q$.

Then $\# G = p^3$ and $G$ is a $p\dash$group. 
But every $p\dash$group has a non-trivial center $Z(G) \leq G$, and the center is always a normal subgroup.

### Case 2: $p > q$.

Since $n_p \neq 1$ by assumption, we must have $n_p = q$. Now consider sub-cases for $n_q$:

- $n_q = p$: 
  If $n_q = p = 1 \mod q$ and $p < q$, this forces $p=1$.

- $n_1 = p^2$:
  We will reach a contradiction by showing that this forces 
  $$
  \abs{S \coloneqq \union_{S_p \in \mathrm{Syl}(p, G)} S_p} + \abs{ P \coloneqq \union_{S_q \in \mathrm{Syl}(q, G)} S_q} > \abs{G}.
  $$

  Towards this end, 


# Qual Problems

---
title: Problem Set 7
---

# Problem 1

## Part a

We want to show that $\ell^2(\NN)$ is complete, so let $\theset{x_n} \subseteq \ell^2(\NN)$ be a Cauchy sequence, so $\norm{x^j - x^k}_{\ell^2} \to 0$. We want to produce some $\vector x \definedas \displaystyle\lim_{n\to \infty} x^n$ such that $x\in \ell^2$.

To this end, for each fixed index $i$, define
$$
\vector x_i \definedas \lim_{n\to\infty} x_i^n.
$$

This is well-defined since $\norm{x^j - x^k}_{\ell^2} = \sum_i \abs{x^j_i - x^k_i}^2 \to 0$, and since this is a sum of positive real numbers that approaches zero, each term must approach zero. But then for a fixed $i$, $\abs{x_i^j - x^k_i}^2$ is a Cauchy sequence of real numbers, which necessarily converges in $\RR$.

It remains to show that $\vector x \in \ell^2(\NN)$, i.e. that $\sum_i \abs{\vector x_i}^2 < \infty$. To this end, we write
\begin
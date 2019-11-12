---
title: Problem Set 7
---

# Problem 1

## Part a

We want to show that $\ell^2(\NN)$ is complete, so let $\theset{x_n} \subseteq \ell^2(\NN)$ be a Cauchy sequence, so $\norm{x^j - x^k}_{\ell^2} \to 0$. We want to produce some $x \definedas \displaystyle\lim_{n\to \infty} x^n$ such that $x\in \ell^2$.

To this end, for each fixed index $i$, define
$$
x_i \definedas \lim_{n\to\infty} x_i^n.
$$

This is well-defined since $x^n \in \ell^2(\NN)$ necessarily implies that $\
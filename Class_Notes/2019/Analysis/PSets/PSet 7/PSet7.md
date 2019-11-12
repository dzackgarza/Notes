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

This is well-defined since $\norm{x^j - x^k}_{\ell^2} = \sum_i \abs{x^j_i - x^k_i}^2 \to 0$, and since this is a sum of positive real numbers that approaches zero, each term must approach zero. But then for a fixed $i, the sequence $\abs{x_i^j - x^k_i}^2$ is a Cauchy sequence of real numbers which necessarily converges in $\RR$.

We also have $\norm{\vector x - x^j}_{\ell^2} \to 0$ since 
$$
\norm{\vector x - x^j}_{\ell^2} = 
\norm{\lim_{k\to \infty}  x^k - x^j}_{\ell^2} =
\lim_{k\to \infty} \norm{x^k - x^j}_{\ell^2} \to 0
$$
where the limit can be passed through the norm because the map $t \mapsto \norm{t}_{\ell^2}$ is continuous

It remains to show that $\vector x \in \ell^2(\NN)$, i.e. that $\sum_i \abs{\vector x_i}^2 < \infty$. To this end, we write

\begin{align*}
\norm{\vector x}_{\ell^2} &= \norm{\vector x - x^j + x^j}_{\ell^2} \\
&\leq \norm{\vector x - x^j}_{\ell^2} + \norm{x^j}_{\ell^2}\\
&< 0 + \infty,
\end{align*}

where $\norm{\vector x_i - x^j}_{\ell^2} \to 0$ and the second sum is finite because $x^j \in \ell^2 \iff \norm{x^j}_{\ell^2} < \infty$
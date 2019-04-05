---
title: Unknown
author: Dietmar Salamon
---

Let $(X, \omega)$ be a symplectic manifold acted on by a lie group $G$. There is a moment map $\mu: X \to \mathcal{Of}^*$ (?), and we can consider a quotient space $X//G = \mu^{-1}(0) / G$ where we look at where the moment map vanishes and quotient out by a group action. This is an orbifold, and in fact a manifold and symplectic.

We can look at the Kahler case $(X, \mu, J)$ and for $G\in U(n)$ we can complexify to obtain $G^C\in G(n, \mathbb C)$. and $X/G^C \cong X^{ss}/\sim \cong X//G$. We'd like to know the behavior of maps passing through the zero set of the moment map. To this end, we use Mumford weights:
$$
W_\mu(x, \xi) = \lim_{t\to\infty}\left< \mu (\exp(it\xi)x), \xi\right>
$$
where we follow a Hamiltonian flow to infinity and obtain a number.

If any of the weights are negative, the points can not be semi-stable, which falls out of a specific bound on the Mumford weights. Thus we have

**Theorem**

$x$ is semistable $\iff$ $\forall\xi, W_\mu(x, \xi)  \geq 0$.






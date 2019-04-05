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
$$
\sup_{\xi\neq0} \frac{-W_\mu(x,\xi)}{\left|\xi\right|} \leq \inf_{g\in G} \left|\mu(gx)\right|
$$


**Corrollary**

$x$ is semistable ($\mu(gx) = 0$) $\iff$ $\forall\xi, W_\mu(x, \xi)  \geq 0$.



This is at the heart of **geometric invariant theory** (Hilbert, Mumford, Kempf, Ness, Kirwan). The key tool is studying the gradient flow of the moment map, or more precisely $\frac 1 2 \mu^2​$, about which one can say many interesting things.



Example: let $J_n = \left\{ J^{2n\times 2n} \mid J^2 = -I \right\} = \left\{ g \pmatrix{0 & -I \\ I & 0} g \mid g\in SL(2n, \mathbb R)\right\}$ which are compatible with orientation. We can take the tangent space to obtain $T = \left\{ J \mid \hat J J + J\hat J = 0\right\} = \left\{ [\xi, \hat J] \mid \xi \in \mathfrak{sl}(2, \mathbb R)\right\}$, and get a symplectic form $\Omega_J(A, B) = \frac 1 2 \mathrm{Trace}(AJB)$. Then the moment map is given by $\Omega_J([\xi, J], \hat J) = \left< d\mu(), (J)\hat J, \xi\right> = -\mathrm{Trace}(\xi\hat J)$.

Can look at frame bundle, get structure group $SL(2n, \mathbb R)$. Can take $$
---
title: Moment Maps in Symplectic and Kahler Geometry
author: Dietmar Salamon
---

Let $(X, \omega)$ be a symplectic manifold acted on by a lie group $G$. There is a moment map $\mu: X \to \mathcal{Of}^*$ (?), and we can consider a quotient space $X//G = \mu^{-1}(0) / G$ where we look at where the moment map vanishes and quotient out by a group action. This is an orbifold, and in fact a manifold and symplectic.

We can look at the Kahler case $(X, \mu, J)$ and for $G\in U(n)$ we can complexify to obtain $G^C\in G(n, \mathbb C)$. and $X/G^C \cong X^{ss}/\sim \cong X//G$. We'd like to know the behavior of maps passing through the zero set of the moment map. To this end, we use Mumford weights:
$$
W_\mu(x, \xi) = \lim_{t\to\infty}\left< \mu (\exp(it\xi)x), \xi\right>
$$
where we follow a Hamiltonian flow to infinity and obtain a number.

If any of the weights are negative, the points can not be semistable, which falls out of a specific bound on the Mumford weights. Thus we have

**Theorem**:
$$
\sup_{\xi\neq 0} \frac{-W_\mu(x,\xi)}{\left|\xi\right|} \leq \inf_{g\in G} \left|\mu(gx)\right|
$$


**Corollary**: $x$ is semistable ($\mu(gx) = 0$) $\iff$ $\forall\xi, W_\mu(x, \xi)  \geq 0$.

This is at the heart of **geometric invariant theory** (Hilbert, Mumford, Kempf, Ness, Kirwan).

The key tool is studying the gradient flow of the moment map, or more precisely $\frac 1 2 \mu^2$, about which one can say many interesting things.

**Example**: let
$$
J_n = \left\{ J^{2n\times 2n} \mid J^2 = -I \right\}
= \left\{ g \begin{pmatrix}0 & -I \\ I & 0\end{pmatrix} g \mid g\in SL(2n, \mathbb R)\right\}
$$
which are compatible with orientation. We can take the tangent space to obtain
$$
T = \left\{ J \mid \hat J J + J\hat J = 0\right\} = \left\{ [\xi, \hat J] \mid \xi \in \mathfrak{sl}(2, \mathbb R)\right\},
$$
and get a symplectic form $\Omega_J(A, B) = \frac 1 2 \mathrm{Trace}(AJB)$. Then the moment map is given by
$$
\Omega_J([\xi, J], \hat J) = \left< d\mu(), (J)\hat J, \xi\right> = -\mathrm{Trace}(\xi\hat J).
$$

Can look at frame bundle, get structure group $SL(2n, \mathbb R)$. Let $M^{2n}$ be an oriented manifold with a volume form, then $J(M)$ is the space of almost-complex structures on $M$. Can repeat the above construction to get a symplectic form that is volume-preserving by integrating a differential form over the endomorphism bundle. This ends up being compatible with the group action (the group of volume-preserving diffeomorphism), so the question becomes whether or not it's a Hamiltonian action.

We want to get a map that yields a exact 2-form, we'll just show one that yields a closed form -- the Ricci form (?).

**Theorem**: The action of $G^{Ox}$ on $J(M)$ is Hamiltonian with moment map $J(M) \to \Omega^2(M)$ given by $J \mapsto 2\mathrm{Ricc}_{G, J}$.

Choose $\nabla$ a torsion-free connection on $TM$ where $\nabla_G = 0$, then $\mathrm{Ricc}_{G, J} = \frac 1 2 (\tau^\nabla_J + d\lambda^\nabla_J)$ where $d$ is the covariant derivative. Although we make this choice, the result Ricci form does not depend on it.

Think about the case where $M$ is Calibi-Yau (and/or Teichmüller space?). Can do similar construction, but the Ricci form takes values in some affine space and needs a correction, and you lose equivariance.

Note that this is not a Kahler form. Look at Yau's theorem. Look at the Chern class of $S^1\times S^3$. There is a construction that yields both a complex form and a canonical symplectic form on the Teichmüller space $\mathcal T_0(M)$, and we can find an explicit formula for it:
$$
\Omega_J(\hat J_1, \hat J_2) = \int_M \left(\frac 1 2 \mathrm{tr}(\hat J_1 J \hat J_2) - f_1g_2 + f_2g_1 \right)\rho_J
$$
where $\rho_J$  is such that $\mathrm{Ricc}_{\rho_J, J} = \omega$.

Recovers something about Kahler-Einstein metric, the moment map can also be roughly seen as a Kahler-Ricci potential. Yields some logarithmic variant of the Kahler-Ricci flow. See the Dehn functional, Donaldson framework.


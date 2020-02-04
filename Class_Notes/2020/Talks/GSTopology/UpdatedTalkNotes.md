# Motivation

Basic question: when does the flow of a vector field admit a *periodic orbit*?

Definition: Hamiltonian flow.

Definition: Reeb flow.

Definition: Reeb vector field.

Definition: Contact form.
A 1-form $\lambda$ such that $\lambda \wedge (d\lambda)^n  > 0$.

> Note that $\lambda \wedge (d\lambda)^n = 0$ defines a foliation?

Definition: Hypersurface of contact type
For $(X, \omega)$ a symplectic manifold, a hypersurface $\Sigma \injects X$ is of *contact-type* iff there is a contact form $\lambda$ such that $d\lambda = \restrictionof{\omega}{Y}$.

Example:
The level sets of a Hamiltonian on $\RR^{2n} = \spanof_\RR\theset{\vector p, \vector q}$  given by $H  = K + U$ where $K = \frac 1 2 \norm{\vector p}^2$ and $U = U(\vector q)$ is a function of only $\vector q$.
(Usually kinetic + potential energy.)

> Remark: all hypersurfaces of contact type $(X, \omega)$ look locally like $X \injects \mathrm{Sp}(X)$, i.e. $X$ embedded into its symplectification.

Definition:
A *vector field* $X$ on $M$ is a section of the tangent bundle $TM \mapsvia{\pi} M$, i.e. a continuous map $X: M \to TM$.

![](2020-02-03-20-52-40.png)

Definition:
An *closed orbit* of a vector field $X$ on $M$ is a map $\gamma: S^1 \to M$ satisfying the ODE $\dd{\gamma}{t}(t) = X(\gamma(t))$.

> In words: the ODE says that the tangent vector at every point along the loop $\gamma$ should precisely be the tangent vector that the vector field $X$ prescribes at that point.

> Note: Every fixed point of $X$ is trivially a closed orbit.

Basic Questions: 

- Does every/any vector field on a smooth manifold $M$ admit a closed orbit?
  - Corollary: does every/any vector field on $M$ admit a fixed point?
  - Note that if $\chi(M) \neq 0$, the Poincare-Hopf index theorem forces every vector field to have a fixed point.
- Does every vector field on $S^3$ admit a closed orbit?
  - Answer: no, very difficult to show, but turns out to hold for all 3-manifolds.

Remark:
The orbit of a Hamiltonian flow is contained in a single level set.

## Big Theorems

**Theorem (1987):**
Every contact-type hypersurface in the symplectic manifold $(\RR^{2n}, \omega)$ contains a periodic orbit.

**Conjecture (Weinstein, 1978):**
Let $(M, \xi)$ be a closed (compact) contact manifold with a Reeb vector field $X$ and $H^1(M; \RR) = 0$. Then $X$ admits a periodic orbit.

**Theorem (Weinstein, Dimension 3, Overtwisted. 1993):**
Let $(M, \lambda, \xi)$ be a closed contact 3-manifold where $\lambda$ is overtwisted. 
Then the Reeb vector field $X$ admits a periodic orbit.

**Definition:**
$(M, \xi)$ is *overtwisted* iff there exists an embedded disc $D^n \mapsvia{i} M$ such that $T(\bd D^n)_p \subset \xi_p$ pointwise for all $p \in \bd D^n$ and $TD^n_p$ is transverse to $\xi$ for every $p\in  (D^n)^\circ$.


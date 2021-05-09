---
aliases: ["symplectic manifold", "symplectic geometry", "symplectic topology"]
---

References:

- [Mike Usher's Notes](https://usherugamath.files.wordpress.com/2019/05/8230-s19.pdf)


**Definition (Symplectic Manifold):**
Recall that $M^{2n}$ is a **symplectic manifold** iff $W$ is smooth of even dimension and admits a  ^395eb1

- closed: $d\omega = 0$
- nondegenerate $\omega_p: T_p M \cross T_p M \to \RR$; $\omega_p(\vector v,\vector w) = 0~~\forall \vector w \implies \vector v= 0$.
- skew-symmetric: $\omega_p(\vector v, \vector w) = \omega_p(\vector w, \vector v)$. 
- bilinear: Lifts to a map $T_pM\tensor T_P M \to \RR$
- 2-form 
$$
\omega \in \Omega^2(M) = \Gamma^{\infty}(\bigwedge^2 T\dual M)
.$$ 

## Motivation

There is [Hamiltonian](Hamiltonian.md) $H$ in the background, we want this to induce a [vector field](vector%20field) $V_H$ and thus a [flow](flow.md).

Motivation for definitions: we want an "antisymmetric inner product".

- *Closed:* 
The lie derivative of $\omega$ along $V_H$ is 0, i.e. $\mathcal{L}_{V_H}(\omega) = 0$.

- *Nondegenerate:* 
Implies that for every $dH$ there exists a vector field $V_H$ such that $dH = \omega(V_H, \wait)$.

- *Skew-symmetry:*
$H$ should be constant along flow lines, i.e. $dH(V_H) = \omega(V_H, V_H) = 0$

- *Bilinear:*
Send any form $\inner{\wait}{\wait}: V\times V \to k$ to the linear map $f: V \to V\dual$ where $f(v) = \inner{v}{\wait}$. If the pairing is nondegenerate, $\ker f = 0$, and we get an identification $V\cong V\dual$.

 **Important Remark**:
 $\omega$ being nondegenerate yields $TM \cong T\dual M$, which can be combined with $\iota$ to obtain an isomorphism $\mathfrak{X}(M) \cong \Omega^1(M)$.
So we can freely trade 1-forms for vector fields. Very useful!

 **MOST IMPORTANTLY**:
For any smooth functional $f: M \to \RR$, we can associate to it a vector field $X_f$.

# Results

**Proposition:**
$(M, \omega \in \Omega^2(M))$ is symplectic iff $\omega^n \neq 0$ everywhere (c.f. Mike Hutchings).

**Corollary:**
Every symplectic manifold is orientable (since it has a nonvanishing volume form).

> **Important Remark:**
Symplectic structures on smooth manifolds give us a way to generate *flows* on a manifold (by defining a Hamiltonian or a symplectic vector field).

**Definition (Exact Symplectic Manifold):**
$W$ is an *exact* symplectic manifold iff there exists a 1-form $\lambda \in \Omega^1(W)$ such that $d\lambda \in \Omega^2(W)$ is non-degenerate. ^9a87d0

> **Remark**:
> If $(W, \lambda)$ is exact symplectic then $(W, d\lambda)$ is symplectic.
> $\lambda$ is sometimes referred to as a *Liouville form*.

> **Important Remark:**
> If $(W, \lambda)$ is exact and $H: \RR \cross M \to \RR$ is smooth, then the *Hamiltonian flow* $\phi_H^t: M \to M$ is defined for all time and is an *exact symplectomorphism*.

**Theorem:**
There are no closed (compact and boundaryless) exact symplectic manifolds.

*Proof:*
\begin{align*}
\int_{\bd M} \lambda \wedge \omega^{n-1} 
&= \int_M d(\lambda \wedge \omega^{n-1}) \\ 
&= \int_M d\lambda \wedge \omega^{n-1} + (-1)^{\abs \lambda}\lambda\wedge d\omega^{n-1} \\
&= \int_M \omega \wedge \omega^{n-1} + (-1)^{\abs\lambda} \lambda \wedge 0 \\
&= \int_M \omega^n \\
&= \mathrm{Vol}_{\text{Sp}}(M) \\
&> 0
,\end{align*}

so $\bd M \neq 0$, and thus $M$ can not be closed.


**Definition (Isotropic):**
Let $\Lambda$ be the image of an embedded sphere $S^k \to W$.
Then $\Lambda$ is *isotropic* iff $\restrictionof{\lambda}{\Lambda} = 0$.
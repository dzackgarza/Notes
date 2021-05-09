---
aliases: ["symplectic manifold", "symplectic geometry", "symplectic topology"]
---

**Definition (Symplectic Manifold):**
Recall that $M^{2n}$ is a **symplectic manifold** iff $W$ is smooth of even dimension and admits a 

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
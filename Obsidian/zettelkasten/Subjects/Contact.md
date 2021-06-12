---
aliases: ["contact", "contact topology", "contact geometry", "contact structure", "contact 3-manifold", "contact manifold"]
---

[2021-04-28_Contact_Topology_Notes](../To%20Review/2021-04-28_Contact_Topology_Notes.md)

Historically, the study of periodic orbits motivated the definition of [contact structure](Subjects/Contact.md).

**Definition (Hyperplane Field):**
A *hyperplane* field $\xi$ is a codimension 1 sub-bundle $\RR^{n-1} \to \xi \to M$ of the tangent bundle $\RR^n \to TM \to M$.

> See examples.

**Definition (Contact Manifold)**
A smooth manifold with a hyperplane field $(M^{2n+1}, \xi)$ is *contact* iff $\xi = \ker \alpha$ for some $\alpha \in \Omega^1(M)$ where $\alpha \wedge (d\alpha)^n$ is a top/volume form in $\Omega^{2n+1}(M)$

> Note that $\lambda \wedge (d\lambda)^n = 0$ defines a foliation?

**Definition (Reeb Vector Field):**
There is a canonical vector field on every contact manifold: the Reeb vector field $X$. This satisfies $\lambda(X) = 1$ and $\iota_x d\lambda = 0$.

> *Remark:*
> [Contact manifolds](Contact%20manifold) are cylinder-like boundaries of symplectic manifolds; namely if $M$ is contact then we can pick any $C^1$ increasing function $f: \RR \to \RR^+$  (e.g. $f(t) = e^t$) and obtain an exact symplectic form $\omega = d(f\lambda)$ on $M_C \definedas M \cross \RR$.

> Any such $f$ induces a Hamiltonian vector field on $M_C$, and the Reeb vector field is the restriction to $M \cross \theset{0}$.

Definition (Contact Form):
?

**Definition (Contact Type):**
For $(W, \lambda)$ an exact [symplectic manifold](../symplectic.md), a codimension 1 submanifold $Y \subset W$ is of **restricted contact-type** iff $X$ is [transverse](transverse) to $Y$, i.e. for every $p\in Y$, we have $X(p) \not\in T_p(Y)$.

We say $Y$ is of **contact type** iff there is a neighborhood $U \supset Y$ and a one-form $\lambda$ with $d\lambda = \restrictionof{\omega}{U}$ making $(U, \lambda)$ of restricted contact type.

Remark:
$(U, \lambda)$ is of restricted contact type iff $\restrictionof{\lambda}{U}$ is a contact form.

**Definition (Hypersurface of contact type):**
For $(X, \omega)$ a symplectic manifold, a hypersurface $\Sigma \injects X$ is of **contact-type** iff there is a contact form $\lambda$ such that $d\lambda = \restrictionof{\omega}{Y}$.


- Not every compact 3-manifold $M$ admits a [fillable contact structure](fillable%20contact%20structure) $(M, \xi)$ (roughly: admits a symplectic manifold $(X, \omega)$ with $\bd X = M$ and some compatibility between $\xi, \omega$) -- need [framing](../framed.md) to be realizable as a [Legendrian framing](Legendrian%20framing).
---
aliases: ["contact", "contact topology", "contact geometry", "contact structure"]
---

[2021-04-28_Contact_Topology_Notes](../2021-04-28_Contact_Topology_Notes.md)

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
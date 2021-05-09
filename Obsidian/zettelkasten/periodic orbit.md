---
aliases: ["periodic orbits"]
---

# Motivation

*Open Problem:**
Does every triangular billiards admit a [periodic orbit](periodic%20orbit)?

*Answer (1775):* 
Yes for acute triangles, there is at least one periodic orbit:

![](2020-02-01-23-59-05.png)

For arbitrary triangles: unknown!

Let $M$ be a [symplectic manifold](symplectic.md) and $H: M \to \RR$ a [Hamiltonian](Hamiltonian).

For [regular values](regular%20value) $r\in \RR$ of the  Hamiltonian, $H\inv(r) \subset M$ is a submanifold $Y\subset M$ with a smooth vector field $X_H$ called a *regular level set*.

**Question:**
Does $X_H$ have a closed orbit on every regular level set?
What conditions do you need to guarantee the existence of a closed orbit?

Turns out not to depend on $H$, and only on the hypersurface $Y$.
The existence of a closed orbit is equivalent to the existence of a closed embedded curve $\gamma$ that is everywhere tangent to $\ker(\restrictionof{\omega}{Y})$.

**Question:**
When is such a curve guaranteed to exist?

**Theorem (Weinstein, 1972):** 
If $Y$ is convex.

**Theorem (Rabinowitz)**: 
If $Y$ is "star-shaped" (exists a point $p$ that can "see" all points via straight lines).

**Theorem (1987):**
Every contact-type hypersurface in the [symplectic manifold](symplectic.md) $(\RR^{2n}, \omega)$ contains a [periodic orbit](periodic%20orbit).

**Conjecture (Weinstein, 1978):**
Let $(M, \xi)$ be a closed (compact) [contact manifold](Subjects/Contact.md) with a [Reeb vector field](Reeb%20vector%20field) $X$ and $H^1(M; \RR) = 0$. Then $X$ admits a [periodic orbit](periodic%20orbit).

**Theorem (Weinstein, Dimension 3, Overtwisted. 1993):**
Let $(M, \lambda, \xi)$ be a closed [contact 3-manifold](Subjects/Contact.md) where $\lambda$ is [overtwisted](overtwisted%20contact%20structure.md). 
Then the [Reeb vector field](Reeb%20vector%20field) $X$ admits a [periodic orbit](periodic%20orbit).
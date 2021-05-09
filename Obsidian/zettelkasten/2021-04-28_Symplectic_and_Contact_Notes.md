---
date: 2021-04-28 18:08:16
tags: 
  - Unfiled
---

[../Subjects/Contact](../Subjects/Contact.md)
[symplectic](symplectic.md)
[../2021-04-28_More_Weinstein_Notes](../2021-04-28_More_Weinstein_Notes.md)

Tags: #symplectic #topology 

Topic: Weinstein Surgery and More

References:

- [Mike Usher's Notes](https://usherugamath.files.wordpress.com/2019/05/8230-s19.pdf)
- From Stein to Weinstein and Back (Cieliebak and Eliashberg)

# Why Care About Contact/Symplectic Geometry

*Open Problem:**
Does every triangular billiards admit a [periodic orbit](periodic%20orbit)?

*Answer (1775):* 
Yes for acute triangles, there is at least one periodic orbit:

![](2020-02-01-23-59-05.png)

For arbitrary triangles: unknown!


# Why Care About Contact Structures 

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
Every contact-type hypersurface in the symplectic manifold $(\RR^{2n}, \omega)$ contains a periodic orbit.

**Conjecture (Weinstein, 1978):**
Let $(M, \xi)$ be a closed (compact) contact manifold with a Reeb vector field $X$ and $H^1(M; \RR) = 0$. Then $X$ admits a periodic orbit.

**Theorem (Weinstein, Dimension 3, Overtwisted. 1993):**
Let $(M, \lambda, \xi)$ be a closed contact 3-manifold where $\lambda$ is overtwisted. 
Then the **Reeb vector field** $X$ admits a periodic orbit.

# Definitions

![](Hamiltonian.md#^1c3cf2)

![](symplectic.md#^395eb1)

![](Hamiltonian.md#^e4422f)

![](symplectic.md#^9a87d0)




## Aside on Surgery




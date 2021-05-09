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

Historically, the study of periodic orbits motivated the definition of [Contact Structure](Contact%20Structure).

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







**Definition (Weinstein Surgery):**
Let $(W, \lambda)$ be a Liouville domain (although we won't need compactness).

> Recall: $(W, \lambda)$ is a $2n\dash$dimensional exact symplectic manifold with contact-type boundary $\bd W$ such that the Liouville vector field $X$ points outwards along $\bd W$.

Weinstein surgery takes 

- $(W, \lambda)$ a $2n\dash$dimensional manifold
- That is exact and symplectic
- With contact-type boundary $\bd W$
- Where the Liouville vector field points outward along $\bd W$

and produces a distinct manifold $(W(\Lambda), \lambda')$ with the above properties which is obtained by surgery along $\Lambda$ an isotropic embedded sphere.
Thus $W(\Lambda)$ is obtained from attaching a $k\dash$handle to $W$ along $\Lambda$. 

## Aside on Surgery

### Analogy: CW Cell Attachment

Given $X$, we can form $\tilde X = X^n \disjoint_\phi e^n$ where $e^n \cong D^n$ is an $n\dash$cell and $\phi: S^{n-1} \to X$ is the characteristic/attaching map.

> Remark: Why $S^{n-1}$? Really it's $\bd e^n = \bd D^n = S^{n-1}$.

![](2020-02-05-00-22-18.png)

Problem:
This doesn't "see" the smooth structure, and CW complexes can have singular points (e.g. $S^2 = e^0 \disjoint e^2$.

![](2020-02-05-12-25-15.png)

Solution:
Use *tubular neighborhoods*.


**Definition (Weinstein Surgery):**
We now add a $k\dash$handle along $\Lambda \subset \bd W$ to yield some $W'$, where $\bd W'$ is obtained by surgery in $\bd W$ along $\Lambda$.  

# Why Care About Weinstein Surgery

**Theorem:** 
Every compact contact 3-manifold arises as a combination of (2 different variants of) Weinstein surgeries on $S^3$.

> Compare to theorem: 
Every compact 3-manifold arises as surgery on a link.

**Theorem:** 
Weinstein surgery on a *loose Legendrian* knot yields an overtwisted contact structure.

> Compare: 
Every compact manifold is surgery on a link and admits a contact structure.

> However, not every compact 3-manifold $M$ admits a *fillable* contact structure $(M, \xi)$ (roughly: admits a symplectic manifold $(X, \omega)$ with $\bd X = M$ and some compatibility between $\xi, \omega$) -- need framing to be realizable as a *Legendrian* framing.

**Theorem:** 
Weinstein surgery along a loose Legendrian sphere yields an overtwisted contact manifold.

---
date: 2021-04-26
aliases: ["HH"]
---

References: [topological Hochschild homology](topological%20Hochschild%20homology.md) | [cyclic homology](cyclic%20homology)

![Algebraic deformation theory paper](attachments/1214427886.pdf)

# Hochschild Homology

> Reference: [Chapter 9 of Weibel](file:///home/zack/Dropbox/Library/Charles A. Weibel/An Introduction to Homological Algebra (489)/An Introduction to Homological Algebra - Charles A. Weibel.pdf#page=312)

Let $A \in \Alg_{/R}$ such that $A$ is projective as an $R\dash$module and $M\in \bimod{A}{A}$. Then define the **Hochschild complex** as
$$
C_n(A, M) := M \tensor A^{\tensor n}
$$

The Hochschild homology of an $R\dash R\dash$bimodule reflects some ring-theoretic stuff. 

- For $R\in\Alg_{/k}$, $H_1(R,R) = \Omega_R/k$, the module of differentials . If $Q\subseteq R$ then there is an algebraic decomposition of this homology analogous to the [Hodge decomposition](Hodge%20decomposition) of complex manifolds.

- If $k\in \Ring$ and $X\in \sSet$ a [simplicial set](simplicial%20set.md), the [cyclic homology](cyclic%20homology), which is Hochschild homology taking into account a cyclic action on $X$) of the simplicial $k\dash$module $k[X]\in\mods{k}^{\sSet}$ is the same as the $S_1\dash$[equivariant homology](equivariant%20homology) of the [geometric realization](geometric%20realization.md)  $\abs{X}$ with coefficients in $k$.

# Defining THH

- Take $A \in \cat{C}$, where $\mathcal C$ is a "nice" [monoidal category](Monoidal%20category.md), and $A$ is an algebra object in it. We'll call the monoidal operation $\tensor$.
- We'll make a simplicial object $\complex{THH}(A)$:
  - $THH_n(A) = A^{\tensor n+1}$. If it's to be simplicial, need to specify the face/degeneracy maps:
  - Face maps: collapse by cyclic multiplication
  - Degeneracy maps: use the unit of $A$, can replace any tensor symbol with it. Have a unit map that goes from the unit to $A$, so somehow this gets you "up" one level (?)
- Now take its geometric realization $\abs{THH_\wait(A)}$
  - In general, take $\mathrm{hocolim}_\Delta THH_\wait(A)$

# Unsorted

Computing various homological invariants of associative algebras (such as Tor and Ext of various modules, Hochschild (co)homology, cyclic homology etc.) has been an active research topic in ring theory for many years. More recently (about 15 years ago), ring theorists became interested in associative algebras up to homotopy, or [A-infinity](A-infinity)-algebras, as a recipe to produce meaningful "higher structures" on classical objects like [Yoneda Ext](Yoneda%20Ext)-algebras.

This offers two different perspectives on associative algebras: homological invariants are "abelian" (i. e. arise when one works with [additive categories](additive%20category), e.g. chain complexes of modules over a ring), while homotopical invariants are "non-abelian" (i. e. arise from non-additive categories, like the category of all differential graded associative algebras). However, these two perspectives are closely related, and it is often possible to recover homological information from the homotopical one, and the other way round. For experts in homotopical algebra on a larger scale (beyond the associative ring theory), this philosophy is already present in works of Stasheff and Hinich on homotopy algebras.


- See the [HKR](HKR.md) theorem

- When proving stuff about algebras -- try with polynomial algebras first, essentially the simplest case.
- Simplest [coalgebra](coalgebra) case: divided power algebras (also a [Hopf algebra](Hopf%20algebra.md))
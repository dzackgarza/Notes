---
date: 2021-04-26
tags: 
  - Unfiled
---

When proving stuff about algebras -- try with polynomial algebras first, essentially the simplest case.
Simplest coalgebra case: divided power algebras (also a Hopf algebra)

# Hochschild Homology

Reference: <a href="file:///home/zack/Dropbox/Library/Charles A. Weibel/An Introduction to Homological Algebra (489)/An Introduction to Homological Algebra - Charles A. Weibel.pdf#page=312">Chapter 9 of Weibel</a>

The Hochschild homology of an $R\dash R\dash$bimodule reflects some ring-theoretic stuff. For instance, $H_1(R,R)$ of a $k\dash$algebra $R$ is the module of differentials $\Omega_R/k$. If $Q\subseteq R$ then there is an algebraic decomposition of this homology that is analogous to the Hodge decomposition in complex manifold theory.

Taking the above example further if $k$ is a ring and $X$ a simplicial set, the cyclic homology (Hochschild homology taking into account a cyclic action on the corresponding simplicial set) of the simplicial module $k[X]$ is the same as the $S_1\dash$equivariant homology of the geometric realization of $X$ with coefficients in $k$.

K-theory is like homology on rings. Moreover, algebraic topology is clearly interested in vector bundles; on a nice space $X$ the category of rank $n$ $\RR\dash$vector bundles on $X$ is equivalent to the category of rank $n$ finitely generated projective modules over the continuous functions $C(X,\RR)$. The group $K_0(C(X))$ is the Grothendieck group of the isomorphism classes of finitely generated projectives.

We look first at vector bundles over a space $X$. A vector bundle assigns a vector
space to every point of $X$. This is done in a continuous fashion. The $k\dash$dimensional
vector bundles over $X$ are equivalent to the homotopy classes of maps from $X$ to
a fixed space $BO_k, [X, BO_k]$, [Ste51]. So, as is the case with many geometric
problems, the classification of isomorphism classes of $k\dash$dimensional vector bundles
is reduced to the computation of homotopy classes of maps. Furthermore, it is clear
that studying $BO_k$ is very useful for this problem. It comes about by a standard
construction which builds a classifying space, $BG$, for any group $G$.

# Defining THH

- Take $A \in \mathcal C$, where $\mathcal C$ is a "nice" monoidal category, and $A$ is an algebra object in it. We'll call the monoidal operation $\tensor$.
- We'll make a simplicial object $THH_\wait(A)$:
  - $THH_n(A) = A^{\tensor n+1}$. If it's to be simplicial, need to specify the face/degeneracy maps:
  - Face maps: collapse by cyclic multiplication
  - Degeneracy maps: use the unit of $A$, can replace any tensor symbol with it. Have a unit map that goes from the unit to $A$, so somehow this gets you "up" one level (?)
- Now take its geometric realization $\abs{THH_\wait(A)}$
  - In general, take $\mathrm{hocolim}_\Delta THH_\wait(A)$

# Unsorted

Computing various homological invariants of associative algebras (such as Tor and Ext of various modules, Hochschild (co)homology, cyclic homology etc.) has been an active research topic in ring theory for many years. More recently (about 15 years ago), ring theorists became interested in associative algebras up to homotopy, or A∞-algebras, as a recipe to produce meaningful "higher structures" on classical objects like Yoneda Ext-algebras.

This offers two different perspectives on associative algebras: homological invariants are "Abelian" (i. e. arise when one works with additive categories, e.g. chain complexes of modules over a ring), while homotopical invariants are "non-Abelian" (i. e. arise from non-additive categories, like the category of all differential graded associative algebras). However, these two perspectives are closely related, and it is often possible to recover homological information from the homotopical one, and the other way round. For experts in homotopical algebra on a larger scale (beyond the associative ring theory), this philosophy is already present in works of Stasheff and Hinich on homotopy algebras.


Look at the HKR theorem again, identifies $HH$ with derivations.

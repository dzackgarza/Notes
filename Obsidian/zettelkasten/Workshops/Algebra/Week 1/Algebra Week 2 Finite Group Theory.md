---
title: Algebra Qual Prep Week 2: Finite Group Theory
---

# Week 2

[See the Presentation Schedule](https://www.notion.so/df531651418e43a9918f8d6c0cc0c706)


## Topics

- Recognition of direct products and semidirect products
- Series of groups
	- Derived series
	- Lower central series
	- Upper central series
	- Solvable, 
	- Simple, 
	- Nilpotent; 
- The Jordan-Holder theorem
- Group actions
	- Orbit-stabilizer
	- The class equation,
	- Important actions
- Permutation representations
	- The [Strong Cayley Theorem](https://math.la.asu.edu/~kawski/classes/mat444/handouts/strongCayley.pdf)
	- The Cayley representation, 
- FTFGAG: The Fundamental Theorem of Finitely Generated Abelian Groups
	- Invariant factors
	- Elementary divisors
- Automorphisms
	- Inner automorphisms

## Review Exercises 

## Misc

- State the definitions of the following:
	- Centralizer
	- Normalizer
	- Conjugacy class
	- Center
	- Inner automorphism
	- Commutator

- Prove that if $G/Z(G)$ is cyclic then $G$ is abelian.

- Classify all groups of order $p^2$.

- Prove that if $H\leq G$ is a proper subgroup, then $G$ can not be written as a union of conjugates of $H$.

  - Use this to prove that if $G = \Sym(X)$ is the group of permutations on a finite set $X$ with $\# X = n$, then there exists a $g\in G$ with no fixed points in $X$.

## Group Actions
- Suppose $X$ is a $G\dash$set, so there is a permutation action of $G$ on $X$.
  Let $x_1, x_2\in X$, and show that the stabilizer subgroups $\Stab_G(x_1), \Stab_G(x_2)\leq G$ are conjugate in $G$.

- Let $G\actson X$ be a *transitive* action of a group $G$ on a set $X$, and for $x\in X$ let 
\[
\Stab_G(x) \da \ts{ g\in G \st g.x = x }
\]
be the **stabilizer** in $G$ of $x$.
Prove that there is an isomorphism of sets
\[
\phi_x: G/\Stab_G(x) \mapsvia{\sim} X
.\]


- Let $G\leq H$ where $H$ is a finite $p\dash$group, and suppose $\phi: G\to H / [H, H]$ be defined by composing the inclusion $G\injects H$ with the natural quotient map $H \to H/[H, H]$.

  Prove that $G= H$ by induction on $\# H$ in the following way:

  - Letting $N\normal H$ be any nontrivial normal subgroup of $H$, use the inductive hypothesis to show that $H = GN$.
  - Let $Z = Z(H)$ be the center of $H$.
  	Using that $GZ = H$ by (1), show that $G \intersect Z \neq \emptyset$.
  	Set $N \da G \intersect Z$ and apply (1) to conclude.

## Series of Groups

- Determine all pairs $n, p\in \ZZ^{\geq 1}$ such that $\SL_n(\FF_p)$ is solvable.

## Sylow Theory




# Qual Problems

![Workshop%20Materials%2022af9a14367c44e585cb4aefe9e11862/Untitled%2013.png](attachments/Untitled%2013.png)

![Workshop%20Materials%2022af9a14367c44e585cb4aefe9e11862/Untitled%2014.png](attachments/Untitled%2014.png)






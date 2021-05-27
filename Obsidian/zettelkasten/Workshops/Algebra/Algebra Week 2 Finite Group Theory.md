---
title: "Algebra Qual Prep Week 2: Finite Group Theory"
---

# Week 2: Finite Groups

[See the Presentation Schedule](https://www.notion.so/df531651418e43a9918f8d6c0cc0c706)

## Topics

- Recognition of direct products and semidirect products
- Amalgam size lemma: $\#HK = \# H \# K / \#(H\intersect K)$
- Group actions
	- Orbit-stabilizer
	- The class equation,
	- Burnside's formula
	- Important actions
		- Self-action by left translation (*the left-regular action*)
			- The assignment $g\mapsto \psi_g\in \Sym(G)$ where $\psi_g(x) \da gx$ is sometimes referred to as the *Cayley representation* in qual questions, or sometimes a *permutation representation* since $\Sym(G) \cong S_n$ as sets where $n\da \# G$
			- See the [Strong Cayley Theorem](https://math.la.asu.edu/~kawski/classes/mat444/handouts/strongCayley.pdf)
		- Self-action by conjugation
		- Action on subgroup lattice by left-translation
		- Action on cosets of a fixed $G/H$ by left-translation
- Transitive subgroups
	- How these are related to Galois groups
- FTFGAG: The Fundamental Theorem of Finitely Generated Abelian Groups
	- Invariant factors
	- Elementary divisors
- Simple groups
- Automorphisms
	- Inner automorphisms
	- Outer automorphisms  (not often tested directly)
	- Characteristic subgroups  (not often tested directly)
- Series of groups (not often tested)
	- Normal series
	- Central series
	- The Jordan-Holder theorem
		- Composition series
	- Solvable groups
		- Derived series
	- Nilpotent groups
		- Lower central series
		- Upper central series

> A remark: automorphisms and series of groups aren't often directly tested on the qual, but are useful practice. Simple/solvable groups *do* come up often.

## Exercises 

### Warmup

- Show that if $H, K \leq G$ are subgroups and $H \in N_G(H)$, then $HK$ is a subgroup.
	- Find a counterexample where $H\leq G$, $K$ is only a subset and not a subgroup, and $HK$ fails to be a subgroup?
- Prove the "Recognizing direct products" theorem: if $H, K$ are normal in $G$ with $H \intersect K = \emptyset$ and $HK = G$, then $G\cong H\cross K$.
	- Hint: write down a map $H\cross K\to G$ and follow your nose!
	- How can you generalize this to 3 or more subgroups?
- State definitions of the following:
	- Group action
	- Orbit
	- Stabilizer
	- Fixed points
- State the orbit-stabilizer theorem
- State the class equation.
	Can you derive this from orbit-stabilizer?
- Show that the center of a $p\dash$group is nontrivial
- **Important**: Pick your favorite composite number $m = \prod p_i^{e_i}$ and classify all abelian groups of that order.
	- Write their invariant factor decompositions *and* their elementary divisor decompositions. Come up with an algorithm for converting back and forth between these.
- Prove that if $H\leq G$ is a proper subgroup, then $G$ can not be written as a union of conjugates of $H$.
	  - Use this to prove that if $G = \Sym(X)$ is the group of permutations on a finite set $X$ with $\# X = n$, then there exists a $g\in G$ with no fixed points in $X$.
-  Define what a composition series is, and state what it means for a group to be simple, solvable, or nilpotent.
	- How are the derived and lower/upper central series defined? What type(s) of the groups above does each series correspond to?

### Group Actions
- For each of the following group actions, identify what the orbits, stabilizers, and fixed points are. If possible, describe the kernel of each action, and its image in $\Sym(X)$.
	- $G$ acting on $X=G$ by left-translation: $$g\cdot x := gx$$.
	- $G$ acting on $X=G$ by conjugation: $$g\cdot x := gxg\inv$$
	- $G$ acting on its set of subgroups $X:=\ts{H\st H\leq G}$ by conjugation: $$g\cdot H := gHg\inv$$
	- For a fixed subgroup $H\leq G$, $G$ acting on the set of cosets $X := G/H$ by left-translation: $$g\cdot xH := (gx)H$$
- Suppose $X$ is a $G\dash$set, so there is a permutation action of $G$ on $X$.
  Let $x_1, x_2\in X$, and show that the stabilizer subgroups $\Stab_G(x_1), \Stab_G(x_2)\leq G$ are conjugate in $G$.

- Let $[G:H] = p$ be the smallest prime dividing the order of $G$. Show that $H$ must be normal in $G$.
- Show that if $G$ is an infinite simple group, then $G$ can not have a subgroup of finite index.

	> Hint: use the left-regular action on cosets.

- Show that every subgroup of order 5 in $S_5$ is a transitive subgroup.


### Automorphisms
- How do you compute the totient $\phi(p)$ for $p$ prime? Or $\phi(n)$ for $n$ composite?
- What is the order of $\GL_n(\FF_p)$?
- Identify $\Aut(\ZZ/p)$ and $\Aut(\prod_{i=1}^n \ZZ/p)$ for $p$ a prime.
	- Identify $\Aut(\ZZ/n)$ for $n$ composite.
- How many elements in $\Aut(\ZZ/20)$ have order 4?
- Find two groups $G\not\cong H$ where $\Aut G\cong \Aut H$.
- Let $H, K \leq G$ be subgroups with $H\cong K$.
	Is it true that $G/H \cong G/K$?

	> Hint: consider a group with distinct subgroups of order 2 whose quotients have order 4.

- Show that inner automorphisms send conjugate subgroups to conjugate subgroups.
- Show that for $n\neq 6$, $\Aut(S_n) = \Inn(S^n)$.

### Series of Groups

- Determine all pairs $n, p\in \ZZ^{\geq 1}$ such that $\SL_n(\FF_p)$ is solvable.

- If $\# G = pq$, is $G$ necessarily nilpotent?
	
	> Hint: consider $Z(S_3)$.

- Show that if $G$ is solvable, then $G$ contains a nontrivial normal subroup.
	- What does this mean on the Galois theory side?

> Hint: consider the derived series.

# Qual Problems


![](figures/Untitled%2014.png)

![](../../attachments/Pasted%20image%2020210526171835.png)

![](../../attachments/Pasted%20image%2020210526172046.png)

![](../../attachments/Pasted%20image%2020210526172119.png)

![](../../attachments/Pasted%20image%2020210526172140.png)

Needs some Sylow theory:

![](../../attachments/Pasted%20image%2020210526173749.png)
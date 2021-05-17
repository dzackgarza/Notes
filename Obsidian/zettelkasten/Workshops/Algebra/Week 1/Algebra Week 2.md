# Week 2

[See the Presentation Schedule](https://www.notion.so/df531651418e43a9918f8d6c0cc0c706)


## Topics

- Special types of groups, the symmetric group, p-groups
- Series of groups, solvable, simple, nilpotent; Jordan-Holder theorem
- Group actions, orbit-stabilizer, class equation,
- Cayley representation, permutation representation
- 


## Review Exercises 

For everything that follows, assume $G$ is a finite group.

- $H\leq G$ denotes that $H$ is a subgroup of $G$.
- $\# G$ denotes the *order* of $G$.
- $e$ or $e_G$ denotes the identity element of $G$.
- Multiplicative notation is generally used everywhere to denote the (possibly noncommutative) binary operation

## Warmup Problems

- Prove that if $G/Z(G)$ is cyclic then $G$ is abelian.

- Classify all groups of order $p^2$.

- Prove that if $H\leq G$ is a proper subgroup, then $G$ can not be written as a union of conjugates of $H$.

  - Use this to prove that if $G = \Sym(X)$ is the group of permutations on a finite set $X$ with $\# X = n$, then there exists a $g\in G$ with no fixed points in $X$.

- Let $G\leq H$ where $H$ is a finite $p\dash$group, and suppose $\phi: G\to H / [H, H]$ be defined by composing the inclusion $G\injects H$ with the natural quotient map $H \to H/[H, H]$.

  Prove that $G= H$ by induction on $\# H$ in the following way:

  - Letting $N\normal H$ be any nontrivial normal subgroup of $H$, use the inductive hypothesis to show that $H = GN$.
  - Let $Z = Z(H)$ be the center of $H$.
  Using that $GZ = H$ by (1), show that $G \intersect Z \neq \emptyset$.
  Set $N \da G \intersect Z$ and apply (1) to conclude.

- Determine all pairs $n, p\in \ZZ^{\geq 1}$ such that $\SL_n(\FF_p)$ is solvable.

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


# Qual Problems

![Workshop%20Materials%2022af9a14367c44e585cb4aefe9e11862/Untitled%2013.png](attachments/Untitled%2013.png)

![Workshop%20Materials%2022af9a14367c44e585cb4aefe9e11862/Untitled%2014.png](attachments/Untitled%2014.png)



# Week 4

- Morphisms, Ideals, quotients, zero divisors, isomorphism theorems, CRT
- Irreducible and prime elements, nilpotent, units
- Radical, nilradical, spec and maxspec
- Special types: domains, integral domains, Euclidean ⇒ PID ⇒ UFD ⇒?, Dedekind domains, Noetherian, Artinian
- Zorn's lemma arguments
- Bonus optional stuff: localization

![Workshop%20Materials%2022af9a14367c44e585cb4aefe9e11862/Untitled%2015.png](attachments/Untitled%2015.png)

![Workshop%20Materials%2022af9a14367c44e585cb4aefe9e11862/Untitled%2016.png](attachments/Untitled%2016.png)

![Workshop%20Materials%2022af9a14367c44e585cb4aefe9e11862/Untitled%2017.png](attachments/Untitled%2017.png)

![Workshop%20Materials%2022af9a14367c44e585cb4aefe9e11862/Untitled%2018.png](attachments/Untitled%2018.png)

Prove that a commutive ring with unit is a field if and only if its only ideals are {0} and the whole ring

![Workshop%20Materials%2022af9a14367c44e585cb4aefe9e11862/Untitled%2019.png](attachments/Untitled%2019.png)

Show the irreducibility criterion for polynomials f ∈ k[x] of degree 2 or 3: such a polynomial is irreducible iff it has no roots in the field k

![Workshop%20Materials%2022af9a14367c44e585cb4aefe9e11862/Untitled%2020.png](attachments/Untitled%2020.png)

![Workshop%20Materials%2022af9a14367c44e585cb4aefe9e11862/Untitled%2021.png](attachments/Untitled%2021.png)




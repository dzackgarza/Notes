---
date: 2021-04-26
---

Tags: #homotopy 

# References
- Overall summaries
	- Doug Ravenel's book on the homotopy groups of spheres
	- Kochman's book. 
- Mark Mahowald for results using the Adams spectral sequence
- Doug Ravenel for the Adams-Novikov spectral sequence. 
- [https://www.youtube.com/watch?v=jie-ww7RBWY](https://www.youtube.com/watch?v=jie-ww7RBWY)
- [Honors Thesis on Related Stuff, Hopf Invariant 1](http://mathematics.stanford.edu/wp-content/uploads/2013/08/Victor-Honors-Thesis-2013.pdf)
- [Only odd spheres with a unique smooth structure are dimensions 1, 3, 5, and 61](http://archive.ymsc.tsinghua.edu.cn/pacm_download/293/8755-61sphere_final.pdf)
- [Here](https://web.stanford.edu/~amwright/HomotopyGroupsOfSoheres.pdf)

Links: 
[Homotopy Groups of Spheres](Homotopy%20Groups%20of%20Spheres.md) | [Kervaire invariant 1](Kervaire%20invariant%201.md) | [cobordism](cobordism.md) | [J-homomorphism](J-homomorphism.md)


# Motivating Problems

- The [Kervaire invariant 1](Kervaire%20invariant%201.md) problem
- Classifying manifolds up to [framed cobordism](framed%20cobordism)
- Distinct [smooth structures](smooth%20structures.md) on spheres
- Let $M$ be a closed $n$-manifold. Suppose $M$ is homotopy equivalent to $S^n$. Is $M$ homeomorphic to $S^n$? 
- For which $n$ does there exist a unique smooth structure on $S^n$? 
- Let $M \in \Mfd^{\smooth}_n$ be homeomorphic to $S^n$. 
	Is $M$ diffeomorphic to $S^n$? 

# Motivation: Stable Homotopy Groups of Spheres

## Cobordism

If one understood even the stable homotopy groups of spheres very well, one would therefore have a near complete understanding of the group of [smooth structures](smooth%20structures.md) on the $n\dash$-sphere for $n\neq 4$.

## Kervaire Invariant

One of the most recent spectacular advances in algebraic topology was the solution of (most of) the [Kervaire invariant 1](Kervaire%20invariant%201.md) problem by Hill, Hopkins and Ravenel about [framed](framed.md) manifolds and stable homotopy groups of spheres. 

Things used to solve this classical problem: [equivariant stable homotopy theory](equivariant%20stable%20homotopy%20theory.md), [chromatic homotopy theory](chromatic%20homotopy%20theory.md), [spectral sequences](spectral%20sequence.md), [Orthogonal Spectra](Orthogonal%20Spectra)

## Classification

**Question**: 
Let $M$ be a closed $n$-manifold. Suppose $M$ is homotopy equivalent to $S^n$. Is $M$ homeomorphic to $S^n$? 

**Answer**:
Yes in all dimensions.

**Question**: 
For which $n$ does there exist a unique smooth structure on $S^n$? 


**Answer**:

-  For $n= 3$, yes, by Moise  every closed [3-manifold](3-manifold.md) has a unique [smooth structure](smooth%20structure.md).  In particular, the 3-sphere has a unique smooth structure.  

- **For n= 4, this question is wildly open.** 

- For $n\geq 5$, Milnor constructed an [exotic](smooth%20structure.md) smooth structure on $S^7$. 
	Kervaire and Milnor [27] showed that the answer is "no" in general for $n\geq 5$.

**Question**:
For which $n$ does there exist a unique smooth structure on $S^n$? 

- Kervaire and Milnor reduced Question 1.5 to a computation of the stable homotopy groups of spheres. In fact, Kervaire and Milnor constructed the $\Theta_n \in \Grp$ of [h-cobordism](h-cobordism) classes of [homotopy $n$-spheres](homotopy%20spheres). 
	This classifies [smooth structures](smooth%20structures.md) on $S^n$ for $n\geq 5$.

## The Unknown
The homotopy group $\pi_{n+k}(S^k)$ is a finite group except

1. For $n=0$ in which case $\pi_k(S^k)=\ZZ$;

2. For $k=2m$ and $n=2m−1$ in which case $\pi_{4m−1}(S^{2m})≃Z\oplus F_m$ for $F_m$ a finite group.

# Results

- The [K3 Surface](K3%20Surfaces.md) plays an important role in the third stable homotopy group of spheres. 
	- It can be viewed as the source of the [24](24) in the group $\pi_3 \SS = \ZZ/{24}$. 

## Computations

- Table of $\pi_{n+k}S^n$: [here](http://www.math.nus.edu.sg/~matwujie/homotopy_groups_sphere.html)
- It is #well-known that the third stable homotopy group of spheres is cyclic of order [24](24). 
- It is also #well-known that the quaternionic [Hopf map](Hopf%20map) $\nu: S^7→S^4$, an $S^3\dash$[bundle](bundle.md), suspends to a generator of $\pi_8(S^5)=\pi^{st}_3$. 
- It is #well-known that the complex [Hopf map](Hopf%20map) $\eta: S^3 \to S^2$ suspends to a generator of $\pi_4(S^3) = \pi_1 \SS = \ZZ_2$. 
	- For this, there is a reasonably elementary argument, see e.g. 
> Bredon, Topology and Geometry, page 465.
- Complete or nearly complete calculations for $\pi \SS$ localized at a [Morava K-theory](Morava%20K-theory.md) have been made by Toda, Goerss-Henn-Mahowald-Rezk, and Mark Behrens. 
- Computer calculations of $\Ext$: Robert Bruner or Christian Nassau. 
- The unstable and stable homotopy groups $\pi_i(S^3)$ for $i\leq 64$ are apparently computed in:

> Curtis, Edward B.,Mahowald, Mark, The unstable Adams spectral sequence for $S^3$, Algebraic topology (Evanston, IL, 1988), 125–162, Contemp. Math., 96, Amer. Math. Soc., Providence, RI, 1989.

## Cobordism

-  [Serre's finiteness theorem](Serre's%20finiteness%20theorem) for the stable stems tells us that $\theta_n/bP_{n+1}$ is finite, see [J-homomorphism](J-homomorphism.md)
The stable homotopy groups (in degree $n$) of spheres are the same as [cobordism](cobordism.md) classes of [stably framed](stable%20framing.md) manifolds (of dimension $n$). 
- The [Pontryagin-Thom construction](Pontryagin-Thom%20construction) shows that the stable homotopy groups of spheres in degree $n$ are the same as the groups of stably framed manifolds of dimension $n$ up to cobordism.
- In dimension 3 the generator is given by $\nu = (S^3,Lie)$, the 3-sphere with its [Lie group framing](Lie%20group%20framing), where we identify $S^3 \cong S^1(\HH)$ as the group of unit [quaternions](quaternions).

# Unsorted

## How to read the stem diagrams

- Each one is for a fixed $p$, for example at $p=2$ each dot depicts a factor of 2 and vertical lines denote additive extensions. For example, for vertical dots:
$$
\cdot \to \cdot \to \cdot \leadsto \ZZ/{2}^{\oplus 3} \quad \\ 
\cdot \to \cdot \leadsto \ZZ/2^{\oplus 2}
.$$

- The [EHP](EHP) sequence is good for unstable , not good for stable. Use the [Adams Spectral Sequence](Adams%20Spectral%20Sequence) instead.

- There are several open problems related to differentials and invariants the arise from this [spectral sequence](spectral%20sequence.md) (what is "this"? #todo), 
	- E.g. what are the permanent cycles?
	- The [ANSS](Adams-Novikov%20spectral%20sequence.md) ends up being cleaner, fewer differentials!

> Hatcher: Connections between homotopy groups of spheres and low-dimensional geometry and topology have traditionally been somewhat limited, with the [[Hopf bundle]] being the thing that comes most immediately to mind. A fairly recent connection is Soren Galatius' theorem that the homology groups of $Aut(F_n)$ (the automorphism group of a free group) are isomorphic in a stable range of dimensions to $H_* \Loop^\infty \Sigma^\infty S^0$, the space whose homotopy groups are the stable homotopy groups of spheres.

## Relation to Classification of Manifolds

> Hatcher: Kervaire-Milnor theory ("Groups of Homotopy Spheres") and Pontryagin-Thom show that our knowledge/ignorance about the stable homotopy groups of spheres is reflected in knowledge/ignorance about classification of manifolds. 

In each dimension $n$, one has a group $\theta_n$ of smooth $n$-manifolds that are homotopy $n$-spheres, up to [h-cobordism](h-cobordism), under connected sum. This has a subgroup $\bP_{n+1}$ of boundaries of [parallelizable](framed.md) $n+1$-manifolds. Assume $n>4$, so h-cobordism classes are diffeomorphism classes.

Every [homotopy $n$-sphere](homotopy%20sphere) $S$ can be shown to have a [stable framing](stable%20framing.md). Hence (by [[Pontrayagin-Thom]]) $S$ is a regular fiber of a map $S_{n+k}\to S_k$ for $k\gg 0$ whose class in $\pi_{n+k}(S_k)$ is the obstruction to $S$ (with chosen stable framing) being a framed boundary.

Changing the stable framing amounts to adding something in the [image of J](J-homomorphism.md) $J: \pi_n(SO(k)) \to \pi_{n+k}(S_k)$. So we get an injective homomorphism $\theta_n/ \bP_{n+1}\to \coker J$ which is onto e.g. for $n$ odd.

We don't know $\coker(J)$ in high dimensions, so we don't know the order of $\theta_n/ \bP_{n+1}$. But [[Serre's finiteness theorem]] for the stable stems tells us that $Θ_n/bP_{n+1}$ is finite!

The subgroup $\bP_{n+1}$ is analyzed via [surgery](surgery.md)
and the [h-cobordism theorem](h-cobordism%20theorem.md). There's a nice summary in Lück's Basic introduction to surgery theory.

We have $\bP_{odd} = 0$. There's a formula for $\bP_{4p}$ involving [Bernoulli](Bernoulli%20numbers) numerators; this comes from a known (thanks to Adams) part of the stable stems, namely, $\im(J)$.

Finally, $\bP_{4p+2}$ is at most $Z_2$. Here $S$ bounds a [parallelizable](framed.md) manifold $P$. We'd like to make this contractible. By [framed surgery](framed%20surgery), we can kill the homotopy groups of $P$ below the middle dimension but the [Arf invariant](Arf%20invariant) of the pairing on middle-dimensional homology obstructs the final step, that of killing $\pi_{p+1}$. Say this is non-zero. Can we do better by starting with a different $P$? Yes, if and only if there's a closed, framed $2_{p+2}$-manifold of [Kervaire invariant one](Kervaire%20invariant%20one).

Browder showed that the Kervaire invariant can be one only when $4p+2=2l−2$ for some $l$, and [Hill-Hopkins-Ravenel](Hill-Hopkins-Ravenel.md) have shown that $l\leq 7$. 

**Conclusion**: $\bP_{4p+2}$ is $Z_2$ except in dimensions $6, 14, 30, 62,$ and possibly $126$, where it's zero.
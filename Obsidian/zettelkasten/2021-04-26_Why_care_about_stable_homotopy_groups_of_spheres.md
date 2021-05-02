---
date: 2021-04-26
tags: 
  - Unfiled
---

#homotopy #stable_homotopy #homotopy_groups_of_spheres #kervaire_invariant #cobordism #j_homomorphism

# The Big Motivating Problems

- The Kervaire Invariant 1 problem
- Classifying manifolds up to framed cobordism
- Distinct smooth structures on spheres

# Motivation: Stable Homotopy Groups of Spheres

If one understood even the stable homotopy groups of spheres very well, one would therefore have a near complete understanding of the group of smooth structures on the $n\dash$-sphere for $n\neq 4$.

The homotopy group $π_{n+k}(S^k)$ is a finite group except

1. for $n=0$ in which case $π_k(S^k)=\ZZ$;

2. $k=2m$ and $n=2m−1$ in which case $π_{4m−1}(S^{2m})≃Z⊕F_m$
for $F_m$ a finite group.

## What is the $J$ homomorphism? 

The $J$ homomorphism seems to link the framed bordism classes of manifolds to homotopy groups of spheres - for example $J$ takes $\pi_k(SL^n(R))$ to $\pi_{n}^k S^n$.

Look at the map
\[
\begin{align*}
SO(n) &\to \Omega^n S^n\\
A: (\RR^n \to \RR^n) &\mapsto A^+
.\end{align*}
\]

Where we view a matrix as a linear function on $\RR^n$, and take it to its compactification which is a map $S^n\to S^n$. Taking the limit yields a map from $SO^\infty \to QS^0 = \ \Omega^\infty \Sigma^\infty S^0$, and taking $\pi_0$ of both sides induces the $J$ homomorphism. The RHS is equal to $\pi_*^s$, the stable homotopy groups of spheres.
But the homotopy groups of $SO$ were computed by Bott, and have some 8-fold periodicity.

The image of $J$ was found by Adams in '66 or so, it is a finite group with order the denominator of some function involving Bernoulli numbers. However, the pattern is more apparent by looking at the $p$-stems, then the number of connected dots really just depends on the $p$-adic divisibilty of the horizontal number plus 1. The image of $J$ is just the bottom row in these stem diagrams.

## How to read the stem diagrams

Each one is for a fixed $p$, for example at $p=2$ each dot depicts a factor of 2 and vertical lines denote additive extensions. For example, $\cdot \to \cdot \to \cdot$ vertically would denote $\ZZ_{2^3} = \ZZ_2 \oplus \ZZ_2 \oplus \ZZ_2$, whereas $\cdot \to \cdot$ denotes $\ZZ_2 \oplus \ZZ_2$.

The EHP sequence is good for unstable stuff, not the best for stable - use the Adams spectral sequence instead.

The stable homotopy groups of spheres are isomorphic to the framed cobordism groups of manifolds. The Kervaire invariant has to do with which stable homotopy groups can be represented by exotic spheres. There are several open problems related to differentials and invariants the arise from this SS, e.g. what are the permanent cycles? The Kervaire Invariant Problem was only recently solved by Hopkins-Ravenel-Hill.

The Adams-Novikov SS ends up being cleaner, fewer differentials!

Table of $\pi_{n+k}S^n$: [here](http://www.math.nus.edu.sg/~matwujie/homotopy_groups_sphere.html)

Interesting question: $\pi_0(X)$ can be defined for schemes. What are the higher homotopy groups? What do they measure? (More fundamentally, what do higher homotopy groups of spheres measure at all?)

WRT schemes, what are the homotopy spheres? What are the homology spheres, the Eilenberg-MacLane spaces?

It is ''well-known'' that the third stable homotopy group of spheres is cyclic of order 24. It is also "well-known" that the quaternionic Hopf map $\nu: S^7→S^4$, an $S^3$-bundle, suspends to a generator of $\pi_8(S^5)=\pi^{st}_3$. It is even better known that the complex Hopf map $\eta: S^3 \to S^2$ suspends to a generator of $\pi_4(S^3) = \pi^{st}_1=\ZZ_2$. For this, there is a reasonably elementary argument, see e.g. Bredon, Topology and Geometry, page 465.

As we have seen in this MO question, and also this one, the K3 surface plays an important role in the third stable homotopy group of spheres. It can be viewed as the source of the 24 in this group $\pi^{st}_3 = \ZZ_{24}$. Here is a brief review of how that goes: the stable homotopy groups (in degree $n$) of spheres are the same as cobordism classes of stably framed manifolds (of dimension $n$). In dimension 3 the generator is given by $\nu = (S^3,Lie)$, the 3-sphere with its Lie group framing (where we think of $S^3⊆H$ as the group of unit quaternions).


> The homotopy groups $\pi_i(S^3)$ for $i\leq 64$ are apparently computed in:

> Curtis, Edward B.,Mahowald, Mark, The unstable Adams spectral sequence for $S^3$, Algebraic topology (Evanston, IL, 1988), 125–162, Contemp. Math., 96, Amer. Math. Soc., Providence, RI, 1989.

The Pontryagin-Thom construction shows that the stable homotopy groups of spheres are the same as the groups of stably framed manifolds up to cobordism.

The best overall summary of results would be Doug Ravenel's book on the homotopy groups of spheres, and I would also recommend Kochman's book. Read works of Mark Mahowald for results using the Adams spectral sequence, and Doug Ravenel for the Adams-Novikov spectral sequence. Complete or nearly complete calculations for the homotopy groups of spheres that have been localized at a particular Morava K-theory have been made by Toda, Goerss-Henn-Mahowald-Rezk, and Mark Behrens. If you're interested in computer calculations of Ext, you should contact Robert Bruner or Christian Nassau. Many others have contributed to the calculation of homotopy groups of spheres and probably deserve to be mentioned (if I omitted someone, it was unintentional).

**One of the most recent spectacular advances in algebraic topology was the solution of (most of) the Kervaire invariant 1 problem by Hill, Hopkins and Ravenel about framed manifolds/stable homotopy groups of spheres.** They used a tremendous amount of stuff to solve this classical problem: equivariant topology, chromatic homotopy theory, spectral sequences, orthogonal spectra, abstract homotopy theory, ...

[https://www.youtube.com/watch?v=jie-ww7RBWY](https://www.youtube.com/watch?v=jie-ww7RBWY)

[Honors Thesis on Related Stuff, Hopf Invariant 1](http://mathematics.stanford.edu/wp-content/uploads/2013/08/Victor-Honors-Thesis-2013.pdf)

[Only odd spheres with a unique smooth structure are dimensions 1, 3, 5, and 61](http://archive.ymsc.tsinghua.edu.cn/pacm_download/293/8755-61sphere_final.pdf)

Question 1.2. Let $M$ be a closed $n$-manifold. Suppose $M$ is homotopy equivalent to $S^n$. Is $M$ homeomorphic to $S^n$? The answer turns out to be yes for all dimensions.

Question 1.4. Let $M$ be a closed $n$-manifold. Suppose $M$ is homeomorphic to $S^n$. Is $M$ diffeomorphic to $S^n$? For $n= 3$, the answer is yes. It is due to Moise [37] that every closed 3-manifold has a unique smooth structure.  In particular, the 3-sphere has a unique smooth structure.  **For n= 4, this question is wildly open.** For higher dimensions, Milnor [35] constructed an exotic smooth structure on $S^7$. Furthermore, Kervaire and Milnor [27] showed that the answer is not true in general for $n≥5$.

Question 1.6. For which $n$ does there exist a unique smooth structure on $S^n$? Kervaire and Milnor reduced Question 1.5 to a computation of the stable homotopy groups of spheres. In fact, Kervaire and Milnor constructed a group $Θ_n$, which is the group of h-cobordism classes of homotopy $n$-spheres. The group $Θ_n$ classifies the differential structures on $S^n$ for $n≥5$.
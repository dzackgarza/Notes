# Reading Notes

[TOC]

Paper on "constructive" algebraic topology
[J. Rubio, F. Sergeraert / Bull. Sci. math. 126 (2002) 389–412 403](https://www-fourier.ujf-grenoble.fr/~sergerar/Papers/Constructive-AT.pdf)

Many constructions in algebraic topology can be organized as solutions of fibration problems.

In particular the classifying space $BG$ of a topological group $G$ is the solution for a fibration $BG \cross_\tau G$ where the fiber space is the given group $G$, the base space is the classifying space $BG$ and the product $BG \cross G$ is twisted in such a way the total space $BG \cross_\tau G$ is contractible. The same idea where the base space $X$ is given and the fibre space is unknown leads to the loop space $\Omega X$ and the contractible total space $X \cross_\tau \Omega X$.

The handbooks of Algebraic Topology more or less explain the Eilenberg–Moore spectral sequence can be used to “compute” the homology groups of the new objects $BG$ and $ΩX$ if the homology groups of $G$ or $X$ are known. In fact this spectral sequence is in general unable to give you the new homology groups, unless you are in a very special situation. The Serre spectral sequence works in the third situation, when you are looking for the homology groups of a total space $B \cross_\tau F$ if the homology groups of $B$ and $F$ are known; but in general you meet the same difficulties with the higher differentials and the extension problems at abutment.

----

if one understood even the stable homotopy groups of spheres very well, one would therefore have a near complete understanding of the group (I assume that $n\neq 4$) of differentiable structures on the n-sphere: see e.g.

The homotopy group $π_{n+k}(S^k)$ is a finite group except

1. for $n=0$ in which case $π_k(S^k)=\ZZ$;

2. $k=2m$ and $n=2m−1$ in which case $π_{4m−1}(S^{2m})≃Z⊕F_m$
for $F_m$ a finite group.

The rough idea of obstruction theory is simple. Suppose we want to construct
some kind of function on a CW complex $X$. We do this by induction: if the
function is defined on the k-skeleton $X_k$, we try to extend it over the $(k + 1)\dash$skeleton $X^{k+1}$. The obstruction to extending over a $(k + 1)\dash$cell is an element of $\pi_k$ of something. These obstructions fit together to give a cellular cochain on $X$ with coefficients in this $π_k$. In fact this cochain is a cocycle, so it defines an “obstruction class” in $H_{k+1}(X; π_k(something))$. If this cohomology class is zero, i.e. if there is a cellular $k\dash$cochain $η$ with $0 = δη$, then $η$ prescribes a way to modify our map over the $k\dash$skeleton so that it can be extended over
the $(k + 1)\dash$skeleton

The $J$ homomorphism seems to link the framed bordism classes of manifolds to homotopy groups of spheres - for example $J$ takes $\pi_k(SL^n(R))$ to $\pi_{n}^k S^n$.

What is the $J$ homomorphism? Look at the map
$$
SO(n) \to \Omega^n S^n\\
A: (\RR^n \to \RR^n) \mapsto A^+
$$

Where we view a matrix as a linear function on $\RR^n$, and take it to its compactification which is a map $S^n\to S^n$. Taking the limit yields a map from $SO^\infty \to QS^0 = \ \Omega^\infty \Sigma^\infty S^0$, and taking $\pi_0$ of both sides induces the $J$ homomorphism. The RHS is equal to $\pi_*^s$, the stable homotopy groups of spheres.
But the homotopy groups of $SO$ were computed by Bott, and have some 8-fold periodicity.

The image of $J$ was found by Adams in '66 or so, it is a finite group with order the denominator of some function involving Bernoulli numbers. However, the pattern is more apparent by looking at the $p$-stems, then the number of connected dots really just depends on the $p$-adic divisibilty of the horizontal number plus 1. The image of $J$ is just the bottom row in these stem diagrams.

How to read the stem diagrams? Each one is for a fixed $p$, for example at $p=2$ each dot depicts a factor of 2 and vertical lines denote additive extensions. For example, $\cdot \to \cdot \to \cdot$ vertically would denote $\ZZ_{2^3} = \ZZ_2 \oplus \ZZ_2 \oplus \ZZ_2$, whereas $\cdot \to \cdot$ denotes $\ZZ_2 \oplus \ZZ_2$.

The EHP sequence is good for unstable stuff, not the best for stable - use the Adams spectral sequence instead.

The stable homotopy groups of spheres are isomorphic to the framed cobordism groups of manifolds. The Kervaire invariant has to do with which stable homotopy groups can be represented by exotic spheres. There are several open problems related to differentials and invariants the arise from this SS, e.g. what are the permanent cycles? The Kervaire Invariant Problem was only recently solved by Hopkins-Ravenel-Hill.

The Adams-Novikov SS ends up being cleaner, fewer differentials!

Table of $\pi_{n+k}S^n$: [here](http://www.math.nus.edu.sg/~matwujie/homotopy_groups_sphere.html)

Interesting question: $\pi_0(X)$ can be defined for schemes. What are the higher homotopy groups? What do they measure? (More fundamentally, what do higher homotopy groups of spheres measure at all?)

WRT schemes, what are the homotopy spheres? What are the homology spheres, the Eilenberg-MacLane spaces?


----

# Possible Project Outline

- CW Complexes
- Define homotopy
- Define homotopy invariance
- Classification of abelian groups
  - Free and torsion
- Define $\pi_n(X)$
  - Show functoriality
  - Show homotopy invariant
- Whitehead's Theorem (homotopy and homology versions)
- $\pi_n$ for $n\geq 2$ is abelian
- Compute $H_* S^n$
- Compute $\pi_k S^1$
- Cellular approximation theorem
- Show $\pi_k S^n = 0$ for $k<n$
- Show $\pi_n$ only depends on n-skeleton
- Hurewicz theorem
- Show $\pi_n S^n = Z$
- Show $\pi_i S^n = 0$ for $i < n$
- Define fibrations and fiber bundles
- Define suspension and loop spaces
- Show $\Sigma \to \Omega$ adjunction
- Show how to use $\Sigma$ and $\Omega$ to move between $\pi_n$ using equalities
- Freudenthal Suspension theorem
- The homotopy LES of a fibration
- Hopf Fibration
  - Show $\pi_k S^2 = \pi_k S^3$
  - Show $\pi_3 S^2 = Z$
- Killing off homotopy groups
- SS of a filtration
- Serre SS
  - Compute algebra structure of $CP^\infty$
- Compute $\pi_4 S^2$
- Compute first stable $\pi_k$
- Freudenthal Suspension
- Eilenberg-Maclane Spaces
- $H^n (X; G) = [X, K(G, n)]$
- Summary of "easy" results:
  - $\pi_k S^1 = 0, i > 1$
  - $\pi_n S^n = Z$
  - $\pi_3 S^2 = Z$
  - $\pi_k S^2 = \pi_k S^3$
  - $\pi_i(S^n)$ is finite for $i > n$
    - Except for $\pi_{4k-1}$
  - See [here](https://web.stanford.edu/~amwright/HomotopyGroupsOfSoheres.pdf)
- Harder results
  - $\pi_n+1 S^n = Z\delta_2 + Z_2 \delta_{n \geq 3}$
  - $\pi_n+2 S^n = Z_2$
- Exact sequences
- Splitting and extension problem
- Degree of a map to $S^n$
- Whitehead product and Lie Algebra structure of $\pi_*$

----

In fact, by working the Serre spectral sequence backwards, we can compute the homology of $\Omega S^n$.

# Unstable homotopy groups of spheres
![Unstable Homotopy Groups of Spheres](assets/2-22ReadingNotes-52d83.png)

# Homotopy Groups of SO(n)
![Homotopy Groups of $SO^n$](assets/2-22ReadingNotes-591bd.png)

# Useful Higher Homotopy used in Physics
![Various higher homotopy groups](assets/2-22ReadingNotes-0ea10.png)

$\pi_n$ are equal for the following spaces:

- $SO^3$
- $\RP^3$
- $S^3$
- $SU^2$

 (Maybe these are all diffeomorphic)

Also $\pi_n(\RP^n) = \pi_n(S^n)$

$Sp^4 = SU^2 \cross SU^2$

$J: \pi_k(SO^n) \to \pi_{n+k} S^n$


# Homotopy of Infinite Grassmannian
![Homotopy of infinite Grassmannian](assets/2-22ReadingNotes-f759d.png)


---

It is ''well-known'' that the third stable homotopy group of spheres is cyclic of order 24. It is also "well-known" that the quaternionic Hopf map $ν:S^7→S^4$, an $S^3$-bundle, suspends to a generator of $π_8(S^5)=π^{st}_3$. It is even better known that the complex Hopf map $η:S^3 \to S^2$ suspends to a generator of $π_4(S^3)=π^{st}_1=\ZZ_2$. For this, there is a reasonably elementary argument, see e.g. Bredon, Topology and Geometry, page 465.

As we have seen in this MO question, and also this one, the K3 surface plays an important role in the third stable homotopy group of spheres. It can be viewed as the source of the 24 in this group $π^{st}_3=\ZZ_{24}$. Here is a brief review of how that goes: the stable homotopy groups (in degree $n$) of spheres are the same as cobordism classes of stably framed manifolds (of dimension $n$). In dimension 3 the generator is given by $ν=(S^3,Lie)$, the 3-sphere with its Lie group framing (where we think of $S^3⊆H$ as the group of unit quaternions).


The homotopy groups $π_i(S^3)$ for $i\leq 64$ are apparently computed in:

Curtis, Edward B.,Mahowald, Mark, The unstable Adams spectral sequence for $S^3$, Algebraic topology (Evanston, IL, 1988), 125–162, Contemp. Math., 96, Amer. Math. Soc., Providence, RI, 1989.

The Pontryagin-Thom construction shows that the stable homotopy groups of spheres are the same as the groups of stably framed manifolds up to cobordism.

The best overall summary of results would be Doug Ravenel's book on the homotopy groups of spheres, and I would also recommend Kochman's book. Read works of Mark Mahowald for results using the Adams spectral sequence, and Doug Ravenel for the Adams-Novikov spectral sequence. Complete or nearly complete calculations for the homotopy groups of spheres that have been localized at a particular Morava K-theory have been made by Toda, Goerss-Henn-Mahowald-Rezk, and Mark Behrens. If you're interested in computer calculations of Ext, you should contact Robert Bruner or Christian Nassau. Many others have contributed to the calculation of homotopy groups of spheres and probably deserve to be mentioned (if I omitted someone, it was unintentional).

*One of the most recent spectacular advances in algebraic topology was the solution of (most of) the Kervaire invariant 1 problem by Hill, Hopkins and Ravenel about framed manifolds/stable homotopy groups of spheres.* They used a tremendous amount of stuff to solve this classical problem: equivariant topology, chromatic homotopy theory, spectral sequences, orthogonal spectra, abstract homotopy theory, ...

[https://www.youtube.com/watch?v=jie-ww7RBWY](https://www.youtube.com/watch?v=jie-ww7RBWY)

[Honors Thesis on Related Stuff, Hopf Invariant 1](http://mathematics.stanford.edu/wp-content/uploads/2013/08/Victor-Honors-Thesis-2013.pdf)

[Only odd spheres with a unique smooth structure are dimensions 1, 3, 5, and 61](http://archive.ymsc.tsinghua.edu.cn/pacm_download/293/8755-61sphere_final.pdf)

Question 1.2. Let $M$ be a closed $n$-manifold. Suppose $M$ is homotopy equivalent to $S^n$. Is $M$ homeomorphic to $S^n$? The answer turns out to be yes for all dimensions.

Question 1.4. Let $M$ be a closed $n$-manifold. Suppose $M$ is homeomorphic to $S^n$. Is $M$ diffeomorphic to $S^n$? For $n= 3$, the answer is yes. It is due to Moise [37] that every closed 3-manifold has a unique smooth structure.  In particular, the 3-sphere has a unique smooth structure.  **For n= 4, this question is wildly open.** For higher dimensions, Milnor [35] constructed an exotic smooth structure on $S^7$. Furthermore, Kervaire and Milnor [27] showed that the answer is not true in general for $n≥5$.

Question 1.6. For which $n$ does there exist a unique smooth structure on $S^n$? Kervaire and Milnor reduced Question 1.5 to a computation of the stable homotopy groups of spheres. In fact, Kervaire and Milnor constructed a group $Θ_n$, which is the group of h-cobordism classes of homotopy $n$-spheres. The group $Θ_n$ classifies the differential structures on $S^n$ for $n≥5$.

# Table of n+k homotopy groups of spheres
![](assets/2-22ReadingNotes-7a07a.png)

$K(G, n) \cong \Omega K(G, n+1)$

is adjoint to the map

$\Sigma K(G,n ) \to K(G, n+1)$

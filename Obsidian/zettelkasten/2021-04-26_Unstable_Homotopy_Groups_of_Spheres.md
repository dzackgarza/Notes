---
date: 2021-04-26
tags: 
  - Unfiled
---

> Opinion from MO: modern Topology starts with spectra.


# Unstable homotopy groups of spheres
![Unstable Homotopy Groups of Spheres](figures/2-22ReadingNotes-52d83%201.png)

# Survey articles on homotopy groups of spheres
From Hatcher:

While my Algebraic Topology book and my unfinished book on spectral sequences (referred to in other answers to this question) contain some information about homotopy groups of spheres, they don't really qualify as a general survey or introduction. One source that fits this bill more closely is Chapter 1 of Doug Ravenel's "green book" Complex Cobordism and Stable Homotopy Groups of Spheres, from 1986. This introductory chapter starts at a reasonably accessible level, with increasing prerequisites in the later sections of the chapter. More recent surveys ought to exist, although at the moment I can't recall any. With the recent solution of the Kervaire invariant problem by Hill-Hopkins-Ravenel, this would be a good time for an updated survey.

Connections between homotopy groups of spheres and low-dimensional geometry and topology have traditionally been somewhat limited, with the Hopf bundle being the thing that comes most immediately to mind. A fairly recent connection is Soren Galatius' theorem that the homology groups of $Aut(F_n)$, the automorphism group of a free group, are isomorphic in a stable range of dimensions to the homology groups of "loop-infinity S-infinity", the space whose homotopy groups are the stable homotopy groups of spheres.

Other posters have alluded to the Kervaire-Milnor theory (from "Groups of homotopy spheres. I") which shows how, via Pontryagin-Thom, our knowledge and ignorance about the stable homotopy groups of spheres is reflected in knowledge and ignorance about classification of manifolds. Maybe it's worth telling this (really beautiful!) story.

In each dimension $n$, one has a group $Θ_n$ of smooth $n$-manifolds that are homotopy $n$-spheres, up to h-cobordism, under connected sum. This has a subgroup $bP_{n+1}$ of boundaries of parallelizable $n+1$-manifolds. Assume n>4, so h-cobordism classes are diffeomorphism classes.

Every homotopy $n$-sphere $S$ can be shown to have a stable framing. Hence (by P-T) $S$ is a regular fibre of a map $S_{n+k}\to S_k$ for $k≫0$ whose class in $π_{n+k}(S_k)$ is the obstruction to $S$ (with chosen stable framing) being a framed boundary. Changing the stable framing amounts to adding something in the image of the $J$-homomorphism $J: π_n(SO(k)) \to π_{n+k}(S_k)$. So we get an injective homomorphism $Θ_n/bP_{n+1}→\coker(J)$ (which is onto e.g. for $n$ odd).

We don't know $\coker(J)$ in high dimensions, so we don't know the order of $Θ_n/bP_{n+1}$. But Serre's finiteness theorem for the stable stems tells us that $Θ_n/bP_{n+1}$ is finite!

The subgroup $bP_{n+1}$ is analyzed via surgery theory and the h-cobordism theorem. There's a nice summary in Lück's Basic introduction to surgery theory.

We have $bP_{odd}=0$. There's a formula for $bP_{4p}$ involving Bernoulli numerators; this comes from a known (thanks to Adams) part of the stable stems, namely, $\im(J)$.

Finally, $bP_{4p+2}$ is at most $Z_2$. Here $S$ bounds a parallelizable manifold $P$. We'd like to make this contractible. By framed surgery, we can kill the homotopy groups of $P$ below the middle dimension but the Arf invariant of the pairing on middle-dimensional homology obstructs the final step, that of killing $π_{p+1}$. Say this is non-zero. Can we do better by starting with a different $P$? Yes, if and only if there's a closed, framed $2_{p+2}$-manifold of Kervaire invariant one.

Browder showed that the Kervaire invariant can be one only when $4p+2=2l−2$ for some $l$, and Hill-Hopkins-Ravenel have shown that $l≤7$. Conclusion: $bP_{4p+2}$ is $Z_2$ except in dimensions 6, 14, 30, 62, and possibly 126, where it's zero.

The $J$-homomorphism
- [See beginning of Hopkins talk](https://www.youtube.com/watch?v=Ix4pg87LKVk)

# Stuff to Review
- Mapping cylinder/cone
- Suspension
- Colimits
- Smash product
- Homotopy limit/colimit
- Model categories
- $\infty\dash$categories
- Topological modular forms
- Steenrod Algebra
- Formal groups
- Nishida's Theorem:
  - The $S^1$ spectrum is some kind of "thickening" of $\ZZ$?
  - Morava E-Theory

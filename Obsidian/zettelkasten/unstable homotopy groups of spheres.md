---
date: 2021-04-26
tags: 
  - Unfiled
---

- General survey/introduction: Chapter 1 of Ravenel's "green book", *Complex Cobordism and Stable Homotopy Groups of Spheres*

# Unstable homotopy groups of spheres
![Unstable Homotopy Groups of Spheres](figures/2-22ReadingNotes-52d83%201.png)

# Survey articles on homotopy groups of spheres

> Hatcher: Connections between homotopy groups of spheres and low-dimensional geometry and topology have traditionally been somewhat limited, with the [[Hopf bundle]] being the thing that comes most immediately to mind. A fairly recent connection is Soren Galatius' theorem that the homology groups of $Aut(F_n)$ (the automorphism group of a free group) are isomorphic in a stable range of dimensions to $H_* \Loop^\infty \Sigma^\infty S^0$, the space whose homotopy groups are the stable homotopy groups of spheres.

## Relation to Classification of Manifolds

> Hatcher: Kervaire-Milnor theory ("Groups of Homotopy Spheres") and Pontryagin-Thom show that our knowledge/ignorance about the stable homotopy groups of spheres is reflected in knowledge/ignorance about classification of manifolds. 


In each dimension $n$, one has a group $\theta_n$ of smooth $n$-manifolds that are homotopy $n$-spheres, up to [h-cobordism](h-cobordism), under connected sum. This has a subgroup $\bP_{n+1}$ of boundaries of [parallelizable](framed.md) $n+1$-manifolds. Assume $n>4$, so h-cobordism classes are diffeomorphism classes.

Every homotopy $n$-sphere $S$ can be shown to have a [stable framing](stable%20framing.md). Hence (by Pontrayagin-Thom) $S$ is a regular fiber of a map $S_{n+k}\to S_k$ for $k\gg 0$ whose class in $\pi_{n+k}(S_k)$ is the obstruction to $S$ (with chosen stable framing) being a framed boundary.

Changing the stable framing amounts to adding something in the [image of J](J-homomorphism.md) $J: \pi_n(SO(k)) \to \pi_{n+k}(S_k)$. So we get an injective homomorphism $\theta_n/ \bP_{n+1}\to \coker J$ which is onto e.g. for $n$ odd.

We don't know $\coker(J)$ in high dimensions, so we don't know the order of $\theta_n/ \bP_{n+1}$. But [[Serre's finiteness theorem]] for the stable stems tells us that $Θ_n/bP_{n+1}$ is finite!

The subgroup $\bP_{n+1}$ is analyzed via [Surgery Theory](Surgery%20Theory)
and the [h-cobordism theorem](h-cobordism%20theorem.md). There's a nice summary in Lück's Basic introduction to surgery theory.

We have $\bP_{odd} = 0$. There's a formula for $\bP_{4p}$ involving [Bernoulli](Bernoulli%20numbers) numerators; this comes from a known (thanks to Adams) part of the stable stems, namely, $\im(J)$.

Finally, $\bP_{4p+2}$ is at most $Z_2$. Here $S$ bounds a [parallelizable](framed.md) manifold $P$. We'd like to make this contractible. By [framed surgery](framed%20surgery), we can kill the homotopy groups of $P$ below the middle dimension but the [Arf invariant](Arf%20invariant) of the pairing on middle-dimensional homology obstructs the final step, that of killing $\pi_{p+1}$. Say this is non-zero. Can we do better by starting with a different $P$? Yes, if and only if there's a closed, framed $2_{p+2}$-manifold of [Kervaire invariant one](Kervaire%20invariant%20one).

Browder showed that the Kervaire invariant can be one only when $4p+2=2l−2$ for some $l$, and [Hill-Hopkins-Ravenel](Hill-Hopkins-Ravenel.md) have shown that $l\leq 7$. 

**Conclusion**: $\bP_{4p+2}$ is $Z_2$ except in dimensions $6, 14, 30, 62,$ and possibly $126$, where it's zero.



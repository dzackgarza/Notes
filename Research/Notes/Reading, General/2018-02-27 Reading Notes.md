# General Reading Notes

Stacks and orbifolds are concepts from algebraic geometry (respectively geometric topology) that allow us to talk about objects that locally look like the quotient of a smooth object by a group action, in a way that remembers information about the isotropy groups of the action.  Such 'stacky' objects can behave like smooth  objects  even  if  the  underlying  spaces  have  singularities.   As  for  spaces,  manifolds,and schemes, cohomology theories are important invariants also for stacks and orbifolds, and examples such as ordinary cohomology or K-theory lend themselves to generalization.  Special cases of orbifolds are 'global quotients', often denoted M/G, for example for a smooth action of a compact Lie group G on a smooth manifold M.  In such examples, the orbifold cohomology of M/G is supposed to be the G-equivariant cohomology of M.  This suggests away to do orbifold cohomology theories by means of equivariant stable homotopy theory,via suitable G-spectra.  However, since the group G is not intrinsic and can vary, one needs equivariant cohomology theories for all groups G, with some compatibility.  Global homotopy theory makes this idea precise.


The universal compact lie group is the topological monoid $L(\RR^\infty, \RR^\infty)$ of linear isometric self-embeddings.

What are Quillen equivalences?

What is a Stiefel manifold?


Proof of Hurewicz using spectral sequences: [Thm 3.2.2](http://homepages.math.uic.edu/~mholmb2/serre.pdf)


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


[Justification for Lie Group Computations](https://en.wikipedia.org/wiki/Fundamental_group#Lie_groups)
Here is a very fundamental way to create interesting Riemannian manifolds: Let $G$ be a semi-simple Lie group, let $K$ be its maximal compact subgroup, let $Γ$ be a discrete subgroup of $G$, and form $G/K$. This quotient is called the symmetric space attached to $G$.

The Riemannian structure comes from an invariant metric on $G$, and so $G$ acts as isometries on $G/K$ by left translation.

If you now take a discrete subgroup $Γ$ of $G$, you can form the double quotient $Γ∖G/K$. These are some of the most celebrated Riemannian manifolds in mathematics. In the case of $SL_2(\RR)$, we know via uniformization that all genus $g≥2$ Riemann surfaces can be described in this way. In the case of $SL_2(\CC)$ we get hyperbolic 3-manifolds, from symplectic groups we get moduli spaces of abelian varieties, ... .

P.S. I should also note that the study of spaces $Γ∖G/K$ for certain $Γ$ (so-called congruence subgroups) is one of the basic topics of the Langlands program, and the function theory and cohomology of these spaces (especially their representation-theoretic structure) is conjectured to govern a vast amount of number theory. Trying to understand and work on these conjectures was my own motivation for learning Lie theory.

[Cartan's Generalization of Klein's Erlangen Program](https://books.google.com/books?id=Ytqs4xU5QKAC&lpg=PA178&dq=cartan%2520geometry%2520sharpe&pg=PP1#v=onepage&q=cartan%2520geometry%2520sharpe&f=false)

[More info](https://en.wikipedia.org/wiki/Cartan_connection)

A Klein geometry consists of a Lie group $G$ together with a Lie subgroup $H$ of $G$. Together $G$ and $H$ determine a homogeneous space $G/H$, on which the group $G$ acts by left-translation. Klein's aim was then to study objects living on the homogeneous space which were congruent by the action of $G$. A Cartan geometry extends the notion of a Klein geometry by attaching to each point of a manifold a copy of a Klein geometry, and to regard this copy as tangent to the manifold. Thus the geometry of the manifold is infinitesimally identical to that of the Klein geometry, but globally can be quite different. In particular, Cartan geometries no longer have a well-defined action of $G$ on them. However, a Cartan connection supplies a way of connecting the infinitesimal model spaces within the manifold by means of parallel transport.

- Irreducible reps of $SO_3$ describe the periodic table
- Irreducible reps of $SU_2$ lead to Dirac equations of the electron
- Standard Model: $SU_3 \cross SU_2 \cross U_1$

$SO(n)$ and its relativistic analog $SO(1,n)$ define symmetries of space time. $SU(n)$ defines fundamental quantum mechanical phase space symmetries. $Sp(n)$ defines symmetries in cases where there is a quaternionic structure.

# Misc
# Homotopy and Homology Results

- $\pi_1(SL_n(\RR)) = \ZZ\delta_2 + \ZZ_2 \delta_{n\geq 3}$
  See [Lemma 5.3](http://www.math.rice.edu/~andyp/notes/HomotopySpheresLowDimTop.pdf)
- $\pi_1(SO_n(\RR)) = \pi_1(SL_n(\RR))$

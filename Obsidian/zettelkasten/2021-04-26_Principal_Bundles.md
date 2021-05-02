---
date: 2021-04-26
tags: 
  - Unfiled
---

# Principal Bundles

A principal bundle is a mathematical object that formalizes some of the essential features of the Cartesian product $X × G$ of a space $X$ with a group $G$. In the same way as with the Cartesian product, a principal bundle $P$ is equipped with

An action of $G$ on $P$, analogous to $(x, g)h = (x, gh)$ for a product space.
A projection onto $X$. For a product space, this is just the projection onto the first factor, $(x,g) ↦ x$.

A principal $G$-bundle, where $G$ denotes any topological group, is a fiber bundle $π:P → X$ together with a continuous right action $P × G → P$ such that $G$ preserves the fibers of $P$ (i.e. if $y ∈ P_x$ then $yg ∈ P_x$ for all $g ∈ G$) and acts freely and transitively on them. This implies that each fiber of the bundle is homeomorphic to the group $G$ itself.

Since the group action preserves the fibers of $π:P → X$ and acts transitively, it follows that the orbits of the $G$-action are precisely these fibers and the orbit space $P/G$ is homeomorphic to the base space $X$. Because the action is free, the fibers have the structure of $G\dash$torsors. A $G$-torsor is a space which is homeomorphic to $G$ but lacks a group structure since there is no preferred choice of an identity element.

**One of the most important questions regarding any fiber bundle is whether or not it is trivial, i.e. isomorphic to a product bundle.** A principal bundle is trivial if and only if it admits a global cross section.

## Examples

The prototypical example of a smooth principal bundle is the frame bundle of a smooth manifold $M$, often denoted $FM$ or $GL(M)$. Here the fiber over a point $x ∈ M$ is the set of all frames (i.e. ordered bases) for the tangent space $T_xM$. The general linear group $GL(n,\RR)$ acts freely and transitively on these frames. These fibers can be glued together in a natural way so as to obtain a principal $GL(n,\RR)$-bundle over $M$.

A normal (regular) covering space $p:C → X$ is a principal bundle where the structure group

$$G=\pi _{1}(X)/p_* (\pi_{1}(C))$$

acts on the fibers of p via the monodromy action. In particular, the universal cover of $X$ is a principal bundle over $X$ with structure group $π_1(X)$ (since the universal cover is simply connected and thus $π_1(C)$ is trivial).

## Classification

Any topological group $G$ admits a classifying space $BG:$ the quotient by the action of $G$ of some weakly contractible space $EG$, i.e. a topological space with vanishing homotopy groups. The classifying space has the property that any $G$ principal bundle over a paracompact manifold $B$ is isomorphic to a pullback of the principal bundle $EG → BG$.

In fact, more is true, as the set of isomorphism classes of principal $G$ bundles over the base $B$ identifies with the set of homotopy classes of maps $B → BG$.

# Classifying Spaces

**Definition:** A _principal $G\dash$bundle_ is a fiber bundle $F \to E \to B$ in which for each fiber $\pi^{-1}(b)\definedas F_b$, satisfying the condition that $G$ acts freely and transitively on $F_b$. In other words, there is a continuous group action $\actson: E\cross G \to E$ such that for every $f \in F_b$ and $g\in G$, we have $g\actson f \in F_b$ and $g\actson f \neq f$.

**Example:** A covering space $\hat X \mapsvia{p} X$ yields a principal $\pi_1(X)\dash$bundle.



*Remark*: A consequence of this is that each $F_b \cong G \in \text{TopGrp}$ (which may also be taken as the definition). Furthermore, each $F_b$ is then a _homogeneous space_, i.e. a space with a transitive group action $G\actson F_b$ making $F_b \cong G/G_x$.

*Remark*: Although each fiber $F_b$ is isomorphic to $G$, there is no preferred identity element in $F_b$. Locally, one can form a local section by choosing some $e\in F_b$ to serve as the identity, but the fibers can only be given a global group structure iff the bundle is trivial. This property is expressed by saying $F_b$ is a _$G\dash$torsor_.

*Remark*: Every fiber bundle $F\to E\to B$ is a principal $\Aut(F)\dash$fiber bundle. Also, in local trivializations, the transition functions are elements of $G$.

**Proposition**: A principal bundle is trivial iff it admits a global section. Thus all principal vector bundles are trivial, since the zero section always exists.

**Definition:** A principal bundle $F \to E \mapsvia{\pi} B$ is *universal* iff $E$ is weakly contractible, i.e. if $E$ has the homotopy type of a point.

**Definition:** Given a topological group $G$, a _classifying space_, denoted $BG$, is the base space of a universal principal $G\dash$bundle
$$
G \to EG \mapsvia{\pi} BG
$$
making $BG$ a quotient of the contractible space $EG$ by a $G\dash$action. We shall refer to this as _the classifying bundle_.

Classifying spaces satisfy the property that any other principal $G\dash$bundle over a space $X$ is isomorphic to a pullback of the classifying bundle along a map $X \to BG$.


Let $I(G, X)$ denote the set of isomorphism classes of principal $G\dash$bundles over a base space $X$, then
$$
I(G, X) \cong [X, BG]_{\text{hoTop}}
$$

So in other words, isomorphism classes of principal $G\dash$bundles over a base $X$ are equivalent to homotopy classes of maps from $X$ into the classifying space of $G$.


**Proposition**: Grassmannians are classifying spaces for vector bundles. That is, there is a bijective correspondence:

$$
[X, \Gr(n, \RR)] \cong \theset{\text{isomorphism classes of rank $n$ $\RR\dash$vector bundles over $X$}}
$$

It is also the case that every such vector bundle is a pullback of the principal bundle
$$
\GL(n, \RR) \to V_n(\RR^\infty) \to \Gr(n, \RR)
$$
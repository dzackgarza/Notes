---
aliases: ["principal"]
---

# Definitions

**Definition:** A **principal $G\dash$ bundle** is a [fiber bundle](fiber%20bundle.md) $F \to E \to B$ for which $G$ acts freely and transitively on each fiber $F_b:= \pi^{-1}(b)$. 

In other words, there is a continuous group action 
$$\cdot: E\cross G \to E$$ 
such that for every $f \in F_b$ and $g\in G$, we have 
- $g\cdot f \in F_b$ 
- $g\cdot f \neq f$.

|A principal $G$ bundle is a locally trivial free $G$-space with orbit space $B$. 

**Example:** A [covering space](covering%20space) $\hat X \mapsvia{p} X$ yields a principal $\pi_1(X)\dash$ bundle.

_Remark_: A consequence of this is that each $F_b \cong G \in \text{TopGrp}$ (which may also be taken as the definition). Furthermore, each $F_b$ is then a [homogeneous space](homogeneous%20space)

_Remark_: Although each fiber $F_b$ is isomorphic to $G$, there is no preferred identity element in $F_b$. Locally, one can form a [local section](section%20of%20a%20bundle.md) by choosing some $e\in F_b$ to serve as the identity, but the fibers can only be given a global group structure iff the bundle is trivial. This property is expressed by saying $F_b$ is a $G\dash$ [torsor](torsor).

_Remark_: Every [Fiber bundle](Fiber%20bundle) $F\to E\to B$ is a principal $\Aut(F)\dash$ fiber bundle. Also, in local trivializations, the transition functions are elements of $G$.

**Proposition**: A principal bundle is trivial iff it admits a global section. Thus all principal [vector bundles](vector%20bundles.md) are trivial, since the zero [section of a bundle](section%20of%20a%20bundle.md) always exists.

**Definition:** A principal bundle $F \to E \mapsvia{\pi} B$ is _universal_ iff $E$ is weakly contractible, i.e. if $E$ has the homotopy type of a point.

![](attachments/Pasted%20image%2020210510012449.png)

*Question: what is a principal bundle? According to Wikipedia, any G-principal bundle is a pullback of $EG \to BG$.*


If $G$ is discrete, then a principal $G$-bundle over $X$ with total space $\tilde X$ is equivalent to a [[regular]] [[covering]] map with $\Aut(\tilde X) = G$. 

Under some hypothesis, there exists a [classifying space](classifying%20space.md) $\B G$.
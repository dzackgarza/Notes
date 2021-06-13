---
aliases: ["principal"]
---

# Definitions

![](attachments/Pasted%20image%2020210613123515.png)

**Definition:** 
A **principal $G\dash$ bundle** is a [fiber bundle](fiber%20bundle.md) $F \to E \to B$ for which $G$ acts [[freely]] and [[transitively]] on each fiber $F_b:= \pi^{-1}(b)$. 

I.e. there is a continuous group action
$$\cdot \in \Top\Grp(E\cross G, E)$$ 
such that for every $f \in F_b$ and $g\in G$,
 
- $g\cdot f \in F_b$ 
- $g\cdot f \neq f$.

A principal $G$ bundle is a locally trivial free $G$-space with orbit space $B$. 

**Definition:** A principal bundle $F \to E \mapsvia{\pi} B$ is **universal** iff $E$ is [weakly contractible](weakly%20contractible).

![](attachments/Pasted%20image%2020210510012449.png)

# Examples
- Every [Fiber bundle](Fiber%20bundle) $F\to E\to B$ is a principal $\Aut(F)\dash$ fiber bundle. 
	- In local trivializations, the transition functions are elements of $G$.
- A [covering space](covering%20space) $\hat X \mapsvia{p} X$ yields a principal $\pi_1(X)\dash$bundle.

# Results
- Every principal $G\dash$bundle is a pullback of $EG \to \B G$.
- A principal bundle is trivial iff it admits a [global section](section%20of%20a%20bundle.md). 
- All [principal](principal%20bundle.md) [vector bundles](vector%20bundles.md) are trivial, since the zero [section](section%20of%20a%20bundle.md) always exists.
- Each $F_b \cong G \in \text{TopGrp}$, which may also be taken as the definition.
- Each $F_b$ is a [homogeneous space](homogeneous%20space).
- Although each fiber $F_b \cong G$, there is no preferred identity element in $F_b$. 
	- Locally, one can form a [local section](section%20of%20a%20bundle.md) by choosing some $e\in F_b$ to serve as the identity, but the fibers can only be given a global group structure iff the bundle is trivial. 
	- So each fiber $F_b$ is a $G\dash$ [torsor](torsor).

## Classification

- If $G$ is discrete, then a principal $G$-bundle over $X$ with total space $\tilde X$ is equivalent to a [[regular]] [[covering]] map with $\Aut(\tilde X) = G$. 

Under some hypothesis, there exists a [classifying space](classifying%20space.md) $\B G$.
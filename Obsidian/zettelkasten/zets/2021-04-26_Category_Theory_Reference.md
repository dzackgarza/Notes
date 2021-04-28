---
date: 2021-04-26
tags: 
  - Unfiled
---

#category_theory


| Category        | Set                     | Grp             | CRing          | Ring        | Field | Ab                | $\Vect_k$         | R-Mod             | $R\dash$cAlg       | Sch         | Top               | $\Top_*$     |
| --------------- | ----------------------- | --------------- | -------------- | ----------- | ----- | ----------------- | ----------------- | ----------------- | ------------------ | ----------- | ----------------- | ------------ |
| Product         | $\prod_i A_i$           | $\prod_i A_i$   |                |             | None  |                   |                   | $\prod_i A_i$     |                    |             | $\prod_i A_i$     |              |
| Coproduct       | $\coprod_i A_i$         | $A\ast B$       |                | $A\star B$  | None  | $\bigoplus_i A_i$ | $\bigoplus_i A_i$ | $\bigoplus_i A_i$ | $\bigotimes_i A_i$ |             | $\coprod A_i$     | $\vee_i A_i$ |
| Pullback        | $A\times_C B, A \cap B$ | $A\times_C B$   | $A\times_C B$  |             |       |                   |                   | $A\times_C B$     |                    |             |                   |              |
| Pushout         | $A \coprod B/\sim$      | $A \ast B/\sim$ | $A\otimes_C B$ |             |       |                   |                   |                   |                    |             | $A \coprod_{f} B$ |              |
| Initial Object  | $\emptyset$             | $\ts{1}$        |                | $\ZZ$       | None  |                   |                   | $\ts{1}$          |                    | $\spec(0)$  | $\emptyset$       |              |
| Terminal Object | $\ts{a_1}$              |                 |                | $\ts{0}$    | None  |                   |                   |                   |                    | $\spec \ZZ$ | $\pt$             |              |
| Zero Object     |                         | $\ts{1}$        |                | $\ts{0}$    | None  |                   |                   |                   |                    |             |                   |              |

$$
A\star B \cong A \oplus B \oplus (A \otimes B) \oplus (B \otimes A) \oplus (A \otimes A \otimes B) \oplus (A \oplus B \oplus A) \oplus (B \oplus A \oplus A) \oplus ...
$$

# Big Ideas
- Duality
- Isomorphisms
- Universal Properties
  - Build new objects out of old ones, or "factor" objects into smaller ones
  - Define things "up to a unique isomorphism"
  - Yoneda's Lemma: To study an object, just look at the maps into and/or out of it!
- Functors
- Limits / Colimits
  - Limits: Build new objects by "imposing equations" on existing ones.
    - Ex: Construction of the p-adic integers as the limit of the sequence of quotient homomorphisms: $\cdots \rightarrow \mathbb{Z}/p^n \rightarrow \cdots \rightarrow \mathbb{Z}/p^2 \rightarrow \mathbb{Z}/p$
  - Colimits: Build new objects by "gluing together" existing ones:
  - Examples:
    - Products
    - Quotients
    - Kernels
    - Completions
    - Free products
- Adjunction
  - Duality between functors
  - "Partial equivalence" of categories
- Kan Extensions


## Duality

- Reverse arrows and redefine composition in $C$ to obtain $C^{op}$
- Then every "thing" in $C$ has a corresponding "thing" in $C^{op}$, which we call a co-"thing".
  - Products and Coproducts
  - Kernels and Cokernels
  - Limits and Colimits
- Can often obtain two conclusions for the price of one!
- Duality is an involution
  - i.e., a co-co-$X$ is just an $X$
- Canonical Example: Vector spaces $V$ and their duals $V^*$ over a field $k$
  - $V^* = \{\phi: V \rightarrow k\}$ where $\phi$ is linear
  - $V \not\cong V*$, but $V \cong V^{**}$
- A very powerful example: Poincare Duality
  - The $k$th homology group of an $n$-dimensional manifold  is isomorphic $(n-k)$th cohomology group
  - $H^k(M) \cong H_{n-k}(M)$.

## Universal Properties
For another time!
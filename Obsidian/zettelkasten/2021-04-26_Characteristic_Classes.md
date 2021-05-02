---
date: 2021-04-26
tags: 
  - Unfiled
---

A characteristic class is a way of associating to each principal bundle on a topological space $X$ a cohomology class of $X$. The cohomology class measures the extent to which the bundle is "twisted" — particularly, whether it possesses sections or not. In other words, characteristic classes are global invariants which measure the deviation of a local product structure from a global product structure. They are one of the unifying geometric concepts in algebraic topology, differential geometry and algebraic geometry.

Let $G$ be a topological group, and for a topological space $X$, write $bG(X)$ for the set of isomorphism classes of principal G-bundles. This $bG$ is a contravariant functor from Top (the category of topological spaces and continuous functions) to Set (the category of sets and functions), sending a map $f$ to the pullback operation $f*$.

A characteristic class $c$ of principal $G$-bundles is then a natural transformation from $bG$ to a cohomology functor $H*$, regarded also as a functor to Set.

In other words, a characteristic class associates to any principal $G$-bundle $P → X$ in $bG(X)$ an element $c(P)$ in $H^* (X)$ such that, if $f : Y → X$ is a continuous map, then $c(f^* P) = f^* c(P)$. On the left is the class of the pullback of $P$ to $Y$; on the right is the image of the class of $P$ under the induced map in cohomology.

When the theory was put on an organized basis around 1950 (with the definitions reduced to homotopy theory) it became clear that the most fundamental characteristic classes known at that time (the Stiefel–Whitney class, the Chern class, and the Pontryagin classes) were reflections of the classical linear groups and their maximal torus structure.

The prime mechanism then appeared to be this: Given a space $X$ carrying a vector bundle, that implied in the homotopy category a mapping from $X$ to a classifying space $BG$, for the relevant linear group $G$. For the homotopy theory the relevant information is carried by compact subgroups such as the orthogonal groups and unitary groups of $G$. Once the cohomology ${\displaystyle H^* (BG)}$ was calculated, once and for all, the contravariance property of cohomology meant that characteristic classes for the bundle would be defined in ${\displaystyle H^* (X)}$ in the same dimensions.

Characteristic numbers solve the oriented and unoriented bordism questions: two manifolds are (respectively oriented or unoriented) cobordant if and only if their characteristic numbers are equal.

# Topics Todo

- Characteristic Classes (see Milnor)
  - Stiefel-Whitney class
  - Chern class
  - Euler class (or Euler bundle..? Find in old email)
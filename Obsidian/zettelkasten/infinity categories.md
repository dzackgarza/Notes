---
aliases: ["infinity categories", "infinity category"]
---

#homotopy 

[higher category](higher%20category)
![Infty n category](figures/image_2021-03-25-00-42-39.png)

- [[Kan complex]]
- [[Kan extension]]
- [Simplicial set](Simplicial%20set)
- [[(n, m) category]]
- [[zettelkasten/BG]]
- [stable infinity category](stable%20infinity%20category)
- [Waldhausen S construction](Waldhausen%20S%20construction)
- [infinity groupoids](infinity%20groupoids)

Models:
- [quasicategory](quasicategory.md)
- Complete [Segal spaces](Segal%20spaces)


# Notes

The Segal condition, essentially characterises ∞-categories among simplicial ∞-groupoids

- ∞-categories form a (large) ∞-category denoted Cat∞. 
- ∞-groupoids form a (large) ∞-category denoted $\inftyGrpd$; it can be described explicitly as the [coherent nerve](coherent%20nerve) of the (simplicially enriched) category of [Kan complex](Kan%20complex.md). 
- Given two ∞-categories $\cat D, \cat C$, there is a functor ∞-category $\Fun(\cat D, \cat C)$. 
	- In terms of quasi-categories, the functor ∞-category is just the internal hom of [simplicial sets](simplicial%20set.md). 
- Example of a functor ∞-category, for a given ∞-category $\cat I$ we have the ∞-category of presheaves $\Fun(\cat I\op , \inftyGrpd)$

-In practice, ∞-categories are constructed from existing ones by general constructions that automatically guarantee that the result
is again an ∞-category, 
	- The construction typically uses universal properties in such a way that the resulting ∞-category is only defined up to equivalence
- Taking the homotopy category: same objects, take homs as $\pi_0 \cat{C}(x, y)$
- For each $n \geq 0$ there is an ∞-category $\Delta[n]$ which is the nerve of the linearly ordered set $\ts{0 \leq  1 \leq \cdots \leq n}$.
- Commutative triangle in an ∞-category $\cat C$ means instead ‘object in the functor ∞-category $\Fun(\Delta[2], \cat C)$
- Pullbacks: limits over $A_1 \to B \from A_2$
- Fibers: for an object $b\in B \in \inftyGrpd$, fibers are pullbacks over the morphism $s_b: \one \to B$ that selects the object $b\in B$

\begin{tikzcd}
	{F_b} && E \\
	\\
	\one && B
	\arrow["p", from=1-3, to=3-3]
	\arrow[dashed, from=1-1, to=1-3]
	\arrow["{s_b}"', from=3-1, to=3-3]
	\arrow[dashed, from=1-1, to=3-1]
	\arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}

> % https://q.uiver.app/?q=WzAsNCxbMCwwLCJGX2IiXSxbMiwwLCJFIl0sWzIsMiwiQiJdLFswLDIsIlxcb25lIl0sWzEsMiwicCJdLFswLDEsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDIsInNfYiIsMl0sWzAsMywiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsMiwiIiwxLHsic3R5bGUiOnsibmFtZSI6ImNvcm5lciJ9fV1d
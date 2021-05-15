 - 0-groupoid: A set
 -1-groupoid: An ordinary groupoid, 
- An ∞-groupoid is an [infinity category](infinity%20categories.md) in which all morphisms are invertible. 
	- Equivalently a space up to homotopy.
	- Equivalently a [Kan complex](Kan%20complex.md)
-Play the role analogous to sets in classical category theory
	- Have homs that are again infinity groupoids.
- Pullbacks in $\inftyGrpd$: limits over morphisms in $\inftyGrpd$ of $A_1 \to B \from A_2$
- Fibers in $\inftyGrpd$: for an object $b\in B \in \inftyGrpd$, fibers are pullbacks over the morphism $s_b: \one \to B$ that selects the object $b\in B$

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

- See [homotopy sum](homotopy%20sum)
- Maps of ∞-groupoids with codomain $\cat B$ form the objects of a [slice $\infty\dash$category](slice%20category) $\inftyGrpd_{/B}$
- A morphism of ∞-groupoids $X \to B$ can be interpreted as a [family](family) of ∞-groupoids parametrised by $B$, namely the fibres $X_b$.
	- Equivalently, a presheaf $B\to \inftyGrpd$
- Symmetric monoidal $\infty\dash$categories: subsumed by the theory of $\infty\dash$operads.
- Simplicial $\inftyGrpd = \Fun(\Delta\op, \inftyGrpd)$
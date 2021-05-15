> Reference: Mattia Talpo: Kummer-étale additive invariants of log schemes. <https://www.youtube.com/watch?v=r-CXf24pE9Y>

- Origins: Fontaine-Illusie-Kato (Deligne, Faltings) in the late 80s, schemes/stacks/derived schemes plus additional derived ("log") structure.
	- Examples:
		- A pair $(X, D)$ of a smooth [[scheme]]/stack and $D$ a smooth divisor
		- Or $D$ a toroidal embedding, remembers the boundary $D$
			- [Etale locally](Etale%20locally) isomorphic to the embedding of a toric boundary
		- Think about this like ""$X$ with a marked point on the boundary"
- How they arise: in characteristic zero, working with a non-compact scheme. Compactify, and use [Resolution of singularities](Resolution%20of%20singularities.md) to make the boundary nice. Working with the log scheme is like working on the compact space but remembering that you originally cared about the complement of the compactifying [divisor](divisor.md).
- Every log scheme has a locus where the log structure is trivial, $\ts{x\in X\st \OO_{X, x}\units = M_x}$, so stalks of $M$ are units. Think of this like the complement of the boundary.
	- Trivial part of a log scheme pair $(X, D)$ is the complement of the divisor.
		- Rank of the [free monoid](free%20monoid) records number of branches passing through singular points:
	![](attachments/Pasted%20image%2020210515182026.png)
- Logarithmic geometry generalizes [toroidal](toroidal) geometry to non-smooth settings.
- See [semistable degeneration](semistable%20degeneration)
---
aliases: ["infinity categories", "infinity category"]
---

# References 

Tags: #homotopy 

- [Notes - Introduction to infinity categories](Notes%20-%20Introduction%20to%20infinity%20categories.md)

[[Notes - Introduction to infinity categories.md]]

# Topics

- [higher category](higher%20category)
- [Kan complex](Kan%20complex.md)
- [Kan extension](Kan%20extension.md)
- [Simplicial set](Simplicial%20set)
- [stable infinity category](stable%20infinity%20category)
- [infinity groupoids](infinity%20groupoids)
- [BG](classifying%20space.md)
- [homotopy type](homotopy%20type.md)

Models:
- [quasicategory](quasicategory.md)
- Complete [Segal spaces](Segal%20spaces)
- [Gamma space](Gamma%20space.md)?

Unsorted:
- [Waldhausen S construction](Waldhausen%20S%20construction) for infinity categories

# Blurbs

What is an infinity category?

:::{.definition title="$\infty\dash$Category"}
An $\infty\dash$category $\mathcal{C}$ is a (large) [simplicial sets](simplicial%20set.md)] $\mathcal{C}$ such that any diagram of the form

\begin{tikzcd}
	{\Lambda_i^n} && {\mathcal{C}} \\
	\\
	{\Delta_n}
	\arrow[from=1-1, to=3-1]
	\arrow[from=1-1, to=1-3]
	\arrow["{\exists}"', from=3-1, to=1-3, dashed]
\end{tikzcd}

![](attachments/Pasted%20image%2020210515015420.png)

admits the indicated lift, where $\Lambda_i^n$ is an $i\dash$horn (a simplex missing the $i$th face) for $0 < i < n$.
:::

- All inner horns are fillable, i.e. [simplicial sets](simplicial%20set.md) are *inner* Kan complexes.
- Different to Kan complexes, which include all $i$.

# Notes

- ∞-categories form a (large) ∞-category. 
- The [Segal condition](Segal%20condition), essentially characterises ∞-categories among simplicial [infinity groupoids](infinity%20groupoids.md)
- Given two ∞-categories $\cat D, \cat C$, there is a **functor ∞-category** $\Fun(\cat D, \cat C)$. 
	- In terms of [quasicategories](quasicategory.md), the hom here is internal hom in [simplicial sets](simplicial%20set.md). 
	- Example: for a given ∞-category $\cat I$ we have the ∞-category of [presheaves](presheaves) $\Fun(\cat I\op , \inftyGrpd)$
-In practice, ∞-categories are constructed from existing ones by constructions that automatically guarantee that the result is again an ∞-category, 
	- The construction typically uses universal properties in such a way that the resulting ∞-category is only defined up to equivalence
- Can take a [homotopy category](homotopy%20category.md)
- For each $n \geq 0$ there is a cat $\Delta[n] = \nerve{\ts{0 \leq  1 \leq \cdots \leq n}}$.
- Commutative triangles in $\cat C$: objects in the functor category $\Fun(\Delta[2], \cat C)$
- $\inftycat \leq \Kan$: infinity categories are a subcategory of Kan complexes.

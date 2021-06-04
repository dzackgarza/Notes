- Provides a functor to [simplicial sets](simplicial%20set.md)
$$
\nerve{\wait}: \Cat &\to \sSet \\
\cat{C} &\mapsto \nerve{\cat C} 
$$
- After application:
$$
\nerve{\cat C}: \Delta\op &\to \Set \\ \quad
[n] &\mapsto \Fun([n], \cat C)
$$
- So $\nerve{\cat C}(\wait) = \Fun(\wait, \cat C)$
- A [simplicial set](simplicial%20set.md) whose skeleton is
	- $\nerve{\cat{C}}_0$: The objects of $x,y,z,\cdots \in \cat{C}$
	- $\nerve{\cat{C}}_1$: Morphisms $\cat{C}(x, y), \cat{C}(y, z), \cdots$
	- $\nerve{\cat{C}}_2$: Composable morphisms:

- The nerve has sufficient data to reconstruct $\cat{C}$ up to isomorphism of categories.
- $\nerve(\wait): \Cat \to \sSet$ is fully faithful.
- The restriction $\nerve(\wait): \Grpd \to \sSet(\Kan)$ is also?
	- Actual statement: $\

\begin{tikzcd}
	&& z \\
	\\
	x && y
	\arrow["f"', from=3-1, to=3-3]
	\arrow["g"', from=3-3, to=1-3]
	\arrow["gf", from=3-1, to=1-3]
\end{tikzcd}

> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwyLCJ4Il0sWzIsMiwieSJdLFsyLDAsInoiXSxbMCwxLCJmIiwyXSxbMSwyLCJnIiwyXSxbMCwyLCJnZiJdXQ==)

- $\nerve{\cat{C}}_n$: tuples $f_0, f_1, \cdots, f_{n-1}$ of composable morphisms 

\begin{tikzcd}
	{x_0} && {x_1} && {x_2} && {x_3} && \cdots && {x_n}
	\arrow["{f_1}", from=1-3, to=1-5]
	\arrow["{f_2}", from=1-5, to=1-7]
	\arrow["{f_3}", from=1-7, to=1-9]
	\arrow["{f_{n-1}}", from=1-9, to=1-11]
	\arrow["{f_0}", from=1-1, to=1-3]
\end{tikzcd}

> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMiwwLCJ4XzEiXSxbNCwwLCJ4XzIiXSxbNiwwLCJ4XzMiXSxbOCwwLCJcXGNkb3RzIl0sWzEwLDAsInhfbiJdLFswLDAsInhfMCJdLFswLDEsImZfMSJdLFsxLDIsImZfMiJdLFsyLDMsImZfMyJdLFszLDQsImZfe24tMX0iXSxbNSwwLCJmXzAiXV0=)


- Alternative functor definition:
	- Define a functor
$$
\mathcal{P}: \Poset \to \Cat^{\smol}
$$
which takes a [poset](poset) to its poset category, where there is a unique morphism $p\to q \iff p\leq q$.
	- Using the definition of a [simplicial set](simplicial%20set.md) as a functor $\Delta\op \to \Set$, define
$$
\nerve{\cat C}(\wait) := \Fun(\wait, \cat{C}) \circ \mathcal{P}(\wait) = \Fun( \mathcal{P}(\wait), \cat{C})
$$
Thus $\nerve{\cat{C}}([n]) = \Fun([n], \cat{C})$ where $[n]$ is the poset category on $(\ts{0, 1, \cdots, n}, \leq)$. 

## Actual Definition

:::{.definition title="Nerve of a category"}
Given an ordinary category $\mathcal{C}$, define the [nerve](nerve.md) of $\mathcal{C}$ to be the simplicial set given by
\[  
N(\mathcal{C})_n \da \ts{\text{Functors } F: [n] \to \mathcal{C}}
\]

where $[n]$ is the poset category on $\ts{1, 2, \cdots, n}$.
So an $n\dash$simplex is a diagram of objects $X_0, \cdots, X_n \in \Ob(\mathcal{C})$ and a sequence of maps.

This defines an $\infty\dash$category, and there is a correspondence
\[  
\correspond{\text{ Functors } F: \mathcal{C} \to \mathcal{D}}
&\iff
\correspond{\infty\dash\text{Functors } \hat F: N(\mathcal{C}) \to N(\mathcal{D})}
.\]
Note that taking the [nerve](nerve) of a category preserves the usual categorical structure, since the objects are the 0-simplices and the morphisms are the 1-simplices.
:::
# Notes

- If $\cat{C}$ has any initial or terminal objects, $\nerve{\cat C}$ is contractible..?
	- What does this mean? Define homotopy direct on $\sSet$, or take geometric realization to $\Top$..?
- $\im \nerve{\wait} \injects \sSet$ are precisely [simplicial sets](simplicial%20set.md) satisfying the [Segal condition](Segal%20spaces.md)
	- I.e. $\nerve{\cat{C}}$ is a Segal space, regarding $\Set \injects \inftyGrpd$ as the discrete objects.
- Is a right adjoint to [geometric realization](geometric%20realization.md)
$$
\realize{\wait}: \sSet \to \Cat
$$
So we get an adjoint pair
$$
\adjunction{\nerve{\wait}}{\realize{\wait}}{\Cat}{\sSet}
$$

A [simplicial set](simplicial%20set.md) whose skeleton is

- $\nerve{\cat{C}}_0$: The objects of $x,y,z,\cdots \in \cat{C}$
- $\nerve{\cat{C}}_1$: Morphisms $\cat{C}(x, y), \cat{C}(y, z), \cdots$
- $\nerve{\cat{C}}_2$: Composable morphisms:

% https://q.uiver.app/?q=WzAsMyxbMCwyLCJ4Il0sWzIsMiwieSJdLFsyLDAsInoiXSxbMCwxLCJmIiwyXSxbMSwyLCJnIiwyXSxbMCwyLCJnZiJdXQ== \\begin{tikzcd} && z \\\\ \\\\ x && y \\arrow\["f"', from=3-1, to=3-3\] \\arrow\["g"', from=3-3, to=1-3\] \\arrow\["gf", from=3-1, to=1-3\] \\end{tikzcd}
- $\nerve{\cat{C}}_n$: tuples $f_0, f_1, \cdots, f_{n-1}$ of composable morphisms 

% https://q.uiver.app/?q=WzAsNixbMiwwLCJ4XzEiXSxbNCwwLCJ4XzIiXSxbNiwwLCJ4XzMiXSxbOCwwLCJcXGNkb3RzIl0sWzEwLDAsInhfbiJdLFswLDAsInhfMCJdLFswLDEsImZfMSJdLFsxLDIsImZfMiJdLFsyLDMsImZfMyJdLFszLDQsImZfe24tMX0iXSxbNSwwLCJmXzAiXV0= \\begin{tikzcd} {x\_0} && {x\_1} && {x\_2} && {x\_3} && \\cdots && {x\_n} \\arrow\["{f\_1}", from=1-3, to=1-5\] \\arrow\["{f\_2}", from=1-5, to=1-7\] \\arrow\["{f\_3}", from=1-7, to=1-9\] \\arrow\["{f\_{n-1}}", from=1-9, to=1-11\] \\arrow\["{f\_0}", from=1-1, to=1-3\] \\end{tikzcd}

- Alternative functor definition:
	- Define a functor
$$
\mathcal{P}: \Poset \to \Cat^{\smol}
$$
which takes a poset to its poset category, where there is a unique morphism $p\to q \iff p\leq q$.
	- Realize a simplicial set as a functor $\Delta\op \to \Set$
	- Define
$$
\nerve{\cat C}(\wait) := \Fun(\wait, \cat{C}) \circ \mathcal{P}(\wait) = \Fun( \mathcal{P}(\wait), \cat{C})
$$
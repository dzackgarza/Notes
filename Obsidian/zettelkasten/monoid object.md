Equipped with maps $\ mu: M^{\tensor 2}\to M$ and $\eta: \one \to M$
Associative:


% https://q.uiver.app/?q=WzAsNSxbMCwwLCJNXntcXHRlbnNvciAyfSBcXHRlbnNvciBNICJdLFsyLDAsIk1cXHRlbnNvciBNXntcXHRlbnNvciAyfSJdLFswLDIsIk1ee1xcdGVuc29yIDJ9Il0sWzIsMiwiTV57XFx0ZW5zb3IgMn0iXSxbMSwzLCJNIl0sWzAsMSwiXFxhbHBoYSJdLFswLDIsIlxcbXVcXHRlbnNvciBcXGlkIiwyXSxbMSwzLCJcXGlkIFxcdGVuc29yIFxcbXUiXSxbMiw0LCJcXG11IiwyXSxbMyw0LCJcXG11Il1d
\begin{tikzcd}
	{M^{\tensor 2} \tensor M } && {M\tensor M^{\tensor 2}} \\
	\\
	{M^{\tensor 2}} && {M^{\tensor 2}} \\
	& M
	\arrow["\alpha", from=1-1, to=1-3]
	\arrow["{\mu\tensor \id}"', from=1-1, to=3-1]
	\arrow["{\id \tensor \mu}", from=1-3, to=3-3]
	\arrow["\mu"', from=3-1, to=4-2]
	\arrow["\mu", from=3-3, to=4-2]
\end{tikzcd}

Left and right unital:
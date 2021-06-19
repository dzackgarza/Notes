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
% https://q.uiver.app/?q=WzAsNCxbMiwyLCJNIl0sWzIsMCwiTV57XFx0ZW5zb3IgMn0iXSxbMCwwLCJcXG9uZSBcXHRlbnNvciBNIl0sWzQsMCwiTVxcdGVuc29yIFxcb25lIl0sWzIsMSwiXFxldGEgXFx0ZW5zb3IgXFxpZCJdLFsyLDAsIlxcbGFtYmRhIiwyXSxbMSwwLCJcXG11Il0sWzMsMCwiXFxyaG8iXSxbMywxLCJcXGlkXFx0ZW5zb3IgXFxldGEiLDJdXQ==
\begin{tikzcd}
	{\one \tensor M} && {M^{\tensor 2}} && {M\tensor \one} \\
	\\
	&& M
	\arrow["{\eta \tensor \id}", from=1-1, to=1-3]
	\arrow["\lambda"', from=1-1, to=3-3]
	\arrow["\mu", from=1-3, to=3-3]
	\arrow["\rho", from=1-5, to=3-3]
	\arrow["{\id\tensor \eta}"', from=1-5, to=1-3]
\end{tikzcd}

Monoid structure is preserved by [lax](lax%20functor.md) monoidal functors, comonoid structure by [op-lax](lax%20functor.md) monoidal functors. 
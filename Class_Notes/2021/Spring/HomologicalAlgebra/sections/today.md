
> See first 10m

:::{.observation}
For a SES 
\[
A_1 \mapsvia{\alpha} A_2 \mapsvia{f} B \mapsvia{g} C_1 \mapsvia{\gamma} C_2
,\]
one can obtain an exact sequence
\[
0\to \coker \alpha \mapsvia{\bar f} B \mapsvia{g} \ker \gamma \to 0
.\]

:::


:::{.observation}
???
:::

Some missed stuff here.


:::{.remark}
Note that 
\[
0\to \complex{Z} \tensor M \to \complex{P}\tensor M \to d\complex{P}\tensor M\to 0
,\]
where the differentials for the end terms are zero, and the homology will recover the original complex.
:::



% https://q.uiver.app/?q=WzAsNyxbMCwyXSxbMiwyLCJIX3tufShaIFxcdGVuc29yIE0pID0gWlxcdGVuc29yIE0iXSxbNCwyLCJIX3tufShQIFxcdGVuc29yIE0pIl0sWzQsMF0sWzYsMCwiSF97bisxfShkUCBcXHRlbnNvciBNKT0gZFAgXFx0ZW5zb3IgTSJdLFs2LDIsIkhfe259KGRQIFxcdGVuc29yIE0pID0gZFAgXFx0ZW5zb3IgTSJdLFsyLDQsIkhfe24tMX0oWiBcXHRlbnNvciBNKSA9IFpfe24tMX1cXHRlbnNvciBNIl0sWzQsMV0sWzEsMl0sWzIsNV0sWzUsNl1d
\begin{tikzcd}
	&&&& {} && {H_{n+1}(dP \tensor M)= dP \tensor M} \\
	\\
	{} && {H_{n}(Z \tensor M) = Z\tensor M} && {H_{n}(P \tensor M)} && {H_{n}(dP \tensor M) = dP \tensor M} \\
	\\
	&& {H_{n-1}(Z \tensor M) = Z_{n-1}\tensor M}
	\arrow[from=1-7, to=3-3]
	\arrow[from=3-3, to=3-5]
	\arrow[from=3-5, to=3-7]
	\arrow[from=3-7, to=5-3]
\end{tikzcd}

By using the explicit formula for $\bd$, it turns out that \( \bd = (dP_{i+1} \injectsvia{i} Z) \tensor \one M \).
By observation one, we get a SES
\[
0 \to {Z_n\tensor M \over dP_{n+1} \tensor M } \to H_n(P\tensor M) \to \ker i( \tensor \one_M) \to 0
.\]

By observation 1, the first term equals $H_n(\complex{P})\tensor M$.
From this, we get a flat resolution of $H_{n-1}(P)$:

% https://q.uiver.app/?q=WzAsMTAsWzAsMSwiMCJdLFsxLDEsIjAiXSxbMSwwLCIyIixbMCw2MCw2MCwxXV0sWzIsMCwiMSIsWzAsNjAsNjAsMV1dLFszLDAsIjAiLFswLDYwLDYwLDFdXSxbMiwxLCJkUF9uIl0sWzMsMSwiWl97bi0xfSJdLFs0LDEsIkhfe24tMX0oUCkiXSxbNSwxLCIwIl0sWzAsMCwiXFxkZWc6IixbMCw2MCw2MCwxXV0sWzEsNV0sWzUsNl0sWzYsN10sWzcsOF0sWzAsMV1d
\begin{tikzcd}
	\textcolor{rgb,255:red,214;green,92;blue,92}{\deg:} & \textcolor{rgb,255:red,214;green,92;blue,92}{2} & \textcolor{rgb,255:red,214;green,92;blue,92}{1} & \textcolor{rgb,255:red,214;green,92;blue,92}{0} \\
	0 & 0 & {dP_n} & {Z_{n-1}} & {H_{n-1}(P)} & 0
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-4, to=2-5]
	\arrow[from=2-5, to=2-6]
	\arrow[from=2-1, to=2-2]
\end{tikzcd}





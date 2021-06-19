# Chain Complexes

For $f\in \Ch_{\rmod}(A,  B)$ a morphism of chain complex of $R\dash$modules, the **mapping cone** complex is 
$$
\cone(f) := A[1] \oplus B, 
\quad d =
\begin{bmatrix}
d_A & 0 
\\
f & d_B
\end{bmatrix}
$$

Results

- If $\cone(f) \homotopic 0$, i.e $\cone(f)$ is an [acyclic complex](acyclic%20complex)), then $f$ is a weak equivalence ([quasi-isomorphism](quasi-isomorphism)).

% https://q.uiver.app/?q=WzAsMyxbMCwwLCJBIl0sWzIsMCwiQiJdLFsxLDIsIlxcY29uZShmKSJdLFswLDEsImYiXSxbMSwyXSxbMiwwLCJbMV0iXV0=
\begin{tikzcd}
	A && B \\
	\\
	& {\cone(f)}
	\arrow["f", from=1-1, to=1-3]
	\arrow[from=1-3, to=3-2]
	\arrow["{[1]}", from=3-2, to=1-1]
\end{tikzcd}
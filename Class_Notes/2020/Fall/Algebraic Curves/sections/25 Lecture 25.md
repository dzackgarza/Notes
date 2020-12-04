# Lecture 25: Differential Pullback Theorem

This will recover the Riemann-Hurwitz formula by taking degrees.

:::{.lemma title="?"}
Let $K/k \subset L/\ell$ be a finite degree extension of function fields, and suppose $K/k$ is regular and $L/K$ is separable.
Then $\ell/k$ and $L/\ell$ are separable and $L\ell$ is regular.

\[\begin{tikzcd}
	& {L} \\
	{K} && {\ell} \\
	& {k}
	\arrow["{\scriptsize\text{separable}}", from=2-1, to=1-2, no head]
	\arrow[from=1-2, to=2-3, no head]
	\arrow[from=2-3, to=3-2, no head]
	\arrow["{\scriptsize\text{regular}}"', from=2-1, to=3-2, no head]
\end{tikzcd}\]
[
https://q.uiver.app/?q=WzAsNCxbMSwyLCJrIl0sWzIsMSwiXFxlbGwiXSxbMSwwLCJMIl0sWzAsMSwiSyJdLFszLDIsIlxcc2NyaXB0c2l6ZVxcdGV4dHtzZXBhcmFibGV9IiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDEsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSwwLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsMCwiXFxzY3JpcHRzaXplXFx0ZXh0e3JlZ3VsYXJ9IiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
:::

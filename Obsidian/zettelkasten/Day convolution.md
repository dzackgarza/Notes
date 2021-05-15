---
aliases: ["convolution product"]
---

See [end](coend.md) and [coend](coend.md).

For $\cat{C}$ be [enriched](Enriched%20category.md) [symmetric monoidal](Symmetric%20monoidal%20category.md) category over $(\cat{D}, \tensor_D)$, and define a convolution product
$$
\hat\tensor: \Fun(\cat C, \cat D)^{\times 2} &\to \Fun(\cat C, \cat D) \\
(F, G) &\mapsto F\hat\tensor G
$$
as the following left [Kan extension](Kan%20extension.md):

% https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXGNhdHtDfV57XFx0aW1lcyAyfSJdLFsyLDAsIlxcY2F0e0R9XntcXHRpbWVzIDJ9Il0sWzIsMiwiXFxjYXR7RH0iXSxbMCwyLCJcXGNhdHtDfSJdLFswLDEsIihGLCBHKSJdLFsxLDIsIlxcd2FpdFxcdGVuc29yX0RcXHdhaXQiXSxbMCwzLCJcXHRlbnNvcl9DIiwyXSxbMywyLCJGXFxoYXRcXHRlbnNvciBHIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}
	{\cat{C}^{\times 2}} && {\cat{D}^{\times 2}} \\
	\\
	{\cat{C}} && {\cat{D}}
	\arrow["{(F, G)}", from=1-1, to=1-3]
	\arrow["{\wait\tensor_D\wait}", from=1-3, to=3-3]
	\arrow["{\wait \tensor_C \wait}"', from=1-1, to=3-1]
	\arrow["{F\hat\tensor G}"', dashed, from=3-1, to=3-3]
\end{tikzcd}

Here $+$ denotes the symmetric monoidal product on $\cat{C}$?


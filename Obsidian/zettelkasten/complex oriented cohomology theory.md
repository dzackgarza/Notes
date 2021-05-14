- A condition on a [cohomolology theories](cohomolology%20theories.md)

![](attachments/Pasted%20image%2020210511201541.png)

Think of this as a factorization of the (co?)unit

\begin{tikzcd}
	\SS && {X \da \Sigma^{\infty-2}\CP^{\infty}} && E
	\arrow["{x^E}", from=1-3, to=1-5]
	\arrow["{\eta_E}"', curve={height=30pt}, from=1-1, to=1-5]
	\arrow["{\eta_X}", from=1-1, to=1-3]
\end{tikzcd}

> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJcXFNTIl0sWzIsMCwiWCBcXGRhIFxcU2lnbWFee1xcaW5mdHktMn1cXENQXntcXGluZnR5fSJdLFs0LDAsIkUiXSxbMSwyLCJ4XkUiXSxbMCwyLCJcXGV0YV9FIiwyLHsiY3VydmUiOjV9XSxbMCwxLCJcXGV0YV9YIl1d)

A ring spectrum $E$ is complex orientable iff the [AHSS](Atiyah%20Hirzebruch%20spectral%20sequence.md) collapses at $E_2$:
$$
E_{2}^{p, q}=H^{p}\left(\mathbb{C} P^{\infty} ; \pi_{q}(E)\right) \Longrightarrow E^{p+q}\left(\mathbb{C} P^{\infty}\right)
$$
# Lecture 25: Differential Pullback Theorem (Sketch)

This will recover the Riemann-Hurwitz formula by taking degrees.

:::{.lemma title="?"}
Let $K/k \subset L/\ell$ be a finite degree extension of function fields, and suppose $K/k$ is regular and $L/K$ is separable.
Then $\ell/k$ and $L/\ell$ are separable and $L\ell$ is regular.

\begin{tikzcd}
	& {L} \\
	{K} && {\ell} \\
	& {k}
	\arrow["{\scriptscriptstyle\text{separable}}", from=2-1, to=1-2, no head]
	\arrow[from=1-2, to=2-3, no head]
	\arrow[from=2-3, to=3-2, no head]
	\arrow["{\scriptscriptstyle\text{regular}}"', from=2-1, to=3-2, no head]
\end{tikzcd}
[Link to diagram](https://q.uiver.app/?q=WzAsNCxbMSwyLCJrIl0sWzIsMSwiXFxlbGwiXSxbMSwwLCJMIl0sWzAsMSwiSyJdLFszLDIsIlxcc2NyaXB0c2l6ZVxcdGV4dHtzZXBhcmFibGV9IiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDEsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSwwLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsMCwiXFxzY3JpcHRzaXplXFx0ZXh0e3JlZ3VsYXJ9IiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==)
:::

Recall some facts/definitions:

- The **adele ring of $K$** is defined as 
  \[
  \mathcal{A}_K \da \prod_{v\in \Sigma(K/k)}' K
  \]
  which is a *restricted direct product*, i.e. each element $\alpha\in \mathcal{A}_K$ has the property that for almost every $p$, the $p\dash$adic valuation of the $p$th coordinate $v_p(\alpha_p) \geq 0$.
  There is a diagonal embedding
  \[  
  K &\injects \mathcal{A}_K \\
  f &\mapsto (f, f, \cdots)
  .\]

- For any divisor $D\in \Div K$, define
\[  
\mathcal{A}_K(D) \da \ts{\alpha\in \mathcal{A}_K \st v_p(\alpha_p) \geq - v_p(D)\,\, \forall p}
,\]
  the adelic analog of the Riemann-Roch space.

- A space of linear forms
\[
\Omega(D) \da \ts{\omega: \mathcal{A}_K \to A \st \ker \omega \supseteq K + \mathcal{A}_K(D)}
\]
  where $D_1 \leq D_2 \implies \Omega_K(D_2) \leq \Omega_K(D_1)$.

- $\Omega_K \da \directlim_{D} \Omega_K(D)$.

- For any $\omega \in \Omega_K\nonzero$, $(\omega) \da \max\ts{D \st \omega=0 \text{ on } \mathcal{A}_K(D) + K}$.

- $\mathcal{A}_{L/K} = \ts{\alpha\in \mathcal{A}_L \st \alpha q_1 = \alpha q_2 \text{ if } Q_1, Q_2 / p} \leq_{\Vect_\ell} A_L$

- The **adelic trace map**
\[  
\Tr_{L/K} : \mathcal{A}_{L/K} & \to \mathcal{A}_K  \\
\alpha &\mapsto \Tr_{L/K}(\alpha) / p = \Tr_{L/K}(\alpha_Q) && \text{for any }Q/p
.\]

:::{.theorem title="?"}
Let $\omega\in \Omega_K$, then there exists a unique $\omega^* \in \mathcal{A}_L$ such that

- For all $\alpha\in \mathcal{A}_{L/K}$, we have $\Tr_{\ell/k} \omega^*(\alpha) = \omega(\Tr_{L/K}(\alpha))$.

$\omega^*$ is formally denoted $\mathrm{Cotr}_{L/K}(\omega)$ and called the **cotrace** of $\omega$.
:::

:::{.theorem title="?"}
If $K/k \subset L/\ell$ is a finite extension of function fields with $K/k$ regular, then for all $\omega\in \mathcal{A}_K\nonzero$, we have $\omega^* \in \mathcal{A}_L\nonzero$.
Moreover,
\[  
(\omega^*) = \iota_{L/K}((\omega)) + D(L/K)
.\]
Taking degrees yields the Riemann-Hurwitz formula.
:::


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
For a SES
\[
0 \to Y \mapsvia{i} Z \mapsvia{\pi} {Z|over Y} \to 0
\]
there is an induced exact sequence

:::

Some missed stuff here.

:::{.proof title="of Kunneth Formula (continued)"}
Note that 
\[
0\to \complex{Z} \tensor M \to \complex{P}\tensor M \to d\complex{P}\tensor M\to 0
,\]
where the differentials for the end terms are zero, and the homology will recover the original complex.



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

So we can use this to compute $\Tor(H_{n-1}(P), M)$ by taking homology:

% https://q.uiver.app/?q=WzAsOSxbMCwxLCIwIl0sWzEsMSwiMCJdLFsyLDEsImRQX24gXFx0ZW5zb3IgTSJdLFszLDEsIlpfe24tMX1cXHRlbnNvciBNIl0sWzQsMSwiMCJdLFszLDAsIjAiLFswLDYwLDYwLDFdXSxbMiwwLCIxIixbMCw2MCw2MCwxXV0sWzEsMCwiMiIsWzAsNjAsNjAsMV1dLFswLDAsIlxcZGVnIixbMCw2MCw2MCwxXV0sWzAsMV0sWzEsMl0sWzIsMywiaVxcdGVuc29yIFxcMSJdLFszLDRdXQ==
\begin{tikzcd}
	\textcolor{rgb,255:red,214;green,92;blue,92}{\deg} & \textcolor{rgb,255:red,214;green,92;blue,92}{2} & \textcolor{rgb,255:red,214;green,92;blue,92}{1} & \textcolor{rgb,255:red,214;green,92;blue,92}{0} \\
	0 & 0 & {dP_n \tensor M} & {Z_{n-1}\tensor M} & 0
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow["{i\tensor \1}", from=2-3, to=2-4]
	\arrow[from=2-4, to=2-5]
\end{tikzcd}

Thus
\[
\ker(i\tensor \one_M) = \Tor_1( H_{n-1}(P), M) \cong \ker (dP_m \mapsvia{\bd} Z_{n-1} \tensor M)
.\]

:::

:::{.theorem title="Universal Coefficient Theorem"}
Let $\complex{P}$ be a chain complex of free abelian groups.
For every abelian groups $M$ and every $n$, the Kunneth sequence splits non-canonically as 
\[
H_n(\complex{P} \tensor M) \cong \qty{ H_n( \complex{P} )\tensor M } \oplus \Tor_1^{\ZZ}(H_{n-1}(P), M)
.\]
:::

:::{.remark}
In optimal situations the tor term vanishes, e.g. if either term is torsionfree (so no elements of finite order).
:::

:::{.fact}
Every subgroup of a free abelian group is free (hence projective, hence flat).
:::

:::{.proof title="?"}
Since $dP_n \leq dP_{n-1}$, we can conclude $dP_n$ is free.
Thus the following SES splits:
\[
0\to Z_n \to P_n \mapsvia{d} dP_n \to 0
.\]
So any lift of the identity map on $dP_n$ gives an isomorphic copy of the last term in the middle term, yielding $P_n \cong Z_n \oplus dP_n$. 
Now tensoring with $M$ and using that it distributes over direct sums yields
\[
P_n \tensor M \cong (Z_n \tensor M) \oplus (dP_n \tensor M)
.\]
The left-hand side contains a copy of $\ker(d_n \tensor \one: P_n \tensor M \to P_{n-1} \tensor M)$, which itself contains a copy of $Z_n\tensor M$.
So by a linear algebra exercise, we have $\ker(d_n \tensor \one) \cong (Z_n \tensor M) \oplus A$ for some unknown $A$, and since $dP_{n+1} \tensor M = \im(d_{n+1}\tensor \one)$ is contained in the first term, we can use the partial exactness of tensoring to preserve quotients and obtain 
\[
H_n(P\tensor M) = \qty{ H_n(P) \tensor M) \oplus C'
\]
for some $C'$.
Now applying the Kunneth formula we find that $C' = \Tor^\ZZ_1( H_{n-1}(P), M)$, yielding the claimed direct sum.
:::

:::{.remark}
The following is a generalization for both.
:::

:::{.theorem title="Kunneth formula for complexes"}
Let $P, Q \in \Ch(\rmod)$ be complexes, then $P\tensor Q \da \Tot^{\oplus}(P\tensor Q)_n \da \bigoplus_{p+q = n} P_p \tensor Q_q$ with differential[^sign_trick]
$d(a\tensor b) = (da)\tensor b + (-1)^pa \tensor (db)$.
If $P_n, dP_n$ are flat for all $n$, then there exists a SES
\[
0 
\to \bigoplus_{p+q=n} H_p(P)\tensor H_q(Q) 
\to H_n(P\tensor Q) 
\to \bigoplus_{p+q=n-1} \Tor^R_1(H_p(P), H_q(Q) ) 
\to 0
.\]

[^sign_trick]: 
Recall that the squares would commute if we took the usual differentials, so we use a sign trick to get $d^2=0$.

:::

:::{.proof title="?"}
Omitted here, but uses same ideas as the previous proofs.
Hint: take $Q$ to have $M$ in degree 0.
:::

## Applications to Topology


:::{.definition title="Simplicial Homology"}
See some applications in section 1 of Weibel, e.g. simplicial and singular homology.
The setup: $X\in \Top, R\in \Ring$ unital, and for $k\geq 0$ let $S_k = S_k(X)$ be the free \(R\dash\)module on $\Hom_\Top( \Delta_k, X)$ where \( \Delta_k\) is the standard simplex
By ordering the vertices, this induces an ordering on the faces by taking lexicographic ordering.
Then the restriction of a map $\Delta_k \to X$ to the $i$th face of \( \Delta_k \) gives a map \( \Delta_{k-1} \to X \), which induces an \(R\dash\)module morphism $\bd_i: S_k \to S_{k-1}$
By summing these we can define \( d \da \sum_{i=0}^k (-1)^i \bd_i: S_k\to S_{k-1} \) and it turns out that $d^2 = 0$.
So we can define a complex
\[
\cdots \to S_2 \mapsvia{d} \to S_1\to S_0 \to 0 \in \Ch(\rmod)
.\]
Taking it homology yields the **simplicial homology** of the complex $H_n(X; R) \da H_n(\complex{S}(X) )$.
:::

:::{.remark}
Taking $R=\ZZ$ makes $S_k(X)$ a free abelian group.
If $M$ is any abelian group, we can define $H_n(X; M) \da H_n( \complex{S}(X) \tensor_\ZZ M)$, the homology with **coefficients** in $M$.
If no coefficients are specified, we write $H_n(X) \da H_n(X; \ZZ)$.
:::




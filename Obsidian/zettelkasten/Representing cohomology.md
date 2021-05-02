# Representing cohomology

Definition:
A spectrum $E$ **represents** a cohomology theory $h$ iff
$$
h^{\color{blue} n}(X) = \lim_{{\color{red}k}\to\infty} [ \Sigma^{{\color{red} k} - {\color{blue} n }} X, E_{\color{red} k} ]
$$

Theorem:
Any cohomology theory defined on the category of *compact* topological spaces can be extended to a cohomology theory on $\Top$.

To represent singular cohomology with coefficients in $G$, take the [[suspension spectrum]] of $K(G, 1)$ denoted $HG$ (note: probably not right!!!) then $H^n(X; G) = [X, HG_n] = [X, K(G, n)]$.

[Spectra have homotopy groups](Homotopy%20groups%20of%20spectra), e.g.
$$
\pi_{k}(H G)=\left\{\begin{array}{ll}
G & k=0 \\
0 & k \neq 0
\end{array}\right.
$$
Motivating example: the [[cobordism spectrum]].
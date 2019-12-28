# Spring 2019

## 1

### a

Let $\theset{f_k}$ be  a Cauchy sequence in $C(I)$.
For each fixed $x\in [0, 1]$, the sequence of real numbers $\theset{f_k(x)}$ is Cauchy in $\RR$, which is complete, since
$$
x_0\in I \implies \abs{f_k(x_0) - f_j(x_0)} \leq \sup_{x\in I} \abs{f_k(x) - f_j(x)} = \norm{f_k - f_j}_\infty \to 0,
$$

so we can define $f(x) \definedas \lim_k f_k(x)$.

We also have
\begin{align*}
\norm{f_k - f}_\infty
= \norm{f_k - \lim_{j\to\infty} f_j}_\infty 
= \lim_{j\to\infty} \norm{f_k - f_j}_\infty 
\to 0
.\end{align*}

Finally, $f$ is the uniform limit of continuous functions and thus continuous. 

$\qed$

### b

It suffices to produce a Cauchy sequence that does not converge to a continuous function. Take
\begin{align*}
f_k(x) = 
\begin{cases}
(x + \frac 1 2)^k & x \in [0, \frac 1 2) \\
1 & x \in [\frac 1 2, 1]
\end{cases}
\quad \mapsvia{k\to\infty} \quad
f(x) = 
\begin{cases}
0 & x \in [0, \frac 1 2) \\
1 & x \in [\frac 1 2, 1]
\end{cases}
,\end{align*}

which is Cauchy, but there is no $g\in L^1$ that is continuous such that $\norm{f - g}_1 = 0$.

## 2

Let $A_k = F_k \setminus F_{k+1}$, so the $A_k$ are disjoint, and let $A = \disjoint_k A_k$.
Let $F = \intersect_k F_k$.
Then 
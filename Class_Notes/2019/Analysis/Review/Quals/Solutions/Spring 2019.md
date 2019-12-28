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

> Lemma 1: $\mu(\disjoint_{k=1}^\infty E_k) = \lim_{N\to\infty} \sum_{k=1}^N \mu(E_k)$.
> 
> Lemma 2: $A = A\setminus B ~\disjoint~ A\intersect B$.

Let $A_k = F_k \setminus F_{k+1}$, so the $A_k$ are disjoint, and let $A = \disjoint_k A_k$.


Let $F = \intersect_k F_k$. 
Then $F_1 = F \disjoint A$ by lemma 2, so
\begin{align*}
\mu(F_1) 
&= \mu(F) + \mu(A) \\
&= \mu(F) + \lim_{N\to\infty} \sum_k^N \mu(A_k) \quad \text{by Lemma 1}\\
&= \mu(F) + \lim_{N\to\infty} \sum_k^N \mu(F_k) - \mu(F_{k+1}) \\
&= \mu(F) + \lim_{N\to\infty} \left( \mu(F_1) - \mu(F_N) \right) \quad\text{(Telescoping)} \\
&=\mu(F) + \mu(F_1) - \lim_{N\to\infty} \mu(F_N)
,\end{align*}

and so
\begin{align*}
\mu(F_1) &= \mu(F) + \mu(F_1) - \lim_{N\to\infty} \mu(F_N) \\
\implies \mu(F) &= \lim_{N\to\infty} \mu(F_N)
.\end{align*}

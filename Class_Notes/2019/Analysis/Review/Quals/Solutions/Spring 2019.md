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


### a

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

and since the measure is finite, $\mu(F_1) < \infty$ and can be subtracted, yielding
\begin{align*}
\mu(F_1) &= \mu(F) + \mu(F_1) - \lim_{N\to\infty} \mu(F_N) \\
\implies \mu(F) &= \lim_{N\to\infty} \mu(F_N)
.\end{align*}

### b

Suppose toward a contradiction that there is some $\varepsilon > 0$ for which no such $\delta$ exists.

This means that we can take any sequence $\delta_n \to 0$ and produce sets $A_n$ such $m(A) < \delta_n$ but $\mu(A) > \varepsilon$.

So choose the sequence $\delta_n = \frac 1 {2^n}$ and define $A_n$ accordingly, and let
\begin{align*}
A = \limsup_n A_n = \intersect_{n=1}^\infty \union_{k = n}^\infty A_k
.\end{align*}

Since 
$$
\mu\left( \union_{k=n}^\infty A_k \right) \leq \sum_{k=n}^\infty \mu(A_k) \approx \frac {1}{2^n} \to 0,
$$
by part (a) we have $m(A) = 0$. 
Now by assumption, we should thus have $\mu(A) = 0$ as well.

However, again by part (a), we have
\begin{align*}
\mu(A) = \lim_n \mu\left( \union_{k=n}^\infty A_k \right)
\geq \lim_n \mu(A_n) = \lim_n \varepsilon = \varepsilon > 0
.\end{align*}

## 3

Since $f_k \to f$ almost everywhere, we have $\liminf_k f_k(x) = f(x)$ and thus

\begin{align*}
\norm{f}_2^2
&= \norm{\liminf_k f_k}_2^2 \\
&\underset{\text{Fatou}}\leq \liminf_k \norm{f_k}_2^2 \\
&\leq \liminf_k M^2 \\
&= M^2
.\end{align*}



# Spring 2019

## 1

### a

Let $\theset{f_k}$ be  a Cauchy sequence in $C(I)$.
For each fixed $x\in [0, 1]$, the sequence of real numbers $\theset{f_k(x)}$ is Cauchy in $\RR$, which is complete, since
$$
x_0\in I \implies \abs{f_k(x_0) - f_j(x_0)} \leq \sup_{x\in I} \abs{f_k(x) - f_j(x)} = \norm{f_k - f_j}_\infty \to 0,
$$

so we can define $f(x) \definedas \lim_k f_k(x)$.

To see that $\norm{f_k - f}_\infty \to 0$, we just note that
\begin{align*}
\norm{f_k - f}_\
= \norm{f_k - \lim_{j\to\infty} f_j}_\infty 
= \lim_{j\to\infty} \norm{f_k - f_j}_\infty 
\to 0
.\end{align*}

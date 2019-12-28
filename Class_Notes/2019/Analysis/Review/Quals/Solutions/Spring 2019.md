# Spring 2019

## 1

### a

Let $\theset{f_k}$ be  a Cauchy sequence in $C(I)$.
For each fixed $x\in [0, 1]$, the sequence of real numbers $\theset{f_k(x)}$ is Cauchy in $\RR$, which is complete, since
$$
x_0\in I \implies \abs{f_k(x_0) - f_j(x_0)} \leq \sup_{x\in I} \abs{f_k(x) - f_j(x)} = \norm{f_k - f_j}_\infty \to 0,
$$

so we can define $f(x) \definedas \lim_k f_k(x)$.

To see that $\norm{f_k - f}_\infty \to 0$, we can use the fact that $\abs{f_k(x) - f(x)} \to 0$ in $\RR$ (by the definition of $f$ as a limit) and $\abs{f_k(x) - f_j(x)} \to 0$ since these are Cauchy.


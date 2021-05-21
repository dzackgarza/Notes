For $\ts{a_k}$ a sequence in $\RR$, define 
$$
A(t) := \sum_{0\leq k \leq t} a_k
$$
For $\phi\in C^1(\RR)$ continuously differentiable, 
$$
\sum_{x <k \leq y} a_{k} \phi(n)=A(y) \phi(y)-A(x) \phi(x)-\int_{x}^{y} A(u) \phi^{\prime}(u) \du
$$

Fix $s\in \CC, a_{k} = 1$ for $k\geq 1$,  and $\phi(x) := x^{-s}$. Then $A(t) = \floor{t}$, and 
$$
\sum_{n=1}^{\lfloor x\rfloor} \frac{1}{n^{s}}=\frac{\lfloor x\rfloor}{x^{s}}+s \int_{1}^{x} \frac{\lfloor u\rfloor}{u^{1+s}} \du
$$
Now take $\Re(s) > 1$ and $\lim_{x\to\infty}$ to yield
$$
\zeta(s)=s \int_{1}^{\infty} \frac{\lfloor u\rfloor}{u^{1+s}} \du
$$
Use this to derive [Dirichlet's theorem](Dirichlet's%20theorem.md): $\zeta(s)$ has a simple pole at $s=1$ with $\Res_{s=1} \zeta(s) = 1$.
This works for other [Dirichlet series](Dirichlet%20series).
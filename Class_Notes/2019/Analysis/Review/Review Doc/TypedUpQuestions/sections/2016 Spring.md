# Spring 2016 (Neil-ish)

## 1
For $n\in \NN$, define
$$
e_{n}=\left(1+\frac{1}{n}\right)^{n} 
\quad \text { and } \quad 
E_{n}=\left(1+\frac{1}{n}\right)^{n+1}
$$

Show that $e_n < E_n$, and prove Bernoulli's inequality:
$$
(1+x)^{n} \geq 1+n x \text { for }-1<x<\infty \text { and } n \in \mathbb{N}
$$

Use this to show the following:

1. The sequence $e_n$ is increasing.
2. The sequence $E_n$ is decreasing.
3. $2 < e_n < E_n < 4$.
4. $\lim _{n \rightarrow \infty} e_{n}=\lim _{n \rightarrow \infty} E_{n}$.

## 2
Let $0 < \lambda < 1$ and construct a Cantor set $C_\lambda$ by successively removing middle intervals of length $\lambda$.

Prove that $m(C_\lambda) = 0$.

## 3
Let $f$ be Lebesgue measurable on $\RR$ and $E \subset \RR$ be measurable such that
$$
0<A=\int_{E} f(x) d x<\infty.
$$

Show that for every $0 < t < 1$, there exists a measurable set $E_t \subset E$ such that
$$
\int_{E_{t}} f(x) d x=t A.
$$

## 4
Let $E \subset \RR$ be measurable with $m(E) < \infty$. 
Define
$$
f(x)=m(E \cap(E+x)).
$$

Show that

1. $f\in L^1(\RR)$.
2. $f$ is uniformly continuous.
3. $\lim _{|x| \rightarrow \infty} f(x)=0$

> Hint: 
$$
\chi_{E \cap(E+x)}(y)=\chi_{E}(y) \chi_{E}(y-x)
$$

## 5
Let $(X, \mathcal M, \mu)$ be a measure space. For $f\in L^1(\mu)$ and $\lambda > 0$, define
$$
\phi(\lambda)=\mu(\{x \in X | f(x)>\lambda\}) 
\quad \text { and } \quad 
\psi(\lambda)=\mu(\{x \in X | f(x)<-\lambda\})
$$

Show that $\phi, \psi$ are Borel measurable and
$$
\int_{X}|f| ~d \mu=\int_{0}^{\infty}[\phi(\lambda)+\psi(\lambda)] ~d \lambda
$$

## 6
Without using the Riesz Representation Theorem, compute
$$
\sup \left\{\left|\int_{0}^{1} f(x) e^{x} d x\right| \suchthat f \in L^{2}([0,1], m),~~ \|f\|_{2} \leq 1\right\}
$$

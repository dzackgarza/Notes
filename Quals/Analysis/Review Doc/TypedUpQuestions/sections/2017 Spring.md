# Spring 2017

## 1

Let $K$ be the set of numbers in $[0, 1]$ whose decimal expansions do not use the digit $4$.

> We use the convention that when a decimal number ends with 4 but all other digits are
different from 4, we replace the digit $4$ with $399\cdots$. For example, $0.8754 = 0.8753999\cdots$.

Show that $K$ is a compact, nowhere dense set without isolated points, and find the
Lebesgue measure $m(K)$.

## 2

a. Let $\mu$ be a measure on a measurable space $(X, \mathcal M)$ and $f$ a positive measurable function.
  
    Define a measure $\lambda$ by
$$
\lambda(E):=\int_{E} f ~d \mu, \quad E \in \mathcal{M}
$$

    Show that for $g$ any positive measurable function, 
$$
\int_{X} g ~d \lambda=\int_{X} f g ~d \mu
$$

b. Let $E \subset \RR$ be a measurable set such that 
$$
\int_{E} x^{2} ~d m=0.
$$
  Show that $m(E) = 0$.

## 3

Let
$$
f_{n}(x)=a e^{-n a x}-b e^{-n b x} \quad \text{ where } 0 < a < b.
$$

Show that 

a. $\sum_{n=1}^{\infty}\left|f_{n}\right| \text { is not in } L^{1}([0, \infty), m)$

  > Hint: $f_n(x)$ has a root $x_n$.

b. 
$$
\sum_{n=1}^{\infty} f_{n} \text { is in } L^{1}([0, \infty), m) 
\quad \text { and } \quad 
\int_{0}^{\infty} \sum_{n=1}^{\infty} f_{n}(x) ~d m=\ln \frac{b}{a}
$$

## 4
Let $f(x, y)$ on $[-1, 1]^2$ be defined by 
$$
f(x, y) = \begin{cases}
\frac{x y}{\left(x^{2}+y^{2}\right)^{2}} & (x, y) \neq (0, 0) \\
0 & (x, y) = (0, 0)
\end{cases}
$$
Determine if $f$ is integrable.


## 5
Let $f, g \in L^2(\RR)$. 
Prove that the formula
$$
h(x):=\int_{-\infty}^{\infty} f(t) g(x-t) d t
$$
defines a uniformly continuous function $h$ on $\RR$.

## 5
Show that the space $C^1([a, b])$ is a Banach space when equipped with the norm
$$
\|f\|:=\sup _{x \in[a, b]}|f(x)|+\sup _{x \in[a, b]}\left|f^{\prime}(x)\right|.
$$

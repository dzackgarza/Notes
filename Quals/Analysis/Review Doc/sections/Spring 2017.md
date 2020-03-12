# Spring 2017

## 1

> $A$ is nowhere dense $\iff$ every interval $I$ contains a subinterval $S \subseteq A^c$.

**$K$ is compact:**

It suffices to show that $K^c \definedas [0, 1]\setminus K$ is open; then $K$ will be a closed and bounded subset of $\RR$ and thus compact by Heine-Borel.

We can identify $K^c$ as the set of real numbers in $[0, 1]$ whose decimal expansion **does** use a 4.
Let $x\in K^c$, and suppose a 4 occurs as the $k$th digit and write
\begin{align*}
x = 0.d_1 d_2 \cdots d_{k-1}~ 4 ~d_{k+1}\cdots 
= \sum_{j=1}^k d_j 10^{-j} + 4\cdot 10^{-k} + \sum_{j=k+1}^\infty d_j 10^{-j}
.\end{align*}

Then if we set $r < 10^{-k}$ and pick any $y \in [0, 1]$ such that $y\in B_r(x)$, then $\abs{x-y} < 10^{-k}$. 
If we write $y = \sum_{j=1}^\infty c_j 10^{-j}$, this means that for all $j \leq k$ we have $d_j = c_j$, and in particular $d_k = 4 = c_k$, so $y$ has a 4 in its decimal expansion.

But then $K^c = \union_x B_r(x)$ is a union of open sets and thus open.

**$K$ is nowhere dense and $m(K) = 0$:**

Since $K$ is closed, we'll show that $K$ can not properly contain any interval, so $(\overline K)^\circ = \emptyset$.

As in the construction of the Cantor set, let 

- $K_1$ denote $[0, 1]$ with 1 interval $[0.4, 0.5]$ of length $\frac{1}{10}$ deleted
- $K_2$ denote $K_1$ with 9 intervals $[0.04, 0.05], ~[0.14, 0.15], \cdots [0.94, 0.95]$ length $\frac 1 {100}$ deleted
- $K_n$ denote $K_{n-1}$ with $9^{n-1}$ such intervals of length $10^{-n}$ deleted.

Then $K = \intersect K_n$, and 
$$
m(K) = 1 - m(K^c) = 1 - \sum_{j=0}^\infty \frac{9^n}{10^{n+1}} = 1 - \frac{1}{10} \left( \frac{1}{1 - \frac 9 {10}} \right) = 0,
$$

and since any interval has strictly positive measure, $K$ can not contain any interval.

**$K$ has no isolated points**:

A point $x\in K$ is isolated iff there there is an open ball $B_r(x)$ containing $x$ such that $B_r(x) \intersect K = \emptyset$, so every point in this ball has a 4 in its decimal expansion.

Note that $m(K_n) = \left( \frac 9 {10} \right)^n \to 0$ and that the endpoints of intervals are never removed and are thus elements of $K$.
Then for every $\varepsilon$, we can choose $n$ such that $\left( \frac 9 {10} \right)^n < \varepsilon$; then there is an endpoint of a removed interval $e_n$ satisfying $\abs{x - e_n} \leq  \left( \frac 9 {10} \right)^n < \varepsilon$. 

So every ball containing $x$ contains some endpoint of a removed interval, and thus an element of $K$.

$\qed$

## 2

> $\lambda \ll \mu \iff E\in\mathcal{M}, \mu(E) = 0 \implies \lambda(E) = 0$.

### a

By Radon-Nikodym, if $\lambda \ll \mu$ then $d\lambda = f d\mu$, which would yield 
\begin{align*}
\int g ~d\lambda = \int g f ~d\mu
.\end{align*}

So let $E$ be measurable and suppose $\mu(E) = 0$.
Then
\begin{align*}
\lambda(E) \definedas \int_E f ~d\mu 
&= \lim_n \theset{\phi_n \definedas \sum_j c_j \mu(E_j) }
,\end{align*}

where we take a sequence of simple functions increasing to $f$.

But since each $E_j \subseteq E$, we must have $\mu(E_j) = 0$ for any such $E_j$, so every such $\phi_n$ must be zero and thus $\lambda(E) = 0$.

### b

By Radon-Nikodym, there exists a positive $f$ such that
\begin{align*}
\int g ~dm = \int gf ~d\mu 
,\end{align*}

where we can take $g(x) = x^2$, then the LHS is zero by assumption and thus so is the RHS.

Note that $gf$ is positive.

Define $A_k = \theset{x\in X \suchthat gf \chi_E > \frac 1 k}$, then by Chebyshev
\begin{align*}
\mu(A_k) \leq k \int_E gf ~d\mu = 0
,\end{align*}

which holds for every $k$.

Then noting that $A_k \searrow A \definedas \theset{x\in E \suchthat x^2  > 0}$, and $gf$ is positive, we have 
\begin{align*}
x\in E \iff gf\chi_E(x) > 0 \iff x\in A
,\end{align*}

so $E = A$ and $\mu(E) = \mu(A)$.

But since $m \ll \mu$ by construction, we can conclude that $m(E) = 0$.

$\qed$

## 3

### a

Letting $x_n \definedas \frac 1 n$, we have

\begin{align*}
\sum_{k=1}^\infty \abs{f_k(x)} \geq \abs{f_n(x_n)} 
=\abs{ae^{-ax} - be^{-bx}} \definedas M
.\end{align*}

In particular, $\sup_{x} \abs{f_n(x)} \not\to 0$, so the terms do not go to zero and the sum can not converge.

### b

?

## 4

Switching to polar coordinates and integrating over a half-circle contained in $I^2$, we have
\begin{align*}
\int_{I^2} f \geq \int_0^\pi \int_0^1 \frac{\cos(\theta)\sin(\theta)}{r^2} ~dr~d\theta = \infty
,\end{align*}

so $f$ is not integrable.

## 5

> See https://math.stackexchange.com/questions/507263/prove-that-c1a-b-with-the-c1-norm-is-a-banach-space

This is clearly a norm, which we'll write $\norm{\wait}_u$

Let $f_n$ be a Cauchy sequence and define a candidate limit $f(x) = \lim_n f_n(x)$.

Then noting that $\norm{f_n}_\infty, \norm{f_n'}\infty \leq \norm{f_n}_u < \infty$, both $f_n, f_n$ are Cauchy sequences in $C^0([a, b], \norm{\wait}_\infty)$, which is a Banach space.

So $f_n \to f$ uniformly, and $f_n' \to g$ uniformly for some $g$, and moreover $f, g\in C^0([a, b])$.

We thus have
\begin{align*}
f_n(x) - f_n(a) \quad &\converges{u}\to f(x) - f(a) \\
\int_a^x f'_n  \quad &\converges{u}\to \int_a^x  g
,\end{align*}
 
and by the FTC, the left-hand sides are equal, and by uniqueness of limits so are the right-hand sides, so $f' = g$.

Since $f, f'\in C^0([a, b])$, they are bounded, and so $\norm{f}_u < \infty$. 
This means that $\norm{f_n - f}_u \to 0$, so $f_n$ converges to $f$, which is in the same space.

$\qed$
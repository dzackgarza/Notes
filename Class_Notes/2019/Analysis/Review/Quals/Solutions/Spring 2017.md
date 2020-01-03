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

**$K$ is nowhere dense:**

Since $K$ is closed, we'll show that $K$ can not properly contain any interval, so $(\overline K)^\circ = \emptyset$.

As in the construction of the Cantor set, let 

- $K_1$ denote $[0, 1]$ with 1 interval $[0.4, 0.5]$ of length $\frac{1}{10}$ deleted
- $K_2$ denote $K_1$ with 9 intervals $[0.04, 0.05], ~[0.14, 0.15], \cdots [0.94, 0.95]$ length $\frac 1 {100}$ deleted
- $K_n$ denote $K_{n-1}$ with $9^{n-1}$ such intervals of length $10^{-n}$ deleted.

Then $K = \intersect K_n$, and 
$$
m(K) = 1 - m(K^c) = 1 - \sum_{j=0}^\infty \frac{9^n}{10^{n+1}} = 1 - \frac{1}{10} \left( \frac{1}{1 - \frac 1 {10}} \right) = 0,
$$

and since any interval has strictly positive measure, $K$ can not contain any interval.

**$K$ has no isolated points**:

A point $x\in K$ is isolated iff there there is an open ball $B_r(x)$ containing $x$ such that $B_r(x) \subset K^c$, so every point in this ball has a 



## 2

## 3

## 4

## 5
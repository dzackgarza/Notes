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

Write $x\in K$ as $x = \sum d_j 10^{-j}$ where $d_j \in \theset{0,1,2,3,5,6,7,8,9}$.

Now define 
\begin{align*}
K_1 &= [0, 1] \setminus \left[\frac 4 {10}, \frac{5}{10}\right] \\
K_2
.\end{align*}





## 2

## 3

## 4

## 5
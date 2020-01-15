---
title: Solutions to Point-Set Qual Questions
---

# 8
Let $\pi_X, \pi_Y$ denote the canonical projections, which we can note are continuous and preserve open sets.

$\implies$:
Suppose $X\cross Y$ is compact, and let $\theset{U_\alpha}, \theset{V_\beta}$ be open covers of $X$ and $Y$ respectively.

Let $T_{\alpha\beta} = U_\alpha \cross V_\beta$; then $\theset{T_{\alpha\beta}}$ is an open cover of $X\cross Y$.
So there is a finite subcover $\theset{T_{ij}}$, $\theset{\pi_X(T_{ij})}$ is an open cover of $X$, and similarly for $Y$.
So both $X,Y$ are compact.

$\impliedby$:
Suppose $X, Y$ are both compact, and let $\theset{T_\alpha}$ be an open cover of $X\cross Y$.
Then $U_\alpha \definedas \pi_X(T_\alpha), V_\alpha \definedas \pi_Y(T_\alpha)$ are open covers of $X, Y$ respectively, so there are finite subcovers $\theset{U_i}, \theset{V_j}$.
But then $\theset{\pi_X\inv(U_i) \cross \pi_Y\inv(V_j)}$ is a finite cover of $X\cross Y$. 

> Why?

# 10

Let $X = A \union B$ with $A = \theset{(0, y) \suchthat y\in [-1, 1] }$ and $B = \theset{(x, \sin(1/x)) \suchthat x\in (0, 1]}$.
Since $B$ is the graph of a continuous function, which is always connected.
Moreover, $X = \bar{A}$, and the closure of a connected set is still connected.

> Alternative direct argument: the subspace $X' = B \union \theset{\vector 0}$ is not connected. 
> If it were, write $X' = U \disjoint V$, where wlog $\vector 0 \in U$.
> Then there is an open such that $\vector 0 \in N_r(\vector 0) \subset U$.
> But any neighborhood about zero intersects $B$, so we must have $V \subset B$ as a strict inclusion.
> But then $U \intersect B$ and $V$ disconnects $B$, a connected set, which is a contradiction.

To see that $X$ is not path-connected, suppose toward a contradiction that there is a continuous function $f: I \to X \subset \RR^2$.
In particular, $f$ is continuous at $\vector 0$, and so

\begin{align*}
\forall \varepsilon \quad \exists \delta \suchthat \norm{\vector x} < \delta \implies \norm{f(\vector x)} < \varepsilon
.\end{align*}

where the norm is the standard Euclidean norm. 

However, we can pick $\varepsilon < 1$, say, and consider points of the form $\vector x_n = (\frac{1}{2n\pi}, 0)$.
In particular, we can pick $n$ large enough such that $\norm{\vector x_n}$ is as small as we like, whereas $\norm{f(\vector x_n)} = 1 > \varepsilon$ for all $n$, a contradiction.

# 11

Consider $X^c = \theset{(x, y) \suchthat x/y \text{ is irrational }}$.
The claim is that $X^c$ is path-connected, and thus connected, and if $X$ were connected then we could write $\RR^2 = X \disjoint X^c$ is the disjoint union of two connected sets.

# 14

# 16


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
Suppose $X$ and $Y$ are compact, and let $U_\alpha \rightrightarrows X\cross Y$ be an open cover.
Let $\pi_Y: X\cross Y \to Y$ be the canonical projection; then $\theset{\pi_Y(U_\alpha)}\rightrightarrows Y$ and by compactness of $Y$ there is a finite subcover of the form $\theset{\pi_Y(U_i) \suchthat 1\leq i \leq n}$.
Then $\theset{V_{x, i} \definedas \theset{x} \cross U_i}$ is an open cover of $\theset{x} \cross Y$ for any fixed $x$. 

So if we fix an $x\in X$, we can let $V_{x, i} \rightrightarrows \theset{x} \cross Y$ be any finite subcollection covering this slice.
By the Tube Lemma, there is an open set $W_x$ such that $\theset{x} \cross Y \subset W_x \cross Y \subset \union V_{x, i} = \theset{x} \cross Y$.

Then $\theset{W_x} \rightrightarrows X$ as $x$ varies is an open cover of $X$, and by compactness of $X$, there are finitely many $x_j \in X$ such that $W_{x_j} \rightrightarrows X$.
But then $X \cross Y = \union_{j} W_{x_j} \cross Y = \union_j \union_i W_{x_j} \cross V_{x_j, i} \subset \union_\alpha U_\alpha$ is a finite cover.


> Todo: Prove tube lemma.


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

Consider the (continuous) projection $\pi: \RR^2 \to \RP^1$ given by $(x, y) \mapsto [y/x, 1]$ in homogeneous coordinates.
(I.e. this sends points to lines through the origin with rational slope).

Note that the image of $\pi$ is $\RP^1\setminus\theset{\infty}$, which is homeomorphic to $\RR$.

If we now define $f = \restrictionof{\pi}{X}$, we have $f(X) \surjects \QQ \subset \RR$.
If $X$ were connected, then $f(X)$ would also be connected, but $\QQ \subset \RR$ is disconnected, a contradiction.

# 14

Let $X \definedas \union_\alpha X_\alpha$, and let $p\in \intersect X_\alpha$.
Suppose toward a contradiction that $X = A \disjoint B$ with $A,B$ nonempty, disjoint, and relatively open as subspaces of $X$.
Wlog, suppose $p\in A$, so let $q\in B$ be arbitrary.

Then $q\in X_\alpha$ for some $\alpha$, so $q\in B \intersect X_\alpha$.
We also have $p\in A \intersect X_\alpha$.

But then these two sets disconnect $X_\alpha$, which was assumed to be connected --  a contradiction.

# 16

> Lemma: $X$ is connected iff the only subsets of $X$ that are closed and open are $\emptyset, X$.

If $S\subset X$ is not connected, then there exists a subset $A\subset S$ that is both open and closed in the subspace topology, where $A\neq \emptyset, S$.

Suppose $S$ is not connected, then choose $A$ as above.
Then $B = S\setminus A$ yields a pair $A, B$ that disconnects $S$.
Since $A$ is closed in $S$, $\bar A = A$ and thus $\bar A \cap B = A \cap B = \emptyset$.
Similarly, since $A$ is open, $B$ is closed, and $\bar B = B \implies \bar B \cap A = B \cap A = \emptyset$.

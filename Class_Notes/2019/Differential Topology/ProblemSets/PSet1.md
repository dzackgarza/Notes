---
title: Problem Set 1
---

# Problem 1

We'll use the following definition of a smooth map between manifolds:

Definition: Let $M, N$ be smooth manifolds and $f: M \to N$ a map. Then $f$ is *smooth* iff for every $p \in M$, there exists a chart $(U, \phi)$ containing $p$ and a chart $(V, \psi)$ containing $f(p)$ such that the induced map $\tilde f: \phi(U) \to \psi(V)$ defined as $\tilde f = \psi \circ f \circ \phi\inv$ is smooth as a map from $\RR^m \to \RR^n$,

# Problem 3

## Part 1

> Note: Throughout this question, we will identify $\theset{f: C^\infty(M) \to \RR} \cong C^\infty(M)\dual$ as vector spaces.

Let $M, N$ be smooth manifolds and $f: M \to N$ be a fixed smooth map, and define a map
$$
\phi: C^\infty(N) \cross TM \to \RR \\
(h, v) \mapsto v(h \circ f)
$$

## Part 1

Using the derivation definition, we can identify this assignment as a map
$$
\phi: C^\infty(N) \cross C^\infty(M)\dual \to \RR \\
(h, v) \mapsto v(h \circ f)
$$

We'd like to show that this yields a well-defined element of $T_p M = C^\infty(M)$. So for some fixed $v \in T_pM$, define a map
$$
\phi_v: C^\infty(N) \to \RR \\
h \mapsto v(h \circ f),
$$

which will be an element of $TM$ if it is a derivation. For $x\in N$, we have

\begin{align*}
\phi_v(h_1\cdot h_2)(x) &\definedas v( (h_1 h_2) \circ f)(x) \\
&= v((h_1 \circ f) (h_2 \circ f))(x) \\
&= v(h_1 \circ f)(x) \cdot h_2(x) + h_1(x) \cdot v(h_2 \circ f)(x) \quad \text{since $v$ is a derivation} \\
&= \phi_v(h_1)(x) \cdot h_2(x) + h_1(x) \cdot \phi_v(h_2)(x).
\end{align*}

## Part 2

Using the integral curve definition, 


# Problem 4

## Part 1

Let $V = \RR^n$ as a vector space, let $g$ be a nonsingular matrix, and define a map
\begin{align*}
\phi: V &\to V\dual \\
v &\mapsto (\phi_v: w \mapsto \inner{v}{gw})
\end{align*}

The claim is that $\phi$ is a natural isomorphism. It is clearly linear (following from the linearity of the inner product and matrix multiplication), so it remains to check that it is a bijection.

To see that $\ker \phi = 0$, so that only the zero gets sent to the zero map, we can suppose that $x \in \ker \phi$. Then $\phi_x: w \to \inner{x}{gw}$ is the zero map. But the inner product is nondegenerate by definition, i.e. $\inner{x}{y} = 0 ~~\forall y \implies x = 0$. So $x$ could only have been the zero vector to begin with.

But $\dim V = \dim V\dual$, so any injective linear map will necessarily be surjective as well.

## Part 2

Let $g: TM \tensor TM \to \RR$ be a metric, and consider the tangent space $TM$. By definition, the cotangent space $T^*_pM = (T_p M)\dual$

# Problem 5

## Part 1

Let $A \in \mathrm{Mat}(n, n)$ be a positive definite $n\times n$ matrix, so 
$$
\inner{v}{Av} > 0 \quad \forall v\in \RR^n,
$$
and $B\in \mathrm{Math}(n, n)$ be positive semi-definite, so
$$
\inner{v}{Bv} \geq 0 \quad \forall v\in \RR^n.
$$

We'd like to show
$$
\inner{v}{(A + B)v} \geq 0 \quad \forall v\in \RR^n,
$$

which follows directly from
\begin{align*}
\inner{v}{(A + B)v} &= \inner{v}{Av} + \inner{v}{Bv} \\
&> \inner{v}{Av} + 0 \\
&\geq 0 + 0 \\
&= 0.
\end{align*}

## Part 2

Let $M$ be a smooth manifold with tangent bundle $TM$ and a maximal smooth atlas $\mathcal{A}$. Choose a covering of $M$ by charts $\mathcal C = \theset{(U_i, \phi_i) \mid i\in I} \subseteq \mathcal A$ such that $M \subseteq \union_{i\in I} U_i$.Then choose a partition of unity $\theset{f_i}_{i\in I}$ subordinate to $\mathcal C$, so for each $i$ we have
$$
f_i: M \to I \\
\forall p\in M, \quad \sum_{i\in I} f_i(p) = 1
$$

In each copy of $\phi_i(U_i) \cong \RR^n$, let $g^i$ be the Euclidean metric given by the identity matrix, i.e. $g^i_{jk} \definedas \delta_{jk}$. We then have
$$
g^i: T\phi_i(U_i) \tensor T\phi_i(U_i) \to \RR \\
(\partial x_i, \partial x_j) \mapsto \begin{cases} 1 & i = j \\ 0 & \text{otherwise} \end{cases}
$$
which is defined for pairs of vectors in $T \phi_i(U_i) \cong T \RR^n = \mathrm{span}_\RR \theset{\partial x_i}_{i=1}^n$ on basis vectors as the Kronecker delta and extended linearly.

Note that each coordinate function $\phi_i: U_i \to \RR^n$ induces a map $\tilde \phi_i: TU_i \to T\RR^n$.

Let $G^i$ be the pullback of $g^i$ along these induced maps $\tilde \phi_i$, so 
$$
G^i: T U_i \tensor TU_i \to \RR \\
G^i(x, y) \definedas \left( \left(\tilde \phi_i\right)^*g^i\right) (x, y) \definedas g^i(\tilde \phi_i(x), \tilde \phi_i(y))
$$

Then, for a point $p \in M$, define the following map:
$$
g_p: T_pM \tensor T_pM \to \RR\\
(x, y) \mapsto \sum_{i\in I} f_i(p) G^i(x, y).
$$

The claim is that $g_p$ defines a metric on $M$, and thus the family $\theset{g_p \mid p \in M}$ yields a tensor field and thus a Riemannian metric on $M$. If we define the map
$$
g: M \to (TM \tensor TM)\dual \\
p \mapsto g_p
$$

then $g$ can be expressed as 
$$g = \sum_{i\in I} f_i G^i.$$

We can check that this is positive definite by considering $x\in T_p M$ and computing
\begin{align*}
g(x, x) &\definedas g_p(x, x) \\
&= \sum_{i\in I} f_i(p) ~G^i(v, v) \\ 
&= \sum_{i\in I} f_i(p) ~g^i(\tilde \phi_i(x), \tilde \phi_i(y)),
\end{align*}

where each term is positive semi-definite, and *at least one term* is positive definite because $\sum_i f_i(p)$ must equal 1. By part 1, this means that the entire expression is positive definite, so $g$ is a metric. $\qed$

# Problem 6

## Part 1

Let $M = S^2$ as a smooth manifold, and consider a vector field on $M$,
$$
X: M \to TM
$$
We want to show that there is a point $p\in M$ such that $X(p) = 0$.

Every vector field on a compact manifold without boundary is complete, and since $S^2$ is compact with $\del S^2 = \emptyset$, $X$ is necessarily a complete vector field.

Thus every integral curve of $X$ exists for all time, yielding a well-defined flow 
$$
\phi: M \cross \RR \to M
$$

given by solving the initial value problems
$$
\dd{}{s} \phi_s(p) \Bigm|_{s = t} = X(\phi_t(p)),\\
\phi_0(p) = p
$$
at every point $p\in M$.

This yields a one-parameter family 
$$
\phi_t: M \to M \in \mathrm{Diff}(M, M).
$$ 

In particular, $\phi_0 = \id_M$, and $\phi_1 \in \mathrm{Diff}(M, M)$. Moreover $\phi_0$ is homotopic to $\phi_1$ via the homotopy

\begin{align*}
H: M \cross I &\to M \\
(p, t) &\mapsto \phi_t(p).
\end{align*}

We can now apply the Lefschetz fixed-point theorem to $\phi_0$ and $\phi_1$. For an arbitrary map $f: M \to M$, we have
$$
\Lambda(f) = \sum_k \Tr\left( f_* \Bigm|_{H_k(X; \QQ)} \right).
$$

where $f_*: H_*(X; \QQ) \to H_*(X; \QQ)$ is the induced map on homology, and 

$$
\Lambda(f) \neq 0 \iff f\text{ has at least one fixed point.}
$$

In particular, we have
\begin{align*}
\Lambda(\id_M) &= \sum_k \Tr(\id_{H_k(X; \QQ)}) \\
&= \sum_k \dim H_k(X; \QQ) \\
&= \chi(M),
\end{align*}
the Euler characteristic of $M$.

Since homotopic maps induce equal maps on homology, we also have $\Lambda(\phi_1) = \chi(M)$.

Since 
$$
H_k(S^2) = \begin{cases}
\ZZ & k = 0, 2 \\
0 & \text{otherwise}
\end{cases}
$$

we have $\chi(S^2) = 2 \neq 0$, and thus $\phi_1$ has a fixed point $p_0$, thus

$\dd{}{t} \phi_t(p_0)\Bigm|_{t=1}$
so 
\begin{align*}
\phi_t(p) =& p  &\\
\implies \dd{}{t} \phi_t(p) =& \dd{}{t} p = 0 &\text{by differentiating wrt $t$}\\
\implies \dd{}{t} \phi_t(p) \Bigm|_{t = 1} &= 0 \Bigm|_{t=0} = 0 &\text{by evaluating at $t=0$}\\
\implies X(\phi_1(p_0)) \definedas \dd{}{t} \phi_t(p) \Bigm|_{t = 1} &= 0 &\text{by definition of $\phi_1$} 
\end{align*}

so $X(\phi_1(p_0)) = 0$, which shows that $p_0$ is a zero of $X$. So $X$ has at least one zero, as desired. $\qed$

## Part 2

The trivial bundle

```{=latex}
\begin{center}
\begin{tikzcd}
\RR^2 \arrow[rr] &  & S^2 \cross \RR^2 \arrow[dd]                         \\
                 &  &                                                     \\
                 &  & S^2 \arrow[uu, "s" description, dotted, bend right]
\end{tikzcd}
\end{center}
```

has a nowhere vanishing section, namely 
$$
s: S^2 \to S^2 \cross \RR^2 \\
\vector x \to (\vector x, [1, 1])
$$

which is the identity on the $S^2$ component and assigns the constant vector $[1, 1]$ to every point. 

However, as part 1 shows, the bundle
```{=latex}
\begin{center}
\begin{tikzcd}
\RR^2 \arrow[rr] &  & TS^2 \arrow[dd]                                     \\
                 &  &                                                     \\
                 &  & S^2 \arrow[uu, "s" description, dotted, bend right]
\end{tikzcd}
\end{center}
```

can *not* have a nowhere vanishing section. $\qed$
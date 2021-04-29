---
title: Weil Conjectures Notes
date: 2020-04-13
tags: 
  - Unfiled
---

About algebraic variety: defined by polynomial equations,
Hypersurfaces are defined by one equation
Let $X/K: f(x_0, \cdots, x_{n+1}) = 0, \vector x \in \PP_k^{n+2}$, so the variety will have dimension.

For any $L/K$ we can consider the $L$ points $X(L) = \vector x\in L^{n+2} / \sim$ where identify $\vector x = \lambda \vector x$ for any $\lambda \in L\units$?

Example:
$n=1$, $f(x,y,z) = y^2 z - x^3 - ax^2 z - bz^3 \in \PP^2_K$ for $K = \QQ$, where $a, b \in \ZZ$, is the homogeneous Weierstrass equation for an elliptic curve.

Example:
Taking $K = \CC$ for an arbitrary $X$ yields a complex analytic space (manifold with singularities), which is in fact a manifold when $\Jac(f_1, \cdots, f_n) \neq 0$ is nonvanishing on $X(\CC)$ (so the tangent space is full dimension everywhere).


Example:
For $K = \FF_p$, $X(\FF_p)$ is a finite set, which we can count.

We can consider extensions $F_{p^r} = \FF_p[\theset{\zeta_{p^r}}]$ given by adjoining all of the roots of $x^{p^r} - 1$.
We now obtain a sequence of numbers:
\begin{align*}
\# X(\FF_p), \# \FF_{p^2}, \cdots
.\end{align*}

Can we determine them completely (without a brute-force count)?
Can we say anything about the asymptotics?

The simplest case: $X = \AA^n$, we have $\AA^n(\FF_{p^r}) = p^{rn}$, so in generael $X(\FF_{p^r}) = p^{rn} - \text{ error terms }$.

Theorem (Weil)
: If $n=1$, so there is 1 defining equation, with $X$ smooth and connected, then $\# X(\FF_{p^r}) = p^r + O(p^{r/2})$.

We in fact know $\# X(\FF_{p^r})$ is $p^r + 1 - \sum_{i=1}^g \alpha+i^r$ where $g$ is the genus of ths curve and $\alpha_i \in \bar \QQ$ with $\abs{\iota(\alpha)}= \sqrt{2}$ for any embedding $\bar \QQ \injects \CC$ where the $\alpha_i$ are algebraic.

Note that this condition is much stronger than $\abs{\alpha_i} = \sqrt{p}$, since e.g. $1 \pm \sqrt 2$ have two different norms.

How to generalize to higher dimensions: do combinatorics!
Take a certain generating series, the zeta function:
\begin{align*}
Z(X, t) = \exp( \sum_{r=1}^\infty {t^r \over r} \# X(\FF_{p^t})) \in \QQ[[t]]
.\end{align*}

> Note that we're not using an OGF.

Example:
For $X= \PP^n$, take the hyperplane $f(\vector x) - x_{n+2} = 0$.
Then $\#X(\FF_{p^r}) = p^rn + p^{r(n-1)} + p^{r(n-2)} + \cdots + 1$ where we count the embedded $\AA^n$ in the first term, an $\AA^{n-1}$ in the hyperplane at infinity, the embedded $\AA^{n-2}$ in *its* hyperplane at infinity, etc.

Note that the sum will turn this into a product, and we get
\begin{align*}
Z(\PP^n, t) = \prod_{j=0}^n \exp(\sum_t {t^r \over r}p^{rj}) = \prod_{j=0}^n {1 \over 1 - p^jt}
.\end{align*}
which is in fact a rational function.

In general, for $X$ a curve, we obtain
\begin{align*}
Z(X, t) = {(1 - \alpha_1 t) \cdots(1 - \alpha_j t \over (1-t) (1-pt) )} 
.\end{align*}

Weil conjectures for $X$ smooth and connected of dimension $n$: 

- $Z(X, t) \in \QQ(t)$
- (RH) Explicitly, $Z(X, t) = {P_1(t) \cdots P_{2n-1}(t) \over P_0(t) \cdots P_{2n}(t)}$
  - $P_i(t) \in \ZZ[t]$, so the roots are algebraic integers. Normalize to $P_i(0) = 1$ so the constant term is 1.
  - $P_i(t) = \prod_j (1 - \alpha_{ij} t)$ (i.e. the roots), so the absolute value of every embedding is $p^{i/2}$
- (Functional equation) $Z(X, 1/p^nt) = \pm t^\chi p^{c/2} Z(X, t)$ where $c = \sum_{i=0}^{2n} (-1)^\chi \deg P_i$. Note that $\chi$ will be the Euler-Poincare characteristic.
- If $X$ comes by reduction mod $p$ from some $X'/\QQ$, then $\deg P_i = \beta_i = \dim_\QQ H^i(X(\CC); \QQ)$.

Note that the genus is half of the first betti number.

Why are they called the RH for varieties over finite fields?
Identify $\ZZ$ as the ring of functions over a curve $\spec \ZZ$.
We think of $x\in \spec \ZZ$ as a map $\ev_x: \ZZ \to \FF_p$ of rings, so points correspond to evaluating at the point.

Recall that we can write the Riemann zeta function as the Dirichlet series $\zeta(s) = \sum_n {1 \over n^s}$ and expand as an euler product $\prod_{p\text{ prime}} {1 \over 1 - p^{-s}$.

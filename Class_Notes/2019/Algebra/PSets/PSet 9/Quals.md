---
title: Qual Problems
---

# Problem 1

## Part 1

*Definition:*
An element $r\in R$ is *irreducible* if whenever $r=st$, then either $s$ or $t$ is a unit.

*Definition:*
Two elements $r,s\in R$ are *associates* if $r = \ell s$ for some unit $\ell$.

A ring $R$ is a *unique factorization domain* iff for every $r\in R$, there exists a set $\theset{p_i \mid 1\leq i \leq n}$ such that $r = u \prod_{i=1}^n p_i$ where $u$ is a unit and each $p_i$ is irreducible.

Moreover, this factorization is unique in the sense that if $r = w \prod_{i=1}^n q_i$ for some $w$ a unit and $q_i$ irreducible elements, then each $q_i$ is an associate of some $p_i$.


## Part 2

A ring $R$ is a *principal ideal domain* iff whenever $I \normal R$ is an ideal of $R$, there is a single element $r_i \in R$ such that $I = (r_i)$.

## Part 3

An example of a UFD that is not a PID is given by $R = k[x, y]$ for $k$ a field.

That $R$ is a UFD follows from the fact that if $k$ is a field, then $k$ has no prime elements since every non-zero element is a unit.
So the factorization condition holds vacuously for $k$, and $k$ is a UFD.
But then we can use the following result:

> **Theorem**: If $R$ is a UFD, then $R[x]$ is a UFD.

Since $k$ is a UFD, the theorem implies that $k[x]$ is a UFD, from which it follows that $k[x][y] = k[x, y]$ is also a UFD.

To see that $R$ is not a PID, consider the ideal $I = (x, y)$, and suppose $I = (g)$ for some single $g\in k[x, y]$.

Note that $I \neq R$, since $I$ contains no degree zero polynomials.
Moreover, since $(x) \subset I = (g)$ (and similarly for $y$), we have $g\divides x$ and $g\divides y$, which forces $\deg g = 0$. 

So in fact $g\in k$ and thus $g$ is invertible, but then $(g) = g\inv (g) = (1) = k$, so this forces $I = k \normal k[x, y]$.
However, $x\not\in k$ (nor $y$), which is a contradiction.


# Problem 2

**Lemma:**
Let $A$ be a linear operator, $m_A(x)$ its minimal polynomial, and $p_A(x)$ its characteristic polynomial.
Then $A$ has distinct eigenvalues $\iff m_A(x) = \chi_A(x)$.


*Proof:*

Using the fact that every eigenvalue is a always root of both $m_A(x)$ and $\chi_A(x)$ (potentially with differing multiplicities), we can write

\begin{align*}
m_A(x) = \prod_i (x-\lambda_i)^{p_i} \\
\chi_A(x) = \prod_i (x-\lambda_i)^{q_i} \\
\end{align*}

where $1 \leq p_i \leq q_i$ for every $i$.



$\implies$:
If $A$ has $n$ distinct eigenvalues, then $\chi_A(x) = \prod{i=1}^n (x-\lambda_i)$ in $\overline{k} [x]$. 
Noting that every exponent is 1, we have $q_i = 1$ for all $i$, which forces $p_i = 1$.

But then $m_A(x) = \prod_{i=1}^n (x-\lambda_i) = \chi_A(x)$.
$\qed$

$\impliedby$:
If $m_A(x) = \chi_A(x)$, then we must have $p_i = q_i$ for all $i$.
If we then consider $JCF(A)$, we then have

- The number of Jordan block $J_{\lambda_i}$ is the dimension of the eigenspace $E_{\lambda_i}$,
- $q_i = $ the sum of the sizes of all Jordan blocks $J_{\lambda_i}$, and
- $p_i = $ the size of the largest Jordan block $J_{\lambda_i}$.

So if $p_i = q_i$ for every $i$, there can only be a single Jordan block for every $\lambda_i$.


**Lemma**
If $A$ is a linear operator and we write
$$
V = \frac{k[x]}{(f_1)} \oplus \frac{k[x]}{(f_2)} \oplus \cdots \oplus \frac{k[x]}{(f_n)}
$$

as an invariant factor decomposition of $V$ as a $k[x]$ module (defined by $p(x) \actson \vector v \definedas p(A)(\vector v))$, with $f_1 \divides f_2 \divides \cdots$, then we always have

- $m_A(x) = f_n(x)$, i.e. the minimal polynomial is the invariant factor of largest degree,
- $p_A(x) = \prod_{i=j}^n f_j(x)$, i.e. the characteristic polynomial is the product of all of the invariant factors.

$\qed$

$\impliedby$:
Suppose $A$ has distinct eigenvalues, then by Lemma 1 we have 
$$
f_n(x) = \prod_{j=1}^n f_j(x),
$$

which can only happen if $f_1(x) = f_2(x) = \cdots = f_{n-1}(x) = 1$, in which case there is only one nontrivial invariant factor and we have
$$
V \cong \frac{k[x]}{(f_n)}, \quad \ann(V) = (f_n)
$$

which exhibits $V$ as a cyclic $k[x]\dash$module and thus we have $V = k[x] \vector v$ for some $\vector v \in V$.


We can now note that if $\deg f_n = \dim V = m$, we have

\begin{align*}
k[x]/(f_n) = \spanof_{k[x]}\theset{1, x, \cdots, x^{m-1}} 
\iff 
V \cong k[x] \vector v = \spanof_{k[x]}\theset{1 \vector v, x\vector v, \cdots x^{m-1}\vector v}
,\end{align*}

But then noting that the $k[x] \actson V$ by $w \mapsto xw$, so $k[T] \actson V$ by $w \mapsto Tw$.


$\implies$:

Suppose 
$$
V = \spanof_k\theset{\vector v, A\vector v, A^2 \vector v, \cdots A^{n-1}\vector v} \definedas \spanof_k \mathcal B
$$ 
where $\dim_k V = n$.

Then $A^n \vector v$ is necessarily a linear combination of these basis elements, and in particular, there are coefficients $c_i$ (not all zero) such that
$$
A^n \vector v = \sum_{i=0}^{n-1} c_i A^i \vector v.
$$

The consider computing the matrix of $A$ in $\mathcal B$ by considering the images of all basis elements under $A$. 

Letting $\mathcal B = \theset{\vector w_i \definedas A^i \vector v \mid 0\leq i \leq n-1}$, we have
\begin{align*}
\vector w_0 \definedas \vector v &\mapsto A\vector v \definedas \vector w_1 \\
\vector w_1 \definedas A\vector v &\mapsto A^2\vector v \definedas \vector w_2 \\
\vector w_2 \definedas A^2\vector v &\mapsto A^3\vector v \definedas \vector w_3 \\
\vdots \quad & \quad \vdots \\
\vector w_{n-2} \definedas A^{n-2}\vector v &\mapsto A^{n-1}\vector v \definedas \vector w_{n-1} \\
\vector w_{n-1} \definedas A^{n-1}\vector v &\mapsto A^n\vector v = \sum_{i=0}^{n-1} c_i A^i \vector v_i \definedas \sum_{i=0}^{n-1} c_i \vector w_i
.\end{align*}

This means that with respect to the basis $\mathcal B$, $A$ has the following matrix representation:
\begin{align*}
[A]_{\mathcal B} = 
\left[\begin{array}{ccccc}{0} & {0} & {\dots} & {0} & {c_{0}} \\ {1} & {0} & {\dots} & {0} & {c_{1}} \\ {0} & {1} & {\dots} & {0} & {c_{2}} \\ {} & {} & {\ddots} & {} & {\vdots} \\ {0} & {0} & {\dots} & {1} & {c_{n-1}}\end{array}\right]
\end{align*}


But this is the companion matrix for $p(x) = \sum_{i=0}^{n-1} c_i x^i$, which always satisfy the property that $p(x)$ equals both the characteristic *and* the minimal polynomial of $A$.

Thus by lemma 1, the matrix $[A]_{\mathcal{B}}$ has distinct eigenvalues. 

$\qed$

# Problem 3

## Part 1

Let $\vector v = [0,1,0]^t$, We compute

\begin{align*}
M\vector v =
\left[\begin{array}{ccc}
     1 & 0 & x \\
     0 & 1 & 0 \\
     y & 0 & 1
\end{array}\right]
\left[\begin{array}{c} 0  \\ 1  \\ 0 \end{array}\right] = 
\left[\begin{array}{cc} 1(0) + 0(1) + x(0)  \\ 0(0) + 1(1) + 0(0) \\ y(0) + 0(1) + 1(0) \end{array}\right] = 
\left[\begin{array}{cc} 0 \\ 1 \\ 0 \end{array}\right] = 
1 \left[\begin{array}{cc} 0 \\ 1 \\ 0 \end{array}\right]
,\end{align*}


which shows that $\vector v$ is an eigenvector of $M$ with eigenvalue $\lambda = 1$.

## Part 2

Noting that the rank is the dimension of the column space, we find that 

- $\rank(M) \geq 1$, since it is not the zero matrix, 
- $\rank(M) \geq 2$, since neither $[1,0,y]^t$ or $[x,0,1]^t$ can be in the span of $[0,1,0]^t$, and
- $\rank(M) = 3 \iff \det(M) \neq 0$.

So we compute

\begin{align*}
\det_M(x, y) = \left|\begin{array}{ccc}
     1 & 0 & x \\
     0 & 1 & 0 \\
     y & 0 & 1
\end{array}\right| = 1(1-0) - 0(1-xy) + x(-y) = 1 - xy
,\end{align*}

and so $\det_M(x, y) = 0 \iff xy = 1$.
Thus

\begin{align*}
\rank(M) = \begin{cases} 3 & xy = 1 \\ 2 & \text{else.} \end{cases}
\end{align*}


## Part 3

Since $M$ is diagonalizable $\iff M$ is full rank, which in this case means $\rank(M) = 3$, we have
$$
S = \theset{(x, y) \in \RR^2 \mid M \text{ is diagonalizable }} = \theset{ \left( x, \frac 1 x \right) \mid x\in \RR\setminus\theset{0} } \subset \RR^2.
$$

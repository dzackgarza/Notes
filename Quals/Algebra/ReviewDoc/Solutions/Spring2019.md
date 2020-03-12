# Spring 2019

## 1

> $A$ is diagonalizable iff $\min_A(x)$ is separable.\
> See [further discussion here](https://math.stackexchange.com/questions/3027664/if-a-is-invertible-and-an-is-diagonalizable-then-a-is-diagonalizable).

Since $A^n$ is diagonalizable (and $\CC$ is algebraically closed), we can write $\min_{A^n}(x)$ as a product of **distinct** linear factors:

$$
\min_{A^n}(x) = \prod_{i=1}^k (x-\lambda_i), \quad \min_{A^n}(A^n) = 0
$$

where $\lambda_i$ are the **distinct** eigenvalues of $A^n$.

Moreover $A\in \GL(n,\CC) \implies A^n \in \GL(n,\CC)$, so $\lambda_i \neq 0$ for any $i$.

This implies that there are no roots with multiplicity, since $x^k$ is not a factor of $\mu_{A^n}(x)$, meaning that the $k$ terms in the product correspond to exactly $k$ **distinct** factors.

We can now construct a polynomial that annihilates $A$, namely
$$
q_A(x) \definedas \min_{A^n}(x^n) = \prod_{i=1}^k (x^n-\lambda_i),
$$

where we can note that $q_A(A) = \min_{A^n}(A^n) = 0$, and so $\min_A(x) \divides q_A(x)$ by minimality.

But then $\min_A(x)$ must have distinct linear factors, so $A$ is diagonalizable.

$\qed$

## 2

### (a)

> Go to a field extension.
> Orders of multiplicative groups for finite fields are known.

Since $\pi(x)$ is irreducible, we can consider the quotient $K = \displaystyle{\frac{\FF_p[x]}{\generators{\pi(x)}}}$, which is an extension of $\FF_p$ of degree $d$ and thus a field of size $p^d$ with a natural quotient map $\rho: \FF_p[x] \to K$.

Since $K\units$ is a group of size $p^d-1$, we know that for any $y \in K\units$, we have by Lagrange's theorem that the order of $y$ divides $p^d-1$ and so $y^{p^d} = y$.

So every element in $K$ satisfies $q(x) = x^{p^d}-x$.

Now letting $x\in \FF^p$ be arbitray, since $f$ is a group homomorphism, we have

\begin{align*}
\rho(q(x)) = q(\rho(x)) = \rho(x)^{p^d} - \rho(x)
&= 0 \in K \\
&\implies q(x) \in \ker \rho \\
&\implies q(x) \in \generators{\pi(x)} \\
&\implies \pi(x) \divides q(x) = x^{p^d}-x
.\end{align*}

$\qed$

### (b)

> Some potentially useful facts:
>
> - $\GF(p^n)$ is the splitting field of $x^{p^n} - x$
> - $x^{p^d} - x \divides x^{p^n} - x \iff d \divides n$
> - $\GF(p^d) \leq \GF(p^n) \iff d\divides n$
> - $x^{p^n} - x = \prod f_i(x)$ over all irreducible monic $f_i$ of degree $d$ dividing $n$.

Let $\phi_n(x) = x^{p^n} - x$ and $\phi_d(x) = x^{p^d} - x$.

Let $\gamma$ be an irreducible degree $n$ polynomial over $\FF_p$, then $L\definedas \FF[x]/\generators \gamma \cong \GF(p^n)$.

Note that by (a), $\pi(x) \divides \phi_d(x)$ and $\gamma(x) \divides \phi_n(x)$.

Then **(claim)** $\phi_n(x)$ splits in $L$.
Since $\pi(x) \divides \phi_n(x)$, $\pi(x)$ also splits in $L$.

Let $\alpha \in L$ be a root of $\pi(x)$.
Since $\pi(x)$ is irreducible, $\deg\min(\alpha, \FF_p) = d$.

Then $\FF_p \leq \FF_p(\alpha) \leq L$, and so
\begin{align*}
n &= [L: \FF_p] \\
&= [L: \FF_p(\alpha)]~[\FF_p(\alpha): \FF_p] \\
&= \ell d
,\end{align*}

so $d$ divides $n$.

$\qed$


> Proof of converse:
> If $d\divides n$, use the fact that $x^{p^n} - x = \prod f_i(x)$ over all irreducible monic $f_i$ of degree $d$ dividing $n$. So $f = f_i$ for some $i$.
> Proof of that fact:
>

## 3

> - Sylow theorems:
> - $n_p \cong 1 \mod p$
> - $n_p \divides m$.

It turns out that $n_3 = 1$ and $n_5 = 1$, so $G \cong S_3 \cross S_5$ since both subgroups are normal.

There is only one possibility for $S_5$, namely $S_5\cong \ZZ/(5)$.

There are two possibilities for $S_3$, namely $S_3 \cong \ZZ/(3^2)$ and $\ZZ/(3)^2$.

Thus

- $G \cong \ZZ/(9) \cross \ZZ/(5)$, or
- $G \cong \ZZ/(3)^2 \cross \ZZ/(5)$.

$\qed$

## 4

> - Notation: $X/G$ is the set of $G\dash$orbits
> - Notation: $X^g = \theset{x\in x\suchthat g\actson x = x}$
> - Burnside's formula: $\abs G \abs{X/G} = \sum \abs {X^g}$.

### a

Letting $n$ be the number of conjugacy classes, what we want to show is that
$$
P([g, h] = 1) = \frac n {\abs G}
$$

Define a sample space $\Omega = G^2$, so $\abs{\Omega} = \abs{G}^2$.

Let $G$ act on itself by conjugation, which partitions $G$ into conjugacy classes.

What are the orbits?
$\mathcal{O}_g = \theset{hgh\inv \suchthat h\in G}$, which is the conjugacy class of $g$.

What are the fixed points?
$X^g = \theset{h\in G \suchthat hgh\inv = g}$, which are the elements of $G$ that commute with $g$.

Then $\abs{X/G} = n$, the number of conjugacy classes.

We have Burnside's formula:
$$
| X / G | = \frac { 1 } { | G | } \sum _ { g \in G } \left| X ^ { g } \right|,
$$

We can rearrange Burnside's formula to obtain
$$
\abs{X/G} \abs{G}
= n \abs{G}
= \sum _ { g \in G } \left| X ^ { g } \right|
$$

and so
\begin{align*}
P([g, h] = 1)
&= \frac{\abs{\theset{(g,h) \suchthat [g,h] = 1}}}{\abs{G}^2} \\ \\
&= \frac{\sum _ { g \in G } \left| X ^ { g } \right|}{\abs{G}^2} \\
&= \frac{\abs{X/G}\abs{G}}{\abs{G}^2} \\
&= \frac{n \abs{G}}{\abs{G}^2} \\
&= \frac n {\abs G}
.\end{align*}

$\qed$

### b

Class equation:
\begin{align*}
\abs G = Z(G) + \sum_{\substack{\text{One $x$ from each} \\ \text{conjugacy class}}}[G: Z(x)]
\end{align*}

where $Z(x) = \theset{g\in G \suchthat [g, x] = 1}$.

### c

> Todo: revisit.

As shown in part 1,
$$
\mathcal{O}_x = \theset{g\actson x \suchthat g\in G} = \theset{h\in G \suchthat ghg\inv = h} = C_G(g)
,$$
and by the class equation

$$
\abs{G} = \abs{Z(G)} + \sum_{\substack{\text{One $x$ from each} \\ \text{conjugacy class}}}[G: Z(x)]
$$

Now note

- Each element of $Z(G)$ is in its own conjugacy class, contributing $\abs{Z(G)}$ classes to $n$.

- Every other class of elements in $G\setminus Z(G)$ contains at least 2 elements
  - Claim: each such class contributes **at least** $\frac 1 2 \abs{G \setminus Z(G)}$.

Thus
\begin{align*}
n &\leq \abs{Z(G)} + \frac 1 2\abs{G \setminus Z(G)} \\
&= \abs{Z(G)} + \frac 1 2\abs{G} - \frac 1 2 \abs{Z(G)} \\
&= \frac 1 2 \abs{G} + \frac 1 2 \abs{Z(G)} \\
\\
\implies \frac n {\abs G}
&\leq \frac 1 2 \frac{\abs{G}}{\abs{G}}  + \frac 1 2 \frac{\abs{Z(G)}}{\abs{G}} \\
&= \frac 1 2 + \frac 1 2 \frac 1 {[G: Z(G)]}
.\end{align*}


## 5

### a

Suppose $\tor(M)$ has rank $n \geq 1$.
Then let $\vector r$ be a generating element.

However, since $\vector r\in \tor(M)$, there exists an $s\in R\setminus 0_R$ such that $s\vector r = 0_M$.

But then $s\vector r = 0$ with $s\neq 0$, so $\theset{\vector r}$ is by definition not linearly independent.

$\qed$

### b

Let $n = \rank M$, and let $\mathcal B = \theset{\vector r_i}_{i=1}^n \subseteq R$ be a generating set.
Let $M' \definedas M/\tor(M)$ and $\pi: M \to M'$ be the canonical quotient map.

**Claim:**
$\pi(\mathcal B)$ is a basis for $M'$.

**Linearly Independent:**

Let $\mathcal B' = \pi(\mathcal B) = \theset{\vector r_i + \tor(M)}_{i=1}^n$ and suppose that
$$
\sum_{i=1}^n s_i (\vector r_i + \tor M) = \vector 0_{M'}
.$$

Since $x = 0 \in M' \iff x \in \tor(M)$,
$$
\sum_{i=1}^n s_i \vector r_i \in \tor(M) \implies \exists \alpha \neq 0_R \in R \text{ such that }
\alpha_i \sum s_i \vector r_i = \vector 0_M
.$$

But since $R$ is an integral domain and $\alpha \neq 0$, we must have $s_i = 0$ for all $i$.

**Spanning:**

Write $\pi(\mathcal B) = \theset{\vector r_i + \Tor(M)}_{i=1}^n$.

Letting $\vector x \in M'$ be arbitrary, we can write $\vector x = \vector m + \tor(M)$ for some $\vector m \in M$ where $\pi(\vector m) = \vector x$.

But since $\mathcal B$ is a basis for $M$, we have $\vector m = \sum_{i=1}^n s_i \vector r_i$, and so
\begin{align*}
\vector x
&= \pi(\vector m) \\
&= \pi(\sum_{i=1}^n s_i \vector r_i) \\
&= \sum_{i=1}^n s_i \pi(\vector r_i) \\
&= \sum_{i=1}^n s_i \vector (\vector r_i + \tor(M))
,\end{align*}

which expresses $\vector x$ as a linear combination of elements in $\mathcal B'$.

### c

**$M$ is not free:**
**Claim**: If $I \normal R$ is a free $R\dash$module, then $I$ is a principal ideal.

*Proof:*
Let $I = \generators{B}$ for some basis -- if $B$ contains more than 1 element, say $m_1$ and $m_2$, then $m_2m_1 - m_1 m_2 = 0$ is a linear dependence, so $B$ has only one element $m$.

But then $I = \generators{m} = R_m$ is cyclic as an $R\dash$ module and thus principal as an ideal of $R$. 
The result follows by the contrapositive.


**$M$ is rank 1**:
For any module, we can take an element $M\neq 0_M$ and consider its cyclic module $Rm$.

Thus the rank of $M$ is at least 1, since $\theset{m}$ is a subset of a spanning set.
It can not be linearly dependent, since $R$ is an integral domain and $M\subseteq R$, so $\alpha m = 0 \implies \alpha = 0$.

However, the rank is at most 1 since $R$ is commutative.
If we take two elements $\vector m, \vector n \in M$, then since $m, n\in R$ as well, we have $nm = mn$ and so
$$
(n)\vector m + (-m)\vector n = 0_R = 0_M
$$
is a linear dependence.
2
**$M$ is torsion-free**:

Let $x \in \tor M$, then there exists some $r\neq 0\in R$ such that $rx = 0$.
But $x\in R$ and $R$ is an integral domain, so $x=0$, and thus $\tor(M) = \theset{0_R}$.

$\qed$

## 6

### a

Define the set of proper ideals
$$
S = \theset{J \suchthat I   \subseteq J < R}
,$$

which is a poset under set inclusion.

Given a chain $J_1 \subseteq \cdots$, there is an upper bound $J \definedas \union J_i$, so Zorn's lemma applies.

### b
$\implies$:

We will show that $x\in J(R) \implies 1+x \in R\units$, from which the result follows by letting $x=rx$.

Let $x\in J(R)$, so it is in every maximal ideal, and suppose toward a contradiction that $1+x$ is **not** a unit.

Then consider $I = \generators{1+x} \normal R$. 
Since $1+x$ is not a unit, we can't write $s(1+x) = 1$ for any $s\in R$, and so $1 \not\in I$ and $I\neq R$

So $I < R$ is proper and thus contained in some maximal proper ideal $\mathfrak{m} < R$ by part (1), and so we have $1+x \in \mathfrak{m}$.
Since $x\in J(R)$, $x\in \mathfrak{m}$ as well.

But then $(1+x) - x = 1 \in \mathfrak{m}$ which forces $\mathfrak{m} = R$.

$\impliedby$

Fix $x\in R$, and suppose $1+rx$ is a unit for all $r\in R$.

 
Suppose towards a contradiction that there is a maximal ideal $\mathfrak{m}$ such that $x\not \in \mathfrak{m}$ and thus $x\not\in J(R)$.

Consider 
$$
M' \definedas \theset{rx + m \suchthat r\in R,~ m\in M}
.$$

Since $\mathfrak{m}$ was maximal, $\mathfrak{m} \subsetneq M'$ and so $M' = R$.

So every element in $R$ can be written as $rx + m$ for some $r\in R, m\in M$.
But $1\in R$, so we have 
$$
1 = rx + m
.$$ 

So let $s = -r$ and write $1 = sx - m$, and so $m = 1 + sx$.

Since $s\in R$ by assumption $1+sx$ is a unit and thus $m \in \mathfrak{m}$ is a unit, a contradiction.

So $x\in \mathfrak{m}$ for every $\mathfrak{m}$ and thus $x\in J(R)$.

### c

> - $\mathfrak N(R) = \theset{x\in R \suchthat x^n = 0 \text{ for some } n}$.
> - $J(R) = \spec_{\text{max}}(R) = \displaystyle\intersect_{\mm \text{ maximal}} \mm$.

We want to show $J(R) = \mathfrak N(R)$.

$\mathfrak N(R) \subseteq J(R)$:

We'll use the fact $x\in \mathfrak N(R) \implies x^n = 0 \implies 1 + rx$ is a unit $\iff x\in J(R)$ by (b):
$$
\sum_{k=1}^{n-1} (-x)^k = \frac{1 - (-x)^n}{1- (-x)} = (1+x)\inv
.$$

$J(R) \subseteq \mathfrak N(R)$:

Let $x \in J(R) \setminus \mathfrak N(R)$.

Since $R$ is finite, $x^m = x$ for some $m > 0$.
Without loss of generality, we can suppose $x^2 = x$ by replacing $x^m$ with $x^{2m}$.

If $1-x$ is not a unit, then $\generators{1-x}$ is a nontrivial proper ideal, which by (a) is contained in some maximal ideal $\mm$. 
But then $x\in \mm$ and $1-x \in \mm \implies x + (1-x) = 1 \in \mm$, a contradiction.

So $1-x$ is a unit, so let $u = (1-x)\inv$.

Then
\begin{align*}
(1-x)x &= x - x^2 = x - x = 0 \\
&\implies u (1-x)x = x = 0 \\
&\implies x=0
.\end{align*}

## 7

> Work with matrix of all ones instead.
> Eyeball eigenvectors.
> Coefficients in minimal polynomial: size of largest Jordan block
> Dimension of eigenspace: number of Jordan blocks

### a

Let $A$ be the matrix in the question, and $B$ be the matrix containing 1's in every entry.

Noting that $B = A+I$, we have
\begin{align*}
&B\vector x = \lambda \vector x \\
&\iff (A+I) \vector x = \lambda \vector x \\
&\iff A \vector x = (\lambda - 1) \vector x
,\end{align*}

so it suffices to find the eigenvalues of $B$.

The vector $\vector v_1 = \sum \vector e_i$ (the vector of all 1's) is an eigenvector with eigenvalue $\lambda = p$ and $\dim E_{\lambda = p} = 1$.

Similarly, any vector of the form $\vector p_i \definedas \vector e_1 - \vector e_{i+1}$ where $i\neq j$ is also an eigenvector with eigenvalues $\lambda = 0$.
This supplies the remaining $p-1$ possibilities.
Note that this also supplies $p-1$ linearly independent vectors that span the corresponding eigenspace, so $\dim E_{\lambda = 0} = p-1$.

So
\begin{align*}
\spec(B) &= \theset{(\lambda_1 = p, m_1 = 1), (\lambda_2 = 0, m_2 = p-1)} \\
\implies \spec(A) &= \theset{(\lambda_1 = p-1, m_1 = 1), (\lambda_2 = -1, m_2 = p-1)} \\
&\implies \chi_{A, \QQ}(x) = (x - (p-1))(x - (-1))^{p-1}
\end{align*}

and geometric multiplicities are preserved, so
\begin{align*}
JCF_\QQ(A)
=  J_{\lambda = p-1}^{1} \oplus (p-1)J_{\lambda = -1}^1
=
\left[\begin{array}{r|r|r|r|r|r}
p-1 & 0 & 0 & \cdots & 0 & 0 \\
\hline
0& -1 & 0 & 0 & 0 & 0 \\ \hline
0& 0 & -1 & 0 & 0 & 0 \\ \hline
0& 0 & 0 & \ddots & \ddots & 0 \\ \hline
0& 0 & 0 & \cdots & -1 & 0 \\ \hline
0& 0 & 0 & \cdots & 0 & -1 \\
\end{array}\right]
.\end{align*}

The matrix $P$ such that $A = PJP\inv$ will have columns the bases of the generalized eigenspaces.
In this case, the generalized eigenspaces are the usual eigenspaces, so
\begin{align*}
P = [\vector v_1, \vector p_1, \cdots, \vector p_{p-1}] =
\left[\begin{array}{rrrrrr}
1 & 1 & 1 & 1 & 1 & 1  \\
1 & -1 & 0 & 0 & 0 & 0 \\
1 & 0 & -1 & 0 & 0 & 0 \\
1 & 0 & 0 & -1 & 0 & 0 \\
1 & \vdots & \vdots & \vdots & \ddots & \vdots\\
1 & 0 & 0 & 0 & 0 & -1 \\
\end{array}\right]
.\end{align*}

### b

For $F = \FF_p$, all eigenvalues/vectors still lie in $\FF_p$, but now $-1 = p-1$, $\chi_{A, \FF_p}(x) = (x+1)^p$, and the Jordan blocks may merge.

But a computation shows that $(A+I)^2 = pA = 0 \in M_p(\FF_p)$ and $(A+I) \neq 0$, so $\min_{A, \FF_p}(x) = (x+1)^2$.

So the largest Jordan block corresponding to $\lambda = 0$ is of size 2, and we can check that $\dim E_{\lambda = 0} = \dim \theset{\vector e_i - \vector e_j \suchthat i\neq j} = p-1$, so there are $p-1$ Jordan blocks for $\lambda = 0$.

Thus
\begin{align*}
JCF_{\FF_p}(A)
=  J_{\lambda = -1}^{2} \oplus (p-2)J_{\lambda = -1}^1
= \left[\begin{array}{rr|r|r|r|r}
-1 & 1 & 0 & \cdots & 0 & 0 \\
0& -1 & 0 & 0 & 0 & 0 \\
\hline
0& 0 & -1 & 0 & 0 & 0 \\ \hline
0& 0 & 0 & \ddots & \ddots & 0 \\ \hline
0& 0 & 0 & \cdots & -1 & 0 \\ \hline
0& 0 & 0 & \cdots & 0 & -1 \\
\end{array}\right]
.\end{align*}

To obtain a basis for $E_{\lambda = 0}$, first note that the matrix $P = [\vector v_1, \vector p_1, \cdots , \vector p_{p-1}]$ from part (a) is singular over $\FF_p$, since
\begin{align*}
\vector v_1 + \vector p_1 + \vector p_2 + \cdots + \vector p_{p-2}
&= [p-1, 0, 0, \cdots, 0, 1] \\
&= [-1, 0,0,\cdots, 0, 1] \\
&= - \vector p_{p-1}
.\end{align*}

We still have a linearly independent set given by the first $p-1$ columns of $P$, so we can extend this to a basis by finding one linearly independent generalized eigenvector.

Solving $(A-I\lambda)\vector x = \vector v_1$ is our only option (the others won't yield solutions).
This amounts to solving $B\vector x = \vector v_1$, which imposes the condition $\sum x_i = 1$, so we can choose $\vector x = [1, 0, \cdots, 0]$.

Thus
\begin{align*}
P = [\vector v_1, \vector x, \vector p_1, \cdots, \vector p_{p-2}] =
\left[\begin{array}{rrrrrr}
1 & 1 & 1 & 1 & 1 & 1  \\
1 & 0 & -1 & 0 & 0 & 0 \\
1 & 0 & 0 & -1 & 0 & 0 \\
1 & \vdots & \vdots & \vdots & \ddots & \vdots \\
1 & 0 & 0 & 0 & 0 & -1\\
1 & 0 & 0 & 0 & 0 & 0 \\
\end{array}\right]
.\end{align*}

## 8

> - Galois theory.
> - $\deg \Phi_n(x) = \phi(n)$
> - $\Gal(\QQ(\zeta)/\QQ) \cong \ZZ/(n)\units$

Let $K = \QQ(\zeta)$

### a
Note that $\zeta$ is a primitive 8th root of unity, so we are looking for the degree of $\Phi_8$, the 8th cyclotomic polynomial, which is $\phi(8) = \phi(2^3) = 2^2(1) = 4$.

So $[K: \QQ] = 4$.

### b
We have $\Gal(K/\QQ) \cong \ZZ/(8)\units \cong \ZZ/(4)$, which is exactly one subgroup of index 2.
Thus there is exactly **one** intermediate field of degree 2.

### c
Let $L = \QQ(\zeta, \sqrt[4] 2)$.

We can use the fact that $K = \QQ(i, \sqrt 2)$ and thus $L = \QQ(i, \sqrt 2, \sqrt[4] 2)$.

> *Proof:* $\zeta_8^2 = i$, and $\zeta_8 = \sqrt{2}\inv + i\sqrt{2}\inv$ so $\zeta_8 + \zeta_8 \inv = 2/\sqrt{2} = \sqrt{2}$.

We can also use the fact that $\QQ(\sqrt 2) \subseteq \QQ(\sqrt[4] 2)$, and so $L = \QQ(i, \sqrt[4] 2)$.

But then
\begin{align*}
[L: \QQ] = [L: \QQ(\sqrt[4] 2)] ~[\QQ(\sqrt[4] 2): \QQ] = 2 \cdot 4 = 8
.\end{align*}

> Here we use the fact that the minimal polynomial of $i$ over any subfield of $\RR$ is always $x^2 + 1$.

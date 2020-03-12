# Modules

## General Modules

**Definition**: 
A module is **simple** iff it has no nontrivial proper submodules.

**Definition:**
A **free** module is a module with a basis (i.e. a spanning, linearly independent set).

> *Example*: $\ZZ/(6)$ is a $\ZZ\dash$module that is *not* free.

**Definition:**
A module $M$ is **projective** iff $M$ is a direct summand of a free module $F = M \oplus \cdots$.

> Free implies projective, but not the converse.

**Definition:**
A sequence of homomorphisms $0 \mapsvia{d_1} A \mapsvia{d_2} B \mapsvia{d_3} C \to 0$ is *exact* iff $\im d_i = \ker d_{i+1}$.

**Lemma:**
If $0 \to A \to B \to C \to 0$ is a short exact sequence, then

- $C$ free $\implies$ the sequence splits
- $C$ projective $\implies$ the sequence splits
- $A$ injective $\implies$ the sequence splits

Moreover, if this sequence splits, then $B \cong A \oplus C$.

## Classification of Modules over a PID

Let $M$ be a finitely generated modules over a PID $R$.
Then there is an invariant factor decomposition

\begin{align*}
M \cong F \bigoplus R/(r_i) \quad\text{where } r_1 \divides r_2 \divides \cdots
,\end{align*}

and similarly an elementary divisor decomposition.

## Minimal / Characteristic Polynomials

Fix some notation:
\begin{align*}
\min_A(x): \quad & \text{The minimal polynomial of } A \\
\chi_A(x): \quad & \text{The characteristic polynomial of } A
.\end{align*}

**Definition:**
The minimal polynomial is the unique polynomial $\min_A(x)$ of minimal degree such that $\min_A(A) = 0$.

**Definition:**
The **characteristic polynomial** of $A$ is given by
$$
\chi_A(x) = \det(A - xI))= \det(SNF(A - xI))
.$$

> *Useful lemma:*
> If $A$ is upper triangular, then $\det(A) = \prod_{i} a_{ii}$


**Theorem (Cayley-Hamilton):**
The minimal polynomial divides the characteristic polynomial, and in particular $\chi_A(A) = 0$.

**Lemma:**
Writing
\begin{align*}
\min_A(x) = \prod (x- \lambda_i)^{a_i} \\
\chi_A(x) = \prod (x- \lambda_i)^{b_i}
\end{align*}

- $a_i \leq b_i$
- The roots both polynomials are precisely the eigenvalues of $A$.

> *Proof*:
> By Cayley-Hamilton, $\min_A$ divides $\chi_A$. 
> Every $\lambda_i$ is a root of $\mu_M$: 
> 
> Let $(\vector v_i, \lambda_i)$ be a nontrivial eigenpair. 
> Then by linearity,
$$
\min_A(\lambda_i)\vector v_i = \min_A(A)\vector v_i = \vector 0
,$$ 
> which forces $\min_A(\lambda_i) = 0$.

**Definition:**
Two matrices $A,B$ are **similar** (i.e. $A = PBP\inv$) $\iff A,B$ have the same Jordan Canonical Form (JCF).

**Definition:**
Two matrices $A, B$ are **equivalent** (i.e. $A = PBQ$) $\iff$

  - They have the same rank,

  - They have the same invariant factors, *and*

  - They have the same (JCF)

**Finding the minimal polynomial:**

Let $m(x)$ denote the minimal polynomial $A$.

1. Find the characteristic polynomial $\chi(x)$; this annihilates $A$ by Cayley-Hamilton. Then $m(x) \divides \chi(x)$, so just test the finitely many products of irreducible factors.

2. Pick any $\vector v$ and compute $T\vector v, T^2\vector v, \cdots T^k\vector v$ until a linear dependence is introduced. Write this as $p(T) = 0$; then $\min_A(x) \divides p(x)$.

**Definition:**
Given a monic $p(x) = a_0 + a_1 x + a_2 x^2 + \cdots + a_{n-1} x^{n-1} + x^n$, the **companion matrix** of $p$ is given by
\begin{align*}
C_p \definedas 
\begin{bmatrix}
0 & 0 & \dots & 0 &-a_0 \\ 
1 & 0 & \dots & 0 & -a_1 \\ 
0 & 1 & \dots & 0 & -a_2 \\ 
\vdots & & \ddots & & \vdots \\ 
0 & 0 & \dots & 1 & -a_{n-1} 
\end{bmatrix}
.\end{align*}

## Canonical Forms

### Rational Canonical Form

Corresponds to the **Invariant Factor Decomposition** of $T$.

**Lemma:**
$RCF(A)$ is a block matrix where each block is the companion matrix of an invariant factor of $A$.

> **Derivation**:
>
>- Let $k[x] \actson V$ using $T$, take invariant factors $a_i$,
>
>- Note that $T\actson V$ by multiplication by $x$
>
>- Write $\overline x = \pi(x)$ where $F[x] \mapsvia{\pi} F[x]/(a_i)$; then $\spanof\theset{\overline x} = F[x]/(a_i)$.
>
> - Write $a_i(x) = \sum b_i x^i$, note that $V \to F[x]$ pushes $T\actson V$ to $T\actson k[x]$ by multiplication by $\overline x$
>
> - WRT the basis $\overline x$, $T$ then acts via the companion matrix on this summand.
>
> - Each invariant factor corresponds to a block of the RCF.

### Jordan Canonical Form

Corresponds to the **Elementary Divisor Decomposition** of $T$.

**Lemma:**
The elementary divisors of $A$ are the minimal polynomials of the Jordan blocks.

**Lemma:**
Writing
\begin{align*}
\min_A(x) = \prod (x- \lambda_i)^{a_i} \\
\chi_A(x) = \prod (x- \lambda_i)^{b_i}
\end{align*}

  - $a_i \leq b_i$

  - $a_i$ tells you the size of the **largest** Jordan block associated to $\lambda_i$,

  - $b_i$ is the **sum of sizes** of all Jordan blocks associated to $\lambda_i$

  - $\dim E_{\lambda_i}$ is the **number of Jordan blocks** associated to $\lambda_i$

## Using Canonical Forms

**Lemma:**
The characteristic polynomial is the *product of the invariant factors*, i.e.
$$
\chi_A(x) = \prod_{j=1}^n f_j(x)
.$$

**Lemma**:
The minimal polynomial of $A$ is the *invariant factor of highest degree*, i.e.
$$
\min_A(x) = f_n(x)
.$$

**Lemma**:
For a linear operator on a vector space of nonzero finite dimension, TFAE:

  - The minimal polynomial is equal to the characteristic polynomial.

  - The list of invariant factors has length one.

  - The Rational Canonical Form has a single block.

  - The operator has a matrix similar to a companion matrix.

  - There exists a *cyclic vector* $\vector v$ such that $\spanof_k\theset{T^j \vector v \suchthat j = 1, 2, \cdots} = V.$

  - $T$ has $\dim V$ distinct eigenvalues

## Diagonalizability

*Notation:*
$A^*$ denotes the conjugate tranpose of $A$.

**Lemma:**
Let $V$ be a vector space over $k$ an algebraically closed and $A \in \mathrm{End}(V)$.
Then if $W \subseteq V$ is an invariant subspace, so $A(W) \subseteq W$, the $A$ has an eigenvector in $W$.

**Theorem (The Spectral Theorem)**:

1. Hermitian matrices (i.e. $A^* = A$) are diagonalizable over $\CC$.
2. Symmetric matrices (i.e. $A^t = A$) are diagonalizable over $\RR$.

> *Proof:*
> Suppose $A$ is Hermitian.
> Since $V$ itself is an invariant subspace, $A$ has an eigenvector $\vector v_1 \in V$.
> Let $W_1 = \spanof_k\theset{\vector v_1}^\perp$.
> Then for any $\vector w_1 \in W_1$, 
$$
\inner{\vector v_1}{ A \vector w_1} =
\inner{A \vector v_1}{\vector w_1} =
\lambda \inner{\vector v_1}{\vector w_1} = 0,
$$
> so $A(W_1) \subseteq W_1$ is an invariant subspace, etc.
>
> Suppose now that $A$ is symmetric.
> Then there is an eigenvector of norm 1, $\vector v \in V$.
\begin{align*}
\lambda = \lambda\inner{\vector v}{\vector v} = \inner{A\vector v}{\vector v} = \inner{\vector v}{A\vector v} = \overline{\lambda} \implies \lambda \in \RR
.\end{align*}


**Lemma**:
$\theset{A_i}$ pairwise commute $\iff$ they are all simultaneously diagonalizable.

> *Proof*: By induction on number of operators
>
> - $A_n$ is diagonalizable, so $V = \bigoplus E_i$ a sum of eigenspaces
> - Restrict all $n-1$ operators $A$ to $E_n$.
> - The commute in $V$ so they commute in $E_n$
> - **(Lemma)** They were diagonalizable in $V$, so they're diagonalizable in $E_n$
> - So they're simultaneously diagonalizable by I.H.
> - But these eigenvectors for the $A_i$ are all in $E_n$, so they're eigenvectors for $A_n$ too.
> - Can do this for each eigenspace.
> $\qed$

> [Full details here](https://kconrad.math.uconn.edu/blurbs/linmultialg/minpolyandappns.pdf#page=9)

**Theorem (Characterizations of Diagonalizability)**

$M$ is diagonalizable over $\FF \iff \min_M(x, \FF)$ splits into distinct linear factors over $\FF$, or equivalently iff all of the roots of $\min_M$ lie in $\FF$.

> *Proof*:
> $\implies$:
> If $\min_A$ factors into linear factors, so does each invariant factor, so every elementary divisor is linear and $JCF(A)$ is diagonal.
> 
> $\impliedby$:
> If $A$ is diagonalizable, every elementary divisor is linear, so every invariant factor factors into linear pieces. 
> But the minimal polynomial is just the largest invariant factor.

## Matrix Counterexamples

1. A matrix that is:

- Not diagonalizable over $\RR$ but diagonalizable over $\CC$

- No eigenvalues in $\RR$ but distinct eigenvalues over $\CC$

- $\min_M(x) = \chi_M(x) = x^2 + 1$

\begin{align*}
M = \left[\begin{array}{rr}
0  & 1 \\
-1 & 0
\end{array}\right] \sim
\left[\begin{array}{r|r}
-1 \sqrt{-1} & 0 \\
\hline
0 & 1 \sqrt{-1}
\end{array}\right]
.\end{align*}


2.
\begin{align*}
M = \left[\begin{array}{rr}
1 & 1 \\
0 & 1
\end{array}\right] \sim
\left[\begin{array}{rr}
1 & 1 \\
0 & 1
\end{array}\right]
.\end{align*}

- Not diagonalizable over $\CC$

- Eigenvalues $[1, 1]$ (repeated, multiplicity 2)

- $\min_M(x) = \chi_M(x) = x^2-2x+1$

3. Non-similar matrices with the same characteristic polynomial

$$
\left[\begin{array}{ll}
{1}  & {0} \\
{0} & {1}
 \end{array}\right]
 \text { and }
 \left[\begin{array}{ll}
 {1} & {1} \\
 {0} & {1}
  \end{array}\right]
$$

4. A full-rank matrix that is not diagonalizable:
\begin{align*}
\left[\begin{array}{ccc}
1 & 1 & 0 \\
0 & 1 & 1 \\
0 & 0 & 1 \\
\end{array}\right]
.\end{align*}

1. Matrix roots of unity:
\begin{align*} \sqrt{I_2} =
\left[\begin{array}{cc}
0 & 1\\
1 & 0
\end{array}\right]
.\end{align*}

\begin{align*} \sqrt{-I_2} =
\left[\begin{array}{cc}
0 & -1\\
1 & 0
\end{array}\right]
.\end{align*}

## Miscellaneous

**Lemma:**
$I \normal R$ is a free $R\dash$module iff $I$ is a principal ideal.

> Proof:
> $\implies$:
>
> Suppose $I$ is free as an $R\dash$module, and let $B = \theset{\vector m_j}_{j\in J} \subseteq I$ be a basis so we can write $M = \generators{B}$.
>
> Suppose that $\abs{B} \geq 2$, so we can pick at least 2 basis elements $\vector m_1\neq \vector m_2$, and consider
$$
\vector c = \vector m_1 \vector m_2 - \vector m_2 \vector m_1,
$$
>
> which is also an element of $M$ .
>
> Since $R$ is an integral domain, $R$ is commutative, and so
$$
\vector c = \vector m_1 \vector m_2 - \vector m_2 \vector m_1 = \vector m_1 \vector m_2 - \vector m_1 \vector m_2 = \vector 0_M
$$
>
> However, this exhibits a linear dependence between $\vector m_1$ and $\vector m_2$, namely that there exist $\alpha_1, \alpha_2 \neq 0_R$ such that $\alpha_1 \vector m_1 + \alpha_2 \vector m_2 = \vector 0_M$; this follows because $M \subset R$ means that we can take $\alpha_1 = -m_2, \alpha_2 = m_1$. This contradicts the assumption that $B$ was a basis, so we must have $\abs{B} = 1$ and so $B = \theset{\vector m}$ for some $\vector m \in I$. But then $M = \generators{B} = \generators{\vector m}$ is generated by a single element, so $M$ is principal.
>
> $\impliedby$:
>
> Suppose $M\normal R$ is principal, so $M = \generators{\vector m}$ for some $\vector m \neq \vector{0}_M \in M \subset R$.
>
> Then $x\in M \implies x = \alpha\vector m$ for some element $\alpha\in R$ and we just need to show that $\alpha\vector m = \vector 0_M \implies \alpha = 0_R$ in order for $\theset{\vector m}$ to be a basis for $M$, making $M$ a free $R\dash$module.
>
> But since $M \subset R$, we have $\alpha, m \in R$ and $\vector 0_M = 0_R$, and since $R$ is an integral domain, we have $\alpha m = 0_R \implies \alpha = 0_R$ or $m = 0_R$.
>
> Since $m \neq 0_R$, this forces $\alpha = 0_R$, which allows $\theset{m}$ to be a linearly independent set and thus a basis for $M$ as an $R\dash$module.
>
>$\qed$
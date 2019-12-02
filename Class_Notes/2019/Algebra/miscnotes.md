---
title: Miscellaneous Notes
---


- Canonical forms:
  - Rational Canonical Form: Invariant Factor Decomposition of $T$
    - Let $k[x] \actson V$ using $T$, take invariant factors $a_i$, 
    - Note that $T\actson V$ by multiplication by $x$
    - Write $\overline x = \pi(x)$ where $F[x] \mapsvia{\pi} F[x]/(a_i)$; then $\span{\overline x} = F[x]/(a_i)$.
    - Write $a_i(x) = \sum b_i x^i$, note that $V \to F[x]$ pushes $T\actson V$ to $T\actson k[x]$ by multiplication by $\overline x$
    - WRT the basis $\overline x$, $T$ then acts via the companion matrix on this summand.
    - Each invariant factor corresponds to a block of the RCF.
  - Jordan Canonical Form: Elementary Divisor Decomposition of $T$
    - Deriving: ?
    - The elementary divisors of $A$ are the minimal polynomials of the Jordan blocks.
- For characteristic polynomials $p(x) = \det(A - x1))= \det(SNF(A - x1))$.
- Invariant factors of $A$ are the invariant factors of $xI - A$ over $k[x]$.
- Writing 
\begin{align*}
\min_A(x) = \prod (x- \lambda_i)^{b_i}
\chi_A(x) = \prod (x- \lambda_i)^{a_i} \\
\end{align*}
then $b_i \leq a_i$, and

  - $b_i$ tells you the size of the largest Jordan block associated to $\lambda_i$,
  - $a_i$ is the sum of sizes of all Jordan blocks associated to $\lambda_i$
  - $\dim E_{\lambda_i}$ is the number of Jordan blocks associated to $\lambda_i$


- Given an invariant factor decomposition
$$
V = \bigoplus_{j=1}^n \frac{k[x]}{(f_j)}
$$
then 

  - $f_n(x) = \min_T(x)$ (i.e., the minimal polynomial is the invariant factor of highest degree)
  - $\prod_{j=1}^n f_j(x) = \chi_T(x)$.

- The following are equivalent for a linear operator on a vector space of nonzero finite dimension.
  - The minimal polynomial is equal to the characteristic polynomial.
  - The list of invariant factors has length one.
  - The Rational Canonical Form has a single block.
  - The operator has a matrix similar to a companion matrix.
  - There exists a (so-called cyclic) vector whose images by the operator span the whole space.


- Two matrices $A,B$ are *similar* (i.e. $A = PBP\inv$) $\iff$
  - $A,B$ has the same JCF

- Two matrices $A, B$ are *equivalent* (i.e. $A = PBQ$) $\iff$
  - They have the same rank
  - They have the same invariant factors
  - They have the same JCF


# Some Matrix Examples

1.

\begin{align*}
M = \left[\begin{array}{rr}
0  & 1 \\
-1 & 0
\end{array}\right] \sim
\left(\begin{array}{r|r}
-1 \sqrt{-1} & 0 \\
\hline
0 & 1 \sqrt{-1}
\end{array}\right)
.\end{align*}

- Not diagonalizable over $\RR$, diagonalizable over $\CC$
- No eigenvalues in $\RR$, distinct eigenvalues over $\CC$
- $\min_M(x) = \chi_M(x) = x^2+1$

2.

\begin{align*}
M = \left(\begin{array}{rr}
1 & 1 \\
0 & 1
\end{array}\right) \sim
\left(\begin{array}{rr}
1 & 1 \\
0 & 1
\end{array}\right)
.\end{align*}

- Not diagonalizable over $\CC$
- Eigenvalues $[1, 1]$ (repeated, multiplicity 2)
- $\min_M(x) = \chi_M(x) = x^2-2x+1$


3. Non-similar matrices with the same characteristic polynomial

$$
\left(\begin{array}{ll}{1} & {0} \\ {0} & {1}\end{array}\right) \text { and }\left(\begin{array}{ll}{1} & {1} \\ {0} & {1}\end{array}\right)$$

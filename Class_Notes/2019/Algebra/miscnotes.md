---
title: Miscellaneous Notes
---

# Misc Notes

## Canonical Forms

Fix $T: V\to V$, and decompositions

\begin{align*}
V = \bigoplus_{j=1}^n \frac{k[x]}{(f_j)} \quad \text{(invariant factors)}
.\end{align*}

Fix some notation:
\begin{align*}
\chi_T(x): \quad & \text{The characteristic polynomial of } A \\
\min_T(x): \quad & \text{The minimal polynomial of } A
.\end{align*}



### Rational Canonical Form

Corresponds to the **Invariant Factor Decomposition** of $T$

**Derivation**:

- Let $k[x] \actson V$ using $T$, take invariant factors $a_i$, 

- Note that $T\actson V$ by multiplication by $x$

- Write $\overline x = \pi(x)$ where $F[x] \mapsvia{\pi} F[x]/(a_i)$; then $\spanof\theset{\overline x} = F[x]/(a_i)$.

- Write $a_i(x) = \sum b_i x^i$, note that $V \to F[x]$ pushes $T\actson V$ to $T\actson k[x]$ by multiplication by $\overline x$

- WRT the basis $\overline x$, $T$ then acts via the companion matrix on this summand.

- Each invariant factor corresponds to a block of the RCF.
  
### Jordan Canonical Form: 

Corresponds to the **Elementary Divisor Decomposition** of $T$

**Derivation**
Todo

**Facts**:

- The following can be read directly off of the invariant factor decomposition:
  
  - The minimal polynomial is the *invariant factor of highest degree*, i.e.
  $$
  \min_T(x) = f_n(x)
  .$$
  
  - The characteristic polynomial is the *product of the invariant factors*, i.e.
  $$
  \chi_T(x) = \prod_{j=1}^n f_j(x)
  .$$

- Both $\min_T(x)$ and $\chi_T(x)$ have roots precisely the eigenvalues of $T$, with potentially different multiplicities.

- Writing 
\begin{align*}
\min_A(x) = \prod (x- \lambda_i)^{a_i} \\
\chi_A(x) = \prod (x- \lambda_i)^{b_i} 
\end{align*}  
then $a_i \leq b_i$, and

    - $a_i$ tells you the size of the **largest** Jordan block associated to $\lambda_i$,

    - $b_i$ is the **sum of sizes** of all Jordan blocks associated to $\lambda_i$
    
    - $\dim E_{\lambda_i}$ is the **number of Jordan blocks** associated to $\lambda_i$

- The elementary divisors of $A$ are the minimal polynomials of the Jordan blocks.

- For characteristic polynomials 
$$
p(x) = \det(A - x1))= \det(SNF(A - x1))
.$$

- ? Invariant factors of $A$ are the invariant factors of $xI - A$ over $k[x]$, and $\prod a_i = \det(xI - A)$.


- For a linear operator on a vector space of nonzero finite dimension, TFAE:

  - The minimal polynomial is equal to the characteristic polynomial.
  
  - The list of invariant factors has length one.
  
  - The Rational Canonical Form has a single block.
  
  - The operator has a matrix similar to a companion matrix.
  
  - There exists a *cyclic vector* $v$ such that $\spanof_k\theset{T^j \vector v \suchthat j = 1, 2, \cdots} = V.$


- Two matrices $A,B$ are **similar** (i.e. $A = PBP\inv$) $\iff$
  - $A,B$ has the same JCF

- Two matrices $A, B$ are **equivalent** (i.e. $A = PBQ$) $\iff$
  - They have the same rank,
  - They have the same invariant factors, *and *
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

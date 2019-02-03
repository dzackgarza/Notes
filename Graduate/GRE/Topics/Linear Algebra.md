Assume everywhere that the underlying field is $\RR$, and that $A$ is an $m\times n$ matrix that represents a linear transformation $T: \RR^n \to \RR^m$. Vectors are written as $\vector a$, which are column vectors, and so $\vector a^T$ denotes a row vector. Matrices written as a collection of vectors $A = \thevector{\vector a_1, \vector a_2, \cdots}$ denote that each $\vector a_i$ is the $i$th column of $A$. 

Vector spaces are denoted $V, W$; the notations $\abs V$ and $\dim V$ both denote the dimension of the space. $\mathrm{Mat}(m,n)$ denotes the space of all $m\times n$ matrices, and $\det A$ is the determinant.

Augment matrices are denoted $[A \mid \vector b] = \thevector{\vector a_1, \vector a_2, \cdots \vector a_n, \vector b}$, and block matrices are notated similarly.

## Big Theorems

- Rank Nullity:
$$
\abs{\ker(A)} + \abs{\im(A)} = \abs{\mathrm{domain}(A)}
$$
  - Generalization: If $A \to B \to C$ is an exact sequence of vector spaces then $\abs{B} = \abs{A} + \abs{C}$, so take the exact sequence
$$
0 \rightarrow \operatorname { ker } A \stackrel { I d } { \rightarrow } \mathrm{domain}(A) \stackrel { A } { \rightarrow } \text { im } A \rightarrow 0
$$


## General Notes
- $A \in \mathrm{Mat}(m,n)$ represents a linear map $T: \RR^n \to \RR^m$
- Rank: number of nonzero rows in RREF
- $\mathrm{Trace}(A) = \sum_{i=1}^m A_{i,i}$
- Elementary row operations / matrices:
	- Permute rows
	- Multiple a row by a scalar
	- Add any row to another
- If $A = \thevector{\vector a_1, \vector a_2, \cdots} \in \mathrm{Mat}(m, n)$ and $B = \thevector{\vector b_1, \vector b_2, \cdots} \in\mathrm{Mat}(n, p)$, then
$$
C \definedas AB \implies c_{ij} = \sum_{k=1}^n a_{ik}b_{kj} = \inner{\mathbf{a^T_i}}{\mathbf{b_j}}
$$
  - i.e., entry $c_{ij}$ is obtained by dotting row $i$ of $A$ with column $j$ of $B$.
- $\det{(A \mod p}) \mod p = (\det{A}) \mod p$
- For $2\times 2$ matrices,
$$
A^{-1} = \left( \begin{array}{cc} a & b \\ c & d \end{array}\right)^{-1} = \frac{1}{\det{A}}\left( \begin{array}{cc} d & -b \\ -c & a \end{array}\right)
$$

## Systems of Linear Equations
Notation: Let $A\vector x = \vector b$ be a linear system, $r = \rank(A)$ and $ r_b = \rank([A \mid \vector b])$.
- Consistent: A system of linear equations is **consistent** when it has at least one solution.
- Inconsistent: A system of linear equations is **inconsistent** when it has no solutions.
- Tall matrices: more equations than unknowns
- Wide matrices: more unknowns than equations
- Three possibilities for a system of linear equations:
	- No solutions
	- One unique solution
	- Infinitely many solutions
- Possibilities:
	- $r < r_b$: the system is inconsistent.
	- $r = r_b$: the system is consistent, and
		- $r_b = n \implies$ there is a unique solution (square, tall)
		- $r_b < n \implies$ there are infinitely many solutions (wide)
- Homogeneous systems are **always** consistent.

## The Determinant
Notation: $\det A$ is the determinant of a matrix; also let $\det(\vector a_1, \vector a_2, \cdots \vector a_m) \definedas \det A$, where $\vector a_i$ is the $i$th row of $A$.

Let $A \in \mathrm{Mat}(m, n)$, then $\det A$ satisfies the following properties:
- $\det$ preserves products, so $\det(AB) = \det(A) \det(B)$
  - i.e. it's a group homomorphism $(\mathrm{Mat}(m,n), *) \to (\RR, *)$
  - Corollary: $\det{A^k} = k\det{A}$
  - Corollary: $\det(A^{-1}) = (\det A)^{-1}$
- Adding multiples of any row to another does not change its value, so for any $i$ and any scalar $t$, we have $\det(\vector a_1, \vector a_2, \cdots) = \det(\vector a_1 + t\vector a_i, \vector a_2, \cdots)$
- Permuting two rows switches sign: so $\det(\cdots, \vector a_i,\cdots, \vector a_j, \cdots) = -\det(\cdots, \vector a_j,\cdots, \vector a_i, \cdots)$
- Multilinearity in rows:
  - $\det\pmatrix{t \vector a_1, \vector a_2, \cdots, \vector a_m} = t \det(\vector a_1, \vector a_2, \cdots, \vector a_m)$
  - $\det(t \vector a_1, t\vector a_2, \cdots, t\vector a_m) = t^m \det(\vector a_1, \vector a_2, \cdots, \vector a_m)$
  - Linearity in each row: $\det(\sum_i \vector a_i, \cdots) = \sum_i \det(\vector{a}_i, \cdots)$
- For an lower/upper triangular matrix $L$ and $U$ respectively, we have $\det(L) = \det(U) = \prod_{i=1}^n a_{ii}$.
- $\det{A^T} = \det{A}$
- If any row of $A$ is all zeros, $\det(A) = 0$.
- Take $A = [\vector a_1, \vector a_2, \vector a_3]$, then in $\RR^3$, the value of $\det(A)$ is the volume of the parallelepiped spanned by the $\vector a_i$.

## The Spaces of a Matrix / Linear Map
- Finding bases for various spaces of $A$:
	- $\mathrm{rowspace} A \subseteq \RR^n$: reduce to RREF, and take nonzero rows of $\mathrm{RREF}(A)$.
	- $\mathrm{colspace} A \subseteq \RR^m$: reduce to RREF, and take columns with pivots from original $A$.
	- Nullspace: reduce to RREF, zero rows are free variables, convert back to equations and pull free variables out as scalar multipliers.
	- Eigenspace: find the nullspace of $A - \lambda I$

## Eigenvalues and Eigenvectors
- Defining equation: $\lambda\in E(A) \iff \forall \vector x \in \RR^m, A\vector x = \lambda\vector x$
- Finding: solve $A - I \lambda_i = 0$ for each $i$.
- $\lambda \in E(A) \implies \lambda^2 \in E(A^2)$ (with the same eigenvector).
- Eigenvectors corresponding to distinct eigenvalues are **always** linearly independent
- $A$ has $n$ distinct eigenvalues $\implies A$ has $n$ linearly independent eigenvectors.
- Similar matrices have identical eigenvalues and multiplicities.
- A matrix $A$ is diagonalizable $\iff A$ has $n$ linearly independent eigenvectors.
- Useful Facts
	- $\prod \lambda_i = \det A$
	- $\sum \lambda_i = \mathrm{Tr}~A$


## Misc
- $\abs{\mathrm{rowspace}(A)} = \abs{\mathrm{colspace}(A)}$
- Proof of Cauchy-Schwarz: See Goode page 346.
- Distance from a point $p$ to a line $\vector a + t\vector b$: let $\vector w = \vector p - \vector a$, then: $\norm{\vector w - P(\vector w, \vector v)}$
	- ![distance from line to point](../../images/DistanceFromLineToPoint.png)
- Computing change of basis matrices: #todo
- Two step vector subspace test:
	- Ensure it contains the zero vector
	- Ensure it's closed under scalar multiplication and vector addition
- Any set of two vectors $\theset{\vector v, \vector w}$ is linearly dependent $\iff \exists \lambda :~\vector v = \lambda \vector w$.
- A set of functions $\theset{f_i}$ is linearly independent on $I \iff \exists x_0 \in I: W(x_0) \neq 0$ (where $W$ is the Wronskian)
	- NOTE: $W \equiv 0$ on $I \not\implies \theset{f_i}$ is linearly dependent!
	- Counterexample: $\theset{x, x+x^2, 2x-x^2}$ where $W \equiv 0$ but $x+x^2 = 3(x) + (2x-x^2)$.
	- Sufficient condition: each $f_i$ is the solution to a linear homogeneous ODE $L(y) = 0$.
- Every square matrix is similar to a matrix in jordan canonical form.
- Projection onto column space of $A$: given by $P(\vector x) = A(A^t A)^{-1}A^T\vector x$
- Normal equations: $\vector x$ is a least squares solution to $A\vector x = \vector b \iff A^T A \vector x = A^T \vector b$

## Gram-Schmidt Process
Extending $\theset{\mathbf{x}_i}$ to an orthonormal basis
$$
\mathbf{v}_1 = \mathbf{x_1}\\
\mathbf{v}_2 = \mathbf{x}_2 - P(\mathbf{x}_2, \mathbf{v}_1) \\
\mathbf{v}_3 = \mathbf{x_3} - P(\mathbf{x}_3, \mathbf{v_1}) - P(\mathbf{x}_3, \mathbf{v}_2)
\\ \dots \\
\mathbf { v } _ { i } = \mathbf{x_i} - \sum_{k=1}^{i-1}P(\mathbf{x}_i, \mathbf{v}_k)
= \mathbf { x } _ { i } - \sum _ { k = 1 } ^ { i - 1 } \frac { \left\langle \mathbf { x } _ { i } , \mathbf { v } _ { k } \right\rangle } { \left\| \mathbf { v } _ { k } \right\| ^ { 2 } } \mathbf { v } _ { k }
$$


## Inverting a Matrix
Equivalent formulas for $A^{-1}$:

- Adjoints: $A^{-1} = \frac{\mathrm{adjugate(A)}}{\det(A)}$
- Gauss Jordan: $[A \mid I] \sim [I \mid A^{-1}]$
- Cramer's Rule: $A\vector{x} = \vector{b} \implies x_k = \frac{\det(B_k)}{\det(A)}$ where $B_k$ is $A$ where the $k\dash$th column is replaced by $\vector{b}$


## Big List of Equivalent Properties
Let $A$ be an $m\times n$ matrix. TFAE:
- $A$ is invertible and has a unique inverse $A^{-1}$
- $A^T$ is invertible
- $\det(A) \neq 0$
- The linear system $A\vector{x} = \vector{b}$ has a unique solution for every $b\ \in \RR^m$
- The homogeneous system $A\vector{x} = 0$ has only the trivial solution $\vector{x} = 0$
- $\rank(A) = n$ 
  - i.e. $A$ is full rank
- $\mathrm{nullity}(A) \definedas \dim\mathrm{nullspace}(A) = 0$
- $A = \prod_{i=1}^k E_i$ for some finite $k$, where each $E_i$ is an elementary matrix.
- $A$ is row-equivalent to the identity matrix $I_n$
- $A$ has exactly $n$ pivots
- The columns of $A$ are a basis for $\RR^n$
	- i.e. $\mathrm{colspace}(A) = \RR^n$
- The rows of $A$ are a basis for $\RR^m$
	- i.e. $\mathrm{rowspace}(A) = \RR^m$
- $\left(\mathrm{colspace}A\right)^\perp = \left(\mathrm{rowspace}A\right)^\perp = \theset{\vector 0}$
- Zero is not an eigenvalue of $A$.
- $A$ has $n$ linearly independent eigenvectors
- The rows of $A$ are coplanar.

Similarly, by taking negations, TFAE:

- $A$ is not invertible
- $A$ is singular
- $A^T$ is not invertible
- $\det A = 0$
- The linear system $A \vector x = \vector b$ has either no solution or infinitely many solutions.
- The homogeneous system $A \vector x = \vector 0$ has nontrivial solutions
- $\rank A < n$
- $\dim \mathrm{nullspace}~ A > 0$
- At least one row of $A$ is a linear combination of the others
- The $RREF$ of $A$ has a row of all zeros.

Reformulated in terms of linear maps $T$, TFAE:
- $T^{-1}: \RR^m \to \RR^n$ exists
- $\im(T) = \RR^n$
- $\ker(T) = 0$
- $T$ is injective
- $T$ is surjective
- $T$ is an isomorphism
- The system $A\vector{x} = 0$ has infinitely many solutions

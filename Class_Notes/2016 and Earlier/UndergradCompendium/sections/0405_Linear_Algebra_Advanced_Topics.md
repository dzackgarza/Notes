# Linear Algebra: Advanced Topics

## Changing Basis

:::{.proposition title="Changing to the standard basis"}
The transition matrix from a given basis $\mathcal{B} = \ts{\vector b_i}_{i=1}^n$ to the standard basis is given by 
\[  
A\da
\begin{bmatrix}
\vertbar    & \vertbar    &        & \vertbar \\
\vector b_1 & \vector b_2 & \cdots & \vector b_n \\
\vertbar    & \vertbar    &        & \vertbar \\
\end{bmatrix}
,\]
and the transition matrix from the standard basis to $\mathcal{B}$ is $A\inv$.
:::



## Orthogonal Matrices

Given a notion of orthogonality for vectors, we can extend this to matrices. A square matrix is said to be orthogonal iff $QQ^T = Q^TQ = I$. For rectangular matrices, we have the following characterizations:
\[
QQ^T = I \implies &\text{The rows of } Q \text { are orthogonal,} \\
Q^TQ = I \implies &\text{The columns of } Q \text{ are orthogonal.}
\]

To remember which condition is which, just recall that matrix multiplication $AB$ takes the inner product between the **rows** of $A$ and the **columns** of $B$. So if, for example, we want to inspect whether or not the columns of $Q$ are orthogonal, we should let $B=Q$ in the above formulation -- then we just note that the rows of $Q^T$ are indeed the columns of $Q$, so $Q^TQ$ computes the inner products between all pairs of the columns of $Q$ and stores them in a matrix.



## Projections

:::{.remark}
A projection $P$ induces a decomposition
\[  
\dom(P) = \ker(P) \oplus \ker(P)\perp
.\]
:::
\todo[inline]{Check! Domain or range..?}


Distance from a point $\vector p$ to a line $\vector a + t\vector b$: let $\vector w = \vector p - \vector a$, then: $\norm{\vector w - P(\vector w, \vector v)}$

:::{.proposition title="Projection onto range"}
\[  
\projection_{\range(A)}(\vector x) = A(A^t A)^{-1} A^t \vector x
.\]

Mnemonic: 
\[  
P \approx {A^t A \over AA^t}
.\]
:::


With an inner product in hand and a notion of orthogonality, we can define a notion of **orthogonal projection** of one vector onto another, and more generally of a vector onto a subspace spanned by multiple vectors.

### Projection Onto a Vector
 Say we have two vectors $\vector x$ and $\vector y$, and we want to define "the component of $\vector x$ that lies along $\vector y$", which we'll call $\vector p$. We can work out what the formula should be using a simple model:


We notice that whatever $p$ is, it will in the direction of $\vector y$, and thus $\vector p = \lambda \hat {\vector y}$ for some scalar $\lambda$, where in fact $\lambda = \norm {\vector p}$ since $\norm{\hat{\vector y}} = 1$. 
We will find that $\lambda = \inner{\vector x}{\hat{\vector y}}$, and so
\[  
\vector p = \inner{\vector x}{\hat{\vector y}}\hat{\vector y} = \frac{\inner{\vector x}{\vector y}}{\inner{\vector y}{\vector y}} \vector y
.\]

Notice that we can then form a "residual" vector $\vector r = \vector x - \vector p$, which should satisfy $\vector r \perp \vector p$. If we were to let $\lambda$ vary as a function of a parameter $t$ (making $\vector r$ a function of $t$ as well) we would find that this particular choice minimizes $\norm{\vector r (t)}$.

### Projection Onto a Subspace

In general, supposing one has a subspace $S = \mathrm{span}\theset{\vector y_1, \vector y_2, \cdots, \vector y_n}$ and (importantly!) the $\vector y_i$ are orthogonal, then the projection of $\vector p$ of $x$ onto $S$ is given by the sum of the projections onto each basis vector, yielding

\[
\vector p = \sum_{i=1}^n \frac{\inner{\vector x}{\vector y_i}}{\inner{\vector y_i}{\vector y_i}} \vector y_i = \sum_{i=1}^n \inner{\vector x}{\vector y_i} \hat{\vector y_i}
.\]

> Note: this is part of why having an orthogonal basis is desirable!

Letting $A = [\vector y_1, \vector y_2, \cdots]$, then the following matrix projects vectors onto $S$, expressing them in terms of the basis $\vector y_i$[^projmatrix]:
$$
\tilde P_A = (AA^T)^{-1}A^T,
$$

while this matrix performs the projection and expresses it in terms of the standard basis:
$$
P_A = A(AA^T)^{-1}A^T.
$$

Equation of a plane: given a point $\vector p_0$ on a plane and a normal vector $\vector n$, any vector $\vector x$ on the plane satisfies
$$
\inner{\vector x - \vector p_0}{\vector n} = 0
$$

To find the distance between a point $\vector a$ and a plane, we need only project $\vector a$ onto the subspace spanned by the normal $\vector n$:
\[  
d = \inner{\vector a}{\vector n}
.\]


One important property of projections is that for any vector $\vector v$ and for any subspace $S$, we have $\vector v - P_S(\vector v) \in S\perp$. 
Moreover, if $\vector v \in S\perp$, then $P_s(\vector v)$ must be zero. 
This follows by noting that in equation $\ref{projection_equation}$, every inner product appearing in the sum vanishes, by definition of $\vector v \in S\perp$, and so the projection is zero.


### Least Squares

:::{.proposition title="Normal Equations"}
$\vector x$ is a least squares solution to 
$A\vector x = \vector b$ iff
\[
A^t A \vector x = A^t \vector b
\]
:::

\todo[inline]{Derivation of normal equations.}


The general setup here is that we would like to solve $A\vector x = \vector b$ for $\vector x$, where $\vector b$ is not in fact in the range of $A$. We thus settle for a unique "best" solution $\tilde{\vector x}$ such that the error $\norm{A\tilde{\vector x} - \vector b}$ is minimized.

Geometrically, the solution is given by projecting $\vector b$ onto the column space of $A$. To see why this is the case, define the residual vector $\vector r = A\tilde{\vector x} - \vector b$. We then seek to minimize $\norm{\vector r}$, which happens exactly when $\vector r \perp \im A$. But this happens exactly when $\vector r \in (\im A)\perp$, which by the fundamental subspaces theorem, is equivalent to $\vector r \in \ker A^T$.

From this, we get the equation
$$
A^T \vector r = \vector 0 \\
\implies A^T(A \tilde{\vector x} - \vector b) = \vector 0\\
\implies A^TA\tilde{\vector x} = A^T \vector b,
$$

where the last line is described as the **normal equations**.

If $A$ is an $m\times n$ matrix and is of full rank, so it has $n$ linearly independent columns, then one can show that $A^T A$ is nonsingular, and we thus arrive at the least-squares solution
$$
\tilde{\vector x} = (A^TA)^{-1}A^T \vector b \qed
$$

These equations can also be derived explicitly using Calculus applied to matrices, vectors, and inner products. This requires the use of the following formulas:
\[
\dd{}{\vector x} \inner{\vector x}{\vector a} &= \vector a \\
\dd{}{\vector x} \inner{\vector x}{\vector A\vector x} &= (A+A^T)\vector x
\]

as well as the adjoint formula
\[  
\inner{A\vector x}{\vector x} = \inner{\vector x}{A^T \vector x}.
.\]

From these, by letting $A=I$ we can derive
\[  
\dd{}{\vector x} \norm{\vector x}^2 = \dd{}{\vector x} \inner{\vector x}{\vector x} = 2\vector x\\
.\]

The derivation proceeds by solving the equation
\[  
\dd{}{\vector x} \norm{\vector b - A\vector x}^2 = \vector 0.
.\]

## Normal Forms

:::{.remark}
Every square matrix is similar to a matrix in Jordan canonical form.
:::


[^projmatrix]: For a derivation of this formula, see the section on least-squares approximations.


## Decompositions

### The QR Decomposition

Gram-Schmidt is often computed to find an orthonormal basis for, say, the range of some matrix $A$. With a small modification to this algorithm, we can write $A = QR$ where $R$ is upper triangular and $Q$ has orthogonal columns.

Why is this useful? One reason is that this also allows for a particularly simple expression of least-squares solutions. If $A=QR$, then $R$ will be invertible, and a bit of algebraic manipulation will show that 
\[  
\tilde{\vector x} = R^{-1}Q^T\vector b.
.\]

How does it work? You simply perform Gram-Schmidt to obtain $\theset{\vector u_i}$, then $$Q = [\vector u_1, \vector u_2, \cdots ].$$

The matrix $R$ can then be written as 

\[
r_{ij} = \begin{cases}
\inner{\vector u_i}{\vector x_j}, & i\leq j, \\
0, & \text{else}.
\end{cases}
\]

Explicitly, this yields the matrix
\[
R = 
\begin{bmatrix}
\inner{\vector u_1}{\vector x_1} & \inner{\vector u_1}{\vector x_2} & \inner{\vector u_1}{\vector x_3} & \cdots & \\
0 & \inner{\vector u_2}{\vector x_2} & \inner{\vector u_2}{\vector x_3} & \cdots & \\
0 & 0 & \inner{\vector u_3}{\vector x_3} & \cdots & \\
\vdots & \vdots & \vdots & \ddots \\
\end{bmatrix}
\]

\todo[inline]{Explain shortcut for diagonal.}

# Appendix: Lists of things to know

> Textbook: Leon, *Linear Algebra with Applications*

## Topics

- 1.6: Partition Matrices
- 3.5: Change of Basis
- 4.1: Linear Transformations
- 4.2: Matrix Representations
- 4.3: Similarity
  - *Exam 1*   
- 5.1: Scalar Product in $\RR^n$
- 5.2: Orthogonal Subspaces
- 5.3: Least Squares
- 5.4: Inner Product Spaces
- 5.5: Orthonormal Sets
- 5.6: Gram-Schmidt
- 6.1: Eigenvalues and Eigenvectors
  - *Exam 2*
- 6.2: Systems of Linear Differential Equations
- 6.3: Diagonalization
- 6.6: Quadratic Forms
- 6.7: Positive Definite Matrices
- 6.5: Singular Value Decomposition
- 7.7: The Moore-Penrose Pseudo-Inverse
  - *Final Exam*

## Definitions

- System of equations
- Homogeneous system
- Consistent/inconsistent system
- Matrix
- Matrix (i.e. $A \vector x = \vector b$)
- Inverse matrix
- Singular matrix
- Determinant
- Trace
- Rank
- Elementary row operation
- Row equivalence
- Pivot
- Row Echelon Form
- Reduced Row Echelon Form
- Gaussian elimination
- Block matrix
- Vector space
- Vector subspace
- Linear transformation
- Span
- Linear independence
- Basis
- Change of basis
- Dimension
- Row space
- Column space
- Image
- Null space
- Kernel
- Direct sum
- Projection
- Orthogonal subspaces
- Orthogonal complement
- Normal equations
- Least-squares solution
- Orthonormal 
- Eigenvalue
- Eigenvector
- Characteristic polynomial
- Similarity
- Diagonalizable
- Inner product
- Bilinearity
- Multilinearity
- Defective
- Singular value decomposition
- QR factorization
- Gram-Schmidt process
- Spectral theorem
- Symmetric matrix
- Orthogonal matrix
- Positive-definite
- Quadratic form

## Lower-division review

- Systems of linear equations
  - Consistent vs. Inconsistent
  - Possibilities for solutions
  - Geometric interpretation
- Matrix Inverses
  - Detecting if a matrix is singular
  - Computing the inverse
    - Formula for 2x2 case
    - Augment with the identity
    - Cramer's Rule
- Vector Spaces
  - Definition in terms of closures
  - Span
  - Linear Independence
  - Subspace and the subspace test
  - Basis
- Common Computations
  - Reduction to RREF
  - Eigenvalues and eigenvectors
  - Basis for the column space
  - Basis for the nullspace
  - Basis for the eigenspace
  - Construct matrix from a given linear map
  - Construct change of basis matrix
  - Construct matrix projection onto subspace
  - Convert a basis to an orthonormal basis

## Things to compute

- Construct a matrix representing a linear map
  - With respect to the standard basis in both domain and range
  - With respect to a nonstandard basis in the range
  - With respect to a nonstandard basis in the domain
  - With respect to nonstandard bases in both the domain and range
- Construct a change of basis matrix
- Check that a map is a linear transformation
- Compute the following spaces of a matrix and their orthogonal complements:
  - Row space
  - Column space
  - Null space
- Compute the shortest distance between a point and a plane
- Compute the least squares solution to linear system
- Prove that something is a vector space
- Prove that a map is an inner product
- Compute determinants
- Compute the RREF of a matrix
- Compute characteristic polynomials, eigenvalues, and eigenvectors
- Diagonalize a matrix
- Solve a system of ODEs resulting arising from tank mixing
- Compute the singular value decomposition of a matrix
- Compute the rank and nullity of a matrix
- Convert a set of vectors to a basis
- Convert a basis to an orthonormal basis
- Determine if a matrix is diagonalizable 
- Compute the matrix for a projection onto a subspace
- Find the QR factorization of a matrix

## Things to prove

- Prove facts about block matrices
- Prove facts about injective linear maps
- Prove facts about similar matrices
- Prove facts about orthogonal spaces and orthogonal complements
- Prove facts about inner products
- Prove facts about orthonormal sets
- Prove facts about eigenvalues/eigenvectors
- Understand when a matrix can be diagonalized
- Prove facts about diagonalizable matrices
- Prove facts about the orthogonal decomposition theorem

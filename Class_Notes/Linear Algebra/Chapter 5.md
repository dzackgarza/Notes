# Chapter 5: Orthogonality

## Inner Products and Norms
The point of this chapter is to show how an inner product can induce a notion of "angle", which agrees with our intuition in Euclidean spaces such as $\RR^n$, but can be extended to much less intuitive things, like spaces of functions.

Given an inner product 
$$
\inner{\wait}{\wait}: \RR^n \cross \RR^n \to \RR,
$$

we can define a **norm**
$$
\norm {\vector x} = \sqrt{\inner{\vector x}{\vector x}},
$$

which has the often useful alternative formulation

$$
\inner{\vector x}{\vector x} = \norm{\vector x}^2
$$


We can define a notion of angle:
$$
\inner{\vector x}{\vector y} = \norm{\vector x} \norm{\vector y} \cos\theta_{x,y}
\implies \cos \theta_{x,y} \definedas \frac{\inner{\vector x}{\vector y}}{\norm{\vector x} \norm{\vector y}} = \inner{\hat{\vector x}}{\hat{\vector y}}
$$

where $\theta_{x,y}$ denotes the angle between the vectors $\vector x$ and $\vector y$.

Since $\cos \theta=0$ exactly when $\theta = \pm \frac \pi 2$, we can can declare two vectors to be **orthogonal** exactly in this case:
$$
\vector x \perp \vector y \iff \inner{\vector x}{\vector y} = 0.
$$

Note that this makes the zero vector orthogonal to everything.

Given a notion of orthogonality for vectors, we can extend this to matrices. A square matrix is said to be orthogonal iff $QQ^T = Q^TQ = I$. For rectangular matrices, we have the following characterizations:
$$\begin{align*}
QQ^T = I \implies &\text{The columns of } Q \text { are orthogonal,} \\
Q^TQ = I \implies &\text{The rows of } Q \text{ are orthogonal.}
\end{align*}$$

Another general formula of use is
$$
\norm{\vector x + \vector y}^2 = \norm{\vector x}^2 + 2\inner{\vector x}{\vector y} + \norm{\vector y}^2,
$$

and so when $\vector x \perp \vector y$, we have $\inner{\vector x}{\vector y} = 0 $. So the norm commutes with squaring, yielding 
$$
\norm{\vector x + \vector y}^2 = \norm{\vector x}^2 + \norm{\vector y}^2
$$

## Projections
With an inner product in hand and a notion of orthogonality, we can define a notion of **orthogonal projection** of one vector onto another, and more generally of a vector onto a subspace spanned by multiple vectors.

 Say we have two vectors $\vector x$ and $\vector y$, and we want to define "the component of $\vector x$ that lies along $\vector y$", which we'll call $\vector p$. We can work out what the formula should be using a simple model:

 **Figure Here**

We notice that whatever $p$ is, it will in the direction of $\vector y$, and thus $\vector p = \lambda \hat {\vector y}$ for some scalar $\lambda$, where in fact $\lambda = \norm {\vector p}$ since $\norm{\hat{\vector y}} = 1$. We will find that \lambda = $\inner{\vector x}{\hat{\vector y}}$, and so
$$
\vector p = \inner{\vector x}{\hat{\vector y}}\hat{\vector y} = \frac{\inner{\vector x}{\vector y}}{\inner{\vector y}{\vector y}} \vector y
$$

Notice that we can then form a "residual" vector $\vector r = \vector x - \vector p$, which should satisfy $\vector r \perp \vector p$. If we were to let $\lambda$ vary as a function of a parameter $t$ (making $\vector r$ a function of $t$ as well) we would find that this particular choice minimizes $\norm{\vector r (t)}$.

## Subspaces

Equation of a plane: given a point $\vector p_0$ on a plane and a normal vector $\vector n$, any vector $\vector x$ on the plane satisfies
$$
\inner{\vector x - \vector p_0}{\vector n} =
$$

To find the distance between a point $\vector a$ and a plane, we need only project $\vector a$ onto the subspace spanned by the normal $\vector n$:
$$
d = \inner{\vector a}{\vector n}
$$

In general, supposing that $S$ is a subspace spanned by $\theset{\vector s_i}_{i=1}^k$, there is an operator $P_S$ which projects vectors onto the subspace $S$, given by
$$
P_S(\vector v) = \sum_{i=1}^k \inner{\vector v}{\hat {\vector s_i}}\hat{\vector s_i }
$$

This can be computed by forming the change-of-basis matrix $S = [\vector s_1, \vector s_2, \cdots]$, and then forming the matrix [^projmatrix]
$$
P_S = S(S^T S)^{-1}S^T.
$$

[^projmatrix]: For a derivation of this formula, see the section on least-squares approximations.

Given a subspace $S \subseteq V$, we define its **orthogonal complement**
$$
S^\perp = \theset{\vector v\in V \suchthat \forall \vector s\in S,~ \inner{\vector v}{\vector s} = 0}.
$$

Given two subspace $S_1$ and $S_2$ where $S_1^\perp = S_2$, we occasionally write $S_1 \perp S_2$.

An important property is that any choice of subspace $S\subseteq V$ yields a decomposition $V = S \oplus S^\perp$. 

One important property of projections is that for any vector $\vector v$ and for any subspace $S$, we have $\vector v - P_S(\vector v) \in S^\perp$.

**The Fundamental Subspaces Theorem**

Given a matrix $A \in \mathrm{Mat}(m, n)$, and noting that
$$\begin{align*}
A &: \RR^n \to \RR^m,\\
A^T &:  \RR^m \to \RR^n
\end{align*}$$

We have the following decompositions:
$$\begin{align*}
&\RR^n &\cong  \ker A &\oplus \im A^T &\cong \mathrm{nullspace}(A) &\oplus~ \mathrm{colspace}(A^T) \\
&\RR^m &\cong  \im A &\oplus \ker A^T &\cong \mathrm{colspace}(A) &\oplus~ \mathrm{nullspace}(A^T)
\end{align*}$$

## Least Squares

Figure here

Figure here

The general setup here is that we would like to solve $A\vector x = \vector b$ for $\vector x$, where $\vector b$ is not in fact in the range of $A$. We thus settle for a unique "best" solution $\tilde{\vector x}$ such that the error $\norm{A\tilde{\vector x} - \vector b}$ is minimized.

Geometrically, the solution is given by projecting $\vector b$ onto the column space of $A$. To see why this is the case, define the residual vector $\vector r = A\tilde{\vector x} - \vector b$. We then seek to minimize $\norm{\vector r}$, which happens exactly when $\vector r \perp \im A$. But this happens exactly when $\vector r \in (\im A)^\perp$, which by the fundamental subspaces theorem, is equivalent to $\vector r \in \ker A^T$.

From this, we get the equation
$$
A^T \vector r = \vector 0 \\
\implies A^T(A \tilde{\vector x} - \vector b) = \vector 0\\
\implies A^TA\tilde{\vector x} = A^T \vector b,
$$

where the last line is described as the **normal equation**.

If $A$ is an $m\times n$ matrix and is of full rank, so it has $n$ linearly independent columns, then one can show that $A^T A$ is nonsingular, and we thus arrive at the least-squares solution
$$
\tilde{\vector x} = (A^TA)^{-1}A^T \vector b \qed
$$

These equations can also be derived explicitly using Calculus applied to matrices, vectors, and inner products. This requires the use of the following formulas:
$$\begin{align*}
\dd{}{\vector x} \inner{\vector x}{\vector a} &= \vector a \\
\dd{}{\vector x} \inner{\vector x}{\vector x} = \dd{}{\vector x} \norm{\vector x}^2 &= 2\vector x\\
\dd{}{\vector x} \inner{\vector x}{\vector A\vector x} &= (A+A^T)\vector x
\end{align*}$$

as well as the adjoint formula
$$
\inner{A\vector x}{\vector x} = \inner{\vector x}{A^T \vector x}
$$

The derivation proceeds by solving the equation
$$
\dd{}{\vector x} \norm{\vector b - A\vector x}^2 = \vector 0.
$$

## Gram-Schmidt
The general setup here is that we are given an orthogonal basis $\theset{\vector x_i}_{i=1}^n$ and we want to produce an **orthonormal** basis from them.

Why would we want such a thing? Recall that we often wanted to change from the standard basis $\mathcal{E}$ to some different basis $\mathcal{B} = \theset{\vector b_1, \vector b_2, \cdots}$. We could form the change of basis matrix $B = [\vector b_1, \vector b_2, \cdots]$ acts on vectors in the $\mathcal{B}$ basis according to
$$
B[\vector x]_\mathcal{B} = [\vector x]_{\mathcal{E}}
$$

But to change from $\mathcal{E}$ to $\mathcal{B}$ requires computing $B^{-1}$, which acts on vectors in the standard basis according to
$$
B^{-1}[\vector x]_\mathcal{E} = [\vector x]_{\mathcal{B}}
$$

If, on the other hand, the $\vector b_i$ are orthonormal, then $B{-1} = B^T$, which is much easier to compute. We also obtain a rather simple formula for the coordinates of $\vector x$ with respect to $\mathcal B$. This follows because we can write
$$
\vector x = \sum_{i=1}^n \inner{\vector x}{\vector b_i} \vector b_i \definedas \sum_{i=1}^n c_i \vector b_i,
$$

and we find that 
$$
[\vector x]_\mathcal{B} = \vector c \definedas [c_1, c_2, \cdots, c_n]^T.
$$

**The Algorithm**

Given the orthogonal basis $\theset{\vector x_i}$, we form an orthonormal basis $\theset{\vector u_i}$ iteratively as follows. 

First define 
$$
N: \RR^n \to S^{n-1} \\
x \mapsto \frac {x} {\norm{x}}
$$

which projects a vector onto the unit sphere in $\RR^n$ by normalizing. Then,

$$\begin{align*}
u_1 &= N(\vector{x_1}) \\
u_2 &= N(\vector x_2 - \inner{\vector x_2}{\vector u_1}\vector u_1)\\
u_3 &= N(\vector x_3 - \inner{\vector x_3}{\vector u_1}\vector u_1 - \inner{\vector x_3}{\vector u_2}\vector u_2 ) \\
\vdots & \qquad \vdots \\
u_k &= N(\vector x_k - \sum_{i=1}^{k-1} \inner{\vector x_k}{\vector u_i}\vector u_i)
\end{align*}$$

In words, at each stage, we take one of the original vectors $\vetor x_i$, then subtract off its projections onto all of the $\vector u_i$ we've created up until that point. This leaves us with only the component of $\vector x_i$ that is orthogonal to the span of the other $\vector u_i$, and we then normalize to ensure it has norm 1.

**The QR Decomposition**
Gram-Schmidt is often computed to find an orthonormal basis for, say, the range of some matrix $A$. With a small modification to this algorithm, we can write $A = QR$ where $R$ is upper triangular and $Q$ has orthogonal columns.

Why is this useful? One reason is that as long as $A$ has orthogonal columns, then it is full rank and thus invertible. But since $A = QR$ and $\det A = \det QR = \det Q \det R \neq 0$, both $Q$ and $R$ are nonsingular as well, and rather easy to invert. Since $Q$ has orthogonal columns, it will satisfy $QQ^T
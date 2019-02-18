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

The general setup here is that we would like to solve $A\vector x = \vector b$ for $\vector x$, where $\vector b$ is not in fact in the range of $A$. We thus settle for a unique "best" solution $\tilde{\vector x}$ such that the error $\norm{\vector b - A\tilde{\vector x}}$ is minimized.

Geometrically, the solution is given by projecting $\vector b$ onto the column space of $A$. To see why this is the case, define the residual vector $\vector r = \vector b - A\tilde{\vector x}$. We then seek to minimize $\norm{\vector r}$, which happens exactly when $\vector r \perp \im A$. But this happens exactly when $\vector r \in (\im A)^\perp$, which by the fundamental subspaces theorem, is equivalent to $\vector r \in \ker A^T$.

From this, we get the equation
$$
A^T \vector r = \vector 0 \\
\implies A^T(\vector b - A \vector \tilde x) = \vector 0
$$


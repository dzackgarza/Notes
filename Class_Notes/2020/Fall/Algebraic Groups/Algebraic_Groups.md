
---
title: Algebraic Groups
todos: true
book: true
---

These are notes live-tex'd from a graduate course in Algebraic Geometry taught by Dan Nakano at the University of Georgia in Fall 2020.
As such, any errors or inaccuracies are almost certainly my own.

\medskip
\begin{flushright}
  D. Zack Garza, \today \\
  \currenttime
\end{flushright}

# Friday, August 21

> Reference: Carter's "Finite Groups of Lie Type".
> 
> Reference: Humphrey's "Linear Algebraic Groups" (Springer)

## Intro and Definitions
:::{.definition title="Affine Variety"}
Let $k=\bar{k}$ be algebraically closed (e.g. $k = \CC, \bar{\FF_p}$).
A variety $V\subseteq k^n$ is an *affine $k\dash$variety* iff $V$ is the zero set of a collection of polynomials in $k[x_1, \cdots, x_n]$.
:::

Here $\AA^n\definedas k^n$ with the Zariski topology, so the closed sets are varieties.


:::{.definition title="Affine Algebraic Group"}
An *affine algebraic $k\dash$group* is an affine variety with the structure of a group, where the multiplication and inversion maps 
\[  
\mu: G\cross G &\to G \\
\iota: G&\to G
\]
are continuous.
:::


:::{.example}
$G = \GG_a \subseteq k$ the *additive group* of $k$ is defined as $\GG_a \definedas (k, +)$.
We then have a *coordinate ring* $k[\GG_a] = k[x] / I = k[x]$.
:::


:::{.example}
$G = \GL(n, k)$, which has coordinate ring $k[x_{ij}, T] / \gens{\det(x_{ij})\cdot T = 1}$.
:::


:::{.example}
Setting $n=1$ above, we have $\GG_m \definedas \GL(1, k) = (k\units, \cdot)$.
Here the coordinate ring is $k[x, T] / \gens{xT = 1}$.
:::

:::{.example}
$G = \SL(n, k) \leq \GL(n, k)$, which has coordinate ring $k[G] = k[x_{ij}] / \gens{\det(x_{ij}) = 1}$.
:::

:::{.definition title="Irreducible"}
A variety $V$ is *irreducible* iff $V$ can not be written as $V = \union_{i=1}^n V_i$ with each $V_i \subseteq V$ a proper subvariety.

![Reducible vs Irreducible](figures/Reducible_v_irreducible.png)
:::


:::{.proposition title="?"}
There exists a unique irreducible component of $G$ containing the identity $e$. Notation: $G^0$.
:::

:::{.proposition title="?"}
$G$ is the union of translates of $G^0$, i.e. there is a decomposition
\[  
G = \disjoint_{g\in \Gamma} \, g\cdot G^0
,\]
where we let $G$ act on itself by left-translation and define $\Gamma$ to be a set of representatives of distinct orbits.
:::

:::{.proposition title="?"}
One can define solvable and nilpotent algebraic groups in the same way as they are defined for finite groups, i.e. as having a terminating derived or lower central series respectively.
:::

## Jordan-Chevalley Decomposition

:::{.proposition title="Existence and Uniqueness of Radical"}
There is a maximal connected normal solvable subgroup $R(G)$, denoted the *radical of $G$*.

- $\theset{e} \subseteq R(G)$, so the radical exists.
- If $A, B \leq G$ are solvable then $AB$ is again a solvable subgroup.


:::


:::{.definition title="Unipotent"}
An element $u$ is *unipotent* $\iff$ $u = 1+n$ where $n$ is nilpotent $\iff$ its the only eigenvalue is $\lambda = 1$.
:::

:::{.proposition title="JC Decomposition"}
For any $G$, there exists a closed embedding $G\injects \GL(V) = \GL(n , k)$ and for each $x\in G$ a unique decomposition $x=su$ where $s$ is semisimple (diagonalizable) and $u$ is unipotent.
:::

Define $R_u(G)$ to be the subgroup of unipotent elements in $R(G)$. 
:::{.definition title="Semisimple and Reductive"}
\hfill
Suppose $G$ is connected, so $G = G^0$, and nontrivial, so $G\neq \theset{e}$. Then 

- $G$ is semisimple iff $R(G) = \theset{e}$.
- $G$ is reductive iff $R_u(G) = \theset{e}$.
:::


:::{.example}
$G = \GL(n, k)$, then $R(G) = Z(G) = kI$ the scalar matrices, and $R_u(G) = \theset{e}$.
So $G$ is reductive and semisimple.
:::


:::{.example}
$G = \SL(n , k)$, then $R(G) = \theset{I}$.

:::{.exercise}
Is this semisimple? 
Reductive?
What is $R_u(G)$?
:::

:::

:::{.definition title="Torus"}
A *torus* $T\subseteq G$ in $G$ an algebraic group is a commutative algebraic subgroup consisting of semisimple elements.
:::

:::{.example}
Let
\[  
T \definedas 
\gens{
\begin{bmatrix}
a_1 &  & \mathbf 0\\
 & \ddots &  \\
\mathbf 0 &  & a_n
\end{bmatrix} \subseteq \GL(n ,k)
}
.\]
:::


:::{.remark}
Why are torii useful?
For $g = \mathrm{Lie}(G)$, we obtain a root space decomposition
\[  
g = 
\qty{\bigoplus_{\alpha \in \Phi_- }g_\alpha} \oplus 
t \oplus
\qty{\bigoplus_{\alpha \in \Phi_+ }g_\alpha} 
.\]

When $G$ is a simple algebraic group, there is a classification/correspondence:
\[  
(G, T) \iff (\Phi, W)
.\]
where $\Phi$ is an irreducible root system and $W$ is a Weyl group.

:::



# Monday, August 24

## Review and General Setup

- $k = \bar k$ is algebraically closed
- $G$ is a reductive algebraic group
- $T\subseteq G$ is a *maximal split torus*

> Split: $T\cong \bigoplus \GG_m$.

We'll associate to this a root system, not necessarily irreducible, yielding a correspondence
\[  
(G, T) \iff (\Phi, W)
\]
with $W$ a Weyl group.

This will be accomplished by looking at $\lieg = \mathrm{Lie}(G)$.
If $G$ is simple, then $\lieg$ is "simple", and $\Phi$ irreducible will correspond to a Dynkin diagram.

There is this a 1-to-1 correspondence
\[  
G \text{ simple}/\sim \iff A_n, B_n, C_n, D_n, E_6, E_7, E_8, F_4, G_2
\]
where $\sim$ denotes *isogeny*.

Taking the Zariski tangent space at the identity "linearizes" an algebraic group, yielding a Lie algebra.

![Image](figures/image_2020-08-24-14-09-33.png)

We have the coordinate ring $k[G] = k[x_1, \cdots, x_n] / \mathcal{I}(G)$ where $\mathcal{I}(G)$ is the zero set.
This is equal to $\ts{f:G\to k}$,

## The Associated Lie Algebra


:::{.definition title="The Lie Algebra of an Algebraic Group"}
Define *left translation* is
\[  
\lambda_x: k[G] &\to k[G] \\
y &\mapsto f(x^{-1} y)
.\]

Define *derivations* as
\[  
\mathrm{Der} ~k[G] = \ts{D: k[G] \to k[G] \suchthat D(fg) = D(f) g + f D(g) }
.\]

We can then realize the Lie algebra as
\[  
\lieg = \mathrm{Lie}(G) = \theset{D\in \mathrm{Der} k[G] \suchthat \lambda_x \circ D = D\circ \lambda_x}
,\]
the left-invariant derivations.
:::

:::{.example}
\hfill
- $G = \GL(n, k) \implies\lieg = \liegl(n, k)$
- $G = \SL(n, k) \implies\lieg = \liesl(n, k)$
:::

Let $G$ be reductive and $T$ be a split torus.
Then $T$ acts on $\lieg$ via an *adjoint action*.
(For $\GL_n, \SL_n$, this is conjugation.)

There is a decomposition into eigenspaces for the action of $T$, 
\[  
\lieg = \qty{\bigoplus_{\alpha\in \Phi} g_\alpha} \oplus t
\]
where $t = \mathrm{Lie}(T)$ and $g_\alpha \da \ts{x\in \lieg\st t.x = \alpha(t) x\,\, \forall t\in T}$ with $\alpha: T\to K\units$ a rational function (a *root*).

In general, take $\alpha\in\hom_{\text{AlgGrp}}(T, \GG_m)$.

:::{.example}
Let $G = \GL(n, k)$ and 
\[  
T = \ts{
\begin{bmatrix}
a_1 & 0 & 0 \\
0 & \ddots & 0 \\
0 & 0 & a_n
\end{bmatrix}
\st a_j\in k\units
}
.\]

Then check the following action:

![Action](figures/image_2020-08-24-14-24-40.png)

which indeed acts by a rational function.

Then 
\[  
g_\alpha = \spanof \ts{
\begin{bmatrix}
0 & 1 & 0 \\
0 & 0 & 0\\
0 & 0 & 0
\end{bmatrix}
} = g_{(1, -1, 0)}
.\]

For $\lieg = \liegl(3, k)$, we have
\[  
\lieg = t 
&\oplus g_{(1, -1, 0)}
\oplus g_{(-1, 1, 0)}  \\
&\oplus g_{(0, 1, -1)} 
\oplus g_{(0, -1, 1)}  \\
&\oplus g_{(1, 0, -1)} 
\oplus g_{(-1, 0, 1)} 
.\]
:::

## Representations

Let $\rho: G\to \GL(V)$ be a group homomorphisms, then equivalently $V$ is a (rational) $G\dash$module.

For $T\subseteq G$, $T\actson G$ semisimply, so we can simultaneously diagonalize these operators to obtain a *weight space decomposition* $V = \bigoplus_{\lambda \in X(T)} V_\lambda$, where
\[  
V_\lambda &\da\ts{v\in V\st t.v = \lambda(t)v\,\, \forall t\in T} \\\
X(T) &\da \hom(T, \GG_m)
.\]

:::{.example}
Let $G = \GL(n, k)$ and $V$ the $n\dash$dimensional natural representation as column vectors,
\[  
V = \ts{\thevector{v_1, \cdots, v_n} \suchthat v_j \in k}
.\]

Then
\[  
T = \ts{
\begin{bmatrix}
a_1 & 0 & 0 \\
0 & \ddots & 0\\
0 & 0 & a_n
\end{bmatrix} \suchthat a_j \in k\units
}
.\]

Consider the basis vectors $\vector{e}_j$, then 
\[  
\begin{bmatrix}
a_1 & 0 & 0 \\
0 & \ddots & 0\\
0 & 0 & a_n
\end{bmatrix} 
\begin{bmatrix}
0  \\
1  \\
0
\end{bmatrix}
=
a_j
\begin{bmatrix}
0  \\
1 \\
0
\end{bmatrix}
= a_1^0 a_2^0 \cdots a_j^0 \cdots a_n^0
\begin{bmatrix}
0  \\
1 \\
0
\end{bmatrix}
.\]

Here the weights are of the form $\eps_j\da \thevector{0, 0, \cdots, 1, \cdots, 0}$ with a $1$ in the $j$th spot, so we have
\[  
V = V_{\eps_1} \oplus V_{\eps_2} \oplus \cdots \oplus V_{{\eps_n}}
.\]
:::

:::{.example}
For $V = \CC$, we have $t.v = (a_1^0 \cdots a_n^0)v$ and $V = V_{(0, 0, \cdots, 0)}$.
:::

## Classification

Let $G$ be a simple algebraic group (ano closed, connected, normal subgroups other than $\ts{e}, G$) that is nonabelian that is nonabelian.

:::{.example}
Let $G = \SL(3, k)$.
Then
\[  
T = \ts{
t = 
\begin{bmatrix}
a_1 & 0 & 0 \\
0 & a_1 a_2^{-1}  & 0\\
0 & 0 & a_2^{-1} 
\end{bmatrix}
\st
a_1, a_2\in k\units
}
\]
and
\[  
t.
\begin{bmatrix}
0 & 1 & 0 \\
0 & 0 & 0 \\
0 & 0 & 0 \\
\end{bmatrix}
= 
a_1^2 a_2^{-1} 
\begin{bmatrix}
0 & 1 & 0 \\
0 & 0 & 0 \\
0 & 0 & 0 \\
\end{bmatrix}
.\]
and $\alpha_1 = (2, -1)$.

\todo[inline]{What is $\alpha_1$? Note that you can recover the Cartan something here?}

Then
\[  
\lieg = 
\lieg_{(2, -1)} \oplus \lieg_{(-2, 1)} \oplus
\lieg_{(-1, 2)} \oplus \lieg_{(1, -2)} \oplus
\lieg_{(1, 1)} \oplus \lieg_{(-1, -1)}
.\]

Then $\alpha_2 = (-1, 2)$ and $\alpha_1 + \alpha_2 = ( 1, 1)$.

This gives the root space decomposition for $\liesl_3$:

![Image](figures/image_2020-08-24-14-49-31.png)

Then the Weyl group will be generated by reflections through these hyperplanes.

:::





# Wednesday, August 26

## Review

- $G$ a reductive algebraic group over $k$
- $T = \prod_{i=1}^n \GG_m$ a maximal split torus
- $\lieg = \mathrm{Lie}(G)$
- There's an induced root space decomposition $\lieg = t\oplus \bigoplus_{\alpha\in \Phi}\lieg_\alpha$
- When $G$ is simple, $\Phi$ is an *irreducible* root system
  - There is a classification of these by Dynkin diagrams

:::{.example}
$A_n$ corresponds to $\liesl(n+1, k)$ (mnemonic: $A_1$ corresponds to $\liesl(2)$)
:::

- We have representations $\rho: G\to \GL(V)$, i.e. $V$ is a $G\dash$module
- For $T\subseteq G$, we have a weight space decomposition: 
  $V = \bigoplus_{\lambda \in X(T)} V_\lambda$ where $X(T) = \hom(T, \GG_m)$.

  > Note that $X(T) \cong \ZZ^n$, the number of copies of $\GG_m$ in $T$.

## Root Systems and Weights

:::{.example}
Let $\Phi = A_2$, then we have the following root system:

![Image](figures/image_2020-08-26-14-05-58.png)

:::

In general, we'll have $\Delta = \ts{\alpha_1, \cdots, \alpha_n}$ a basis of *simple roots*.

:::{.remark}
Every root $\alpha\in I$ can be expressed as either positive integer linear combination (or negative) of simple roots.
:::

For any $\alpha\in \Phi$, let $s_\alpha$ be the reflection across $H_\alpha$, the hyperplane orthogonal to $\alpha$.
Then define the *Weyl group* $W = \ts{s_\alpha \st \alpha\in \Phi}$.

:::{.example}
Here the Weyl group is $S_3$:

![Image](figures/image_2020-08-26-14-10-24.png)
:::

:::{.remark}
$W$ acts transitively on bases.
:::

:::{.remark}
$X(T) \subseteq \ZZ\Phi$, recalling that $X(T) = \hom(T, \GG_m) = \ZZ^n$ for some $n$.
Denote $\ZZ\Phi$ the *root lattice* and $X(T)$ the *weight lattice*.
:::

:::{.example}
Let $G = \liesl(2, \CC)$ then $X(T) = \ZZ\omega$ where $\omega = 1$, $\ZZ \Phi = \ZZ\ts{\alpha}$
Then there is one weight $\alpha$, and the root lattice $\ZZ\Phi$ is just $2\ZZ$.
However, the weight lattice is $\ZZ\omega = \ZZ$, and these are not equal in general.
:::

:::{.remark}
There is partial ordering on $X(T)$ given by $\lambda \geq \mu \iff \lambda - \mu = \sum_{\alpha\in \Delta} n_\alpha \alpha$ where $n_\alpha \geq 0$.
(We say $\lambda$ *dominates* $\mu$.)
:::


:::{.definition title="Fundamental Dominant Weights"}
We extend scalars for the weight lattice to obtain $E \da X(T) \tensor_\ZZ \RR \cong \RR^n$, a Euclidean space with an inner product $\inner{\wait}{\wait}$.

For $\alpha\in \Phi$, define its *coroot* $\alpha\dual \da {2\alpha \over \inner{\alpha}{\alpha}}$.
Define the *simple coroots* as $\Delta\dual \da \ts{\alpha_i\dual}_{i=1}^n$, which has a dual basis $\Omega \da \ts{\omega_i}_{i=1}^n$ the *fundamental weights*.
These satisfy $\inner{\omega_i}{\alpha_j\dual} = \delta_{ij}$.

\todo[inline]{What is the notation for fundamental weights? Definitely not $\Omega$ usually!}

> Important because we can index irreducible representations by fundamental weights.

A weight $\lambda\in X(T)$ is *dominant* iff $\lambda \in \ZZ^{\geq 0} \Omega$, i.e. $\lambda = \sum n_i \omega_i$ with $n_i \in \ZZ^{\geq 0}$.
:::

If $G$ is simply connected, then $X(T) = \bigoplus \ZZ \omega_i$.

> See Jantzen for definition of simply-connected, $\SL(n+1)$ is simply connected but its adjoint $PGL(n+1)$ is not simply connected.

## Complex Semisimple Lie Algebras

When doing representation theory, we look at the Verma modules $Z(\lambda) = U(\lieg) \tensor_{U(\lieb^+)} \lambda \surjects L(\lambda)$.

:::{.theorem title="?"}
$L(\lambda)$ as a finite-dimensional $U(\lieg)\dash$module $\iff$ $\lambda$ is dominant, i.e. $\lambda \in X(T)_+$.
:::

Thus the representations are indexed by lattice points in a particular region:

![Image](figures/image_2020-08-26-14-36-44.png)

**Question 1**:

Suppose $G$ is a simple (simply connected) algebraic group.
How do you parameterize *irreducible* representations?

For $\rho: G\\to \GL(V)$, $V$ is a *simple module* (an *irreducible representation*) iff the only proper $G\dash$submodules of $V$ are trivial.

**Answer 1**:
They are also parameterized by $X(T)_+$.
We'll show this using the induction functor $\ind_B^G \lambda =H^0(G/B, \mathcal{L}(\lambda))$ (sheaf cohomology of the flag variety with coefficients in some line bundle).

> We'll define what $B$ is later, essentially upper-triangular matrices.

**Question 2**:
What are the dimensions of the irreducible representations for $G$?


**Answer 2**:
Over $k=\CC$ using Weyl's dimension formula.

For $k = \bar{\FF_p}$: conjectured to be known for $p\geq h$ (the *Coxeter number*), but by Williamson (2013) there are counterexamples.
Current work being done!



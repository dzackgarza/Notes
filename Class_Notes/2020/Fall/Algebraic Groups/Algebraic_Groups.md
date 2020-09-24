
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



# Friday, August 28

## Representation Theory

Review: let $\lieg$ be a semisimple lie algebra $/\CC$.
There is a decomposition $\lieg = \lieb^+ \oplus \lien^- = \lien^+ \oplus t\oplus \lien^-$, where $t$ is a torus.
We associate $U(\lieg)$ the universal enveloping algebra, and representations of $\lieg$ correspond with representations of $U(\lieg)$.

Let $\lambda \in X(T)$ be a weight, then $\lambda$ is a $U(\lieb^+)\dash$module.
We can write  $Z(\lambda) = U(\lieg) \tensor_{U(\lieb^+)} \lambda$.

:::{.remark}
There exists a unique maximal submodule of $Z(\lambda)$, say $RZ(\lambda)$ where $Z(\lambda)/RZ(\lambda) \cong L(\lambda)$ is an irreducible representation of $\lieg$.
:::

:::{.theorem title="?"}
Let $L = L(\lambda)$ be a finite-dimensional irreducible representation for $\lieg$.
Then

1. $L \cong Z(\lambda)/RZ(\lambda)$ for some $\lambda$.
2. $\lambda \in X(T)_+$ is a dominant integral weight.
:::

### Induction

Let $\lieg$ be an algebraic group $/k$ with $k = \bar{k}$, and let $H \leq G$.
Let $M$ be an $H\dash$module, we'll eventually want to produce a $G\dash$modules.

Step 1:
Make $M$ into a $G\cross H$ where the first component $(g, 1)$ acts trivially on $M$.

Taking the coordinate algebra $k[G]$, this is a $(G-G)\dash$bimodule, and thus becomes a $G\cross H\dash$module.
Let $f\in k[G]$, so $f:G\to  K$, and let $y\in G$.
The explicit action is 
\[  
[(g, h) f] (y) \da f(g^{-1} y h)
.\]

Note that we can identify $H\cong 1\cross H \leq G\cross H$.
We can form $(M\tensor_k k[G])^H$, the $H\dash$fixed points.

:::{.exercise}
Let $N$ be an $A\dash$module and $B\normal A$, then $N^B$ is an $A/B\dash$module.

> Hint: the action of $B$ is trivial on $N^B$.
> Here $N^B \da \ts{n\in N \st b.n = n\, \forall b\in B}$

:::

:::{.definition title="Induction"}
The *induced module* is defined as 
\[  
\ind_H^G(M) \da (M\tensor k[G])^H
.\]
:::

### Properties of Induction

1. $(\wait \tensor_k k[G]) = \hom_H(k, \wait \tensor_k k[G])$ is only *left-exact*, i.e.
\[  
\qty{0\to A\to B\to C\to 0}\mapsto \qty{0\to FA \to FB \to FC \to \cdots}
.\]

2. By taking right-derived functors $R^jF$, you can take cohomology.

  > Note that in this category, we won't have enough projectives, but we will have enough injectives.

3. This functor commutes with direct sums and direct limits.

4. (**Important**) Frobenius Reciprocity: there is an adjoint, *restriction*, satisfying
\[  
\hom_G(N, \ind_H^G M) = \hom_H(N\downarrow_H, M)
.\]

5. (Tensor Identity) If $M\in \Mod(H)$ and additionally $M \in \Mod(G)$, then $\ind_H^G = M \tensor_k  \ind_H^G k$.

  If $V_1, V_2 \in \Mod(G)$ then $V_1 \tensor_k V_2 \in \Mod(G)$ with the action given by $g(v_1\tensor v_2) = gv_1 \tensor gv_2$.

6. Another interpretation: we can write
\[  
\ind_H^G(M) = \ts{f\in \Hom(G, M_a)
\st
f(gh) = h^{-1} \cdot f(g)
\, \forall g\in G, h\in H} \qquad M_a = M \da \AA^{\dim M}
.\]

> I.e., equivariant wrt the $H\dash$action. 

Then $G$ acts on   $\ind_H^G M$ by left-translation: $(gf)(y) = f(g^{-1} y)$.

7. There is an evaluation map:
\[  
\eps: \ind_H^G(M) &\to M \\ 
f&\mapsto f(1)
.\]

This is an  $H\dash$module morphism.
Why?
We can check
\[  
\eps(h.f) 
&\da (h.f)(a) \\
&= f(h^{-1} ) \\
&= hf(1) \\
&= h(\eps(f))
.\]

We can write the isomorphism in Frobenius reciprocity explicitly:
\[  
\hom_G(N, \ind_H^G M) &\mapsvia{\cong} \hom_H(N, M) \\
\phi & \mapsto \eps \circ \phi
.\]


8. Transitivity of induction: for $H\leq H' \leq G$, there is a natural transformation (?) of functors:
\[  
\ind_H^G(\wait) = \ind_{H'}^G\qty{\ind_H^{H'}(\wait) }
.\]

\todo[inline]{Equality as a composition of functors?}


## Classification of Simple $G\dash$modules

Suppose $G$ is a connected reductive algebraic group $/k$ with $k = \bar k$.

:::{.example}
Let $G = \GL(n, k)$.
There is a decomposition:

![Image](figures/image_2020-08-28-14-39-50.png)
:::

**Step 1**:
Getting modules for $U$.

Then there's a general fact: $U^+ T U \injects G$ is dense in the Zariski topology for any reductive algebraic group.
We can form

- $B^+ \da T\semidirect U^+$, the *positive borel*,
- $B^- \da T\semidirect U$, the *negative borel*,

Suppose we have a $U\dash$module, i.e. a representation $\rho: U \to \GL(V)$.
We can find a basis such that $\rho(u)$ is upper triangular with ones on the diagonal.
In this case, there is a composition series with 1-dimensional quotients, and the composition factors are all isomorphic to $k$.

Moral: for unipotent groups, there are only trivial representations, i.e. the only simple $U\dash$modules are isomorphic to $k$.


**Step 2**: 
Getting modules for $B$.

Modules for $B$ are solvable, in which case we can find a flag. 
In this case, $\rho(b)$ embeds into upper triangular matrices, where the diagonal action may now not be trivial (i.e. diagonal is now arbitrary).

Thus simple $B\dash$modules arise by taking $\lambda \in X(T) = \hom(T, \GG_m) = \hom(T, \GL(1, k))$, then letting $u$ act trivially on $\lambda$, i.e. $u.v = v$.
Here we have $B \to B/U = T$, so any $T\dash$module can be pulled back to a $B\dash$module.

**Step 3**: 
Getting modules for $G$.

Let $\lambda \in X(T)$, then $H^0(\lambda) = \ind_B^G \lambda = \nabla(\lambda)$.




# Monday, August 31


## Review of Representation Theory of Modules

Take $R$ a ring, then consider $M$ an $R\dash$module to be a "vector space" over $M$.
Note that $M$ is an $R\dash$module $\iff$ there exists a ring morphism $\rho: R\to \hom_{\text{AbGrp}}(M, M)$.

Now let $G$ be a group and consider $G\dash$modules $M$.
Then a $G\dash$module will be defined by taking $M/k$ a vector space and a $G\dash$action on $M$.
This is equivalent to having a group morphism $\rho: G\to \GL(M)$.

For $M$ a $G\dash$module, given a group action, define
\[  
\rho: G&\to \GL(M) \\
\rho(g)(m) &= g.m
\]
where $\rho(h): M\to M$.

Similarly, for $\rho: G\to \GL(M)$ a group morphism, define the group action $g.m \da \rho(g)m$.
Thus representations of $G$ and $G\dash$modules are equivalent.

:::{.definition title="?"}
Let $M$ be a $G\dash$module.

1. $M$ is a *simple* $G\dash$module (equivalently an *irreducible representation*) $\iff$ the only $G\dash$submodules (equiv. $G\dash$invariant subspaces) are $0, M$.

2. $M$ is *indecomposable* $\iff$ $M$ can not be written as $M = M_1 \oplus M_2$ with $M_i < M$ proper submodules.
:::


:::{.example}
For $G = \SL(n, \CC)$, there is a natural $n\dash$dimensional representation $M = V$, and this is irreducible.
:::
\todo[inline]{What is $V$?}

:::{.example}
Let $R = \ZZ$, so we're considering $\ZZ\dash$modules.
For $M=\ZZ$, $M$ is not simple since $2\ZZ < \ZZ$ is a proper submodule.
However $M$ is indecomposable.
:::

Recall from last time: we defined a functor $\ind_H^G(\wait): H\dash\text{mod} \to G\dash\text{mod}$, where $\ind_H^G = \qty{k[G] \tensor M}^H$, the $H\dash$invariants.
This functor is left-exact but not right-exact, so we have cohomology $R^j \ind_H^G$ by taking right-derived functors.

Goal: classify simple $G\dash$modules for $G$ a reductive connected algebraic group.

:::{.example}
For $G = \GL(n , k)$, we have a decomposition

![Image](figures/image_2020-08-31-14-10-01.png)

:::

We have

- $B = T\semidirect U$ the negative Borel,
- $B = T\semidirect U^+$ the Borel

For $U\dash$modules: 
$k$ is the only simple $U\dash$module.
Importantly, if $V$ is a $U\dash$module, then the fixed points are never zero, i.e. $V^U = \hom_{U\dash\text{Mod}}(k, V) \neq 0$.

For $B\dash$modules: 
let $X(T) \da \hom(T, \GG_m) = \hom(T, \GL(1, k))$.
These are the simple representations for the torus $T$.
Thus $\lambda \in X(T)$ represents a simple $T\dash$module.

We have a map $B \to B/U = T$, so we can pullback $T\dash$representations to $B\dash$representations ("inflation"), since we have a map $T\to \GL(1, k)$ and we can just compose.
So $\lambda$ is a 1-dimensional (simple) $B\dash$module where $U$ acts trivially.

Lee's theorem: all irreducible representations for $B$ are one-dimensional.
Thus these are the simple $B\dash$modules.


For $G\dash$modules:
define $\nabla(\lambda) \da \ind_B^G(\lambda) = H^0(\lambda)$.

Questions:

1. When does $H^0(\lambda) = 0$?
2. What is $\dim_{k\dash\text{Vect}} H^0(\lambda)$?
3. What are the composition factors of $H^0(\lambda)$? 

  > Known in characteristic zero, wildly open in positive characteristic.


:::{.remark}
Another interpretation: look at the flag variety $G/B$ and take global sections, then $H^0(\lambda) = H^0(G/B, \mathcal{L}(\lambda))$ where $\mathcal{L}$ is given by projecting the fiber product $G \cross_B \lambda \surjects G/B$ onto the first factor.
:::


:::{.remark}
\hfill

1. $H^0(k) = H^0(\thevector{0, \cdots, 0}) = k[G/B] = k$.
2. $H^0(M) = M$ if $M$ is a $G\dash$module.
3. A $G\dash$module $M$ is *semisimple* iff $M = \bigoplus_{i\in I} M_i$ with each $M_i$ are simple.
4. Can consider the largest semisimple submodule, the *socle* $\soc_G(M)$.
:::

\begin{center}
\begin{tikzcd}
L_4 \ar[dr] & & L_5 \oplus L_7\ar[dl] \\
& \qty{L_1 \oplus L_2 \oplus L_3} = \soc_G(M)) & \\
\end{tikzcd}
\end{center}


Goal: classify simple $G\dash$modules.
Strategy: used dominant highest weights.

> As opposed to Verma modules, the irreducibles will be a dual situation where they sit at the bottom of the module.
> Indicated by the notation $\nabla$ pointing down!

:::{.proposition title="?"}
Let $\lambda \in X(T)$ with $H^0(\lambda) \neq 0$.

1. $\dim H^0(\lambda)^{U^+} = 1$ and $H^0(\lambda)^{U^+} = H^0(\lambda)_\lambda$.
2. Every weight of $H^0(\lambda)$ satisfies $w_u \lambda \leq \mu \leq \lambda$, where $w_0$ is the longest Weyl group element and $\alpha\leq \beta \iff \alpha-\beta \in \ZZ^{+}\Phi$.

> Note that in fact $\ell(w_0) = \abs{\Phi^+}$.
:::

:::{.example}
Take $A_2$ with simple reflections $s_{\alpha_1}, s_{\alpha_2}$ and $\Delta = \ts{\alpha_1, \alpha_2}$.
\begin{center}
\begin{tikzcd}
& 1\ar[ld] \ar[rd] & \\
s_{\alpha_1} \ar[d] & & s_{\alpha_2}\ar[d] \\
s_{\alpha_1}s_{\alpha_2}\ar[rd] & & s_{\alpha_2} s_{\alpha_1}\ar[ld] \\
& s_{\alpha_2} s_{\alpha_1}s_{\alpha_1} = s_{\alpha_1} s_{\alpha_2} s_{\alpha_1} = w_0 & 
\end{tikzcd}
\end{center}
:::

:::{.proof title="(Sketch)"}
We can write
\[  
H^0(\lambda) = \ts{f\in k[G] \st f(gb) = \lambda(b)^{-1} f(g) \, b\in B, g\in G}
.\]

Suppose $f\in H^0(\lambda)^{U^+}$ and $u_+ \in U^+, t\in T, u\in U$.
Then 
\[  
\qty{ u_+^{-1} f} (tu) 
&= f(tu) \\
&= \lambda(t)^{-1} f(1)
.\]
On the other hand,
\[  
\qty{ u_+^{-1} f} (tu) 
&= f(u_+ t u)
.\]

So by density, $f(1)$ is determined by $f(u_+ t u)$ and $\dim H^0(\lambda)^{U^+} \leq 1$.
But since this can't be zero, the dimension must be equal to 1.
:::


:::{.proposition title="?"}
Let 
\[  
\eps: H^0(\lambda) \to \lambda
\]
be the evaluation morphism.

This is a morphism of $B\dash$modules, and in particular is a morphism of $T\dash$modules.
Thus the image of a weight $\mu \neq \lambda$ is zero, so $\eps$ is injective.
:::


:::{.proof}
We have 
\[  
f(u_+ t u) = \lambda(t)^{-1} f(1) = \lambda(t)^{-1} \eps(f)
.\]

Suppose $f\in H^0(\lambda)^{U^+}$ and $\eps(f) = 0$.
Then $f(u_+ t u) = 0$, and by density $f\equiv 0$, showing injectivity.

Therefore $H^0(\lambda)^{U^+}\subset H^0(\lambda)_\lambda$.
Suppose $\mu$ is maximal among weights in $H^0(\lambda)$.
Then
\[  
H^0(\lambda)_{\mu} \subseteq H^0(\lambda)^{U^+}
\]
because $U^+$ raises weights.

But $H^0(\lambda)^{U^+} \subseteq H^0(\lambda)_\lambda$ implies $\mu = \lambda$.
Thus the maximal weight in $H^0(\lambda)$ is $\lambda$.

> Recall the situation in lie algebras: $g_\alpha v \in V_{\lambda + \alpha}$ when $v\\in V_{\lambda}$.

Since $\lambda$ is maximal, any other weight $\mu$ satisfies $\mu \leq \lambda$.
Thus 
\[  
H^0(\lambda)_\lambda \subseteq H^0(\lambda)^{U^+} \subseteq H^0(\lambda)_\lambda
,\]
forcing these to be equal and finishing part 1.
:::



# Friday, September 04

Some concepts used in the proof of other theorems:
Let $G$ be a reductive algebraic group and $\lieg$ its lie algebra.
There is an associative algebra $U(\lieg)$ which reflects the representation theory of $G$.

Fact: $\lieg\dash$mod $\equiv U(\lieg)\dash$modules which are unitary, i.e. $1.m = m$.

We can write a basis 
\[  
\lieg  = \gens{e_\alpha, h_i, f_\beta \st \alpha\in\Phi^+,\, \beta\in\Phi^-,\, i = 1,2,\cdots,n}
,\]
the *Chevalley basis*.
It turns out that the structure constants are all in $\ZZ$.

:::{.example}
Take $\lieg = \liesl(2, k)$, then
\[  
e = \begin{bmatrix}
0 & 0 \\
1 & 0
\end{bmatrix}
\quad 
f = \begin{bmatrix}
0 & 1 \\
0 & 0
\end{bmatrix}
\quad
h = \begin{bmatrix}
1 & 0 \\
0 & -1
\end{bmatrix}
.\]
:::

We want to form a $\ZZ\dash$lattice in $U(\lieg)$, denoted 
\[  
U(\lieg)_\ZZ
=
\gens{
e_\alpha^{[n]} = {e_\alpha^n \over n!},\, f_\beta^{[n]} = {f_\beta^n \over n!}, {h_i \choose m}
}
.\]

We then form the *distribution algebra* (or *hyperalgebra* in earlier literature) as $\mathrm{Dist})G) \da U(\lieg)_\ZZ \tensor_\ZZ k$ for $k$ any field (e.g. $\ch(k) = p$).

:::{.theorem title="?"}
$G\dash$modules $\equiv \mathrm{Dist}(G)\dash$modules which are 

- *Weight modules* 
- *Locally finite*: $\dim \mathrm{Dist}(G).m < \infty$ for all $m\in M$.

:::

:::{.remark}
In characteristic zero, $\mathrm{Dist}(G) = U(\lieg)$.
Thus there is a correspondence
\[  
\correspond{G\dash\text{modules}} \iff
\correspond{U(\lieg)\dash\text{modules}} 
.\]

If $\ch(k) = p$, e.g. $k = \bar \FF_p$, and if the Frobenius map $F:G\to G$ satisfies $G_1\da \ker F$ (thinking of $G_1$ as a group scheme), then $\mathrm{Dist}(G_1) < \mathrm{Dist}(G)$ is a proper submodule.
In this case, $\lieg \subseteq \mathrm{Dist}(G_1)$ is a finite dimensional Hopf algebra, and $k[G_1] = \mathrm{Dist}(G_1)\dual$.
Importantly, the lie algebra does *not* generate $\mathrm{Dist}(G)$ if $k = \bar\FF_p$.
:::


:::{.example}
Take $G = \GG_a$, then $\mathrm{Dist}(\GG_a) = \gens{T^k \st k=0,1,\cdots}$ is an infinite dimensional algebra.
In this case, $T^k T^\ell = {k+\ell \choose \ell}T^{k+\ell}$.
For $k=\CC$, $\mathrm{Dist}(\GG_a) = \gens{T^1}$ has one generator.

In the case $k = \bar \FF_p$, we have $\mathrm{Dist}(\qty{\GG_a}_1) = \gens{T^k \st 0\leq k \leq p-1}$.

Note that taking duals yields a truncated polynomial algebra: $k[\qty{\GG_a}_1] = k[x] / \gens{x^p}$.
:::

## Review

Recall that $H^0(\lambda) \da \ind_B^G \lambda$.
Proved in last (missed) class:
:::{.remark}
Let $H^0(\lambda) \neq 0$. Then

a. $\dim H^0(\lambda)_\lambda = 1$ where $H^0(\lambda) = H^0(\lambda)^{U^+}$.

b. Each weight $\mu$ of $H^0(\lambda)$ satisfies $w_0 \lambda \leq \mu \leq \lambda$, where $w_0$ is the longest Weyl group element.
:::

:::{.remark}
Let $H^0(\lambda)_\lambda \neq 0$, then $L(\lambda) = \soc_G H^0(\lambda)$ is simple.
:::

:::{.remark}
If $\mu$ is a weight of $L(\lambda)$, then $w_0 \lambda \leq \mu \leq \lambda$, $\dim L(\lambda)_\lambda = 1$, and $L(\lambda)_\lambda = L(\lambda)^{U+}$.
:::

:::{.remark}
Any simple $G\dash$module is isomorphic to $L(\lambda)$ where $H^0(\lambda) \neq 0$.
:::

Goal: 
We now want to classify simple $G\dash$modules.
So we need an iff criterion for when $H^0(\lambda) \neq 0$.

We look at the set of dominant weights 
\[  
X(T)_+ 
&= \ts{\lambda \in X(T) \st \inner{\lambda}{\alpha\dual}\geq 0 \forall \alpha\in\Delta}
&= \ts{\lambda \in X(T) \st \lambda = \sum_{i=1}^\ell n_i w_i,\, n_i \geq 0}
.\]

:::{.theorem title="?"}
TFAE:

1. $H^0(\lambda) \neq 0$.
2. $\lambda \in X(T)_+$, i.e. $\lambda$ is a dominant weight.
:::


:::{.proof}
$1\implies 2$:
Suppose (1), then consider a simple reflection $s_\alpha$ for some $\alpha \in \Delta$.
We know $H^0(\lambda)_\lambda \neq 0$, thus $H^0(\lambda)_{s_\alpha \lambda} \neq 0$.
Therefore
\[  
s_\alpha \lambda = \lambda - \inner{\lambda}{\alpha\dual}\alpha \leq \lambda \\
\implies 0 \leq \inner{\lambda}{\alpha\dual}\alpha \\
\implies \inner{\lambda}{\alpha\dual} \geq 0 \qquad \forall \alpha\in \Delta
.\]

$2\implies 1$:
For a detailed proof, see Jantzen 2.6 in Part II.

- Let $\lambda \in X(T)_+$, then (by the intro lie algebras course) there exists an $L(\lambda)$: a simple finite dimensional $U(\lieg)\dash$module over $\CC$.

- $L(\lambda)$ has an integral basis which is compatible with $U(\lieg)_\ZZ$ (Kostant's $\ZZ\dash$form).

- Thus we can base change to get $\tilde L(\lambda) \da L(\lambda) \tensor_\ZZ k$, which is a $\mathrm{Dist}(G)\dash$module.
  Note that $\tilde L(\lambda)$ still has highest weight $\lambda$, so consider $\hom_B(\tilde L(\lambda), \lambda) \neq 0$.

- Apply frobenius reciprocity: $\hom_B(\tilde L(\lambda), \lambda) = \hom_G(\tilde L(\lambda), \ind_B^G \lambda) = \hom_G(\tilde L(\lambda), H^0(\lambda))$.
  But then $H^0(\lambda) \neq 0$ (since otherwise this would imply the original hom was zero).
:::

:::{.theorem title="?"}
Let $G$ be a reductive connected algebraic group over $k$.
Then there exists a 1-to-1 correspondence between dominant weights and irreducible $G\dash$representations:
\[  
\correspond{\text{Dominant weights: } X(T)_+} \iff
\correspond{\text{Irreducible representations: }\ts{L(\lambda) \st \lambda \in X(T)_+} }
.\]
:::

## Characters of $G\dash$modules

Let $G$ be reductive, so (importantly) it has a maximal torus $T$.
Let $M\in G\dash\mathrm{mod}$, so (importantly) $M\in T\dash\mathrm{mod}$.

Then there is a weight space decomposition $M = \bigoplus_{\lambda \in X(T)} M_\lambda$.
We then write the character of $M$ as
\[  
\ch M \da \sum_{\lambda \in X(T)} \qty{\dim M_\lambda} e^{\lambda} \in \ZZ[X(T)]
.\]

Next time: more characters, and Weyl's dimension formula.


# Wednesday, September 09

Todo

# Wednesday, September 16

## Group Schemes

:::{.definition title="Representable Functors"}
Let $F:: \kalg \to \sets$ be a functor, then $F$ is **representable** iff $F(R)$ corresponds to "solutions to equations in $R$".
:::

:::{.example}
Let $F(\wait) = \SL(2, \wait)$, then the corresponding equations are $\det (x_{ij})  = 1$.
:::

If $F$ is representable, there is a correspondence $F(R) \cong \hom_R(A, R)$.
In the above example, $$A = k[x_{11}, x_{12}, x_{21}, x_{22}] / \gens{x_{11} x_{22} - x_{12}x_{21}},$$ which is exactly the coordinate algebra.

:::{.definition title="Affine Group Scheme"}
An *affine group scheme* is a representable functor $F:\kalg\to\Groups$.
:::

Suppose $G$ is an affine group scheme, and let $A = k[G]$ be the representing object.
Then there is a correspondence
\[  
G\dash\text{modules} \iff k[G]\dual\dash\text{modules}
.\]

For $G$ reductive, the RHS is equivalent to $\Dist(G)\dash$modules.

:::{.definition title="Finite Group Schemes"}
$G$ is a **finite** group scheme iff $k[G]$ is finite dimensional.
:::

If $G$ is finite, then $A\dual \cong k[G]\dual$ is a cocommutative Hopf algebras.
Thus representations for *finite* group schemes are equivalent to representations for finite-dimensional cocommutative Hopf algebras.

> On group scheme side: see reduction, spectral sequences, conceptual arguments.
> On the algebra side: have bases, underlying vector space, can do concrete computations.
> Can take $\spec \qty{k[G]}\dual$ to recover a group scheme.

## Hopf Algebras

For $A$ a $\kalg$, we have a multiplication and a unit, which can be defined in terms of diagrams.
To categorically reverse arrows, we can ask for a comultiplication and a counit. 
\[  
\Delta: A &\to A^{\tensor 2}
\\ \\
\epsilon: A &\to k 
.\]

We'll want another map,  an *antipode*
\[  
s: A\to A
.\]


The comultiplication should satisfy
\begin{center}
\begin{tikzcd}
A^{\tensor 3} & \ar[l, "1\tensor A"] A^{\tensor 2} \\
A^{\tensor 2}\ar[u, "\Delta \tensor 1"] & \ar[l, "\Delta"]\ar[u, "\Delta"] A
\end{tikzcd}
\end{center}


The counit should satisfy
\begin{center}
\begin{tikzcd}
k\tensor \ar[d, "\cong"] A & \ar[l, "{\eps\tensor 1}"] A^{\tensor 2}\\
A\ar[r, "\cong"] & A\ar[u, "\Delta"]
\end{tikzcd}
\end{center}

And the antipode should satisfy
\begin{center}
\begin{tikzcd}
A & A\ar[l, "{m(s\tensor 1)}"] \\
A\ar[u] & A\ar[l, "\eps"] \ar[u, "\Delta"]
\end{tikzcd}
\end{center}

### Module Constructions
Let $A$ be a Hopf algebra.


1. For $A\dash$modules $M, N$, we can form the $A\dash$module $M\tensor_k N$ with
\[  
\Delta(a) &= \sum a_i \tensor a_j \\ \\
a(m\tensor n) &= \sum a_1 m \tensor a_2 n
.\]

2. If $M$ is finite-dimensional over $A$, then $M\dual = \hom_k(M, k) \ni f$ is an $A\dash$module, and we can define $(af)(x) \da f(s(a)x)$ for $a\in A, x\in M$.


:::{.example}
$A = kG$ the group algebra on a group is a Hopf algebra:
\[  
\Delta: A &\to A^{\tensor 2} \\
g &\mapsto g\tensor g
.\]

The module action is diagonal, namely $g(m\tensor n) = gm \tensor gn$.
The antipode is given by $s(g) = g^{-1}$, and the unit is $\eps(g) = 1$ for all $g\in G$.
:::

:::{.example}
Let $A = U(\lieg)$, the universal enveloping algebra for $\lieg$ a Lie algebra.
Recall that $\lieg\dash$modules are equivalent to $U(\lieg)\dash$modules (unitary representations, some big associative algebra).
Then $A$ is a Hopf algebra, with $\Delta(\ell) = \ell\tensor 1 + 1\tensor \ell$ for $\ell \in \lieg$.
The unit is $\eps(\ell) = 0$, and the antipode is $s(\ell) = -\ell$.
:::

:::{.example}
Take the additive group $\GG_a$, then $A = k[\GG_a] \cong k[x]$ is a commutative Hopf algebra with $\Delta(x) = x\tensor 1 + 1\tensor x$, $\eps(x) = 0, s(x) = -x$.
:::

:::{.example}
For $\GG_m$, we have $A = k[\GG_m] \cong k[x, x^{-1}], \eps(x) = 1, s(x) = x^{-1}$.
:::



## Frobenius Kernels

Let $G$ be an algebraic group (scheme) over $k$, where $\ch(k) = p$.
Let $F:G\to G$ be the Frobenius, where e.g.
\[  
F:\GL(n, \wait) &\to \GL(n, \wait)\\
(x_{ij}) & \mapsto (x_{ij}^p)
.\]

Then $F$ is a map of group schemes.

:::{.definition title="Frobenius Kernels"}
$G_r \da \ker F^r$, where $F^r \da F\circ F \circ \cdots \circ F$ is the $r\dash$fold composition of the Frobenius.

This yields a nesting $G_1 \normal G_2 \normal G_3 \cdots \leq G$.
:::

Recall that
\[  
\Dist(G) = \gens{ {x_\alpha^n \over n!}, {y_\beta^m \over m!}, {H_i \choose k} }
.\]

We get a chain of finite dimensional algebras
\[  
\Dist(G_1) \leq \Dist(G_2) \leq \cdots \leq \Dist(G)
\]
where
\[  
\Dist(G_1) = \gens{ {x_\alpha^n \over n!}, {y_\beta^m \over m!}, {H_i \choose k} \st 0\leq n,m,k \leq p-1 }
,\]

where in general $\Dist(G_\ell)$ goes up to $p^{\ell} - 1$.
Recall that $G_r$ representations were equivalent to $\Dist(G_r)$ representations.


Some basic questions (Curtis, Steinberg, 1960s):

1. What are the simple modules for Frobenius kernels?
  I.e., what are the irreducible representations for $G_r$?

2. How are the representations for $G_r$ related to those for $G$?

> It turns out the representations for $G_r$ will lift to representations to $G$.
  Use "twisted tensor product" (Steinberg).

:::{.remark}
It turns out that $G_1$ is special.
\[  
\Dist(G_1) \cong u(\lieg) \da U(\lieg) / \gens{x^p - x^{[p]}}
,\]
where $\lieg = \mathrm{Lie}(G)$ is a *restricted lie algebra* (N. Jacobson).
Note that for $D\in \lieg$ a derivation, we define $D^{[p]} \da D\circ \cdots \circ D$ is the $p\dash$fold composition.

$G_1\dash$modules are equivalent to $\lieg\dash$modules which are *restricted* in the sense that
\[  
\rho: g &\to \liegl(V) \\
x^{[p]} &\mapsto \rho(x)^p
.\]
:::


# Friday, September 18

## Frobenius Kernels

Let $\ch(k)  p > 0$ and let $G$ be an algebraic group scheme.
We have a Frobenius map  $F:G\to G$ given by $F((x_{ij})) = (x_{ij}^p)$, which we can iterate to get $F^r$ for $r\in \NN$.
Setting $G_r = \ker F^r$ the $r$th Frobenius kernel, we get a normal series of group schemes
\[  
G_1 \normal G_2 \normal \cdots \normal G
.\]

There is an associated chain of finite dimensional Hopf algebras
\[  
\Dist(G_1) \leq \Dist(G_2) \leq \cdots \leq \Dist(G)
.\]

Then $k[G]\dual = \Dist(G_r)$, and we get an equivalence of representations for $G_r$ to representations for $\Dist(G_r)$.

A special case will be when $G$ is a reductive algebraic group scheme.
We'll start by finding a basis for $\Dist(G_r)$.

Recall the PBW theorem: we have a basis for $\lieg$ given by
\[  
\ts{x_\alpha \st \alpha\in \Phi^+ } &\text{ Positive root vectors} \\
\ts{h_i \st i=1,\cdots, n} &\text{ A basis for } t \\
\ts{x_\alpha \st \alpha\in \Phi^- } &\text{ Negative root vectors} \\
.\]

We can then obtain a basis for $U(\lieg)$:
\[  
U(\lieg) = \gens{ \prod_{\alpha\in\Phi^+} x_\alpha^{n(\alpha)} \prod_{i=1}^n h_i^{k_i} \prod_{\alpha\in\Phi^+} x_{-\alpha}^{m(\alpha)}  }
.\]

We can similarly obtain a basis for the distribution algebra
\[  
\Dist(G) = \gens{ 
\prod_{\alpha\in\Phi^+} { x_{\alpha}^{n(\alpha)} \over n!} 
\prod_{i=1}^n {h_i \choose k_i} 
\prod_{\alpha\in\Phi^+} { x_{-\alpha}^{n(\alpha)} \over n!} 
}
,\]
and we can similar get $\Dist(G_r)$ by restricting to $0\leq n(\alpha), k_i, m(\alpha) \leq p^r - 1$.
Above the $k_i$ are allowed to be any integers.
This yields a triangular decomposition
\[  
\Dist(G_r) = \Dist(U_r^+) \Dist(T_r) \Dist(U_r^-)
,\]
where we'll denote the first two terms $\Dist(B_r^+)$ and the last two as $\Dist(B_r)$.

## Induced and Coinduced Modules

Goal:
Classify simple $G_r\dash$modules.
We know the classification of simple $G\dash$modules, so we'll follow similar reasoning.
We started by realizing $L(\lambda) \injects \ind_B^G \lambda$ as a submodule (the socle) of some "universal" module.

Let $M$ be a $B_r\dash$module, we can then define 
\[  
\ind_{B_r}^{G_r}M = \qty{k[G_r] \tensor M }^{B_r}
,\]
where we're now taking the $B_r\dash$invariants.
We get a decomposition as vector spaces,
\[  
k[G_r] = k[U_r^+] \tensor_k k[B_r]
\]
and thus an isomorphism
\[  
\ind_{B_r}^{G_r}M = \qty{k[G_r] \tensor M }^{B_r} 
\cong k[U_r^+] \tensor \qty{ k[B_r] \tensor M}^{B_r}
\cong k[U_r^+] \tensor M
\]
since $k[B_r]\tensor M \cong \ind_{B_r}^{B_r} M \cong M$.

We then define
\[  
\coind_{B_r}^{G_r} = \Dist(G_r) \tensor_{\Dist(B_r)} \tensor M
,\]
which is an analog of $U(\lieg)\tensor_{U(\lieb)} M$.

We have $\Dist(U_r^+) \tensor \Dist(B_r) \cong \Dist(G_r)$, so

\[  
\coind_{B_r}^{G_r} = \Dist(G_r) \tensor_{\Dist(B_r)} \tensor M
\cong
\Dist(U_r^+) \tensor_k \Dist(B_r) \tensor_{\Dist(B_r)} M 
\cong
\Dist(U_r^+) \tensor_k M
,\]
which we'll define as the **coinduced module**.

We can compute the dimension:
\[  
\dim \ind_{B_r}^{G_r} M = \dim \coind_{B_r}^{G_r} M = \qty{\dim M} p^{r\abs{\Phi^+}}
.\]

> Open: don't know how to compute composition factors.

:::{.proposition title="?"}
\hfill

1. \[\coind_{B_r}^{G_r} M \equiv \ind_{B_r}^{G_r} M\tensor 2(p^r - 1)\rho,\] where the last term is a one-dimensional $B_r\dash$module and $\rho$ is the *Weyl weight*.

2. \[\coind_{B_r^+}^{G_r} M \cong \ind_{B_r^+}^{G_r} M \tensor -2\qty{p^r-1}\rho\]

where
\[  
\rho = {1\over 2}\sum_{\alpha\in\Phi^+} \alpha = \sum_{i=1}^n w_i
.\]
:::


:::{.proof title="Sketch for (1)"}
Since the tensor product satisfies a universal property, we have a map
\begin{center}
\begin{tikzcd}
M \ar[rd, "B_r"]\ar[rr] & & \Dist(G_r)\tensor_{\Dist(B_r)} M\ar[dl, "\exists \psi", dotted] \\
& N = M\ind_{B_r}^{G_r} \tensor 2(p^r-1)\rho &
\end{tikzcd}
\end{center}

1. We need to find a $B_r$ morphism $f:M\to N$.

2. We need to show that $f$ generates $N$ as a $G_r\dash$module.


Note that if (1) and (2) hold, then  $\psi$ is surjective, but since $\dim \coind_{B_r}^{G_r} M= \dim N$ this forces $\psi$ to be an isomorphism.

We can write
\[  
\ind_{B_r}^{G_r} M\tensor 2(p^r-1) \rho
&=
\qty{ k[G_r] \tensor M \tensor 2(p^r-1) \rho  }^{B_r} \\
&\cong
\hom_{B_r}\qty{\Dist(G_r), M\tensor 2(p^r-1)\rho }
.\]

Let $g_m(x) \da m\tensor 2(p^r-1)\rho$ for any $x =\prod_{\alpha\in\Phi^+} {x_\alpha^{p^r-1} \over \qty{p^r-1}! }$, and $g_m(x) = 0$ for any other $x$.

Now define $f(m) = g_m$, and check that $\im f$ generates $N$.
:::

## Verma Modules

Recall that $W(\lambda) \da U(\lieg) \tensor_{U(\lieb^+)} \lambda$ were the *Verma modules* for lie algebras.

Let $\lambda \in X(T)$, we have $T_r \leq T$ and restriction yields a map $X(T) \to X(T_r)$.
Given a weight $\lambda$,  we can write it $p\dash$adically as
\[  
\lambda = \lambda_0 + \lambda_1 p + \lambda_2 p^2 + \cdots + \lambda_{r-1} + \cdots
.\]

This yields an exact sequence
\[  
0 \to p^r X(T) \to X(T) \to X(T_r) \to 0
,\]

and thus $X(T) / p^r X(T) \cong X(T_r)$.

Let $\lambda \in X(T_r)$, then $\lambda$ becomes a $B_r\dash$module by letting $U_r$ act trivially, since we have 
\[  
\cdots U_r \to B_r \surjects T_r \to 0
.\]

Set $Z(r) = \coind_{B_r}^{G_r} \lambda$, and set $Z(r)' = \ind_{B_r}^{G_r} \lambda$.
Then $\dim Z_r(\lambda) = \dim Z_r'(\lambda) = p^{r\abs{\Phi^+}}$.
We'll then think of 

- $\coind \surjects L_r(\lambda)$ being in the head,
- $L_r(\lambda) \injects \ind$ being the socle.

> Note that the dimensions aren't known, nor are the projective covers or injective hulls.

We have a form of translation invariance, namely
\[  
Z_r(\lambda + p^r\nu) = Z_r(\lambda) \qquad &\forall \nu \in X(T) \\
Z_r'(\lambda + p^r\nu) = Z_r'(\lambda) \qquad &\forall \nu \in X(T)
.\]

:::{.proposition title="?"}
Let $\lambda \in X(T)$.

1. $Z_r(\lambda){\downarrow}_{B_r}$ is the projective cover of $\lambda$ and the injective hull of $\lambda - 2(p^r-1)\rho$.
2. $Z_r'(\lambda){\downarrow}_{B_r^+}$ is the injective hull of $\lambda$ and the projective hull of $\lambda - 2(p^r-1)\rho$.

:::



# Monday, September 21

Let $G$ be a reductive algebraic group scheme, $k=\bar \FF_p$ with $p>0$, equipped with the Frobenius map  $F:G\to G$ with $F^r$ its $r\dash$fold composition.
We defined *Frobenius kernels* $G_r \da \ker F^r$, which are in correspondence with the cocommutative Hopf algebras $\Dist(G_r)$.

Goal:
We want to classify simple $G_r\dash$modules, and to do this we'll use socles.

We have a maximal torus $T\subseteq G$ and thus $T_r \subseteq G_r$ after acting by Frobenius.
This yields a SES
\[  
0 \to p_r X(T) \to X(T) \to X(T)/p^r X(T) = X(T_r) \to 0
.\]

How to think about this: take $\lambda \in X(T_r)$, then we can write $\lambda = \lambda + p^r \sigma$ in $X(T_r)$ for some other weight $\sigma \in X(T)$.
We'll define the "baby Verma modules"
\[  
Z_r(\lambda) \da \coind_{B_r^+}^{G_r} \lambda \\
Z_r'(\lambda) \da \ind_{B_r^+}^{G_r} \lambda
,\]

and we have $\dim Z_r(\lambda) = \dim Z_r'(\lambda) = p^{r \abs{\Phi^+}}$.

:::{.proposition title="?"}
Let $\lambda\in X(T)$ be a weight.

1. $Z_r(\lambda)\downarrow_{B_r}$ is the *projective cover* of $\lambda$ and the *injective hull* of $\lambda - 2 (p^r-1) \rho$.

2. $Z_r'(\lambda)\downarrow_{B_r^+}$ is the *injective hull* of $\lambda$ and the *projective cover* of $\lambda - 2 (p^r-1) \rho$.
:::

> Note the latter are $T_r\dash$modules, so we let $U^+$ act trivially.


:::{.proof title="of 1"}
What we need to do:

1. Show $Z_r(\lambda)\downarrow_{B_r}$ is projective.
2. Show $Z_r(\lambda)$ is the smallest projective module such that $Z_r(\lambda) \surjects \lambda$.

For (1), we can write 
\[
\Dist(G_r) = \Dist(U_r^+) \Dist(B_r) = \Dist(B_r^+) \Dist(U_r),
,\]
and so
\[  
Z_r(\lambda) 
&= \coind_{B_r^+}^{G_r} \lambda \\
&= \qty{\dist(G_r) \tensor_{\Dist(B_r)} \lambda} \downarrow_{B_r^+} \\
&= \Dist(U_r^+)\tensor \lambda \\
&= \Dist(B_r^+) \tensor_{\Dist(T_r)} \lambda \\
&= \coind_{T_r}^{B_r^+} \lambda
.\]

Why is this projective? 
Look at cohomology, suffices to show that higher Exts vanish.
So consider
\[  
\ext_{B_r^+}^n(\coind_{T_r}^{B_r^+}, M) 
&= \ext_{T_r}^n (\lambda, M) \qquad\text{by Frobenius reciprocity} \\
&= 0 \qquad \text{for } n \geq 0
,\]
since representations for $T_r$ are completely reducible, and we've used the fact that $\coind_{T_r}^{B_r^+}(\wait)$ is exact.

> Note: general algebra fact that higher exts vanish for projective modules.

For (2), we can write
\[  
\hom_{B_r^+}(Z_r(\lambda), \mu)
&= \hom_{B_r^+}(\coind_{T_r}^{B_r^+} \lambda, \mu) \\
&= \hom_{T_r} (\lambda, \mu) \qquad\text{by Frobenius reciprocity} \\
&=
\begin{cases}
k \& \lambda = \mu \\
0 \& \text{else}.
\end{cases}
\]

Thus $Z_r(\lambda) / \rad Z_r(\lambda) \downarrow{B_r^+} = \lambda$.

If we now write $A= \Dist(B_r^+)$ and $\lieg = \lien^+ \oplus t \oplus \lien$ with $\lieb^+ \da \lien^+ \oplus t$,
\[
\sum_S \qty{\dim P(S)} \qty{\dim(S)} \\
&= \sum_{\lambda \in X(T_r)} \qty{\dim Z_r(\lambda)} \qty{\dim \lambda} \\
&= \sum_{\lambda \in X(T_r)} p^{r\abs{\Phi^+}} \cdot 1 \\
&= \abs{X(T_r)} p^{r\abs{\Phi^+}} \\
&= p^{rn} p^{r\abs{\Phi^+}} \qquad n = \dim t\\
&= p^{r \dim \lieb^+} \\
&= \dim A
\]

:::

## Simple $G\dash$modules

We know that after taking fixed points, $Z_r(\lambda)^{U_r}$ and $Z_r'(\lambda)^{U_r^+}$ are one-dimensional, and thus
\[  
Z_r(\lambda) / \rad Z_r(\lambda) \cong L_r(\lambda) \qquad \soc_{G_r} Z_r'(\lambda) = L_r(\lambda)
\]
following the same argument considering $H_0(\lambda)$.

For any $\lambda \in X(T_r)$ we have $0\neq L_r = \soc_{G_r} Z_r'(\lambda)$.
By the one-dimensionality above, we know 
\[  
L_r(\mu) = L_r(\lambda) \iff \lambda = \mu \in X(T_r)
.\]

Letting $N$ be a simple $G_r\dash$module, we can consider it as a $B_r\dash$module, and the simple $B_r\dash$modules are one dimensional and obtained from simple $T_r\dash$modules.
We then know that for some $\lambda \in X(T_r)$,
\[  
0 \neq \hom_{B_r}(N, \lambda) \\
&= \hom_{G_r}(N, \ind_{B_r}^{G_r} \lambda)
,\]
which implies that $N\injects \ind_{B_r}^{G_r} \lambda = Z_r'(\lambda)$ as a submodule, and thus $N = L_r(\lambda)$.


:::{.theorem title="Main Theorem"}
Let $\Lambda$ be a set of representatives of $XX(T) / p^r X(T) \cong X(T_r)$.
Then there exists a one-to-one correspondence
\[  
\Lambda \iff \ts{L_r(\lambda) \lambda \in \Lambda}
,\]
where the RHS are simple $G_r\dash$modules.

:::

How to think about this: **restricted regions**.
Choose dominant weights as representatives
\[  
X_r(T) 
&= \ts{\lambda \in X(T)_+ \st 0\leq \inner{\lambda}{\alpha\dual} < p^r\, \forall \alpha\in \Delta } \\
&= \ts{\lambda \in X(T)_+ \st \lambda = \sum_{i=1}^\ell n_i w_i,\, 0\leq n_j \leq p^r-1\, \forall j} \\
.\]

Pictures:

![Root systems, chambers formed by dominant weights](figures/image_2020-09-21-14-43-23.png)

![Restricted regions](figures/image_2020-09-21-14-43-56.png)


Some facts:

If $\lambda \in X(T)_+$, then $L(\lambda)$ is a simple $G\dash$module.

**Question 1**:
What happens when we restrict $L(\lambda)\downarrow_{G_r}$?

**Answer**:
This remains irreducible over $G_r$ iff $\lambda \in X_r(T)$, i.e. if $L(\lambda)\downarrow_{G} \cong L_r(\lambda)$ when $\lambda \in X_r(T)$.

**Question 2**:
Given $L(\lambda)$ for $\lambda \in X(T)_+$, can we express $L(\lambda)$ in terms of simple $G_r\dash$modules?

**Answer**:
Yes, can be formulated in terms of *Steinberg's twisted tensor product*.


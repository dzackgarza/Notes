# Prologue {#prologue .unnumbered}

## References

-   Carter's "Finite Groups of Lie Type"[@carter_1985]

-   Humphreys' "Linear Algebraic Groups"[@humphreys_2004]

## Notation

```{=tex}
\todo[inline]{Todo}
```
```{=tex}
\newpage
```
# Friday, August 21

## Intro and Definitions

::: {.definition title="Affine Variety"}
Let \( k=\mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \) be algebraically closed (e.g. \( k = {\mathbb{C}}, \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}_p\mkern-1.5mu}\mkern 1.5mu \)). A variety \( V\subseteq k^n \) is an *affine \( k{\hbox{-}} \)variety* iff \( V \) is the zero set of a collection of polynomials in \( k[x_1, \cdots, x_n] \).
:::

Here \( {\mathbb{A}}^n\coloneqq k^n \) with the Zariski topology, so the closed sets are varieties.

::: {.definition title="Affine Algebraic Group"}
An *affine algebraic \( k{\hbox{-}} \)group* is an affine variety with the structure of a group, where the multiplication and inversion maps
\[  
\mu: G\times G &\to G \\
\iota: G&\to G
\]
are continuous.
:::

::: {.example}
\( G = {\mathbb{G}}_a \subseteq k \) the *additive group* of \( k \) is defined as \( {\mathbb{G}}_a \coloneqq(k, +) \). We then have a *coordinate ring* \( k[{\mathbb{G}}_a] = k[x] / I = k[x] \).
:::

::: {.example}
\( G = \operatorname{GL}(n, k) \), which has coordinate ring \( k[x_{ij}, T] / \left\langle{\det(x_{ij})\cdot T = 1}\right\rangle \).
:::

::: {.example}
Setting \( n=1 \) above, we have \( {\mathbb{G}}_m \coloneqq\operatorname{GL}(1, k) = (k^{\times}, \cdot) \). Here the coordinate ring is \( k[x, T] / \left\langle{xT = 1}\right\rangle \).
:::

::: {.example}
\( G = {\operatorname{SL}}(n, k) \leq \operatorname{GL}(n, k) \), which has coordinate ring \( k[G] = k[x_{ij}] / \left\langle{\det(x_{ij}) = 1}\right\rangle \).
:::

::: {.definition title="Irreducible"}
A variety \( V \) is *irreducible* iff \( V \) can not be written as \( V = \cup_{i=1}^n V_i \) with each \( V_i \subseteq V \) a proper subvariety.

![Reducible vs Irreducible](figures/Reducible_v_irreducible.png)
:::

::: {.proposition title="?"}
There exists a unique irreducible component of \( G \) containing the identity \( e \). Notation: \( G^0 \).
:::

::: {.proposition title="?"}
\( G \) is the union of translates of \( G^0 \), i.e. there is a decomposition
\[  
G = {\coprod}_{g\in \Gamma} \, g\cdot G^0
,\]
where we let \( G \) act on itself by left-translation and define \( \Gamma \) to be a set of representatives of distinct orbits.
:::

::: {.proposition title="?"}
One can define solvable and nilpotent algebraic groups in the same way as they are defined for finite groups, i.e. as having a terminating derived or lower central series respectively.
:::

## Jordan-Chevalley Decomposition

::: {.proposition title="Existence and Uniqueness of Radical"}
There is a maximal connected normal solvable subgroup \( R(G) \), denoted the *radical of \( G \)*.

-   \( \left\{{e}\right\} \subseteq R(G) \), so the radical exists.
-   If \( A, B \leq G \) are solvable then \( AB \) is again a solvable subgroup.
:::

::: {.definition title="Unipotent"}
An element \( u \) is *unipotent* \( \iff \) \( u = 1+n \) where \( n \) is nilpotent \( \iff \) its the only eigenvalue is \( \lambda = 1 \).
:::

::: {.proposition title="JC Decomposition"}
For any \( G \), there exists a closed embedding \( G\hookrightarrow\operatorname{GL}(V) = \operatorname{GL}(n , k) \) and for each \( x\in G \) a unique decomposition \( x=su \) where \( s \) is semisimple (diagonalizable) and \( u \) is unipotent.
:::

Define \( R_u(G) \) to be the subgroup of unipotent elements in \( R(G) \).

::: {.definition title="Semisimple and Reductive"}
```{=tex}
\hfill
```
Suppose \( G \) is connected, so \( G = G^0 \), and nontrivial, so \( G\neq \left\{{e}\right\} \). Then

-   \( G \) is semisimple iff \( R(G) = \left\{{e}\right\} \).
-   \( G \) is reductive iff \( R_u(G) = \left\{{e}\right\} \).
:::

::: {.example}
\( G = \operatorname{GL}(n, k) \), then \( R(G) = Z(G) = kI \) the scalar matrices, and \( R_u(G) = \left\{{e}\right\} \). So \( G \) is reductive and semisimple.
:::

::: {.example}
\( G = {\operatorname{SL}}(n , k) \), then \( R(G) = \left\{{I}\right\} \).

::: {.exercise}
Is this semisimple? Reductive? What is \( R_u(G) \)?
:::
:::

::: {.definition title="Torus"}
A *torus* \( T\subseteq G \) in \( G \) an algebraic group is a commutative algebraic subgroup consisting of semisimple elements.
:::

::: {.example}
Let
\[  
T \coloneqq
\left\langle{
\begin{bmatrix}
a_1 &  & \mathbf 0\\
 & \ddots &  \\
\mathbf 0 &  & a_n
\end{bmatrix} \subseteq \operatorname{GL}(n ,k)
}\right\rangle
.\]
:::

::: {.remark}
Why are torii useful? For \( g = \mathrm{Lie}(G) \), we obtain a root space decomposition
\[  
g = 
\qty{\bigoplus_{\alpha \in \Phi_- }g_\alpha} \oplus 
t \oplus
\qty{\bigoplus_{\alpha \in \Phi_+ }g_\alpha} 
.\]

When \( G \) is a simple algebraic group, there is a classification/correspondence:
\[  
(G, T) \iff (\Phi, W)
.\]
where \( \Phi \) is an irreducible root system and \( W \) is a Weyl group.
:::

# Monday, August 24

## Review and General Setup

-   \( k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \) is algebraically closed
-   \( G \) is a reductive algebraic group
-   \( T\subseteq G \) is a *maximal split torus*

> Split: \( T\cong \bigoplus {\mathbb{G}}_m \).

We'll associate to this a root system, not necessarily irreducible, yielding a correspondence
\[  
(G, T) \iff (\Phi, W)
\]
with \( W \) a Weyl group.

This will be accomplished by looking at \( {\mathfrak{g}}= \mathrm{Lie}(G) \). If \( G \) is simple, then \( {\mathfrak{g}} \) is "simple", and \( \Phi \) irreducible will correspond to a Dynkin diagram.

There is this a 1-to-1 correspondence
\[  
G \text{ simple}/\sim \iff A_n, B_n, C_n, D_n, E_6, E_7, E_8, F_4, G_2
\]
where \( \sim \) denotes *isogeny*.

Taking the Zariski tangent space at the identity "linearizes" an algebraic group, yielding a Lie algebra.

![Image](figures/image_2020-08-24-14-09-33.png)

We have the coordinate ring \( k[G] = k[x_1, \cdots, x_n] / \mathcal{I}(G) \) where \( \mathcal{I}(G) \) is the zero set. This is equal to \( \left\{{f:G\to k}\right\} \),

## The Associated Lie Algebra

::: {.definition title="The Lie Algebra of an Algebraic Group"}
Define *left translation* is
\[  
\lambda_x: k[G] &\to k[G] \\
y &\mapsto f(x^{-1} y)
.\]

Define *derivations* as
\[  
\mathrm{Der} ~k[G] = \left\{{D: k[G] \to k[G] {~\mathrel{\Big|}~}D(fg) = D(f) g + f D(g) }\right\}
.\]

We can then realize the Lie algebra as
\[  
{\mathfrak{g}}= \mathrm{Lie}(G) = \left\{{D\in \mathrm{Der} k[G] {~\mathrel{\Big|}~}\lambda_x \circ D = D\circ \lambda_x}\right\}
,\]
the left-invariant derivations.
:::

::: {.example}
```{=tex}
\hfill
```
-   \( G = \operatorname{GL}(n, k) \implies{\mathfrak{g}}= {\mathfrak{gl}}(n, k) \)
-   \( G = {\operatorname{SL}}(n, k) \implies{\mathfrak{g}}= {\mathfrak{sl}}(n, k) \)
:::

Let \( G \) be reductive and \( T \) be a split torus. Then \( T \) acts on \( {\mathfrak{g}} \) via an *adjoint action*. (For \( \operatorname{GL}_n, {\operatorname{SL}}_n \), this is conjugation.)

There is a decomposition into eigenspaces for the action of \( T \),
\[  
{\mathfrak{g}}= \qty{\bigoplus_{\alpha\in \Phi} g_\alpha} \oplus t
\]
where \( t = \mathrm{Lie}(T) \) and \( g_\alpha \coloneqq\left\{{x\in {\mathfrak{g}}{~\mathrel{\Big|}~}t.x = \alpha(t) x\,\, \forall t\in T}\right\} \) with \( \alpha: T\to K^{\times} \) a rational function (a *root*).

In general, take \( \alpha\in\hom_{\text{AlgGrp}}(T, {\mathbb{G}}_m) \).

::: {.example}
Let \( G = \operatorname{GL}(n, k) \) and
\[  
T = \left\{{
\begin{bmatrix}
a_1 & 0 & 0 \\
0 & \ddots & 0 \\
0 & 0 & a_n
\end{bmatrix}
{~\mathrel{\Big|}~}a_j\in k^{\times}
}\right\}
.\]

Then check the following action:

![Action](figures/image_2020-08-24-14-24-40.png)

which indeed acts by a rational function.

Then
\[  
g_\alpha = {\operatorname{span}}\left\{{
\begin{bmatrix}
0 & 1 & 0 \\
0 & 0 & 0\\
0 & 0 & 0
\end{bmatrix}
}\right\} = g_{(1, -1, 0)}
.\]

For \( {\mathfrak{g}}= {\mathfrak{gl}}(3, k) \), we have
\[  
{\mathfrak{g}}= t 
&\oplus g_{(1, -1, 0)}
\oplus g_{(-1, 1, 0)}  \\
&\oplus g_{(0, 1, -1)} 
\oplus g_{(0, -1, 1)}  \\
&\oplus g_{(1, 0, -1)} 
\oplus g_{(-1, 0, 1)} 
.\]
:::

## Representations

Let \( \rho: G\to \operatorname{GL}(V) \) be a group homomorphisms, then equivalently \( V \) is a (rational) \( G{\hbox{-}} \)module.

For \( T\subseteq G \), \( T\curvearrowright G \) semisimply, so we can simultaneously diagonalize these operators to obtain a *weight space decomposition* \( V = \bigoplus_{\lambda \in X(T)} V_\lambda \), where
\[  
V_\lambda &\coloneqq\left\{{v\in V{~\mathrel{\Big|}~}t.v = \lambda(t)v\,\, \forall t\in T}\right\} \\\
X(T) &\coloneqq\hom(T, {\mathbb{G}}_m)
.\]

::: {.example}
Let \( G = \operatorname{GL}(n, k) \) and \( V \) the \( n{\hbox{-}} \)dimensional natural representation as column vectors,
\[  
V = \left\{{{\left[ {v_1, \cdots, v_n} \right]} {~\mathrel{\Big|}~}v_j \in k}\right\}
.\]

Then
\[  
T = \left\{{
\begin{bmatrix}
a_1 & 0 & 0 \\
0 & \ddots & 0\\
0 & 0 & a_n
\end{bmatrix} {~\mathrel{\Big|}~}a_j \in k^{\times}
}\right\}
.\]

Consider the basis vectors \( \mathbf{e}_j \), then
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

Here the weights are of the form \( \varepsilon_j\coloneqq{\left[ {0, 0, \cdots, 1, \cdots, 0} \right]} \) with a \( 1 \) in the \( j \)th spot, so we have
\[  
V = V_{\varepsilon_1} \oplus V_{\varepsilon_2} \oplus \cdots \oplus V_{{\varepsilon_n}}
.\]
:::

::: {.example}
For \( V = {\mathbb{C}} \), we have \( t.v = (a_1^0 \cdots a_n^0)v \) and \( V = V_{(0, 0, \cdots, 0)} \).
:::

## Classification

Let \( G \) be a simple algebraic group (ano closed, connected, normal subgroups other than \( \left\{{e}\right\}, G \)) that is nonabelian that is nonabelian.

::: {.example}
Let \( G = {\operatorname{SL}}(3, k) \). Then
\[  
T = \left\{{
t = 
\begin{bmatrix}
a_1 & 0 & 0 \\
0 & a_1 a_2^{-1}  & 0\\
0 & 0 & a_2^{-1} 
\end{bmatrix}
{~\mathrel{\Big|}~}
a_1, a_2\in k^{\times}
}\right\}
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
and \( \alpha_1 = (2, -1) \).

```{=tex}
\todo[inline]{What is $\alpha_1$? Note that you can recover the Cartan something here?}
```
Then
\[  
{\mathfrak{g}}= 
{\mathfrak{g}}_{(2, -1)} \oplus {\mathfrak{g}}_{(-2, 1)} \oplus
{\mathfrak{g}}_{(-1, 2)} \oplus {\mathfrak{g}}_{(1, -2)} \oplus
{\mathfrak{g}}_{(1, 1)} \oplus {\mathfrak{g}}_{(-1, -1)}
.\]

Then \( \alpha_2 = (-1, 2) \) and \( \alpha_1 + \alpha_2 = ( 1, 1) \).

This gives the root space decomposition for \( {\mathfrak{sl}}_3 \):

![Image](figures/image_2020-08-24-14-49-31.png)

Then the Weyl group will be generated by reflections through these hyperplanes.
:::

# Wednesday, August 26

## Review

-   \( G \) a reductive algebraic group over \( k \)
-   \( T = \prod_{i=1}^n {\mathbb{G}}_m \) a maximal split torus
-   \( {\mathfrak{g}}= \mathrm{Lie}(G) \)
-   There's an induced root space decomposition \( {\mathfrak{g}}= t\oplus \bigoplus_{\alpha\in \Phi}{\mathfrak{g}}_\alpha \)
-   When \( G \) is simple, \( \Phi \) is an *irreducible* root system
    -   There is a classification of these by Dynkin diagrams

::: {.example}
\( A_n \) corresponds to \( {\mathfrak{sl}}(n+1, k) \) (mnemonic: \( A_1 \) corresponds to \( {\mathfrak{sl}}(2) \))
:::

-   We have representations \( \rho: G\to \operatorname{GL}(V) \), i.e. \( V \) is a \( G{\hbox{-}} \)module

-   For \( T\subseteq G \), we have a weight space decomposition: \( V = \bigoplus_{\lambda \in X(T)} V_\lambda \) where \( X(T) = \hom(T, {\mathbb{G}}_m) \).

    > Note that \( X(T) \cong {\mathbb{Z}}^n \), the number of copies of \( {\mathbb{G}}_m \) in \( T \).

## Root Systems and Weights

::: {.example}
Let \( \Phi = A_2 \), then we have the following root system:

![Image](figures/image_2020-08-26-14-05-58.png)
:::

In general, we'll have \( \Delta = \left\{{\alpha_1, \cdots, \alpha_n}\right\} \) a basis of *simple roots*.

::: {.remark}
Every root \( \alpha\in I \) can be expressed as either positive integer linear combination (or negative) of simple roots.
:::

For any \( \alpha\in \Phi \), let \( s_\alpha \) be the reflection across \( H_\alpha \), the hyperplane orthogonal to \( \alpha \). Then define the *Weyl group* \( W = \left\{{s_\alpha {~\mathrel{\Big|}~}\alpha\in \Phi}\right\} \).

::: {.example}
Here the Weyl group is \( S_3 \):

![Image](figures/image_2020-08-26-14-10-24.png)
:::

::: {.remark}
\( W \) acts transitively on bases.
:::

::: {.remark}
\( X(T) \subseteq {\mathbb{Z}}\Phi \), recalling that \( X(T) = \hom(T, {\mathbb{G}}_m) = {\mathbb{Z}}^n \) for some \( n \). Denote \( {\mathbb{Z}}\Phi \) the *root lattice* and \( X(T) \) the *weight lattice*.
:::

::: {.example}
Let \( G = {\mathfrak{sl}}(2, {\mathbb{C}}) \) then \( X(T) = {\mathbb{Z}}\omega \) where \( \omega = 1 \), \( {\mathbb{Z}}\Phi = {\mathbb{Z}}\left\{{\alpha}\right\} \) Then there is one weight \( \alpha \), and the root lattice \( {\mathbb{Z}}\Phi \) is just \( 2{\mathbb{Z}} \). However, the weight lattice is \( {\mathbb{Z}}\omega = {\mathbb{Z}} \), and these are not equal in general.
:::

::: {.remark}
There is partial ordering on \( X(T) \) given by \( \lambda \geq \mu \iff \lambda - \mu = \sum_{\alpha\in \Delta} n_\alpha \alpha \) where \( n_\alpha \geq 0 \). (We say \( \lambda \) *dominates* \( \mu \).)
:::

::: {.definition title="Fundamental Dominant Weights"}
We extend scalars for the weight lattice to obtain \( E \coloneqq X(T) \otimes_{\mathbb{Z}}{\mathbb{R}}\cong {\mathbb{R}}^n \), a Euclidean space with an inner product \( {\left\langle {{\,\cdot\,}},~{{\,\cdot\,}} \right\rangle} \).

For \( \alpha\in \Phi \), define its *coroot* \( \alpha^\vee\coloneqq{2\alpha \over {\left\langle {\alpha},~{\alpha} \right\rangle}} \). Define the *simple coroots* as \( \Delta^\vee\coloneqq\left\{{\alpha_i^\vee}\right\}_{i=1}^n \), which has a dual basis \( \Omega \coloneqq\left\{{\omega_i}\right\}_{i=1}^n \) the *fundamental weights*. These satisfy \( {\left\langle {\omega_i},~{\alpha_j^\vee} \right\rangle} = \delta_{ij} \).

```{=tex}
\todo[inline]{What is the notation for fundamental weights? Definitely not $\Omega$ usually!}
```
> Important because we can index irreducible representations by fundamental weights.

A weight \( \lambda\in X(T) \) is *dominant* iff \( \lambda \in {\mathbb{Z}}^{\geq 0} \Omega \), i.e. \( \lambda = \sum n_i \omega_i \) with \( n_i \in {\mathbb{Z}}^{\geq 0} \).
:::

If \( G \) is simply connected, then \( X(T) = \bigoplus {\mathbb{Z}}\omega_i \).

> See Jantzen for definition of simply-connected, \( {\operatorname{SL}}(n+1) \) is simply connected but its adjoint \( PGL(n+1) \) is not simply connected.

## Complex Semisimple Lie Algebras

When doing representation theory, we look at the Verma modules \( Z(\lambda) = U({\mathfrak{g}}) \otimes_{U({\mathfrak{b}}^+)} \lambda \twoheadrightarrow L(\lambda) \).

::: {.theorem title="?"}
\( L(\lambda) \) as a finite-dimensional \( U({\mathfrak{g}}){\hbox{-}} \)module \( \iff \) \( \lambda \) is dominant, i.e. \( \lambda \in X(T)_+ \).
:::

Thus the representations are indexed by lattice points in a particular region:

![Image](figures/image_2020-08-26-14-36-44.png)

**Question 1**:

Suppose \( G \) is a simple (simply connected) algebraic group. How do you parameterize *irreducible* representations?

For \( \rho: G\to \operatorname{GL}(V) \), \( V \) is a *simple module* (an *irreducible representation*) iff the only proper \( G{\hbox{-}} \)submodules of \( V \) are trivial.

**Answer 1**: They are also parameterized by \( X(T)_+ \). We'll show this using the induction functor \( \operatorname{Ind}_B^G \lambda =H^0(G/B, \mathcal{L}(\lambda)) \) (sheaf cohomology of the flag variety with coefficients in some line bundle).

> We'll define what \( B \) is later, essentially upper-triangular matrices.

**Question 2**: What are the dimensions of the irreducible representations for \( G \)?

**Answer 2**: Over \( k={\mathbb{C}} \) using Weyl's dimension formula.

For \( k = \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_p \): conjectured to be known for \( p\geq h \) (the *Coxeter number*), but by Williamson (2013) there are counterexamples. Current work being done!

# Friday, August 28

## Representation Theory

Review: let \( {\mathfrak{g}} \) be a semisimple lie algebra \( /{\mathbb{C}} \). There is a decomposition \( {\mathfrak{g}}= {\mathfrak{b}}^+ \oplus {\mathfrak{n}}^- = {\mathfrak{n}}^+ \oplus t\oplus {\mathfrak{n}}^- \), where \( t \) is a torus. We associate \( U({\mathfrak{g}}) \) the universal enveloping algebra, and representations of \( {\mathfrak{g}} \) correspond with representations of \( U({\mathfrak{g}}) \).

Let \( \lambda \in X(T) \) be a weight, then \( \lambda \) is a \( U({\mathfrak{b}}^+){\hbox{-}} \)module. We can write \( Z(\lambda) = U({\mathfrak{g}}) \otimes_{U({\mathfrak{b}}^+)} \lambda \).

::: {.remark}
There exists a unique maximal submodule of \( Z(\lambda) \), say \( RZ(\lambda) \) where \( Z(\lambda)/RZ(\lambda) \cong L(\lambda) \) is an irreducible representation of \( {\mathfrak{g}} \).
:::

::: {.theorem title="?"}
Let \( L = L(\lambda) \) be a finite-dimensional irreducible representation for \( {\mathfrak{g}} \). Then

1.  \( L \cong Z(\lambda)/RZ(\lambda) \) for some \( \lambda \).
2.  \( \lambda \in X(T)_+ \) is a dominant integral weight.
:::

### Induction

Let \( {\mathfrak{g}} \) be an algebraic group \( /k \) with \( k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \), and let \( H \leq G \). Let \( M \) be an \( H{\hbox{-}} \)module, we'll eventually want to produce a \( G{\hbox{-}} \)modules.

Step 1: Make \( M \) into a \( G\times H \) where the first component \( (g, 1) \) acts trivially on \( M \).

Taking the coordinate algebra \( k[G] \), this is a \( (G-G){\hbox{-}} \)bimodule, and thus becomes a \( G\times H{\hbox{-}} \)module. Let \( f\in k[G] \), so \( f:G\to K \), and let \( y\in G \). The explicit action is
\[  
[(g, h) f] (y) \coloneqq f(g^{-1} y h)
.\]

Note that we can identify \( H\cong 1\times H \leq G\times H \). We can form \( (M\otimes_k k[G])^H \), the \( H{\hbox{-}} \)fixed points.

::: {.exercise}
Let \( N \) be an \( A{\hbox{-}} \)module and \( B{~\trianglelefteq~}A \), then \( N^B \) is an \( A/B{\hbox{-}} \)module.

> Hint: the action of \( B \) is trivial on \( N^B \). Here \( N^B \coloneqq\left\{{n\in N {~\mathrel{\Big|}~}b.n = n\, \forall b\in B}\right\} \)
:::

::: {.definition title="Induction"}
The *induced module* is defined as
\[  
\operatorname{Ind}_H^G(M) \coloneqq(M\otimes k[G])^H
.\]
:::

### Properties of Induction

1.  \( ({\,\cdot\,}\otimes_k k[G]) = \hom_H(k, {\,\cdot\,}\otimes_k k[G]) \) is only *left-exact*, i.e.
    \[  
    \qty{0\to A\to B\to C\to 0}\mapsto \qty{0\to FA \to FB \to FC \to \cdots}
    .\]

2.  By taking right-derived functors \( R^jF \), you can take cohomology.

> Note that in this category, we won't have enough projectives, but we will have enough injectives.

3.  This functor commutes with direct sums and direct limits.

4.  (**Important**) Frobenius Reciprocity: there is an adjoint, *restriction*, satisfying
    \[  
    \hom_G(N, \operatorname{Ind}_H^G M) = \hom_H(N\downarrow_H, M)
    .\]

5.  (Tensor Identity) If \( M\in {\operatorname{Mod}}(H) \) and additionally \( M \in {\operatorname{Mod}}(G) \), then \( \operatorname{Ind}_H^G = M \otimes_k \operatorname{Ind}_H^G k \).

If \( V_1, V_2 \in {\operatorname{Mod}}(G) \) then \( V_1 \otimes_k V_2 \in {\operatorname{Mod}}(G) \) with the action given by \( g(v_1\otimes v_2) = gv_1 \otimes gv_2 \).

6.  Another interpretation: we can write
    \[  
    \operatorname{Ind}_H^G(M) = \left\{{f\in {\operatorname{Hom}}(G, M_a)
    {~\mathrel{\Big|}~}
    f(gh) = h^{-1} \cdot f(g)
    \, \forall g\in G, h\in H}\right\} \qquad M_a = M \coloneqq{\mathbb{A}}^{\dim M}
    .\]

> I.e., equivariant wrt the \( H{\hbox{-}} \)action.

Then \( G \) acts on \( \operatorname{Ind}_H^G M \) by left-translation: \( (gf)(y) = f(g^{-1} y) \).

7.  There is an evaluation map:
    \[  
    \varepsilon: \operatorname{Ind}_H^G(M) &\to M \\ 
    f&\mapsto f(1)
    .\]

This is an \( H{\hbox{-}} \)module morphism. Why? We can check
\[  
\varepsilon(h.f) 
&\coloneqq(h.f)(a) \\
&= f(h^{-1} ) \\
&= hf(1) \\
&= h(\varepsilon(f))
.\]

We can write the isomorphism in Frobenius reciprocity explicitly:
\[  
\hom_G(N, \operatorname{Ind}_H^G M) &\xrightarrow{\cong} \hom_H(N, M) \\
\phi & \mapsto \varepsilon\circ \phi
.\]

8.  Transitivity of induction: for \( H\leq H' \leq G \), there is a natural transformation (?) of functors:
    \[  
    \operatorname{Ind}_H^G({\,\cdot\,}) = \operatorname{Ind}_{H'}^G\qty{\operatorname{Ind}_H^{H'}({\,\cdot\,}) }
    .\]

```{=tex}
\todo[inline]{Equality as a composition of functors?}
```
## Classification of Simple \( G{\hbox{-}} \)modules {#classification-of-simple-ghbox-modules}

Suppose \( G \) is a connected reductive algebraic group \( /k \) with \( k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \).

::: {.example}
Let \( G = \operatorname{GL}(n, k) \). There is a decomposition:

![Image](figures/image_2020-08-28-14-39-50.png)
:::

**Step 1**: Getting modules for \( U \).

Then there's a general fact: \( U^+ T U \hookrightarrow G \) is dense in the Zariski topology for any reductive algebraic group. We can form

-   \( B^+ \coloneqq T\rtimes U^+ \), the *positive borel*,
-   \( B^- \coloneqq T\rtimes U \), the *negative borel*,

Suppose we have a \( U{\hbox{-}} \)module, i.e. a representation \( \rho: U \to \operatorname{GL}(V) \). We can find a basis such that \( \rho(u) \) is upper triangular with ones on the diagonal. In this case, there is a composition series with 1-dimensional quotients, and the composition factors are all isomorphic to \( k \).

Moral: for unipotent groups, there are only trivial representations, i.e. the only simple \( U{\hbox{-}} \)modules are isomorphic to \( k \).

**Step 2**: Getting modules for \( B \).

Modules for \( B \) are solvable, in which case we can find a flag. In this case, \( \rho(b) \) embeds into upper triangular matrices, where the diagonal action may now not be trivial (i.e. diagonal is now arbitrary).

Thus simple \( B{\hbox{-}} \)modules arise by taking \( \lambda \in X(T) = \hom(T, {\mathbb{G}}_m) = \hom(T, \operatorname{GL}(1, k)) \), then letting \( u \) act trivially on \( \lambda \), i.e. \( u.v = v \). Here we have \( B \to B/U = T \), so any \( T{\hbox{-}} \)module can be pulled back to a \( B{\hbox{-}} \)module.

**Step 3**: Getting modules for \( G \).

Let \( \lambda \in X(T) \), then \( H^0(\lambda) = \operatorname{Ind}_B^G \lambda = \nabla(\lambda) \).

# Monday, August 31

## Review of Representation Theory of Modules

Take \( R \) a ring, then consider \( M \) an \( R{\hbox{-}} \)module to be a "vector space" over \( M \). Note that \( M \) is an \( R{\hbox{-}} \)module \( \iff \) there exists a ring morphism \( \rho: R\to \hom_{\text{AbGrp}}(M, M) \).

Now let \( G \) be a group and consider \( G{\hbox{-}} \)modules \( M \). Then a \( G{\hbox{-}} \)module will be defined by taking \( M/k \) a vector space and a \( G{\hbox{-}} \)action on \( M \). This is equivalent to having a group morphism \( \rho: G\to \operatorname{GL}(M) \).

For \( M \) a \( G{\hbox{-}} \)module, given a group action, define
\[  
\rho: G&\to \operatorname{GL}(M) \\
\rho(g)(m) &= g.m
\]
where \( \rho(h): M\to M \).

Similarly, for \( \rho: G\to \operatorname{GL}(M) \) a group morphism, define the group action \( g.m \coloneqq\rho(g)m \). Thus representations of \( G \) and \( G{\hbox{-}} \)modules are equivalent.

::: {.definition title="?"}
Let \( M \) be a \( G{\hbox{-}} \)module.

1.  \( M \) is a *simple* \( G{\hbox{-}} \)module (equivalently an *irreducible representation*) \( \iff \) the only \( G{\hbox{-}} \)submodules (equiv. \( G{\hbox{-}} \)invariant subspaces) are \( 0, M \).

2.  \( M \) is *indecomposable* \( \iff \) \( M \) can not be written as \( M = M_1 \oplus M_2 \) with \( M_i < M \) proper submodules.
:::

::: {.example}
For \( G = {\operatorname{SL}}(n, {\mathbb{C}}) \), there is a natural \( n{\hbox{-}} \)dimensional representation \( M = V \), and this is irreducible.
:::

```{=tex}
\todo[inline]{What is $V$?}
```
::: {.example}
Let \( R = {\mathbb{Z}} \), so we're considering \( {\mathbb{Z}}{\hbox{-}} \)modules. For \( M={\mathbb{Z}} \), \( M \) is not simple since \( 2{\mathbb{Z}}< {\mathbb{Z}} \) is a proper submodule. However \( M \) is indecomposable.
:::

Recall from last time: we defined a functor \( \operatorname{Ind}_H^G({\,\cdot\,}): H{\hbox{-}}\text{mod} \to G{\hbox{-}}\text{mod} \), where \( \operatorname{Ind}_H^G = \qty{k[G] \otimes M}^H \), the \( H{\hbox{-}} \)invariants. This functor is left-exact but not right-exact, so we have cohomology \( R^j \operatorname{Ind}_H^G \) by taking right-derived functors.

Goal: classify simple \( G{\hbox{-}} \)modules for \( G \) a reductive connected algebraic group.

::: {.example}
For \( G = \operatorname{GL}(n , k) \), we have a decomposition

![Image](figures/image_2020-08-31-14-10-01.png)
:::

We have

-   \( B = T\rtimes U \) the negative Borel,
-   \( B = T\rtimes U^+ \) the Borel

For \( U{\hbox{-}} \)modules: \( k \) is the only simple \( U{\hbox{-}} \)module. Importantly, if \( V \) is a \( U{\hbox{-}} \)module, then the fixed points are never zero, i.e. \( V^U = \hom_{U{\hbox{-}}\text{Mod}}(k, V) \neq 0 \).

For \( B{\hbox{-}} \)modules: let \( X(T) \coloneqq\hom(T, {\mathbb{G}}_m) = \hom(T, \operatorname{GL}(1, k)) \). These are the simple representations for the torus \( T \). Thus \( \lambda \in X(T) \) represents a simple \( T{\hbox{-}} \)module.

We have a map \( B \to B/U = T \), so we can pullback \( T{\hbox{-}} \)representations to \( B{\hbox{-}} \)representations ("inflation"), since we have a map \( T\to \operatorname{GL}(1, k) \) and we can just compose. So \( \lambda \) is a 1-dimensional (simple) \( B{\hbox{-}} \)module where \( U \) acts trivially.

Lee's theorem: all irreducible representations for \( B \) are one-dimensional. Thus these are the simple \( B{\hbox{-}} \)modules.

For \( G{\hbox{-}} \)modules: define \( \nabla(\lambda) \coloneqq\operatorname{Ind}_B^G(\lambda) = H^0(\lambda) \).

Questions:

1.  When does \( H^0(\lambda) = 0 \)?
2.  What is \( \dim_{k{\hbox{-}}\text{Vect}} H^0(\lambda) \)?
3.  What are the composition factors of \( H^0(\lambda) \)?

> Known in characteristic zero, wildly open in positive characteristic.

::: {.remark}
Another interpretation: look at the flag variety \( G/B \) and take global sections, then \( H^0(\lambda) = H^0(G/B, \mathcal{L}(\lambda)) \) where \( \mathcal{L} \) is given by projecting the fiber product \( G \times_B \lambda \twoheadrightarrow G/B \) onto the first factor.
:::

::: {.remark}
```{=tex}
\hfill
```
1.  \( H^0(k) = H^0({\left[ {0, \cdots, 0} \right]}) = k[G/B] = k \).
2.  \( H^0(M) = M \) if \( M \) is a \( G{\hbox{-}} \)module.
3.  A \( G{\hbox{-}} \)module \( M \) is *semisimple* iff \( M = \bigoplus_{i\in I} M_i \) with each \( M_i \) are simple.
4.  Can consider the largest semisimple submodule, the *socle* \( \operatorname{Soc}_G(M) \).
:::

```{=tex}
\begin{center}
\begin{tikzcd}
L_4 \ar[dr] & & L_5 \oplus L_7\ar[dl] \\
& \qty{L_1 \oplus L_2 \oplus L_3} = \operatorname{Soc}_G(M)) & \\
\end{tikzcd}
\end{center}
```
Goal: classify simple \( G{\hbox{-}} \)modules. Strategy: used dominant highest weights.

> As opposed to Verma modules, the irreducibles will be a dual situation where they sit at the bottom of the module. Indicated by the notation \( \nabla \) pointing down!

::: {.proposition title="?"}
Let \( \lambda \in X(T) \) with \( H^0(\lambda) \neq 0 \).

1.  \( \dim H^0(\lambda)^{U^+} = 1 \) and \( H^0(\lambda)^{U^+} = H^0(\lambda)_\lambda \).
2.  Every weight of \( H^0(\lambda) \) satisfies \( w_u \lambda \leq \mu \leq \lambda \), where \( w_0 \) is the longest Weyl group element and \( \alpha\leq \beta \iff \alpha-\beta \in {\mathbb{Z}}^{+}\Phi \).

> Note that in fact \( \ell(w_0) = {\left\lvert {\Phi^+} \right\rvert} \).
:::

::: {.example}
Take \( A_2 \) with simple reflections \( s_{\alpha_1}, s_{\alpha_2} \) and \( \Delta = \left\{{\alpha_1, \alpha_2}\right\} \).
```{=tex}
\begin{center}
\begin{tikzcd}
& 1\ar[ld] \ar[rd] & \\
s_{\alpha_1} \ar[d] & & s_{\alpha_2}\ar[d] \\
s_{\alpha_1}s_{\alpha_2}\ar[rd] & & s_{\alpha_2} s_{\alpha_1}\ar[ld] \\
& s_{\alpha_2} s_{\alpha_1}s_{\alpha_1} = s_{\alpha_1} s_{\alpha_2} s_{\alpha_1} = w_0 & 
\end{tikzcd}
\end{center}
```
:::

::: {.proof title="(Sketch)"}
We can write
\[  
H^0(\lambda) = \left\{{f\in k[G] {~\mathrel{\Big|}~}f(gb) = \lambda(b)^{-1} f(g) \, b\in B, g\in G}\right\}
.\]

Suppose \( f\in H^0(\lambda)^{U^+} \) and \( u_+ \in U^+, t\in T, u\in U \). Then
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

So by density, \( f(1) \) is determined by \( f(u_+ t u) \) and \( \dim H^0(\lambda)^{U^+} \leq 1 \). But since this can't be zero, the dimension must be equal to 1.
:::

::: {.proposition title="?"}
Let
\[  
\varepsilon: H^0(\lambda) \to \lambda
\]
be the evaluation morphism.

This is a morphism of \( B{\hbox{-}} \)modules, and in particular is a morphism of \( T{\hbox{-}} \)modules. Thus the image of a weight \( \mu \neq \lambda \) is zero, so \( \varepsilon \) is injective.
:::

::: {.proof}
We have
\[  
f(u_+ t u) = \lambda(t)^{-1} f(1) = \lambda(t)^{-1} \varepsilon(f)
.\]

Suppose \( f\in H^0(\lambda)^{U^+} \) and \( \varepsilon(f) = 0 \). Then \( f(u_+ t u) = 0 \), and by density \( f\equiv 0 \), showing injectivity.

Therefore \( H^0(\lambda)^{U^+}\subset H^0(\lambda)_\lambda \). Suppose \( \mu \) is maximal among weights in \( H^0(\lambda) \). Then
\[  
H^0(\lambda)_{\mu} \subseteq H^0(\lambda)^{U^+}
\]
because \( U^+ \) raises weights.

But \( H^0(\lambda)^{U^+} \subseteq H^0(\lambda)_\lambda \) implies \( \mu = \lambda \). Thus the maximal weight in \( H^0(\lambda) \) is \( \lambda \).

> Recall the situation in lie algebras: \( g_\alpha v \in V_{\lambda + \alpha} \) when \( v\\in V_{\lambda} \).

Since \( \lambda \) is maximal, any other weight \( \mu \) satisfies \( \mu \leq \lambda \). Thus
\[  
H^0(\lambda)_\lambda \subseteq H^0(\lambda)^{U^+} \subseteq H^0(\lambda)_\lambda
,\]
forcing these to be equal and finishing part 1.
:::

# Friday, September 04

Some concepts used in the proof of other theorems: Let \( G \) be a reductive algebraic group and \( {\mathfrak{g}} \) its lie algebra. There is an associative algebra \( U({\mathfrak{g}}) \) which reflects the representation theory of \( G \).

Fact: \( {\mathfrak{g}}{\hbox{-}} \)mod \( \equiv U({\mathfrak{g}}){\hbox{-}} \)modules which are unitary, i.e. \( 1.m = m \).

We can write a basis
\[  
{\mathfrak{g}}= \left\langle{e_\alpha, h_i, f_\beta {~\mathrel{\Big|}~}\alpha\in\Phi^+,\, \beta\in\Phi^-,\, i = 1,2,\cdots,n}\right\rangle
,\]
the *Chevalley basis*. It turns out that the structure constants are all in \( {\mathbb{Z}} \).

::: {.example}
Take \( {\mathfrak{g}}= {\mathfrak{sl}}(2, k) \), then
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

We want to form a \( {\mathbb{Z}}{\hbox{-}} \)lattice in \( U({\mathfrak{g}}) \), denoted
\[  
U({\mathfrak{g}})_{\mathbb{Z}}
=
\left\langle{
e_\alpha^{[n]} = {e_\alpha^n \over n!},\, f_\beta^{[n]} = {f_\beta^n \over n!}, {h_i \choose m}
}\right\rangle
.\]

We then form the *distribution algebra* (or *hyperalgebra* in earlier literature) as \( \mathrm{Dist})G) \coloneqq U({\mathfrak{g}})_{\mathbb{Z}}\otimes_{\mathbb{Z}}k \) for \( k \) any field (e.g. \( \operatorname{ch}(k) = p \)).

::: {.theorem title="?"}
\( G{\hbox{-}} \)modules \( \equiv \mathrm{Dist}(G){\hbox{-}} \)modules which are

-   *Weight modules*
-   *Locally finite*: \( \dim \mathrm{Dist}(G).m < \infty \) for all \( m\in M \).
:::

::: {.remark}
In characteristic zero, \( \mathrm{Dist}(G) = U({\mathfrak{g}}) \). Thus there is a correspondence
\[  
\left\{{\substack{G{\hbox{-}}\text{modules}}}\right\} \iff
\left\{{\substack{U({\mathfrak{g}}){\hbox{-}}\text{modules}}}\right\} 
.\]

If \( \operatorname{ch}(k) = p \), e.g. \( k = \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_p \), and if the Frobenius map \( F:G\to G \) satisfies \( G_1\coloneqq\ker F \) (thinking of \( G_1 \) as a group scheme), then \( \mathrm{Dist}(G_1) < \mathrm{Dist}(G) \) is a proper submodule. In this case, \( {\mathfrak{g}}\subseteq \mathrm{Dist}(G_1) \) is a finite dimensional Hopf algebra, and \( k[G_1] = \mathrm{Dist}(G_1)^\vee \). Importantly, the lie algebra does *not* generate \( \mathrm{Dist}(G) \) if \( k = \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_p \).
:::

::: {.example}
Take \( G = {\mathbb{G}}_a \), then \( \mathrm{Dist}({\mathbb{G}}_a) = \left\langle{T^k {~\mathrel{\Big|}~}k=0,1,\cdots}\right\rangle \) is an infinite dimensional algebra. In this case, \( T^k T^\ell = {k+\ell \choose \ell}T^{k+\ell} \). For \( k={\mathbb{C}} \), \( \mathrm{Dist}({\mathbb{G}}_a) = \left\langle{T^1}\right\rangle \) has one generator.

In the case \( k = \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_p \), we have \( \mathrm{Dist}(\qty{{\mathbb{G}}_a}_1) = \left\langle{T^k {~\mathrel{\Big|}~}0\leq k \leq p-1}\right\rangle \).

Note that taking duals yields a truncated polynomial algebra: \( k[\qty{{\mathbb{G}}_a}_1] = k[x] / \left\langle{x^p}\right\rangle \).
:::

## Review

Recall that \( H^0(\lambda) \coloneqq\operatorname{Ind}_B^G \lambda \). Proved in last (missed) class:

::: {.remark}
Let \( H^0(\lambda) \neq 0 \). Then

a.  \( \dim H^0(\lambda)_\lambda = 1 \) where \( H^0(\lambda) = H^0(\lambda)^{U^+} \).

b.  Each weight \( \mu \) of \( H^0(\lambda) \) satisfies \( w_0 \lambda \leq \mu \leq \lambda \), where \( w_0 \) is the longest Weyl group element.
:::

::: {.remark}
Let \( H^0(\lambda)_\lambda \neq 0 \), then \( L(\lambda) = \operatorname{Soc}_G H^0(\lambda) \) is simple.
:::

::: {.remark}
If \( \mu \) is a weight of \( L(\lambda) \), then \( w_0 \lambda \leq \mu \leq \lambda \), \( \dim L(\lambda)_\lambda = 1 \), and \( L(\lambda)_\lambda = L(\lambda)^{U+} \).
:::

::: {.remark}
Any simple \( G{\hbox{-}} \)module is isomorphic to \( L(\lambda) \) where \( H^0(\lambda) \neq 0 \).
:::

Goal: We now want to classify simple \( G{\hbox{-}} \)modules. So we need an iff criterion for when \( H^0(\lambda) \neq 0 \).

We look at the set of dominant weights
\[  
X(T)_+ 
&= \left\{{\lambda \in X(T) {~\mathrel{\Big|}~}{\left\langle {\lambda},~{\alpha^\vee} \right\rangle}\geq 0 \forall \alpha\in\Delta}\right\}
&= \left\{{\lambda \in X(T) {~\mathrel{\Big|}~}\lambda = \sum_{i=1}^\ell n_i w_i,\, n_i \geq 0}\right\}
.\]

::: {.theorem title="?"}
TFAE:

1.  \( H^0(\lambda) \neq 0 \).
2.  \( \lambda \in X(T)_+ \), i.e. \( \lambda \) is a dominant weight.
:::

::: {.proof}
\( 1\implies 2 \): Suppose (1), then consider a simple reflection \( s_\alpha \) for some \( \alpha \in \Delta \). We know \( H^0(\lambda)_\lambda \neq 0 \), thus \( H^0(\lambda)_{s_\alpha \lambda} \neq 0 \). Therefore
\[  
s_\alpha \lambda = \lambda - {\left\langle {\lambda},~{\alpha^\vee} \right\rangle}\alpha \leq \lambda \\
\implies 0 \leq {\left\langle {\lambda},~{\alpha^\vee} \right\rangle}\alpha \\
\implies {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} \geq 0 \qquad \forall \alpha\in \Delta
.\]

\( 2\implies 1 \): For a detailed proof, see Jantzen 2.6 in Part II.

-   Let \( \lambda \in X(T)_+ \), then (by the intro lie algebras course) there exists an \( L(\lambda) \): a simple finite dimensional \( U({\mathfrak{g}}){\hbox{-}} \)module over \( {\mathbb{C}} \).

-   \( L(\lambda) \) has an integral basis which is compatible with \( U({\mathfrak{g}})_{\mathbb{Z}} \) (Kostant's \( {\mathbb{Z}}{\hbox{-}} \)form).

-   Thus we can base change to get \( \tilde L(\lambda) \coloneqq L(\lambda) \otimes_{\mathbb{Z}}k \), which is a \( \mathrm{Dist}(G){\hbox{-}} \)module. Note that \( \tilde L(\lambda) \) still has highest weight \( \lambda \), so consider \( \hom_B(\tilde L(\lambda), \lambda) \neq 0 \).

-   Apply frobenius reciprocity: \( \hom_B(\tilde L(\lambda), \lambda) = \hom_G(\tilde L(\lambda), \operatorname{Ind}_B^G \lambda) = \hom_G(\tilde L(\lambda), H^0(\lambda)) \). But then \( H^0(\lambda) \neq 0 \) (since otherwise this would imply the original hom was zero).
:::

::: {.theorem title="?"}
Let \( G \) be a reductive connected algebraic group over \( k \). Then there exists a 1-to-1 correspondence between dominant weights and irreducible \( G{\hbox{-}} \)representations:
\[  
\left\{{\substack{\text{Dominant weights: } X(T)_+}}\right\} \iff
\left\{{\substack{\text{Irreducible representations: }\left\{{L(\lambda) {~\mathrel{\Big|}~}\lambda \in X(T)_+}\right\} }}\right\}
.\]
:::

## Characters of \( G{\hbox{-}} \)modules {#characters-of-ghbox-modules}

Let \( G \) be reductive, so (importantly) it has a maximal torus \( T \). Let \( M\in G{\hbox{-}}\mathrm{mod} \), so (importantly) \( M\in T{\hbox{-}}\mathrm{mod} \).

Then there is a weight space decomposition \( M = \bigoplus_{\lambda \in X(T)} M_\lambda \). We then write the character of \( M \) as
\[  
\operatorname{ch}M \coloneqq\sum_{\lambda \in X(T)} \qty{\dim M_\lambda} e^{\lambda} \in {\mathbb{Z}}[X(T)]
.\]

Next time: more characters, and Weyl's dimension formula.

# Wednesday, September 09

Todo

# Wednesday, September 16

## Group Schemes

::: {.definition title="Representable Functors"}
Let \( F:: k{\hbox{-}}\operatorname{alg}\to {\operatorname{Set}} \) be a functor, then \( F \) is **representable** iff \( F(R) \) corresponds to "solutions to equations in \( R \)".
:::

::: {.example}
Let \( F({\,\cdot\,}) = {\operatorname{SL}}(2, {\,\cdot\,}) \), then the corresponding equations are \( \det (x_{ij}) = 1 \).
:::

If \( F \) is representable, there is a correspondence \( F(R) \cong \hom_R(A, R) \). In the above example,
\[A = k[x_{11}, x_{12}, x_{21}, x_{22}] / \left\langle{x_{11} x_{22} - x_{12}x_{21}}\right\rangle,\]
which is exactly the coordinate algebra.

::: {.definition title="Affine Group Scheme"}
An *affine group scheme* is a representable functor \( F:k{\hbox{-}}\operatorname{alg}\to{\operatorname{Groups}} \).
:::

Suppose \( G \) is an affine group scheme, and let \( A = k[G] \) be the representing object. Then there is a correspondence
\[  
G{\hbox{-}}\text{modules} \iff k[G]^\vee{\hbox{-}}\text{modules}
.\]

For \( G \) reductive, the RHS is equivalent to \( \operatorname{Dist}(G){\hbox{-}} \)modules.

::: {.definition title="Finite Group Schemes"}
\( G \) is a **finite** group scheme iff \( k[G] \) is finite dimensional.
:::

If \( G \) is finite, then \( A^\vee\cong k[G]^\vee \) is a cocommutative Hopf algebras. Thus representations for *finite* group schemes are equivalent to representations for finite-dimensional cocommutative Hopf algebras.

> On group scheme side: see reduction, spectral sequences, conceptual arguments. On the algebra side: have bases, underlying vector space, can do concrete computations. Can take \( \operatorname{Spec}\qty{k[G]}^\vee \) to recover a group scheme.

## Hopf Algebras

For \( A \) a \( k{\hbox{-}}\operatorname{alg} \), we have a multiplication and a unit, which can be defined in terms of diagrams. To categorically reverse arrows, we can ask for a comultiplication and a counit.
\[  
\Delta: A &\to A^{\otimes 2}
\\ \\
\epsilon: A &\to k 
.\]

We'll want another map, an *antipode*
\[  
s: A\to A
.\]

The comultiplication should satisfy
```{=tex}
\begin{center}
\begin{tikzcd}
A^{\otimes 3} & \ar[l, "1\otimes A"] A^{\otimes 2} \\
A^{\otimes 2}\ar[u, "\Delta \otimes 1"] & \ar[l, "\Delta"]\ar[u, "\Delta"] A
\end{tikzcd}
\end{center}
```
The counit should satisfy
```{=tex}
\begin{center}
\begin{tikzcd}
k\otimes\ar[d, "\cong"] A & \ar[l, "{\varepsilon\otimes 1}"] A^{\otimes 2}\\
A\ar[r, "\cong"] & A\ar[u, "\Delta"]
\end{tikzcd}
\end{center}
```
And the antipode should satisfy
```{=tex}
\begin{center}
\begin{tikzcd}
A & A\ar[l, "{m(s\otimes 1)}"] \\
A\ar[u] & A\ar[l, "\varepsilon"] \ar[u, "\Delta"]
\end{tikzcd}
\end{center}
```
### Module Constructions

Let \( A \) be a Hopf algebra.

1.  For \( A{\hbox{-}} \)modules \( M, N \), we can form the \( A{\hbox{-}} \)module \( M\otimes_k N \) with
    \[  
    \Delta(a) &= \sum a_i \otimes a_j \\ \\
    a(m\otimes n) &= \sum a_1 m \otimes a_2 n
    .\]

2.  If \( M \) is finite-dimensional over \( A \), then \( M^\vee= \hom_k(M, k) \ni f \) is an \( A{\hbox{-}} \)module, and we can define \( (af)(x) \coloneqq f(s(a)x) \) for \( a\in A, x\in M \).

::: {.example}
\( A = kG \) the group algebra on a group is a Hopf algebra:
\[  
\Delta: A &\to A^{\otimes 2} \\
g &\mapsto g\otimes g
.\]

The module action is diagonal, namely \( g(m\otimes n) = gm \otimes gn \). The antipode is given by \( s(g) = g^{-1} \), and the unit is \( \varepsilon(g) = 1 \) for all \( g\in G \).
:::

::: {.example}
Let \( A = U({\mathfrak{g}}) \), the universal enveloping algebra for \( {\mathfrak{g}} \) a Lie algebra. Recall that \( {\mathfrak{g}}{\hbox{-}} \)modules are equivalent to \( U({\mathfrak{g}}){\hbox{-}} \)modules (unitary representations, some big associative algebra). Then \( A \) is a Hopf algebra, with \( \Delta(\ell) = \ell\otimes 1 + 1\otimes\ell \) for \( \ell \in {\mathfrak{g}} \). The unit is \( \varepsilon(\ell) = 0 \), and the antipode is \( s(\ell) = -\ell \).
:::

::: {.example}
Take the additive group \( {\mathbb{G}}_a \), then \( A = k[{\mathbb{G}}_a] \cong k[x] \) is a commutative Hopf algebra with \( \Delta(x) = x\otimes 1 + 1\otimes x \), \( \varepsilon(x) = 0, s(x) = -x \).
:::

::: {.example}
For \( {\mathbb{G}}_m \), we have \( A = k[{\mathbb{G}}_m] \cong k[x, x^{-1}], \varepsilon(x) = 1, s(x) = x^{-1} \).
:::

## Frobenius Kernels

Let \( G \) be an algebraic group (scheme) over \( k \), where \( \operatorname{ch}(k) = p \). Let \( F:G\to G \) be the Frobenius, where e.g.
\[  
F:\operatorname{GL}(n, {\,\cdot\,}) &\to \operatorname{GL}(n, {\,\cdot\,})\\
(x_{ij}) & \mapsto (x_{ij}^p)
.\]

Then \( F \) is a map of group schemes.

::: {.definition title="Frobenius Kernels"}
\( G_r \coloneqq\ker F^r \), where \( F^r \coloneqq F\circ F \circ \cdots \circ F \) is the \( r{\hbox{-}} \)fold composition of the Frobenius.

This yields a nesting \( G_1 {~\trianglelefteq~}G_2 {~\trianglelefteq~}G_3 \cdots \leq G \).
:::

Recall that
\[  
\operatorname{Dist}(G) = \left\langle{ {x_\alpha^n \over n!}, {y_\beta^m \over m!}, {H_i \choose k} }\right\rangle
.\]

We get a chain of finite dimensional algebras
\[  
\operatorname{Dist}(G_1) \leq \operatorname{Dist}(G_2) \leq \cdots \leq \operatorname{Dist}(G)
\]
where
\[  
\operatorname{Dist}(G_1) = \left\langle{ {x_\alpha^n \over n!}, {y_\beta^m \over m!}, {H_i \choose k} {~\mathrel{\Big|}~}0\leq n,m,k \leq p-1 }\right\rangle
,\]

where in general \( \operatorname{Dist}(G_\ell) \) goes up to \( p^{\ell} - 1 \). Recall that \( G_r \) representations were equivalent to \( \operatorname{Dist}(G_r) \) representations.

Some basic questions (Curtis, Steinberg, 1960s):

1.  What are the simple modules for Frobenius kernels? I.e., what are the irreducible representations for \( G_r \)?

2.  How are the representations for \( G_r \) related to those for \( G \)?

> It turns out the representations for \( G_r \) will lift to representations to \( G \). Use "twisted tensor product" (Steinberg).

::: {.remark}
It turns out that \( G_1 \) is special.
\[  
\operatorname{Dist}(G_1) \cong u({\mathfrak{g}}) \coloneqq U({\mathfrak{g}}) / \left\langle{x^p - x^{[p]}}\right\rangle
,\]
where \( {\mathfrak{g}}= \mathrm{Lie}(G) \) is a *restricted lie algebra* (N. Jacobson). Note that for \( D\in {\mathfrak{g}} \) a derivation, we define \( D^{[p]} \coloneqq D\circ \cdots \circ D \) is the \( p{\hbox{-}} \)fold composition.

\( G_1{\hbox{-}} \)modules are equivalent to \( {\mathfrak{g}}{\hbox{-}} \)modules which are *restricted* in the sense that
\[  
\rho: g &\to {\mathfrak{gl}}(V) \\
x^{[p]} &\mapsto \rho(x)^p
.\]
:::

# Friday, September 18

## Frobenius Kernels

Let \( \operatorname{ch}(k) p > 0 \) and let \( G \) be an algebraic group scheme. We have a Frobenius map \( F:G\to G \) given by \( F((x_{ij})) = (x_{ij}^p) \), which we can iterate to get \( F^r \) for \( r\in {\mathbb{N}} \). Setting \( G_r = \ker F^r \) the \( r \)th Frobenius kernel, we get a normal series of group schemes
\[  
G_1 {~\trianglelefteq~}G_2 {~\trianglelefteq~}\cdots {~\trianglelefteq~}G
.\]

There is an associated chain of finite dimensional Hopf algebras
\[  
\operatorname{Dist}(G_1) \leq \operatorname{Dist}(G_2) \leq \cdots \leq \operatorname{Dist}(G)
.\]

Then \( k[G]^\vee= \operatorname{Dist}(G_r) \), and we get an equivalence of representations for \( G_r \) to representations for \( \operatorname{Dist}(G_r) \).

A special case will be when \( G \) is a reductive algebraic group scheme. We'll start by finding a basis for \( \operatorname{Dist}(G_r) \).

Recall the PBW theorem: we have a basis for \( {\mathfrak{g}} \) given by
\[  
\left\{{x_\alpha {~\mathrel{\Big|}~}\alpha\in \Phi^+ }\right\} &\text{ Positive root vectors} \\
\left\{{h_i {~\mathrel{\Big|}~}i=1,\cdots, n}\right\} &\text{ A basis for } t \\
\left\{{x_\alpha {~\mathrel{\Big|}~}\alpha\in \Phi^- }\right\} &\text{ Negative root vectors} \\
.\]

We can then obtain a basis for \( U({\mathfrak{g}}) \):
\[  
U({\mathfrak{g}}) = \left\langle{ \prod_{\alpha\in\Phi^+} x_\alpha^{n(\alpha)} \prod_{i=1}^n h_i^{k_i} \prod_{\alpha\in\Phi^+} x_{-\alpha}^{m(\alpha)}  }\right\rangle
.\]

We can similarly obtain a basis for the distribution algebra
\[  
\operatorname{Dist}(G) = \left\langle{ 
\prod_{\alpha\in\Phi^+} { x_{\alpha}^{n(\alpha)} \over n!} 
\prod_{i=1}^n {h_i \choose k_i} 
\prod_{\alpha\in\Phi^+} { x_{-\alpha}^{n(\alpha)} \over n!} 
}\right\rangle
,\]
and we can similar get \( \operatorname{Dist}(G_r) \) by restricting to \( 0\leq n(\alpha), k_i, m(\alpha) \leq p^r - 1 \). Above the \( k_i \) are allowed to be any integers. This yields a triangular decomposition
\[  
\operatorname{Dist}(G_r) = \operatorname{Dist}(U_r^+) \operatorname{Dist}(T_r) \operatorname{Dist}(U_r^-)
,\]
where we'll denote the first two terms \( \operatorname{Dist}(B_r^+) \) and the last two as \( \operatorname{Dist}(B_r) \).

## Induced and Coinduced Modules

Goal: Classify simple \( G_r{\hbox{-}} \)modules. We know the classification of simple \( G{\hbox{-}} \)modules, so we'll follow similar reasoning. We started by realizing \( L(\lambda) \hookrightarrow\operatorname{Ind}_B^G \lambda \) as a submodule (the socle) of some "universal" module.

Let \( M \) be a \( B_r{\hbox{-}} \)module, we can then define
\[  
\operatorname{Ind}_{B_r}^{G_r}M = \qty{k[G_r] \otimes M }^{B_r}
,\]
where we're now taking the \( B_r{\hbox{-}} \)invariants. We get a decomposition as vector spaces,
\[  
k[G_r] = k[U_r^+] \otimes_k k[B_r]
\]
and thus an isomorphism
\[  
\operatorname{Ind}_{B_r}^{G_r}M = \qty{k[G_r] \otimes M }^{B_r} 
\cong k[U_r^+] \otimes\qty{ k[B_r] \otimes M}^{B_r}
\cong k[U_r^+] \otimes M
\]
since \( k[B_r]\otimes M \cong \operatorname{Ind}_{B_r}^{B_r} M \cong M \).

We then define
\[  
\operatorname{Coind}_{B_r}^{G_r} = \operatorname{Dist}(G_r) \otimes_{\operatorname{Dist}(B_r)} \otimes M
,\]
which is an analog of \( U({\mathfrak{g}})\otimes_{U({\mathfrak{b}})} M \).

We have \( \operatorname{Dist}(U_r^+) \otimes\operatorname{Dist}(B_r) \cong \operatorname{Dist}(G_r) \), so

\[  
\operatorname{Coind}_{B_r}^{G_r} = \operatorname{Dist}(G_r) \otimes_{\operatorname{Dist}(B_r)} \otimes M
\cong
\operatorname{Dist}(U_r^+) \otimes_k \operatorname{Dist}(B_r) \otimes_{\operatorname{Dist}(B_r)} M 
\cong
\operatorname{Dist}(U_r^+) \otimes_k M
,\]
which we'll define as the **coinduced module**.

We can compute the dimension:
\[  
\dim \operatorname{Ind}_{B_r}^{G_r} M = \dim \operatorname{Coind}_{B_r}^{G_r} M = \qty{\dim M} p^{r{\left\lvert {\Phi^+} \right\rvert}}
.\]

> Open: don't know how to compute composition factors.

::: {.proposition title="?"}
```{=tex}
\hfill
```
1.  
    \[\operatorname{Coind}_{B_r}^{G_r} M \equiv \operatorname{Ind}_{B_r}^{G_r} M\otimes 2(p^r - 1)\rho,\]
    where the last term is a one-dimensional \( B_r{\hbox{-}} \)module and \( \rho \) is the *Weyl weight*.

2.  
    \[\operatorname{Coind}_{B_r^+}^{G_r} M \cong \operatorname{Ind}_{B_r^+}^{G_r} M \otimes-2\qty{p^r-1}\rho\]

where
\[  
\rho = {1\over 2}\sum_{\alpha\in\Phi^+} \alpha = \sum_{i=1}^n w_i
.\]
:::

::: {.proof title="Sketch for (1)"}
Since the tensor product satisfies a universal property, we have a map
```{=tex}
\begin{center}
\begin{tikzcd}
M \ar[rd, "B_r"]\ar[rr] & & \operatorname{Dist}(G_r)\otimes_{\operatorname{Dist}(B_r)} M\ar[dl, "\exists \psi", dotted] \\
& N = M\operatorname{Ind}_{B_r}^{G_r} \otimes 2(p^r-1)\rho &
\end{tikzcd}
\end{center}
```
1.  We need to find a \( B_r \) morphism \( f:M\to N \).

2.  We need to show that \( f \) generates \( N \) as a \( G_r{\hbox{-}} \)module.

Note that if (1) and (2) hold, then \( \psi \) is surjective, but since \( \dim \operatorname{Coind}_{B_r}^{G_r} M= \dim N \) this forces \( \psi \) to be an isomorphism.

We can write
\[  
\operatorname{Ind}_{B_r}^{G_r} M\otimes 2(p^r-1) \rho
&=
\qty{ k[G_r] \otimes M \otimes 2(p^r-1) \rho  }^{B_r} \\
&\cong
\hom_{B_r}\qty{\operatorname{Dist}(G_r), M\otimes 2(p^r-1)\rho }
.\]

Let \( g_m(x) \coloneqq m\otimes 2(p^r-1)\rho \) for any \( x =\prod_{\alpha\in\Phi^+} {x_\alpha^{p^r-1} \over \qty{p^r-1}! } \), and \( g_m(x) = 0 \) for any other \( x \).

Now define \( f(m) = g_m \), and check that \( \operatorname{im}f \) generates \( N \).
:::

## Verma Modules

Recall that \( W(\lambda) \coloneqq U({\mathfrak{g}}) \otimes_{U({\mathfrak{b}}^+)} \lambda \) were the *Verma modules* for lie algebras.

Let \( \lambda \in X(T) \), we have \( T_r \leq T \) and restriction yields a map \( X(T) \to X(T_r) \). Given a weight \( \lambda \), we can write it \( p{\hbox{-}} \)adically as
\[  
\lambda = \lambda_0 + \lambda_1 p + \lambda_2 p^2 + \cdots + \lambda_{r-1} + \cdots
.\]

This yields an exact sequence
\[  
0 \to p^r X(T) \to X(T) \to X(T_r) \to 0
,\]

and thus \( X(T) / p^r X(T) \cong X(T_r) \).

Let \( \lambda \in X(T_r) \), then \( \lambda \) becomes a \( B_r{\hbox{-}} \)module by letting \( U_r \) act trivially, since we have
\[  
\cdots U_r \to B_r \twoheadrightarrow T_r \to 0
.\]

Set \( Z(r) = \operatorname{Coind}_{B_r}^{G_r} \lambda \), and set \( Z(r)' = \operatorname{Ind}_{B_r}^{G_r} \lambda \). Then \( \dim Z_r(\lambda) = \dim Z_r'(\lambda) = p^{r{\left\lvert {\Phi^+} \right\rvert}} \). We'll then think of

-   \( \operatorname{Coind}\twoheadrightarrow L_r(\lambda) \) being in the head,
-   \( L_r(\lambda) \hookrightarrow\operatorname{Ind} \) being the socle.

> Note that the dimensions aren't known, nor are the projective covers or injective hulls.

We have a form of translation invariance, namely
\[  
Z_r(\lambda + p^r\nu) = Z_r(\lambda) \qquad &\forall \nu \in X(T) \\
Z_r'(\lambda + p^r\nu) = Z_r'(\lambda) \qquad &\forall \nu \in X(T)
.\]

::: {.proposition title="?"}
Let \( \lambda \in X(T) \).

1.  \( Z_r(\lambda){\downarrow}_{B_r} \) is the projective cover of \( \lambda \) and the injective hull of \( \lambda - 2(p^r-1)\rho \).
2.  \( Z_r'(\lambda){\downarrow}_{B_r^+} \) is the injective hull of \( \lambda \) and the projective hull of \( \lambda - 2(p^r-1)\rho \).
:::

# Monday, September 21

Let \( G \) be a reductive algebraic group scheme, \( k=\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_p \) with \( p>0 \), equipped with the Frobenius map \( F:G\to G \) with \( F^r \) its \( r{\hbox{-}} \)fold composition. We defined *Frobenius kernels* \( G_r \coloneqq\ker F^r \), which are in correspondence with the cocommutative Hopf algebras \( \operatorname{Dist}(G_r) \).

Goal: We want to classify simple \( G_r{\hbox{-}} \)modules, and to do this we'll use socles.

We have a maximal torus \( T\subseteq G \) and thus \( T_r \subseteq G_r \) after acting by Frobenius. This yields a SES
\[  
0 \to p_r X(T) \to X(T) \to X(T)/p^r X(T) = X(T_r) \to 0
.\]

How to think about this: take \( \lambda \in X(T_r) \), then we can write \( \lambda = \lambda + p^r \sigma \) in \( X(T_r) \) for some other weight \( \sigma \in X(T) \). We'll define the "baby Verma modules"
\[  
Z_r(\lambda) \coloneqq\operatorname{Coind}_{B_r^+}^{G_r} \lambda \\
Z_r'(\lambda) \coloneqq\operatorname{Ind}_{B_r^+}^{G_r} \lambda
,\]

and we have \( \dim Z_r(\lambda) = \dim Z_r'(\lambda) = p^{r {\left\lvert {\Phi^+} \right\rvert}} \).

::: {.proposition title="?"}
Let \( \lambda\in X(T) \) be a weight.

1.  \( Z_r(\lambda)\downarrow_{B_r} \) is the *projective cover* of \( \lambda \) and the *injective hull* of \( \lambda - 2 (p^r-1) \rho \).

2.  \( Z_r'(\lambda)\downarrow_{B_r^+} \) is the *injective hull* of \( \lambda \) and the *projective cover* of \( \lambda - 2 (p^r-1) \rho \).
:::

> Note the latter are \( T_r{\hbox{-}} \)modules, so we let \( U^+ \) act trivially.

::: {.proof title="of 1"}
What we need to do:

1.  Show \( Z_r(\lambda)\downarrow_{B_r} \) is projective.
2.  Show \( Z_r(\lambda) \) is the smallest projective module such that \( Z_r(\lambda) \twoheadrightarrow\lambda \).

For (1), we can write
\[
\operatorname{Dist}(G_r) = \operatorname{Dist}(U_r^+) \operatorname{Dist}(B_r) = \operatorname{Dist}(B_r^+) \operatorname{Dist}(U_r),
,\]
and so
\[  
Z_r(\lambda) 
&= \operatorname{Coind}_{B_r^+}^{G_r} \lambda \\
&= \qty{\operatorname{dist}(G_r) \otimes_{\operatorname{Dist}(B_r)} \lambda} \downarrow_{B_r^+} \\
&= \operatorname{Dist}(U_r^+)\otimes\lambda \\
&= \operatorname{Dist}(B_r^+) \otimes_{\operatorname{Dist}(T_r)} \lambda \\
&= \operatorname{Coind}_{T_r}^{B_r^+} \lambda
.\]

Why is this projective? Look at cohomology, suffices to show that higher Exts vanish. So consider
\[  
\operatorname{Ext}_{B_r^+}^n(\operatorname{Coind}_{T_r}^{B_r^+}, M) 
&= \operatorname{Ext}_{T_r}^n (\lambda, M) \qquad\text{by Frobenius reciprocity} \\
&= 0 \qquad \text{for } n \geq 0
,\]
since representations for \( T_r \) are completely reducible, and we've used the fact that \( \operatorname{Coind}_{T_r}^{B_r^+}({\,\cdot\,}) \) is exact.

> Note: general algebra fact that higher exts vanish for projective modules.

For (2), we can write
\[  
\hom_{B_r^+}(Z_r(\lambda), \mu)
&= \hom_{B_r^+}(\operatorname{Coind}_{T_r}^{B_r^+} \lambda, \mu) \\
&= \hom_{T_r} (\lambda, \mu) \qquad\text{by Frobenius reciprocity} \\
&=
\begin{cases}
k \& \lambda = \mu \\
0 \& \text{else}.
\end{cases}
\]

Thus \( Z_r(\lambda) / {\operatorname{rad}}Z_r(\lambda) \downarrow{B_r^+} = \lambda \).

If we now write \( A= \operatorname{Dist}(B_r^+) \) and \( {\mathfrak{g}}= {\mathfrak{n}}^+ \oplus t \oplus {\mathfrak{n}} \) with \( {\mathfrak{b}}^+ \coloneqq{\mathfrak{n}}^+ \oplus t \),
\[
\sum_S \qty{\dim P(S)} \qty{\dim(S)} \\
&= \sum_{\lambda \in X(T_r)} \qty{\dim Z_r(\lambda)} \qty{\dim \lambda} \\
&= \sum_{\lambda \in X(T_r)} p^{r{\left\lvert {\Phi^+} \right\rvert}} \cdot 1 \\
&= {\left\lvert {X(T_r)} \right\rvert} p^{r{\left\lvert {\Phi^+} \right\rvert}} \\
&= p^{rn} p^{r{\left\lvert {\Phi^+} \right\rvert}} \qquad n = \dim t\\
&= p^{r \dim {\mathfrak{b}}^+} \\
&= \dim A
\]
:::

## Simple \( G{\hbox{-}} \)modules {#simple-ghbox-modules}

We know that after taking fixed points, \( Z_r(\lambda)^{U_r} \) and \( Z_r'(\lambda)^{U_r^+} \) are one-dimensional, and thus
\[  
Z_r(\lambda) / {\operatorname{rad}}Z_r(\lambda) \cong L_r(\lambda) \qquad \operatorname{Soc}_{G_r} Z_r'(\lambda) = L_r(\lambda)
\]
following the same argument considering \( H_0(\lambda) \).

For any \( \lambda \in X(T_r) \) we have \( 0\neq L_r = \operatorname{Soc}_{G_r} Z_r'(\lambda) \). By the one-dimensionality above, we know
\[  
L_r(\mu) = L_r(\lambda) \iff \lambda = \mu \in X(T_r)
.\]

Letting \( N \) be a simple \( G_r{\hbox{-}} \)module, we can consider it as a \( B_r{\hbox{-}} \)module, and the simple \( B_r{\hbox{-}} \)modules are one dimensional and obtained from simple \( T_r{\hbox{-}} \)modules. We then know that for some \( \lambda \in X(T_r) \),
\[  
0 \neq \hom_{B_r}(N, \lambda) \\
&= \hom_{G_r}(N, \operatorname{Ind}_{B_r}^{G_r} \lambda)
,\]
which implies that \( N\hookrightarrow\operatorname{Ind}_{B_r}^{G_r} \lambda = Z_r'(\lambda) \) as a submodule, and thus \( N = L_r(\lambda) \).

::: {.theorem title="Main Theorem"}
Let \( \Lambda \) be a set of representatives of \( XX(T) / p^r X(T) \cong X(T_r) \). Then there exists a one-to-one correspondence
\[  
\Lambda \iff \left\{{L_r(\lambda) \lambda \in \Lambda}\right\}
,\]
where the RHS are simple \( G_r{\hbox{-}} \)modules.
:::

How to think about this: **restricted regions**. Choose dominant weights as representatives
\[  
X_r(T) 
&= \left\{{\lambda \in X(T)_+ {~\mathrel{\Big|}~}0\leq {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} < p^r\, \forall \alpha\in \Delta }\right\} \\
&= \left\{{\lambda \in X(T)_+ {~\mathrel{\Big|}~}\lambda = \sum_{i=1}^\ell n_i w_i,\, 0\leq n_j \leq p^r-1\, \forall j}\right\} \\
.\]

Pictures:

![Root systems, chambers formed by dominant weights](figures/image_2020-09-21-14-43-23.png)

![Restricted regions](figures/image_2020-09-21-14-43-56.png)

Some facts:

If \( \lambda \in X(T)_+ \), then \( L(\lambda) \) is a simple \( G{\hbox{-}} \)module.

**Question 1**: What happens when we restrict \( L(\lambda)\downarrow_{G_r} \)?

**Answer**: This remains irreducible over \( G_r \) iff \( \lambda \in X_r(T) \), i.e. if \( L(\lambda)\downarrow_{G} \cong L_r(\lambda) \) when \( \lambda \in X_r(T) \).

**Question 2**: Given \( L(\lambda) \) for \( \lambda \in X(T)_+ \), can we express \( L(\lambda) \) in terms of simple \( G_r{\hbox{-}} \)modules?

**Answer**: Yes, can be formulated in terms of *Steinberg's twisted tensor product*.

# Friday, September 25

## Review and Proposition

From last time: Steinberg's tensor product.

Let \( G \) be a reductive algebraic group scheme over \( k \) with \( \operatorname{ch}(k) > 0 \). We have a Frobenius \( F:G\to G \), we iterate to obtain \( F^r \) and examine the Frobenius kernels \( G_r\coloneqq\ker F^r \).

If we have a representation \( \rho: G\to \operatorname{GL}(M) \), we can "twist" by \( F^r \) to obtain \( \rho^{(r)}: G \to \operatorname{GL}(M^{(r)}) \). We have

```{=html}
<!--\begin{center}-->
```
```{=html}
<!--\begin{tikzcd}-->
```
```{=html}
<!--G \ar[r, "{F^r}"] \ar[rr, "{\rho^{(r)}}" & G\ar[r, "\rho"] & \GL(M)-->
```
```{=html}
<!--\end{tikzcd}-->
```
```{=html}
<!--\end{center}-->
```
Here \( M^{(r)} \) has the same underlying vector space as \( M \), but a new module structure coming from \( \rho^{(r)} \). Note that \( G_r \) acts trivially on \( M^{(r)} \).

-   \( \left\{{L(\lambda) {~\mathrel{\Big|}~}\lambda \in X(T)_+}\right\} \) are the simple \( G{\hbox{-}} \)modules,
-   \( \left\{{L_r(\lambda) {~\mathrel{\Big|}~}\lambda \in X_r(T)_+}\right\} \) are the simple \( G_r{\hbox{-}} \)modules,

Note that \( L(\lambda)\downarrow_{G_r} \) is semisimple, equal to \( L_r(\lambda) \) for \( \lambda \in X_r(T) \).

> 1960's, Curtis and Steinberg.

::: {.proposition title="?"}
Let \( \lambda \in X_r(T) \) and \( \mu \in X(T)_+ \). Then
\[  
L(\lambda + p^r \mu) \cong L(\lambda) \otimes L(\mu)^{(r)}
.\]
:::

Recall that socle formula: letting \( M \) be a \( G{\hbox{-}} \)module, we have an isomorphism of \( G{\hbox{-}} \)modules:
\[ 
\operatorname{Soc}_{G_r} \cong \bigoplus_{\lambda \in X_r(T)} L(\lambda) \otimes\hom_{G_r}(L(\lambda), M)
.\]

## Proof

::: {.proof}
Let \( M = L(\lambda + p^r \mu) \). Then from the socle formula, only one summand is nonzero, and thus \( \hom_{G_r}(L(\lambda), M) \) must be simple. Then there exists a \( \tilde \lambda \in X_r(T) \) and a \( \tilde \mu \in X(T)_+ \) such that
\[  
M = L(\tilde \lambda) \otimes L(\tilde\mu)^{(r)}
.\]

We now compare highest weights:
\[  
\lambda + p^r \mu = \tilde \lambda + p^r \tilde \mu \implies \lambda = \tilde \lambda {\quad \operatorname{and} \quad} \mu = \tilde \mu
.\]
:::

::: {.theorem title="Steinberg"}
Let \( \lambda \in X(T)_+ \), with a \( p{\hbox{-}} \)adic expansion
\[  
\lambda = \lambda_0 + \lambda_1 p + \cdots + \lambda_m p^m
.\]
where \( \lambda_j \in X_1(T) \) for all \( j \). Then
\[  
L(\lambda) = L(\lambda_0) \otimes\bigotimes_{j=1}^m L(\lambda_j)^{(j)}
.\]
:::

::: {.corollary title="?"}
In order to know \( \dim L(\lambda) \) for \( \lambda \in X(T)_+ \), it is enough to know \( \dim L_1(\mu) \) for \( \mu \in X_1(T) \). Schematic:

![Image](figures/image_2020-09-25-14-13-47.png)
:::

## Some History

Recall that simplie \( G_1{\hbox{-}} \)modules correspond to simple \( \operatorname{Dist}(G_1){\hbox{-}} \)modules, and \( \operatorname{Dist}(G_1) \cong U({\mathfrak{g}}) \).

-   1980: Lusztig proved conjecture: \( \operatorname{ch}L(\lambda) \) for \( \lambda \in X_1(T) \) is given by KL polynomials, shown for \( p \geq 2(h-1) \).

-   Kato showed for \( p> h \), where \( h \) is the *Coxeter number* satisfying \( h = {\left\langle {\rho},~{\alpha_i ^\vee} \right\rangle} + 1 \) where \( \alpha_i^\vee \) is the highest short root.

-   1990's: A relation to representations of quantum groups \( U_q \) and affine lie algebras \( \widehat{{\mathfrak{g}}} \):

    ```{=tex}
    \begin{center}
    \begin{tikzcd}
    \pmod u({\mathfrak{g}}) & \ar[l] \pmod U_q({\mathfrak{g}}) \ar[r, "\cong"] & \pmod\widehat{{\mathfrak{g}}}
    \end{tikzcd}
    \end{center}
    ```
    The first map is due to Andersen-Jantzen-Soergel for \( p\gg 0 \) with no effective lower bounds, and the equivalence is due to Kazhdan-Lusztig, where the L conjecture holds for \( \widehat{{\mathfrak{g}}} \).

-   2000's: Fiebig showed the L conjecture holds for \( p>N \) where \( N \) is an effective (but large) lower bound.

-   2013: Geordie Williamson shows L conjecture is false, with infinitely many counterexamples, and no lower bounds that are linear in \( h \).

> See Donkin's Tilting Module conjecture: expected that characters may come from \( p{\hbox{-}} \)KL polynomials instead.

::: {.example}
Let \( G= {\operatorname{SL}}(2) \), so \( \dim T =1 \). Here the restricted region of weights is given by \( X_!(T) = \left\{{0,1,\cdots, p-1}\right\} \). Then \( H^0(\lambda) = S^\lambda(V) \) for \( \lambda \in X(T)_+ = {\mathbb{Z}}_{\geq 0} \) and \( L(\lambda) \subseteq H^0(\lambda) \).

::: {.theorem title="?"}
\[  
L(\lambda) =  H^0(\lambda) {\quad \operatorname{for} \quad} \lambda \in X_1(T)
.\]
:::

::: {.theorem title="?"}
\[  
\dim L(\lambda) = \lambda + 1 {\quad \operatorname{for} \quad} \lambda \in X_1(T)
.\]
:::

Take \( p=3 \). Then \( \dim L(0) = 1 \), \( \dim L(1) = 2 \) (the natural representation), and \( \dim L(2) = 3 \) (the adjoint representation). Then for \( p=4 \), we have to use the twisted tensor product formula. Taking the 3-adic expansion \( 4 = 1\cdot 3^0 + 1\cdot 3^1 \), we have
\[  
L(4) = L(1) \otimes L(1)^{(1)}
.\]

Since \( \dim L(1) = 2 \), we get \( \dim L(4) = 4 \).

Similarly, considering \( 7 = 1\cdot 3^0 + 2\cdot 3^1 \), we get
\[  
L(7) \cong L(1) \otimes L(2)^{(1)}
\]
and so \( \dim L(7) = 6 \).

Take \( p=5 \), then

-   \( \dim L(0) = 1 \)
-   \( \dim L(1) = 2 \)
-   \( \dim L(2) = 3 \)
-   \( \dim L(3) = 4 \)
-   \( \dim L(4) = 5 \)

What is \( H^0(5) \)? We know \( L(5) \) is a submodule, and we can write the character
\[  
\operatorname{ch}H^0(5) = e^5 + e^3 + e^1 + e^{-1} + e^{-3} + e^{-5}
.\]

We know \( \operatorname{ch}(L(1)) = e^1 + e^{-1} \) and \( L(5) = L(1)^{(1)} \), so we can write \( \operatorname{ch}L() = e^{5} + e^{-5} \). By quotienting, we have \( \operatorname{ch}H^0(5) - \operatorname{ch}L(5) = e^3 + e^1 + e^{-1} +e^{-3} = \operatorname{ch}L(3) \). Thus the composition factors of \( H^0(5) \) are \( L(5) \) and \( L(3) \).

These correspond to an action of the affine Weyl group:

![Image](figures/image_2020-09-25-14-45-28.png)

There is a **strong linkage principle** which describes the possible composition factors of \( H^0(\lambda) \).

We can thus find the socle/head structure:

![Image](figures/image_2020-09-25-14-47-44.png)

Thus \( \operatorname{Ext}_G^1(L(5), L(3)) \cong k \).
:::

> Note that in other types, we don't know the characters of the irreducibles in the restricted region, so we don't necessarily know the composition factors.

![Image](figures/image_2020-09-25-14-51-40.png)

# Monday, September 28

## Kempf's Theorem

Next topic: Kempf's Vanishing Theorem. Proof in Jantzen's book involving ampleness for sheaves.

Setup:

We have

```{=tex}
\begin{tikzcd}
G & \text{a reductive algebraic group over } k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \\
B\ar[u, "\subseteq"] & \text{the Borel subgroup} \\
T\ar[u, "\subseteq"] & \text{its maximal torus}
\end{tikzcd}
```
along with the weights \( X(T) \).

We can consider derived functors of induction, yielding \( R^n \operatorname{Ind}_B^G \lambda = \mathcal{H}^n(G/B, \mathcal{L}(\lambda)) \coloneqq H^n(\lambda) \) where \( \mathcal{L}(\lambda) \) is a line bundle and \( G/B \) is the flag variety.

Recall that

-   \( H^0(\lambda) = \operatorname{Ind}_B^G(\lambda) \),
-   \( \lambda \not\in X(T)_+ \implies H^0(\lambda) = 0 \)
-   \( \lambda \in X(T)_+ \implies L(\lambda) = \operatorname{Soc}_G H^0(\lambda) \neq 0 \).

::: {.theorem title="Kempf"}
If \( \lambda \in X(T)_+ \) a dominant weight, then \( H^n(\lambda) = 0 \) for \( n> 0 \).
:::

::: {.remark}
In \( \operatorname{ch}(k) = 0 \), \( H^n(\lambda) \) is known by the Bott-Borel-Weil theorem. In positive characteristic, this is not know: the characters \( \operatorname{ch}H^n (\lambda) \) is known, and it's not even known if or when they vanish. Wide open problem!

> Could be a nice answer when \( p>h \) the Coxeter number.
:::

## Good Filtrations and Weyl Filtrations

We define two classes of distinguished modules for \( \lambda \in X(T)_+ \):

-   \( \nabla(\lambda) \coloneqq H^0(\lambda) = \operatorname{Ind}_B^G \lambda \) the costandard/induced modules.
-   \( \Delta(\lambda) = V(\lambda) \coloneqq H^0(-w_0 \lambda) = \operatorname{Ind}_B^G \lambda \) the standard/Weyl modules
    -   Here \( w_0 \) is the longest element in the Weyl group

We have
\[  
L(\lambda) &\hookrightarrow\nabla(\lambda)
\Delta(\lambda) &\twoheadrightarrow L(\lambda)
.\]

We define the category \( \text{Rat}{\hbox{-}}G \) of rational \( G{\hbox{-}} \)modules. This is a *highest weight category* (as is e.g. Category \( {\mathcal{O}} \)).

::: {.definition title="Good Filtrations"}
An (possibly infinite) ascending chain of \( G{\hbox{-}} \)modules
\[  
0 \leq V_0 \subseteq V_1 \subseteq V_2 \subseteq \cdots \subseteq V
\]
is a **good filtration** of \( V \) iff

1.  \( V = \cup_{i\geq 0} V_i \)

2.  \( V_i/V_{i-1} \cong H^0(\lambda_i) \) for some \( \lambda_i \in X(T)_+ \).

> In characteristic zero, the \( H^0 \) are irreducible and this recovers a composition series. Since we don't have semisimplicity in this category, this is the next best thing.
:::

::: {.definition title="Weyl Filtration"}
With the same conditions of a good filtration, a chain is a **Weyl filtration** on \( V \) iff

1.  \( V = \cup_{i\geq 0} V_i \)

2.  \( V_i/V_{i-1} \cong V(\lambda_i) \) for some \( \lambda_i \in X(T)_+ \).

> I.e. the different is now that the quotients are standard modules.
:::

::: {.definition title="Tilting Modules"}
\( V \) is a **tilting module** iff \( V \) has both a good filtration and a Weyl filtration.
:::

::: {.theorem title="Ringel, 1990s"}
Let \( \lambda \in X(T)_+ \) be a dominant weight. Then there is a unique indecomposable highest weight tilting module \( T(\lambda) \) with highest weight \( \lambda \).
:::

::: {.example}
We have the following situation for type \( A_2 \):

![Image](figures/image_2020-09-28-14-18-03.png)

And thus a decomposition:

![Image](figures/image_2020-09-28-14-18-46.png)
:::

The picture to keep in mind is the following: 4 types of modules, all indexed by dominant weights:
```{=tex}
\begin{tikzcd}
& H^0(\lambda) & \\
L(\lambda) \ar[ur, hookrightarrow] & & T(\lambda)\arrow[ul, twoheadrightarrow]\\
& V(\lambda) \arrow[ul, twoheadrightarrow] \ar[ur, hookrightarrow]
\end{tikzcd}
```
## Cohomological Criteria for Good Filtrations

We'll take cohomology in the following way: let \( G \) be an algebraic group scheme, and define
\[  
H^n(G, M) \coloneqq
\mathrm{Ext} G^n(k, M)
\]

where to compute \( \operatorname{Ext}_G^n(M, N) \) we take an injective resolution \( N \hookrightarrow I_* \), apply \( \hom_G(M, {\,\cdot\,}) \), and take kernels mod images.

Letting \( \lambda \in {\mathbb{Z}}\Phi \) be integral, so \( \lambda_{\alpha \in \Delta} = \sum n_\alpha \alpha \), define the **height**
\[  
\operatorname{ht}(\lambda) = \sum_{\alpha\in\Delta} n_\alpha
.\]

::: {.lemma title="?"}
There exists an injective resolution of \( B{\hbox{-}} \)modules
\[  
0\to k\to I_0 \to I_1 \to \cdots
\]
where

1.  \( I_0 \) is the injective hull of \( k \),
2.  All weights of \( I_j \), say \( \mu \) satisfy \( \operatorname{ht}(\mu) \geq j \).
:::

\[  
k[u] \text{ an injective $B{\hbox{-}}$module} \\
k\hookrightarrow\operatorname{Ind}_T^B k \coloneqq I_0 = k[u]
.\]

We thus get a diagram of the form

![Image](figures/image_2020-09-28-14-32-38.png)

::: {.proposition title="?"}
Let \( H\leq G \), then there exists a spectral sequence
\[  
E^{i, j}_2 = \operatorname{Ext}_G^i(N, R^j \operatorname{Ind}_H^G M) \implies \operatorname{Ext}_H^{i+j}(N, M)
\]
for \( N\in {\operatorname{Mod}}(G), M\in {\operatorname{Mod}}(H) \).
:::

::: {.example}
Let \( H=B \) and take \( G=G \) itself, and let \( N = k \) the trivial module and \( M\in {\operatorname{Mod}}(G) \) be any rational \( G{\hbox{-}} \)module. We have
\[  
E_2^{i, j} = \operatorname{Ext}^{i}_B(k, R^j \operatorname{Ind}_B^G M) \implies \operatorname{Ext}^{i+j}_B(k, M)
.\]

Observations:

0.  \( R^0 \operatorname{Ind}_B^G k = \operatorname{Ind}_B^G k = k \).

1.  The tensor identity works here, i.e. \( R^j \operatorname{Ind}_B^G M = \qty{R^j \operatorname{Ind}_B^G k} \otimes M \).

2.  \( R^j \operatorname{Ind}_B^G k = 0 \) for \( j> 0 \) since we have a dominant weight.

The spectral sequence thus collapses on \( E_2 \):

![Image](figures/image_2020-09-28-14-41-33.png)

Thus
\[  
E_2^{i, 0} = \operatorname{Ext}^i_B(k, M) = H^i(B, M)
.\]
:::

::: {.corollary title="?"}
Let \( G \supseteq P \supseteq B \) where \( P \) is a *parabolic* subalgebra and let \( M \) be a rational \( G{\hbox{-}} \)module. Then \( H^n(G, M) = H^n(P, M) = H^n(B, M) \) for all \( n \geq 0 \).
:::

::: {.example}
Fix a Dynkin diagram and take a subset \( J\subseteq \Delta \).

![i](figures/image_2020-09-28-14-47-01.png)

Then \( L_j\rtimes U_j = P_J = P \), and we have a decomposition like

![Image](figures/image_2020-09-28-15-13-36.png)
:::

::: {.proposition title="?"}
Let \( M\in {\operatorname{Mod}}(P) \) with \( P\supseteq B \).

a.  If \( \dim M < \infty \) then \( \dim H^n(P, M) < \infty \) for all \( n \).

b.  If \( H^j(P, M) \neq 0 \) then there exists \( \lambda \) a weight of \( M \) with \( -\lambda \in {\mathbb{N}}\Phi^+ \) and \( \operatorname{ht}(-\lambda) \geq j \).
:::

# Wednesday, September 30

Recall that we had a dominant weight \( \lambda \in X(T)_+ \) with

```{=tex}
\begin{center}
\begin{tikzcd}
& V(\lambda)\ar[dl, "\twoheadrightarrow"]\ar[dr, "\hookrightarrow"] & \\
L(\lambda)\ar[dr, "\hookrightarrow"] & &T(\lambda)\ar[dl, "\twoheadrightarrow"] \\
& H^0(\lambda) &
\end{tikzcd}
\end{center}
```
where we have a module with both a *good* and a *Weyl* filtration.

If \( B\subseteq P \subseteq G \) with \( P \) parabolic and \( M\in {\operatorname{Mod}}(G) \), we have a "transfer theorem": maps
\[  
H^n(G; M) \xrightarrow{\operatorname{Res}} H^n(P; M) \xrightarrow{\operatorname{Res}} H^n(B; M)
\]
induced by restrictions which are isomorphisms.

::: {.proposition title="?"}
Let \( M\in {\operatorname{Mod}}(P) \) with \( P\supseteq B \).

a.  If \( \dim M < \infty \) then \( \dim H^n(P; M) < \infty \).

b.  If \( H^j(P; M) \neq 0 \) then there exists a weight \( \lambda \) of \( M \) such that \( -\lambda \in {\mathbb{N}}\Phi^+ \) and \( \operatorname{ht}(-\lambda) \geq j \).
:::

> Part (a) is proved in the book, we won't show it here.

::: {.proof title="of part b"}
Suppose \( H^j(P; M) \neq 0 \), then we have an injective resolution \( I_* \) for \( k \). Tensoring with \( M \) yields an injective resolution for \( M \),
\[  
0 \to M \to I_0\otimes M \to I_1 \otimes M \to \cdots
.\]
Since \( H^j(B; M) \neq 0 \), we know that the cocycles \( \hom_B(k, I_j\otimes M) \neq 0 \) and thus \( \hom_T(k, I_j\otimes M) \neq 0 \).

So there exists a weight \( -\lambda \) of \( I_j \) with \( \operatorname{ht}(-\lambda) \geq j \), and we know \( \lambda \) is a weight of \( M \) applying the previous lemma: namely we know that \( \lambda \) is invariant under the torus action, so there is a weight \( -\lambda \) such that \( -\lambda + \lambda = 0 \).
:::

```{=tex}
\todo[inline]{? Why the last part?}
```
::: {.theorem title="?"}
Let \( \lambda, \mu \in X(T)_+ \), then

1.  The cohomology in the tensor product is zero, except in one special case:
    \[  
    H^i(G, H^0(\lambda) \otimes H^0(\mu))
    =
    \begin{cases}
    0 & i>0 \\
    k & i=0, \lambda = -w_0\mu
    \end{cases}
    .\]

2.  There are only extensions in one specific situation:
    \[  
    \operatorname{Ext}_G^i(V(\mu), H^0(\lambda)) = 
    \begin{cases}
    0 & i> 0 \\
    k & i=0, \lambda = \mu
    \end{cases}
    .\]
:::

The following is an important calculation!

::: {.proof}
Step 1: We'll use Frobenius reciprocity twice. We can write the term of interest in two ways:
\[  
H^i(G, H^0(\lambda) \otimes H^0(\mu)) =
H^i(B, H^0(\lambda) \otimes\mu)
\\ \\
H^i(G, H^0(\lambda) \otimes H^0(\mu)) =
H^i(G, \lambda \otimes H^0(\mu))
.\]

Thus there exists a weight \( \nu \) of \( H^0(\lambda) \) and \( \nu' \) of \( H^0(\mu) \) such that
\[  
\mu + \nu, \lambda + \nu' \in - {\mathbb{N}}\Phi^+ \quad \operatorname{ht}(\mu+\nu), \operatorname{ht}(\lambda + \nu') \leq -i
.\]

Since \( w_0\lambda \) (resp. \( w_0\mu \)) is the lowest of weight of \( H_0(\lambda) \) (resp. \( H_0(\mu) \)), it follows that
\[  
\mu + w_0 \lambda, \lambda + w_0\mu \in -{\mathbb{N}}\Phi^+
.\]

Since \( w_0^2 = \operatorname{id} \), we can write \( \lambda + w_0\mu = w_0(\mu + w_0 \lambda) \). We know that the LHS is in \( -{\mathbb{N}}\Phi^+ \), and the term in parentheses on the RHS is also in \( -{\mathbb{N}}\Phi^+ \). Applying \( w_0 \) interchanges \( \Phi^\pm \), so the RHS is in \( {\mathbb{N}}\Phi^+ \). But \( {\mathbb{N}}\Phi^+ \cap-{\mathbb{N}}\Phi^+ = \left\{{0}\right\} \), forcing \( \lambda + w_0 \mu = 0 \) and thus \( \lambda = -w_0 \mu \).

Since the height of zero is zero, we have
\[  
0 = \operatorname{ht}(\lambda + w_0 \mu)
\leq \operatorname{ht}(\lambda + \nu') \leq -i \implies i=0
.\]
This shows cohomological vanishing for \( i>0 \), the first case in the theorem statement.

For the remaining case, we can check that \( H^0(\lambda)^{U} = H^0(\lambda)_{w_0 \lambda} \), and so
\[  
\qty{H^0(\lambda) \otimes-w_0 \lambda}^{U^+} = k
.\]
This shows that \( H^0(B; H^0(\lambda) \otimes-w_0\lambda ) \cong k \), since
\[  
\qty{H^0(\lambda) \otimes-w_0 \lambda}^B = \qty{ \qty{H^0(\lambda) \otimes-w_0 \lambda }^U }^T
.\]
:::

::: {.proposition title="?"}
Let \( \lambda, \mu \in X(T)_+ \) with \( \lambda \not> \mu \). Then we can calculate the \( i \)th ext by computing the \( i-1 \)st: for \( i>0 \),
\[  
\operatorname{Ext}^i_G(L(\lambda), L(\mu))
\cong
\operatorname{Ext}^{i-1}_G(L(\lambda), H^0(\mu) / \operatorname{Soc}_G(H^0(\mu)))
.\]
:::

::: {.remark}
We showed this in a special case. Let \( i=1 \) with \( \lambda \not> \mu \), then
\[  
\operatorname{Ext}_G^1(L(\lambda), L(\mu)) \cong
{\operatorname{Hom}}_G(L(\lambda), H^0(\mu) / \operatorname{Soc}_G(H^0(\mu)))
.\]
Thus it suffices to understand only the previous layer:

![Image](figures/image_2020-09-30-14-25-09.png)
:::

::: {.proof}
Consider the SES
\[  
0 \to L(\mu) \to H^0(\mu) \to H^0(\mu) / \operatorname{Soc}_G(H^0(\mu)) \to 0
\]
which yields a LES in homology by applying \( \hom_G(L(\lambda), {\,\cdot\,}) \). To obtain the statement, it suffices to show \( \operatorname{Ext}_G^1(L(\lambda), H^0(\mu)) = 0 \) for \( i>0 \), since this is the middle column in the LES.

We can write
\[  
\operatorname{Ext}_G^i(L(\lambda), H^0(\mu))
=
H^i(G, L(\lambda)^\vee\otimes H^0(\mu)) \quad\text{taking duals} \\
=
H^i(B, L(\lambda)^\vee\otimes\mu) \quad\text{by Frobenius reciprocity}
,\]
so we can obtain a weight \( \sigma \) of \( L(\lambda)^\vee\otimes\mu \) such that \( \sigma \in - {\mathbb{N}}\Phi^+ \) and \( \operatorname{ht}(-\sigma) \geq i > 0 \) by applying the previous lemma. So \( \sigma = \nu + \mu \) for \( \nu \) some weight of \( L(\lambda)^\vee \).

By rearranging, we find that \( \sigma \in {\mathbb{N}}\Phi^- \). Letting \( \lambda \) be the lowest weight of \( L(\lambda)^\vee \), we find \( \sigma \geq -\lambda + \mu \) (since this can only lower the weight).

But then \( -\lambda + \mu \in {\mathbb{N}}\Phi^- \), implying \( -\mu + \lambda \in {\mathbb{N}}\Phi^- \), and the LHS here is equal to \( \lambda - \mu \). This precisely says \( \lambda > \mu \), which contradicts the assumption that \( \lambda \) did not dominate \( \mu \). It may also be the case that \( \lambda = \mu \), which is handled separately.
:::

We now want criteria for when we can find the following types of lifts:
```{=tex}
\begin{center}
\begin{tikzcd}
 & V \\
L(\lambda) \ar[ur, "\hookrightarrow"] \ar[r, "\hookrightarrow"] & H^0(\lambda) \ar[u, dotted, "\hookrightarrow"]
\end{tikzcd}
\end{center}
```
::: {.lemma title="Important!"}
Let \( V \) be a \( G{\hbox{-}} \)module with \( 0\neq \hom_G(L(\lambda), V) \). If

-   \( \hom(L(\mu), V) = 0 \),

-   \( \operatorname{Ext}_G^1(V(\mu), V) = 0 \) for all \( \mu \in X(T)_+ \) with \( \mu < \lambda \),

then \( V \) contains a submodule isomorphic to \( H^0(\lambda) \) and such a lift/extension exists.
:::

::: {.remark}
The ext criterion will be the most important. The idea is to quotient and continue applying it.
:::

::: {.proof}
Consider the SES
\[  
0 \to L(\lambda) \hookrightarrow V \to V/L(\lambda) \to 0
\]
as well as
\[  
0 \to L(\lambda) \to H^0(\lambda) \to H^0(\lambda)/L(\lambda) \to 0
.\]

Now want to applying the LES in cohomology by applying \( \hom_G({\,\cdot\,}, V) \), we get a LES of homs over \( G \):
\[  
0 &\to {\operatorname{Hom}}(H^0(\lambda)/L(\lambda), V) \to
{\operatorname{Hom}}(H^0(\lambda) , V) \to
{\operatorname{Hom}}(L(\lambda), V)  \\
&\to \operatorname{Ext}^1(H^0(\lambda)/L(\lambda), V) \to \cdots
.\]
Thus it suffices to show this \( \operatorname{Ext}^1 \) is zero.

Strategy: show all of the composition factors of \( H^0(\lambda)/L(\lambda) \) are zero These are all of the form \( L(\mu) \) for \( \mu < \lambda \), so it now suffices to just show that \( \operatorname{Ext}_G^1(L(\mu), V) = 0 \) when \( \mu < \lambda \).

Observe that we have
\[  
0 \to N \to V(\mu) \to L(\mu) \to 0
\]
where \( N \) are \( L(\sigma) \) composition factors for \( \sigma < \mu \). So apply \( \hom({\,\cdot\,}, V) \):
\[  
0 
&\to
{\operatorname{Hom}}(L(\mu), V) \to
{\operatorname{Hom}}(V(\mu), V) \to
{\operatorname{Hom}}(N, V) \\
&\to
\operatorname{Ext}^1(L(\mu), V) \to
\operatorname{Ext}^1(V(\mu), V) \to \cdots
.\]

But we have \( {\operatorname{Hom}}(N, V) =0 \) and \( \operatorname{Ext}^1(V(\mu), V) = 0 \), which *squeezes* and forces \( \operatorname{Ext}^1(L(\mu), V) = 0 \).
:::

Next time: state and prove a cohomological criterion (Donkin, Scott, proved independently) for a \( G{\hbox{-}} \)module to admit a good filtration. More about when tensor products of induced modules have good filtrations.

# Friday, October 02

Recall that *good filtration* is a chain \( \left\{{0}\right\} \subseteq V_1 \subseteq \cdots \subseteq V \) satisfying \( V = \cup V_i \) and \( V_i/V_{i-1} \cong H^0(\lambda_i) \) for \( \lambda_i \) some weight of \( V \).

::: {.lemma title="?"}
Let \( V \) be a \( G{\hbox{-}} \)module and \( \lambda \in X(T)_+ \) with \( \hom_G(L(\lambda), V) \). If \( \hom_G(L(\mu), V) = 0 \) for any \( \mu < \lambda \) and \( \operatorname{Ext}_G^1(V(\mu), V) = 0 \) for *all* \( \mu \in X(T)_+ \), then \( V \) contains a submodule isomorphic to \( H^0(\lambda) \).
:::

That is, we have a lift of the following form:
```{=tex}
\begin{center}
\begin{tikzcd}
L(\lambda) \ar[d, hook] \ar[r, hook] & V \\
H^0(\lambda) \ar[ru, hook, dotted, "\exists"]
\end{tikzcd}
\end{center}
```
::: {.theorem title="Cohomological Condition for Good Filtrations"}
Let \( V \) be a \( G{\hbox{-}} \)module.

1.  If \( V \) admits a good filtration, then the number of factors isomorphic to \( H^0(\lambda) \), denoted \( [V: H^0(\lambda)] \), is equal to \( \dim \hom_G(V(\lambda), V) \).

> Analog of Jordan-Holder. Note that \( H^0(\lambda) \) may not by irreducible, but changing the filtration can not change the number of composition factors.

2.  Suppose \( \hom_G(V(\lambda), V)<\infty \), then TFAE:

-   \( V \) admits a good filtration.
-   \( \operatorname{Ext}^i_G(V(\lambda), V) = 0 \) for all \( \lambda \in X(T)_+ \) and all \( i>0 \).
-   \( \operatorname{Ext}^1_G(V(\lambda), V) = 0 \) for all \( \lambda \in X(T)_+ \).

> Much like measuring projectivity: can check all exts, or just the first.
:::

::: {.proof title="Part a"}
Suppose \( V \) has a good filtration. Idea: induct on the filtration.

Suppose \( V = H^0(\lambda_1) \), then
\[  
[V: H^0(\mu) ] = 
\begin{cases}
0 & \mu \neq \lambda_1 \\
1 & \mu = \lambda_1
\end{cases}
= \dim \hom_G(V(\lambda_1), V)
,\]
since we know the dimensions of these hom spaces from a previous result.

Suppose now that we have
\[  
0 \to H^0(\mu_1) \to V H^0(\mu_2) \to 0
.\]
Applying \( F \coloneqq\hom_G(V(\lambda), {\,\cdot\,}) \), we find that \( \operatorname{Ext}^1_G \) vanishes. So this leads a SES, and the dimensions are thus additive. The result follows since \( F \) is additive.
:::

::: {.proof title="Part b"}
\( 1\implies 2 \): Use the fact that \( \operatorname{Ext}^i_G(V(\lambda), H^0(\mu)) = 0 \) for all \( i>0 \) and all \( \mu \).

\( 2\implies 3 \): Clear!

\( 3\implies 1 \): Choose a total ordering of weights \( \lambda_0, \lambda_1, \cdots \in X(T) \) such that if \( \lambda_i < \lambda_j \) then \( i<j \). Since \( V\neq 0 \), there exists a dominant weight \( \lambda \in X(T)_+ \) such that \( \hom_G(V(\lambda), V) \neq 0 \), so choose \( i \) minimally in this order to produce such a \( \lambda_i \). Idea: use this to start a filtration.

Then \( \hom(L(\lambda_i), V) \neq 0 \), and we have
\[  
V(\lambda_i) \twoheadrightarrow L(\lambda_i) \hookrightarrow V
.\]

We know that
\[  
\hom_G(V(\mu), V) = 0 \quad \forall \mu < \lambda_i \\
\hom_G(L(\mu), V) = 0 \quad \forall \mu < \lambda_i \\
\operatorname{Ext}_G^1(L(\mu), V) = 0 \quad \forall \mu \in X(T)_+ \text{ by assumption}
.\]

So the following map must be an injection, since there is no socle:
```{=tex}
\begin{center}
\begin{tikzcd}
          & L(\lambda_i) \ar[r, hook] \ar[d, hook] & V \\
0 \ar[r]  & H^0(\lambda_i) \ar[ur, hook] &
\end{tikzcd}
\end{center}
```
Set \( V_1 = H^0(\lambda_i) \), so \( V_1 \subseteq V \). We then have a SES
\[  
0 \to V_1 \to V \to V/V_1 \to 0 
.\]

Applying \( \hom(V(\lambda), {\,\cdot\,}) \) we obtain

![Cancellation in LES](figures/image_2020-10-02-14-26-17.png)

Now iterate this process to obtain a chain \( V_1 \subseteq V_2 \subseteq \cdots \subseteq V \), and set \( V' \coloneqq\cup_{i>0} V_i \). Then \( \dim \hom_G(V(\lambda), V') = \dim \hom_G( V(\lambda), V ) \) since \( \dim \hom_G(V(\lambda), V) < \infty \). But then taking the SES
\[  
0\to V' \to V \to V/V' \to 0
\]
and applying \( {\operatorname{Hom}}(V(\lambda), {\,\cdot\,}) \), we have \( {\operatorname{Hom}}(V(\lambda), V/V') = 0 \) and we get an isomorphism of homs. But then \( \hom(V(\lambda), V/V') = 0 \) for all \( \lambda \in X(T)_+ \), forcing \( V/V'=0 \) and \( V=V' \).
:::

::: {.corollary title="?"}
Let \( 0\to V_1 \to V \to V_2 \to 0 \) be a SES of \( G{\hbox{-}} \)modules with \( \dim \hom_G(V(\lambda), V_2) < \infty \) for all \( \lambda \in X(T)_+ \). If \( V_1, V \) have good filtrations, then \( V_2 \) also has a good filtration.
:::

Note: this is likely difficult to prove without cohomology! But here we can apply the ext criterion.

::: {.proof}
Let \( \lambda \in X(T)_+ \), then

![Image](figures/image_2020-10-02-14-34-18.png)
:::

For \( \lambda \in X(T)_+ \), let \( I(\lambda) \) be the injective hull of \( L(\lambda) \), so we have
\[  
0 \to L(\lambda) \hookrightarrow I(\lambda)
.\]

::: {.theorem title="?"}
Let \( \lambda \in X(T)_+ \) and \( I(\lambda) \) be the injective hull of \( L(\lambda) \).

a.  \( I(\lambda) \) has a good filtration.

b.  The multiplicity \( [I(\lambda): H^0(\mu)] \) is equal to \( [H^0(\mu): L(\lambda)] \), the composition factor multiplicity.

> Brauer-Humphreys Reciprocity. Same idea as in category \( {\mathcal{O}} \): multiplicity of Vermas equals multiplicity of irreducibles.
:::

::: {.proof title="of a"}
How to check that it has a good filtration? The cohomological criterion! So consider \( \operatorname{Ext}^1_G( V(\sigma), I(\lambda) ) \) for all \( \sigma \in X(T)_+ \). We want to show it's zero, but this follows because \( I(\lambda) \) is injective.
:::

::: {.proof title="of b"}
By the previous result, we have
\[  
[I(\lambda): H^0(\mu) ] 
&= \dim \hom_G(V(\mu), I(\lambda)) \\
&= [V(\mu): L(\lambda) ]
.\]
Why does this second equality hold? The functor \( \hom_G({\,\cdot\,}, I(\lambda)) \) is exact, and \( \hom_G(L(\mu), I(\lambda)) = \delta_{\lambda, \mu} \). If \( \lambda = \mu \) there's only one morphism, since \( L(\lambda) \hookrightarrow I(\lambda) \) and \( \operatorname{Soc}_G I(\lambda) = L(\lambda) \). This means that they have the same character, \( \operatorname{ch}H^0(\lambda) = \operatorname{ch}V(\lambda) \), and this implies that they have the same composition factors.
:::

::: {.theorem title="Cohomological Criterion for Weyl Filtrations"}
Let \( V \) be a \( G{\hbox{-}} \)module.

a.  If \( V \) admits a Weyl filtration, then
    \[
    [V: V(\lambda)] = \dim \hom_G (V, H^0(\lambda))
    \]

b.  Suppose that \( \dim \hom_G(V(\lambda), H^0(\lambda)) < \infty \) for all \( \lambda \in X(T)_+ \). Then TFAE

-   \( V \) has a Weyl filtration.
-   \( \operatorname{Ext}^i_G(V, H^0(\lambda)) = 0 \) for all \( \lambda \in X(T)_+ \) and \( i>0 \).
-   \( \operatorname{Ext}^1_G(V, H^0(\lambda)) = 0 \) for all \( \lambda \in X(T)_+ \).
:::

# Monday, October 05

Crelle 1988 (CPS: Cline Parshall Scott)

Let HWC denote a highest weight category.

::: {.example}
1.  BGG Category \( {\mathcal{O}} \)

2.  \( \operatorname{Rat}(G) \) for \( G \) a reductive algebraic group

3.  \( \operatorname{Perv}_W(G/B) \cong {\mathcal{O}}_0 \)
:::

See

1.  Donkin: On generalized Schur algebras

2.  Irving: BGG algebras

There is a equivalence between HWC and QHA (quasi-hereditary algebras).

::: {.remark}
Key Points

1.  \( L(\lambda) = \operatorname{Soc}_G \nabla(\lambda) \) and \( \nabla(\lambda) = A(\lambda) \).

2.  All composition factors of \( \nabla(\lambda) \) satisfy \( \mu \leq \lambda \)

3.  We have cohomological vanishing:
    \[
    \operatorname{Ext}_G^i(\Delta(\lambda), \nabla(\mu)) = 
    \begin{cases}
    0 & i >0 \\
    0 & i=0, \lambda \neq \mu \\
    k & i=0. \lambda = 0
    \end{cases}
    \]
:::

Interval finite poset: we'll have a cone \( \Lambda \) of positive weights:

![Image](figures/image_2020-10-05-14-14-30.png)

> See handout!

::: {.theorem title="?"}
Let \( G ,G' \) be rational \( G{\hbox{-}} \)modules admitting good filtrations. Then the tensor product \( V\otimes V' \) also admits a good filtration.
:::

-   First proofs:
    -   JP Wong, Type A
    -   Donkin, all but characteristic 2 and \( E_7, E_8 \).
    -   O. Mathieu, general proof using algebraic geometry

::: {.example}
Let \( G = {\operatorname{SL}}(n, k) \) and take the natural representation \( V = H^0(w_1) \). Then \( V^{\otimes d} \) has a good filtration.
:::

::: {.theorem title="?"}
Let \( J\subset \Delta \) be a subset of simple roots. If \( V \in {\operatorname{Mod}}(G) \) has a good filtration and \( L_J \) is a Levi factor, then \( V{\downarrow_{L_J}} \) has a good filtration.
:::

::: {.theorem title="?"}
Let \( {\mathfrak{g}}= \operatorname{Lie}(G) \) and \( p \) be a *good prime* (doesn't divide any of the coefficients of the highest weight). Then the symmetric algebra \( S({\mathfrak{g}}) \) has a good filtration.
:::

::: {.remark}
For \( p\geq 3(h-1) \), the exterior algebra \( \Lambda({\mathfrak{g}}) \) also admits a good filtration. Question: Is this true for all primes \( p \)? Or potentially for all *good* primes \( p \)?
:::

## Polynomial Representation Theory

Let \( G = \operatorname{GL}(n, k) \), then a module for \( G \) is **polynomial** iff the weights \( \lambda = (\lambda_1, \cdots, \lambda_n) \) satisfy \( \lambda_j \geq 0 \) for all \( j \).

::: {.example}
For \( V \) the natural representation, the weights are the unit vectors \( \varepsilon_1, \cdots, \varepsilon_n \), so \( V \) is a polynomial representation. Then \( V^{\otimes d} \) is again polynomial by a previous remark.
:::

::: {.remark}
Note that the adjoint representation \( {\mathfrak{g}}\cong V\otimes V^\vee \) is not a polynomial representation.
:::

::: {.theorem title="?"}
There is an equivalence
\[  
\mathrm{Poly}(G) \cong \bigoplus_{j\geq 0} {\operatorname{Mod}}(S(n, d))
,\]
where this Schur algebra \( S(n, d) \) is given by \( \endo_{\Sigma_d}(V^{\otimes d}) \) where \( \Sigma_d \) is the symmetric group of \( d \) letters.

The theorem is that \( {\operatorname{Mod}}(S(n, d)) \) is a QHA, and thus a highest weight category.
:::

::: {.remark}
This is a finite-dimensional algebra, so we should be able to calculate the dimensions, index by highest weights, write the standard/costandard modules, etc. There is a correspondence
\[ 
\left\{{\substack{\text{Simple modules for }S(n, d)}}\right\}
\iff
\left\{{\substack{\Lambda^+(n, d) \text{ partitions of $d$ with at most $n$ parts}}}\right\}
.\]

We can compute
\[  
\dim S(n, d) = {n^2 + d - 1 \choose n^2 - 1}
,\]
and simple modules correspond to \( L(\lambda) \) for \( \operatorname{GL}_n \) where \( \lambda \) is a polynomial representation.
:::

::: {.theorem title="?"}
\( S(n, d) \) is semisimple if and only if

1.  \( k = {\mathbb{C}} \) or characteristic zero, or

2.  \( d < p \).

> For latter condition, see Maschke's theorem
:::

::: {.example}
Consider \( S(2, 3) \) for \( p=2 \), so \( G = \operatorname{GL}(2) \). Then
\[  
\dim S(2, 3) = {4+3-1 \choose 3} = {6\choose 3} = 20
.\]

The only admissible partitions are thus

-   \( (3) \), and
-   \( (2, 1) \).

Then \( L(2, 1) = L("w") \) as an \( {\operatorname{SL}}(2){\hbox{-}} \)module, so
\[
\dim L(2, 1) = 2
\]
Then \( L(3, 0) = L("3w") \) as an \( {\operatorname{SL}}(2){\hbox{-}} \)module. We can compute
\[  
L(3) = L(1, 0)^{(1)} \otimes L(1, 0)
,\]
and since each is 2-dimensional, we get \( \dim L(3) = 4^2 + 2^2 = 20 \).

Note that the sum of the squares of the dimensions of the irreducibles are equal to the total dimension, which shows this module is semisimple. But this contradicts the theorem! So it turns out there is a third condition, namely this exact case.
:::

Next time: look at structure of injective modules, then the theory of Bott-Borel-Weil for higher sheaf cohomology.

# Wednesday, October 07

## Schur Algebras

Let \( G = \operatorname{GL}(n, k) \), then polynomial representations of \( G \) are equivalent to \( S(n, d) \) modules for all \( d\geq 0 \), where we can note that \( S(n, d) = \endo_{\Sigma_d}(V^{\otimes d}) \). We'll have a correspondence
\[  
\left\{{\substack{L(\lambda) \text{ simple modules for } S(n,d)}}\right\}
\iff
\Lambda^+(n, d) \text{, partitions of $d$ with at most $n$ parts}
,\]

::: {.example}
> Good example, can see all filtrations at work, tilting modules, etc.

Consider \( S(3, 3) \) for \( p=3 \), we then have the partitions \( \Lambda^+(3, 3) = \left\{{(3), (2, 1), (1,1,1)}\right\} \). We can think of these in the \( \varepsilon \) basis as \( (3) = (3,0,0), (2,1) = (2,1,0) \). Since \( {\operatorname{SL}}(3, k) \subset \operatorname{GL}(3, k) \), we can find the \( SL(3, k) \) weights by taking successive differences to yield \( (3, 0), (1, 1), (0, 0) \) with the corresponding picture

![Image](figures/image_2020-10-07-14-00-10.png)

We can compute

-   \( L(1,1,1) = H^0(1,1,1) \)
-   \( L(2, 1) = H^0(2, 1) \)
-   \( L(3) = H^0(3) \)

![Image](figures/image_2020-10-07-14-02-04.png)

We have a form of Brauer reciprocity:
\[  
[I(\lambda): H^0(\mu)] = [H^0(\mu) : L(\lambda) ] 
.\]

We can now compute the injective hulls:

![Image](figures/image_2020-10-07-14-05-28.png)

What are the tilting modules? We can use the fact that \( L(1^3) = V(1^3) \). It has a good filtration and a Weyl filtration and thus must be the tilting module for \( L(1^3) \).

Using the following fact:

![Image](figures/image_2020-10-07-14-07-57.png)

We can compute the following:

![Image](figures/image_2020-10-07-14-10-44.png)
:::

## Simplicity of \( H^0(\lambda) \) {#simplicity-of-h0lambda}

1.  \( k = {\mathbb{C}} \) implies \( L(\lambda) = H^0(\lambda) \) for all \( \lambda \in X(T)_+ \)

2.  \( k= \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_p \) implies \( L(\lambda) = H^0(\lambda) \) if \( {\left\langle {\lambda},~{\alpha_0^\vee} \right\rangle} \leq 1 \) where \( \alpha_0 \) is the highest short root.

Such \( \lambda \) are referred to as *minuscule weights*.

::: {.example}
For type \( A_n \), we have \( \alpha_0 = \sum_{i=1}^n \alpha_i \). For type \( G_2 \), we have \( \alpha_0^\vee= 2\alpha_1^\vee+ 3\alpha_2^\vee \).
:::

::: {.example}
In type \( A_n \), set \( \lambda = \sum_{j=1}^n c_j w_j \) where \( c_j \geq 0 \). Then \( {\left\langle {\lambda},~{\alpha_0^\vee} \right\rangle} = \sum c_j \leq 1 \), so \( \lambda \) is minuscule iff \( \lambda = 0 \) or \( \lambda = w_j \) for some \( j \).
:::

::: {.remark}
Quick timeline:

-   2015, Cantrell lectures by Dick Gross at UGA
-   Fall 2015: email to Dan Nakano from Skip Garibaldi, conjecture from Gross without a proof

::: {.proposition title="Gross"}
The simple module is equal to the induced module, so \( L(\lambda) = H^0(\lambda) \), for all \( p \) iff \( \lambda \) is minuscule, or if \( L(\lambda) = {\mathfrak{g}} \) for \( \Phi = E_8 \).
:::

-   Proved by Garibaldi-Nakano-Guralnick, appeared in Journal of Algebra
:::

## Bott-Borel-Weil Theorem

We can consider the higher right-derived functors of \( \lambda \), given by \( H^i(\lambda) = R^i \operatorname{Ind}_B^G \lambda \) for \( \lambda \in X(T) \). You can think of this as the higher sheaf cohomology of the flag variety, \( \mathcal{H}^i(G/B, \mathcal{L}(\lambda)) \).

We have **Kempf Vanishing**: \( H^i(\lambda) = 0 \) for all \( i>0 \) when \( \lambda \in X(T)_+ \) is dominant (although other things may happen for non-dominant weights). There is a correspondence \( (G, T) \iff (W, \Phi) \), and since \( W \) is generated by simple reflections, we can write any \( w\in W \) as \( w=\prod s_{\alpha_i} \). A *reduced expression* is one in which the length can not be shortened, and any two reduced expressions necessarily have the same length (number of simple reflections).

::: {.example}
For \( \Phi = A_2 \), we have \( w_0 = s_{\alpha_1} s_{\alpha_2} s_{\alpha_1} = s_{\alpha_2} s_{\alpha_1} s_{\alpha_2} \).
:::

### Dot Action on Weights

We can let \( W \) act on \( X(T) \) by reflections by the formula \( s_\alpha \lambda = \lambda - {\left\langle {\lambda},~{\alpha^\vee} \right\rangle}\alpha \). We then shift the action by setting \( s_\alpha \cdot \lambda = w(\lambda+\rho)-\rho \) where \( \rho = {1\over 2} \sum_{\alpha\in \Phi^+} \alpha = \sum_{j=1}^n w_j \).

![Image](figures/image_2020-10-07-14-33-00.png)

::: {.theorem title="Bott-Borel-Weil"}
Let \( G \) be a reductive algebraic group and \( k={\mathbb{C}} \). For \( \lambda \in X(T)_+ \), we can describe the sheaf cohomology:
\[  
\mathcal{H}^i(w\cdot \lambda)
=
\begin{cases}
H^0(\lambda) & i=\ell(w) \\
0 & \text{otherwise}
\end{cases}
.\]

Moreover, if \( \lambda \not\in X(T)_+ \) and \( {\left\langle {\lambda+\rho},~{\alpha^\vee} \right\rangle} \geq 0 \) for all \( \alpha \in \Delta \), then \( \mathcal{H}^i(w\cdot \lambda) = 0 \) for all \( w\in W \).

![Image](figures/image_2020-10-07-14-41-58.png)
:::

Wide open in characteristic \( p \), can say some things. We'll prove this in characteristic zero.

Recall that \( k={\mathbb{C}} \) and \( H^0(\lambda) = L(\lambda) \). We'll want to reduce to \( {\operatorname{SL}}(2, {\mathbb{C}}) \) parabolics. For \( \alpha\in\Delta \), let \( P_\alpha \) be the associated parabolic \( P_\alpha = L_\alpha \rtimes U_\alpha \), which is parabolic of type \( A_1 \).

Idea: \( \alpha \) generates an \( {\operatorname{SL}}_2 \) subgroup (the Levi factor), like the Borel but sticks out in one dimension:

![Image](figures/image_2020-10-07-14-47-17.png)

Then
\[ 
s_\alpha \cdot \lambda = s_\alpha(\lambda + \rho) - \rho \\
= \lambda + \rho - {\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle}\alpha - \rho \\
= \lambda - {\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle}\alpha
.\]

Next time: proof of Bott-Borel-Weil and its generalization to \( k = \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_p \). For \( B\subset P_\alpha \subset G \), we'll have a spectral sequence
\[  
E_2^{i, j} = R^i \operatorname{Ind}_{P_\alpha}^G R^j \operatorname{Ind}_B^{P_\alpha}  \Rightarrow R^{i+j} \operatorname{Ind}_B^G  \lambda = H^{i+j}(\lambda)
.\]

# Friday, October 09

Last time: Bott-Borel-Weil. Stated for characteristic zero, working toward a generalization.

Let \( \Delta \) be the set of simple roots, and \( \alpha\in \Delta \). We can form a Levi decomposition \( P_\alpha \coloneqq L_\alpha \rtimes U_\alpha \):

![Image](figures/image_2020-10-09-13-58-02.png)

We have \( B \subseteq P_\alpha \subseteq G \). The dot action is given by the following: Let \( W \) be the Weyl group, then \( W \) acts on \( X(T) \) by \( w\cdot \lambda = w(\lambda + \rho) - \rho \), where
\[  
\rho = {1\over 2} \sum_{\alpha\in \Phi^+} \alpha = \sum_{i=1}^n w_n
.\]

We obtained a formula
\[  
S_\alpha \cdot \lambda = \lambda - {\left\langle {\lambda  + \rho},~{\alpha^\vee} \right\rangle} \alpha
.\]

## Bott-Borel-Weil Theory

::: {.proposition title="?"}
Let \( \alpha\in\Delta \) be simple and \( \lambda \in X(T) \) be an arbitrary weight. Then

-   \( U_\alpha \) acts trivially on \( \operatorname{Ind}_B^{P_\alpha} \lambda \).

-   (Kempf's Vanishing for \( P_\alpha \)) If \( {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} = r \geq 0 \), then
    \[  
    R^i \operatorname{Ind}_B^{P_\alpha} \lambda = 0 \qquad \text{for } i \geq 0
    ,\]
    and \( \dim \operatorname{Ind}_B^{P_\alpha}\lambda = r + 1 \).

-   If \( {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} = -1 \), then \( R^i \operatorname{Ind}_B^{P_\alpha} \lambda = 0 \) for all \( i \).

-   If \( {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} \leq -2 \), then

    -   \( R^i \operatorname{Ind}_B^{P_\alpha} \lambda = 0 \) for \( i \neq 1 \), and

    -   \( \dim R^1 \operatorname{Ind}_B^{P_\alpha} \lambda = r+1 \)

Note: we have
\[  
\operatorname{Ind}_B^{P_\alpha} \lambda = S^r(V) \qquad &\text{when } {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} = r \geq 0 \\
R^1 \operatorname{Ind}_B^{P_\alpha} = S^r(V)^\vee\qquad&\text{where $V$ is a 2-dim representation and } {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} \leq -2 \\
&\text{and } r = {\left\lvert {{\left\langle {\lambda},~{\alpha^\vee} \right\rangle}} \right\rvert} - 1
.\]
:::

This gives us an analog of \( A_1 \) or \( {\operatorname{SL}}_2 \) theory. Also note that we have Serre duality:
\[  
H^1(\lambda) = H^0( - (\lambda + 2\rho) )^\vee
.\]

::: {.corollary title="?"}
Let \( \alpha\in \Delta \) and \( \lambda\in X(T) \), and suppose \( \lambda \) is dominant with respect to \( \alpha \), i.e. \( {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} \geq 0 \).

-   If \( \operatorname{ch}(k) = 0 \) then \( \operatorname{Ind}_B^{P_\alpha}\lambda = R^1 \operatorname{Ind}_B^{P_\alpha} s_\alpha \cdot \lambda \)

-   If \( \operatorname{ch}(k) = p \) and if there exists an \( s, m \) with \( 0<s<p \) and \( {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} = sp^m - 1 \) (Steinberg weights), then
    \[  
    \operatorname{Ind}_B^{P_\alpha} \lambda = R^1 \operatorname{Ind}_B^{P_\alpha} s_\alpha \cdot \lambda
    .\]

![O](figures/image_2020-10-09-14-14-39.png)
:::

The proof of this will use a Grothendieck-type spectral sequence of the form
\[  
E_2^{i, j} = R^i \operatorname{Ind}_{P_\alpha}^G \qty{ R^j \operatorname{Ind}_B^{P_\alpha} \lambda} \Rightarrow R^{i+j} \operatorname{Ind}_B^G \lambda
.\]

We'll have a version of *Grothendieck vanishing*:
\[  
R^j \operatorname{Ind}_B^{P_\alpha} \lambda = 0 \qquad\text{for } j > \dim P_\alpha/B = 1
.\]

So the resulting spectral sequence will only be supported on the first two lines, and \( E_3 = E_\infty \). Note the differential will be of bidegree \( {\partial}_r \leadsto (r, 1-r) \), and \( E_2 \) will look like the following,

![Image](figures/image_2020-10-09-14-30-47.png)

Recall that \( R^i \operatorname{Ind}_B^G \lambda \coloneqq H^i(\lambda) \)

::: {.proposition title="?"}
Let \( \alpha\in\Delta \) and \( \lambda \in X(T) \).

1.  If \( {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} = -1 \), then \( H^{\,\cdot\,}(\lambda) = 0 \).

2.  If \( {\left\langle {\lambda},~{ \alpha^\vee} \right\rangle} \geq 0 \), then \( H^i(\lambda) = R^i \operatorname{Ind}_B^{P_\alpha} \lambda \) for all \( i\geq 0 \).

3.  If \( {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} \leq -2 \), then
    \[  
    H^i(\lambda) = R^{i-1} \operatorname{Ind}_{P_\alpha}^G \qty{ R^1 \operatorname{Ind}_B^{P_\alpha} \lambda } \qquad \forall i
    .\]

4.  Suppose \( {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} \geq 0 \). If \( \operatorname{ch}(k) = 0 \), or \( \operatorname{ch}(k) = p> 0 \) and \( {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} = sp^n - 1 \), then
    \[  
      H^i(\lambda) = H^{i+1}(s_\alpha\cdot \lambda)
      .\]
:::

::: {.proof title="of a"}
If \( {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} = -1 \), then \( R^{\,\cdot\,}\operatorname{Ind}_B^{P_\alpha} \lambda = 0 \). But this is what appears as the "coefficients" in the spectral sequence, so \( E_2^{{\,\cdot\,}, {\,\cdot\,}} = 0 \) and this \( R^{\,\cdot\,}\operatorname{Ind}_B^{P_\alpha} = 0 \).
:::

::: {.proof title="of b"}
If \( {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} = 0 \), then \( R^j \operatorname{Ind}_B^{P_\alpha} \lambda = 0 \) for all \( j>0 \). Thus only the bottom line survives, and the spectral sequence degenerates on page 2. Thus \( E_2^{1, 0} = R^i \operatorname{Ind}_B^G \lambda \), where the LHS is equal to \( R^i \operatorname{Ind}_{P_\alpha}^G \qty{\operatorname{Ind}_B^{P_\alpha} \lambda } \).
:::

::: {.proof title="of c"}
If \( {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} = -2 \), then \( R^i \operatorname{Ind}_B^{P_\alpha} \lambda = 0 \) for \( i\neq 1 \), so only \( i=1 \) survives Then
\[
R^{i-1} \operatorname{Ind}_{P_\alpha}^G \qty{ \operatorname{Ind}_B^{PP_\alpha} \alpha} = R^i \operatorname{Ind}_B^G \lambda
,\]
so there is some dimension shifting.
:::

::: {.proof title="of d"}
If \( {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} \geq 0 \), then by (b),
\[  
H^i(\lambda) 
&= R^i \operatorname{Ind}_{P_\alpha}^G \qty{ \operatorname{Ind}_B^{P_\alpha} \lambda } && \text{by c}\\
&= R^i \operatorname{Ind}_{P_\alpha}^G \qty{ R^1 \operatorname{Ind}_B^{P_\alpha} s_\alpha\cdot \lambda } && \text{by corollary}\\
&= H^{i+1}(s_\alpha\cdot \lambda)
.\]

We can then check that
\[  
s_\alpha \cdot \lambda
&= \lambda - {\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle}\alpha \\
&= \lambda - \qty{ {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} + 1 }\alpha && \text{using } {\left\langle {\rho},~{\alpha^\vee} \right\rangle} = 1 \\ \\
\implies 
{\left\langle {s_\alpha \cdot \lambda},~{\alpha^\vee} \right\rangle}
&= {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} - \qty{ {\left\langle {\lambda},~{\alpha^\vee} \right\rangle}+1 }{\left\langle {\alpha},~{\alpha^\vee} \right\rangle} \\
&= {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} - \qty{ {\left\langle {\lambda},~{\alpha^\vee} \right\rangle}+1 }2 \\
&= -{\left\langle {\lambda},~{\alpha^\vee} \right\rangle} - 2 \\
&\leq -2
.\]
:::

Now define
\[  
\mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{{\mathbb{Z}}} 
&\coloneqq
\left\{{
\lambda \in X(T) {~\mathrel{\Big|}~}0 \leq {\left\langle {\lambda+\rho},~{\beta^\vee} \right\rangle} \,\forall \beta \in \Phi^+
}\right\} \qquad\text{ if } \operatorname{ch}(k) = 0 \\
&\coloneqq
\left\{{
\lambda \in X(T) {~\mathrel{\Big|}~}0 \leq {\left\langle {\lambda+\rho},~{\beta^\vee} \right\rangle} \leq \operatorname{ch}(k) \,\forall \beta \in \Phi^+
}\right\} \qquad\text{if } \operatorname{ch}(k) = p
.\]

Idea:

![Image](figures/image_2020-10-09-14-45-08.png) ![Image](figures/image_2020-10-09-14-45-20.png)

::: {.theorem title="Bott-Borel-Weil Generalization, due to Andersen"}
a.  If \( \lambda \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \) and \( \lambda \not\in X(T)_+ \), then \( H^0(w\cdot \lambda) = 0 \).

b.  If \( \lambda \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}}\cap X(T)_+ \), then for all \( w\in W \),
    \[  
    H^i(w\cdot \lambda) = 
    \begin{cases}
    H^0(\lambda) & i= \ell(w) \\
    0 & \text{otherwise}
    \end{cases}
    .\]
:::

Note that this covers everything in the \( \operatorname{ch}(k) = 0 \) case, but only gives the following hexagon in the \( \operatorname{ch}(k) = p \) case:

![Image](figures/image_2020-10-09-14-48-41.png)

::: {.remark}
**Open Problem**: Determine \( \operatorname{ch}H^i(\lambda) \) for \( \lambda\in X(T) \) in characteristic \( p>0 \).

Andersen provided necessary an sufficient conditions for \( H^1(\lambda) \neq 0 \) and computed \( \operatorname{Soc}_G H^1(\lambda) \).
:::

# Monday, October 12

## Proof of Bott-Borel-Weil

Recall the Bott-Borel-Weil theorem: in characteristic zero, we're looking at the closure of the region containing the fundamental region \( C_{\mathbb{Z}} \):

![Image](figures/image_2020-10-12-13-58-45.png)

::: {.theorem title="due to Aandersen"}
a.  If \( \lambda \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \) and \( \lambda \not\in X(T)_+ \) then \( H^0(w\circ \lambda) = 0 \).

b.  If \( \lambda\in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}}\cap X(T)_+ \) then for all \( w\in W \), we have
    \[  
    H^i(w\cdot \lambda) = 
    \begin{cases}
    H^0(\lambda)& i = \ell(w) \\
    0 & \text{otherwise}
    \end{cases}
    .\]
:::

::: {.proof title="of a"}
For (a): we use induction on \( \ell(w) \). For \( \ell(w) = 0 \), we have \( w = \operatorname{id} \). Let \( \lambda \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \) and \( \lambda\not\in X(T)_+ \). Then
\[  
0 
&\leq {\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} \\
&= {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} + 1 \\
\implies {\left\langle {\lambda},~{\alpha^\vee} \right\rangle} &= -1
.\]
Applying the previous proposition, we get \( H^0(\lambda) = 0 \).
:::

::: {.proof title="of b"}
For the base case \( w=\operatorname{id} \), this follows from Kempf vanishing. Assuming the result holds for any word of length \( l<\ell(w) \), if \( \ell(w) > 0 \), there exists some simple reflection \( s_\alpha \) for \( \alpha\in\Delta \) such that \( \ell(s_\alpha w) = \ell(w) - 1 \). Moreover, \( w^{-1}(\alpha) \in -\Phi^+ \), so set \( \beta = -w^{-1}(\alpha) \in \Phi^+ \). We can the make the following computation:
\[  
{\left\langle {(s_\alpha w) \cdot \lambda},~{\alpha^\vee} \right\rangle}
&= {\left\langle {(s_\alpha w)(\lambda+\rho) - \rho},~{\alpha^\vee} \right\rangle}  \\
&= {\left\langle {(s_\alpha w)(\lambda+\rho)},~{\alpha^\vee} \right\rangle} - 1 \\
&= {\left\langle {w(\lambda+\rho)},~{s_\alpha \alpha^\vee} \right\rangle} - 1 \\
&= - {\left\langle {w(\lambda+\rho)},~{\alpha^\vee} \right\rangle} - 1  \\
&= {\left\langle {\lambda + \rho},~{-w^{-1}\alpha^\vee} \right\rangle} - 1 \\
&= {\left\langle {\lambda + \rho},~{\beta^\vee} \right\rangle} - 1 \\
&\geq -1
\]
and \( {\left\langle {(s_\alpha w)\cdot \lambda},~{ \alpha^\vee} \right\rangle} < \rho \) since \( \lambda\in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \). Note that we've used the fact that the inner product is \( W{\hbox{-}} \)invariant.\

Now if \( {\left\langle {(s_\alpha w)\cdot \lambda},~{ \alpha^\vee} \right\rangle} \geq 0 \), we can apply the prior proposition part (d). Here we use the fact that \( \operatorname{Ind}_B^{P_\alpha}(s_\alpha w)\lambda \) is simple. Applying the inductive hypothesis yields
\[  
H^i(s_\alpha - \lambda) = H^{i+1}(w\cdot \lambda)
.\]

Now if \( {\left\langle {s_\alpha w \cdot \lambda},~{\alpha^\vee} \right\rangle} = -1 \), then
\[  
-1 &= {\left\langle {\lambda + \rho},~{\beta^\vee} \right\rangle} - 1 \\
\implies {\left\langle {\lambda + \rho},~{\beta^\vee} \right\rangle} &= 0 \\
\implies {\left\langle {\lambda},~{\beta^\vee} \right\rangle} &= 0 \\
& \cdots
.\]

```{=tex}
\todo[inline]{Missing computation}
```
Then applying (a) yields \( H^1(w\cdot \lambda) = 0 \).
:::

## Serre Duality and Grothendieck Vanishing

Let \( P \) be a parabolic subgroup, i.e. \( P_J = P \coloneqq L_J \rtimes U_J \) for some \( J\subseteq \Delta \). Set \( n(P) = {\left\lvert {\Phi^+} \right\rvert} - {\left\lvert {\Phi^+_J} \right\rvert} \).

::: {.example}
Let \( \Phi = A_4 \), which has ten simple roots:

-   \( \alpha_i, 1\leq i \leq 4 \)
-   \( \alpha_i + \alpha_{i+1} \), \( i=1,2,3 \).
-   \( \alpha_1 + \alpha_2 +\alpha_3 \), \( \alpha_2 + \alpha_3 + \alpha_4 \)
-   \( \sum_{i=1}^4 \alpha_i \).

![Image](figures/image_2020-10-12-14-21-20.png)

Then \( n(P) = 10 - 3 = 7 \).
:::

::: {.theorem title="Grothendieck Vanishing"}
\[  
R^i \operatorname{Ind}_P^G M = 0 \qquad \text{for } i > n(P)
.\]
:::

::: {.theorem title="Serre Duality"}
\[  
\qty{ R^i \operatorname{Ind}_B^G M }^\vee\cong R^{n(P) -i} \operatorname{Ind}_P^G M^\vee\otimes(-2\rho_P)
.\]
where
\[
\rho_p \coloneqq{1\over 2}\sum_{\beta \in \Phi^+ \setminus\Phi_J} \beta
\]
:::

::: {.example}
Take \( B = P \) and \( M = \lambda \). Then \( \lambda ^\vee= -\lambda \), so
\[  
\qty{ R^i \operatorname{Ind}_B^G \lambda }^\vee\cong R^{{\left\lvert {\Phi^+} \right\rvert} -i} \operatorname{Ind}_P^G (- \lambda) ^\vee\otimes(-2\rho)
.\]
From this we can conclude
\[  
H^i(\lambda) = H^{n-i} (-\lambda - 2\rho)^\vee
,\]
where \( n = {\left\lvert {\Phi^+} \right\rvert} \).
:::

::: {.corollary title="?"}
Let \( \lambda \in X(T)_+ \cap\mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \) be a dominant weight. Then

a.  The irreducible representations are given by \( L(\lambda) = H^0(\lambda) \).

b.  \( \operatorname{Ext}_G^1(L(\lambda), L(\mu)) = 0 \) for all \( \lambda, \mu \) in \( \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \).

c.  If \( \operatorname{ch}(k) = 0 \), so \( X(T)_+ \subset \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \), then all \( G{\hbox{-}} \)modules are completely reducible.
:::

::: {.proof title="of a"}
Note that the longest element takes positive roots to negative roots, so \( w_0 \rho = - \rho \), and moreover \( -w_0(\mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}}) = \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \). We also have
\[
w_0 \cdot ( w_0 \lambda) 
&= w_0 (-w_0 \lambda + \rho) - \rho \\
&= -\lambda + w_0 \rho - \rho \\
&= -\lambda - 2\rho
.\]
By Serre duality, if we take the Weyl module we obtain
\[
V(-w_0 \lambda) 
&\coloneqq H^0(\lambda)^\vee\\
&= H^n(-\lambda - 2\rho) \\
&= H^n(w_0 \cdot (-w_0 \lambda)) \\
&= H^n(-w_0 \lambda) \qquad\text{by Bott-Borel-Weil}
,\]
where we've used that \( \ell(w_0) = {\left\lvert {\Phi^+} \right\rvert} \). We know that \( L(-w_0 \lambda) \subseteq \operatorname{Soc}H^0(-w_0 \lambda) = V(-w_0 \lambda) \twoheadrightarrow L(-w_0 \lambda) \), where the last term is contained in the head. But this means that this splits, so by indecomposability we must have \( L(-w_0 \lambda) = H^0(-w_0 \lambda) = V(-w_0 \lambda) \). So we can conclude
\[  
L(\mu) = H^0(\mu) = V(\mu) \qquad \forall \mu \in X(T)_+ \cap\mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}}
.\]
:::

::: {.proof title="of b and c"}
Suppose \( \operatorname{Ext}_G^1(L(\lambda), L(\mu)) \neq 0 \), then \( L(\lambda) \) is in \( H^0(\mu) / \operatorname{Soc}_G H^0(\mu) = 0 \) and \( L(\mu) \) is in \( H^0(\lambda) / \operatorname{Soc}_G H^0(\lambda) = 0 \), but this forces \( \operatorname{Ext}_G^1(L(\lambda), L(\mu)) = 0 \).\

Part (c) follows from part (b).
:::

## Weyl's Character Formula

Problem: Determine \( \operatorname{ch}H^0 \lambda \) for \( \lambda \in X(T)_+ \).

Solution: Let \( A(\lambda) = \sum_{w\in W} \operatorname{sgn}(w) e^{w\lambda} \in {\mathbb{Z}}[X(T)] \), where we sum over the usual Weyl group and not the affine Weyl groups, taken as a formal sum in the group algebra on the weight lattice. We can then state Weyl's character formula:
\[  
\operatorname{ch}H^0(\lambda) = {A(\lambda + \rho) \over A(\rho)} \qquad \text{for }\lambda \in X(T)_+
.\]
This is a formal sum, so it's surprising that the bottom term even divides the top. But there is a great deal of cancellation, we'll see this in examples such as \( \operatorname{GL}_3 \).

### Formal Characters

Let \( M \) be a \( T{\hbox{-}} \)module, then define the *character*
\[  
\operatorname{ch}M\coloneqq\sum_{\mu\in X(T)} \qty{\dim M_\mu} e^\mu \quad \in {\mathbb{Z}}[X(T)]
.\]

We then define the *Euler characteristic*
\[  
\chi(M) \coloneqq\sum_{i\geq 0} (-1)^i \operatorname{ch}H^i(M)
.\]
Note that by Grothendieck vanishing, \( H^i(M) = 0 \) for \( i > {\left\lvert {\Phi^+} \right\rvert} = \dim(G/B) \), so this is a finite sum. In fact, if \( M \) is a \( G{\hbox{-}} \)module, then this is \( W{\hbox{-}} \)invariant and thus in fact \( \chi(M) \in {\mathbb{Z}}[X(T)]^W \).

# Wednesday, October 14

Today:

-   Weyl's character formula

-   Strong linkage

-   Translation functors

Recall that we defined
\[  
\operatorname{ch}(M) &\coloneqq\sum_{\mu \in X(T)} \qty{\dim M_\mu} e^{\mu} \in {\mathbb{Z}}[X(T)]\\
\chi(M) &\coloneqq\sum_{i\geq 0} (-1)^i \operatorname{ch}H^i(M) \in {\mathbb{Z}}[X(T)]^W
.\]

where \( H^i(M) = R^i \operatorname{Ind}_B^G M \), and \( H^i(M) =0 \) for \( i> G/B = {\left\lvert {\Phi^+} \right\rvert} \).

![Image](figures/image_2020-10-14-14-03-12.png)

Note that the Euler characteristic is additive on SESs: if \( 0\to A\to B\to C\to 0 \) then \( \chi(B) = \chi(A) + \chi(B) \). It is also multiplicative wrt the tensor product: \( \chi(A\otimes B) \chi(A) \chi(B) \).

```{=tex}
\todo[inline]{Because ?}
```
::: {.remark}
If \( \lambda \in X(T)_+ \), then \( \chi(\lambda) = \operatorname{ch}H^0(\lambda) = \operatorname{ch}(V(0)) \).
:::

::: {.proposition title="?"}
```{=tex}
\hfill
```
1.  The set \( \left\{{\operatorname{ch}L(\lambda) {~\mathrel{\Big|}~}\lambda\in X(T)_+}\right\} \) is a basis for \( {\mathbb{Z}}[X(T)]^W \).

2.  If \( \lambda \in X(T) \) and \( \sum a_\mu e^\mu \in {\mathbb{Z}}[X(T)]^W \), then there is a formula:
    \[  
    \chi(\lambda) \qty{ \sum_\mu a_\mu e^\mu } = \sum_\mu a_\mu \chi(\lambda + \mu)
    .\]
:::

::: {.proof title="of 1"}
Let
\[
\operatorname{Sym}(\mu) \coloneqq\sum_{\nu \in W\mu} e^\nu
\]
be the sum over the \( W \) orbit of \( \mu \). This is clearly \( W{\hbox{-}} \)invariant, so \( \operatorname{Sym}(\mu) \in {\mathbb{Z}}[X(T)]^W \). Since every \( \nu \in X(T) \) is \( W{\hbox{-}} \)conjugate to \( \mu \) (which is dominant), the set \( \left\{{\operatorname{Sym}(\mu) {~\mathrel{\Big|}~}\mu \in X(T)_+}\right\} \) is a basis for \( {\mathbb{Z}}[X(T)]^W \), since this set is linearly independent.

> Why: conjugate to a unique weight.

Let \( \lambda \in X(T)_+ \), then

\[
\operatorname{ch}L(\lambda) = \operatorname{Sym}(\lambda) + \sum_{\substack{\mu < \lambda \\ \mu \in X(T)_+} } a_\mu \operatorname{Sym}(\mu)
.\]
Thus the transition matrix is unipotent and upper-triangular, thus \( \left\{{\operatorname{ch}L(\lambda) {~\mathrel{\Big|}~}\lambda \in X(T)_+}\right\} \) is a basis for \( {\mathbb{Z}}[X(T)]^W \).
:::

::: {.proof title="of 2"}
Since \( \left\{{L(\lambda) {~\mathrel{\Big|}~}\lambda\in X(T)_+}\right\} \) forms a basis for \( {\mathbb{Z}}[X(T)]^W \), there is some \( G{\hbox{-}} \)module \( V \) such that \( \sum a_\mu e^\mu = \pm \operatorname{ch}V \). We can consider a composition series of \( V\otimes\lambda \), where the factor \( \left\{{\mu \otimes\lambda}\right\} \) appears \( a_\mu = \dim V_\mu \) times. We now compute in two different ways:
\[  
\chi(V\otimes\lambda) 
&= \operatorname{ch}(V) \chi(\lambda)  && \text{using the formula from earlier} \\
&= \chi(\lambda) \qty{ \sum_\mu a_\mu e^\mu }
.\]

On the other hand,
\[  
\chi(V\otimes\lambda) &=
\sum a_\mu \chi(\lambda + \mu)
.\]
:::

::: {.remark}
The formula used above was
\[  
R^i \operatorname{Ind}_B^G (V\otimes\lambda) = V\otimes R^i \operatorname{Ind}_B^G(\lambda)
.\]
:::

## Weyl's Character Formula

For any \( \alpha\in\Delta \) and \( \lambda \in X(T) \) with \( {\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} \geq 0 \). We have an analog of Serre duality:
\[  
\operatorname{ch}\operatorname{Ind}_B^{P_\alpha} \lambda = \operatorname{ch}R^i \operatorname{Ind}_B^{P_\alpha} s_\alpha \cdot \lambda
,\]
i.e. the induced module coincides with the Weyl module.

By definition of the dot action, we have
\[  
s_\alpha \cdot \lambda = s_\alpha(\lambda + \rho) - \rho
.\]

As in previous calculations, we have

\[  
{\left\langle {s_\alpha\cdot\lambda},~{\alpha^\vee} \right\rangle} = -{\left\langle {\lambda+\rho},~{\alpha^\vee} \right\rangle} - 1 \leq - 1
.\]

As in the analysis of Bott-Borel-Weil, we have
\[  
H^i(s_\alpha \cdot\lambda) &= H^i( R^1 \operatorname{Ind}_B^{P_\alpha} s_\alpha\cdot\lambda ) \\
H^i(\lambda) &= H^i( \operatorname{Ind}_B^{P_\alpha}\lambda )
,\]
since the spectral sequence collapses. Note that the two things appearing on the RHS have the same Euler characteristics.

We can thus define define a modified Euler characteristic
\[  
\phi(N) = \sum_{i\geq 0} (-1)^i \operatorname{ch}R^i \operatorname{Ind}_{P_\alpha}^G(N)
.\]

and obtain \( \chi(\lambda) = -\chi(s_\alpha \cdot \lambda) \). The same argument works for \( {\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} < 0 \).

::: {.remark title="Very Important Fact"}
\[  
\lambda \in X(T) \implies \chi(\lambda) = -\chi(s_\alpha \cdot \lambda)
.\]
:::

::: {.proposition title="General Formula"}
\[  
\chi(w\cdot \lambda) = \operatorname{sgn}(w) \chi(\lambda) && \operatorname{sgn}(w) \coloneqq(-1)^{\ell(w)}
,\]
with the convention that \( \chi(0) = e^0 = 1 \).
:::

::: {.lemma title="?"}
Let \( \lambda \in X(T) \) where \( \sum a_\mu e^|mu \in {\mathbb{Z}}[X(T)]^W \), so (as we proved)
\[  
\chi(\lambda) \qty{ \sum_\mu a_\mu e^\mu } = \sum_\mu a_\mu \chi(\lambda + \mu)
.\]
In the special case \( \lambda = 0 \), we have \( \chi(\lambda) = \chi(0) = e^0 \), we obtain
\[  
\sum_\mu a_\mu e^\mu = \sum_\mu a_\mu \chi(\mu)
.\]

Extend this to a field by letting \( \lambda \in X(T) \otimes_{\mathbb{Z}}{\mathbb{Q}} \), then define
\[  
A(\lambda) \coloneqq\sum_{w\in W} \operatorname{sgn}(w) e^{w \lambda} \in {\mathbb{Z}}[ (X(T) \otimes{\mathbb{Q}}]
.\]

Then

1.  \( w' A(\lambda) = \operatorname{sgn}(w') A(\lambda) \).

2.  \( A(\mu) A(\lambda) \in {\mathbb{Z}}[X(T) \otimes{\mathbb{Q}}]^W \).
:::

Proof of 1: exercise.

::: {.proof title="of 2"}
We can compute
\[  
w(A(\mu) A(\lambda) ) 
&= w A(\mu)  w A(\lambda) \\
&= \operatorname{sgn}(w) A(\mu)  \operatorname{sgn}(w) A(\lambda) \\
&= \operatorname{sgn}(w)^2 A(\mu) A(\lambda) \\
&= A(\mu) A(\lambda)
.\]
:::

::: {.theorem title="Weyl's Character Formula"}
Let \( \lambda \in X(T) \) be any weight, then
\[  
\chi(\lambda) = { A(\lambda + \rho) \over A(\rho) }
,\]
where \( \rho = {1\over 2} \sum_{\alpha \in \Phi^+} \alpha \).
:::

> Note: this says that one formal sum divides another.

A corollary is an analog of Weyl's dimension formula: :::{.corollary title="?"} Let \( \lambda \in X(T)_+ \) be a dominant weight. Then
\[  
\operatorname{ch}H^0(\lambda) = { A(\lambda + \rho) \over A(\rho) }
.\]
:::

Big question: suppose \( k = \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_p \). What are \( \operatorname{ch}L(\lambda) \) and \( \lambda \in X(T)_+ \)? We know this for \( p\gg 0 \), but in general it's wide open. There are expressions in terms of "\( p{\hbox{-}} \)bases", but these are hard to compute. There are only recursive formulas, none that are closed (and these may not exist).

Next time:

-   Proof of Weyl's character formula
-   Compute an example.

Idea of the proof: we'll have some \( \chi(\lambda) = \sum_\mu a_\mu e^\mu \). Well also have \( A(\rho) \qty{ \sum_\mu a_\mu e^\mu } = A(\lambda + \rho) \). This will reduce to equating coefficients of two formal sums, which will result in a system of linear equations.

# Friday, October 16

## Example: Weyl's Character Formula

Review: suppose the following is invariant under the Weyl group, so \( \sum a_\mu e^\mu \in {\mathbb{Z}}[X(T)]^W \). In this case, we have an equality
\[  
\sum a_\mu e^\mu = \sum a_\mu \chi(\mu)
,\]
where \( \chi(\mu) = \sum_{i\geq 0} (-1)^i \operatorname{ch}H^i(\mu) \). We also had a relation
\[  
\chi(w\cdot \mu) = (-1)^{\ell(w)} \chi(\mu) = \operatorname{sgn}(w) \chi(\mu)
.\]

Now let \( \lambda \in X(T) \otimes{\mathbb{Q}} \), then we defined
\[  
A(\lambda) = \sum_{w\in W} \operatorname{sgn}(w) e^{w\lambda} \in {\mathbb{Z}}[X(T) \otimes{\mathbb{Q}}]
.\]

We obtain

1.  \( w' A(\lambda) = \operatorname{sgn}(w') A(\lambda) \)

2.  \( A(\mu) A(\lambda) = {\mathbb{Z}}[X(T) \otimes{\mathbb{Q}}]^W \).

::: {.theorem title="Weyl's Character Formula"}
\[  
\lambda\in X(T) \implies \chi(\lambda) = {A(\lambda + \rho) \over A(\lambda)}
.\]

As a special case when \( \lambda \in X(T)_+ \), all higher sheaf cohomology vanishes and thus
\[  
\operatorname{ch}H^0(\lambda) = {A(\lambda + \rho) \over A(\lambda)}
.\]
:::

::: {.proof}
We first perform a *reindexing* step:
\[  
\sum_{w, w'} \operatorname{sgn}(w\cdot w') e^{w(\lambda+\rho) + w'\rho}
&= \sum_{w, w'} \operatorname{sgn}(w^{-1} w') e^{w(\lambda+\rho) + w'\rho} \\
&= \sum_{w, y} \operatorname{sgn}(y) e^{w(\lambda+\rho) + wy\rho} && y = w^{-1}w' \implies w' = wy \\
&= \sum_{w, y} \operatorname{sgn}(y) e^{w(\lambda + \rho + y\rho)}
.\]

Now let \( \lambda\in X(T) \), we then compute
\[  
A(\lambda + \rho) A(\rho)
&=
\sum_{w} \operatorname{sgn}(w) e^{w(\lambda + \rho)}
+ \sum_{w'} \operatorname{sgn}(w') e^{w'(\lambda + \rho)}  \\
&=
\sum_{w, w'} \operatorname{sgn}(ww') e^{w(\lambda + \rho) + w'\rho} \\
&= 
\sum_{w, w'} \operatorname{sgn}(w') e^{w(\lambda + \rho + w'\rho)} && \text{from reindexing above, setting } y\coloneqq w' \\
&= \sum_{w, w'} \operatorname{sgn}(w') \chi\qty{w(\lambda + \rho + w'\rho)} \\
&= \sum_{w, w'} \operatorname{sgn}(w') \chi\qty{w\cdot (\lambda + w'\rho + w^{-1} \rho)} && \text{definition of dot action}\\
&= \sum_{w, w'} \operatorname{sgn}(ww') \chi\qty{\lambda + w'\rho + w\rho }  && \text{swapping } w\leadsto w^{-1}  
.\]

Note that \( \chi \) can be introduced since \( A(\lambda + \rho)A(\rho) \in {\mathbb{Z}}[X(T) \otimes{\mathbb{Q}}]^{W\cdot} \).

```{=tex}
\todo[inline]{Not sure, double check.}
```
We can now conclude that
\[  
A(\rho)^2 = \sum_{w, w'} \operatorname{sgn}(ww') e^{w\rho + w' \rho}
.\]
Since this quantity is \( W{\hbox{-}} \)invariant, since it's a square, we can move the \( \chi \) inside:
\[  
\chi(\lambda) \qty{ \sum a_\mu e^\mu } = \sum a_\mu \chi(\lambda + \mu) \\
\implies \chi(\lambda) A(\rho)^2 = \sum_{w, w'} \operatorname{sgn}(ww') \chi(\lambda + w\rho + w'\rho)
,\]
which is exactly what the first calculation resulted in. So we can conclude
\[  
A(\lambda + \rho) A(\rho) = \chi(\lambda) A(\rho)^2
.\]
Note that \( A(\rho) \neq 0 \) since \( w\rho \neq \rho \) unless \( w=\operatorname{id} \). Thus we are actually working in \( {\mathbb{Z}}[X(T) + {\mathbb{Z}}\rho] \), which is an integral domain, and thus we can apply cancellation laws to obtains
\[  
A(\lambda + \rho) = \chi(\lambda) A(\rho)
.\]
:::

::: {.example}
Let \( G = \operatorname{GL}_3(k) \), which has a natural 3-dimensional representation \( V \). Let \( \lambda = (1,0,0) \), so \( L(1,0,0) = V \). This is a polynomial representation, so by permuting we can obtain
\[  
\operatorname{ch}V = e^{(1,0,0)} + e^{(0,1,0)} + e^{(0,0,1)} = \chi(1,0,0)
,\]
where the last equality holds since \( \lambda \) is dominant.

We can write \( \rho = (2,1,0) \), since the fundamental weights are given by \( w_1 = (1,0,0) \) and \( w_2 = (1,1,0) \) (since we're in an \( {\operatorname{SL}}_2 \) and/or \( A_2 \) situation). We then obtain \( \lambda + \rho = (3,1,0) \), and since \( W= S_3 \),
\[  
A(\lambda + \rho) = \sum_{w\in W} \operatorname{sgn}(w) e^{w(\lambda + \rho)}
=
e^{(3,1,0)} -
e^{(1,3,0)} + 
e^{(1,0,3)} - 
e^{(0,1,3)} + 
e^{(0,3,1)} - 
e^{(3,0,1)}
.\]

Thus
\[  
A(\rho) =
e^{(2,1,0)} -
e^{(1,2,0)} + 
e^{(1,0,2)} - 
e^{(0,1,2)} + 
e^{(0,2,1)} - 
e^{(2,0,1)}
.\]

We can then compute
\[  
\chi(1,0,0) A(\rho) = &e^{(3,1,0)}
- e^{(2,2,0)} + 
e^{(2,0,2)} 
-e^{(1,1,2)} + 
e^{(1,2,1)}
- e^{(3,0,1)} + 
\\
&e^{(2,2,0)} -
e^{(1,3,0)} + 
e^{(1,1,2)} - 
e^{(0,2,2)} + 
e^{(0,3,1)} - 
e^{(2,1,1)} + 
\\
&e^{(2,1,1)} -
e^{(1,2,1)} + 
e^{(1,0,3)} - 
e^{(0,1,3)} + 
e^{(0,2,2)} - 
e^{(2,0,2)}
.\]

After cancellation, you'll find that this expression is equal to \( A(\lambda + \rho) \).
:::

## Strong Linkage Principle

We'll consider representations in characteristic zero, so we can take \( k={\mathbb{C}} \). Let \( G \) bet a complex simple group, \( {\mathfrak{g}}= \operatorname{Lie}(G) \), \( t \) a maximal torus, \( X \) the weights, and \( X_+ \) the dominant weights. We have a correspondence `\Large`{=tex}
\[  
\left\{{\substack{(g, t)}}\right\} \iff
\left\{{\substack{(\Phi, W)}}\right\}
\]
`\normalsize`{=tex}

where \( \Phi \) is an irreducible root system and \( W \) is the Weyl group. We'll have a set of simple roots \( \Delta\subseteq \Phi^+ \). For \( \lambda\in X \), we have
\[  
Z(\lambda) = U({\mathfrak{g}}) \otimes_{U({\mathfrak{b}}^+)} \lambda \twoheadrightarrow L(\lambda)
.\]

Then \( \lambda \in X_+ \iff L(\lambda) \) is finite dimensional. We have \( W \) acting on \( X \) via reflections, which we can extend to a dot action
\[  
w\cdot \lambda = w(\lambda + \rho) - \rho, \hspace{4em} \rho = {1\over 2}\sum_{\alpha\in\Phi^+} \alpha
.\]

We define Category \( {\mathcal{O}} \) which has objects \( {\mathfrak{g}}{\hbox{-}} \)modules with a weight space decomposition which is locally finite wrt \( {\mathfrak{n}}^+ \).

### Linkage in Category \( {\mathcal{O}} \) {#linkage-in-category-mathcalo}

Set \( Z(\lambda) = \Delta(\lambda) \), then
\[  
[Z(\lambda) : L(\mu)] \neq 0 \implies \lambda \in W\cdot \mu
.\]
The LHS is computed by evaluating certain Kazhdan-Lusztig polynomials at \( x=1 \).

::: {.example}
Let \( \Phi= A_2 \), then

![Image](figures/image_2020-10-16-14-43-26.png)

\( {\mathcal{O}}_0 \) is the principal block, and the irreducibles correspond to \( \left\{{L(w\cdot 0) {~\mathrel{\Big|}~}w\in W}\right\} \), and the number of irreducibles in given by \( {\left\lvert {W} \right\rvert} \). In this case, there is only 1 finite-dimensional module in any given block of category \( {\mathcal{O}} \).
:::

::: {.example}
For \( \Phi = A_1 \), we have the following situation:

![Image](figures/image_2020-10-16-14-46-27.png)

In \( {\mathcal{O}}_0 \), there are two irreducible representations given by the Verma modules \( L(0), L(-2) \), and we find that

![Image](figures/image_2020-10-16-14-48-12.png)

In this case, the projectives are given by

![Image](figures/image_2020-10-16-14-51-51.png)
:::

# Monday, October 19

```{=tex}
\todo[inline]{Missing notes from first 10m! See phone screenshot.}
```
## Representations in Positive Characteristic

We have the following setup:
\[  
G && \text{a semisimple, simply connected algebraic group} \\
k && \text{an algebraically closed field of characteristic $p>0$} \\
T && \text{a maximal torus} \\
B && \text{a Borel (negative roots)} \\
X(T) = X && \text{weights} \\
X(T)_+ = X_+ && \text{dominant weights} \\
\Phi && \text{roots}
.\]

For \( \lambda \in X_+ \), we consider the induced module \( H^0(\lambda) = \operatorname{Ind}_B^G \lambda \). Not that this is not a simple module in general, so we instead ask about its composition factors.

Question: For all \( \lambda, \mu \in X_+ \), what are the multiplicities \( [H^0(\lambda): L(\mu)] \).

::: {.example}
Let \( G = {\operatorname{SL}}_2(k) \), so \( \Phi = A_1 \). Then \( \lambda \in X_+ = \left\{{0,1,2,\cdots}\right\} \) as we know from standard facts in lie algebras. Define \( X_1 = \left\{{0, 1, \cdots, p-1}\right\} \), then \( \dim H^0(\lambda) = \lambda + 1 \). We can write the weight \( p{\hbox{-}} \)adically as \( \lambda = \sum_{i=0}^t \lambda_i p^i \) for some \( \lambda_j\in X_1 \). Thus \( L(\lambda) = L(\lambda_0) \bigotimes_{i=1}^t L(\lambda_i)^{(i)} \).

Consider \( p=3, \lambda = 7 \), then \( \dim H^0(7) = 8 \). We can write \( 7 \) 3-adically as \( 7 = (1)3^0 + (2)3^1 \), and so
\[  
L(7) \cong L(1) \otimes L(2)^{(1)}
.\]
The first summand is 2-dimensional, and the second is 3-dimensional, so \( L(7) \) is 6-dimensional. Note that \( L(7) \hookrightarrow H^0(7) \).

We can calculate the weights in the tensor product: the first has weights \( \left\{{\pm 1}\right\} \), we take the adjoint weights in the second factor and multiply by the twist 3 to get \( \left\{{2\cdot 3, 0\cdot 3, -2\cdot 3}\right\} \). Taking all combinations of sums from these yields \( \left\{{7,5,1,-1,-5,-7}\right\} \).

![Comparing what's left over](figures/image_2020-10-19-14-14-46.png)

Since \( \pm 3 \) are left over, we know \( [H^0(7): L(3)] \neq 0 \). We can continue with \( 3 = (1)3^1 \) and write \( L(3) = L(1)^{(1)} \). We get weights of the form \( 1\cdot 3, 1\cdot -3 \), so nothing is left over and we're done. We thus get a decomposition
```{=tex}
\begin{center}
\begin{tikzcd}
 & & L(3) \ar[dd] \\
H^0(7): & & \\
 & & L(7)
\end{tikzcd}
\end{center}
```
Note the difference to Verma modules in category \( {\mathcal{O}} \): we have to consider the action of the *affine* Weyl group, where \( W_a \coloneqq W \rtimes p{\mathbb{Z}}\Phi \). Here we have hyperplanes at \( p-1, 2p-1, 3p-1 \), and 7 is *linked* to 3 (in the same orbit) for this action:

![Image](figures/image_2020-10-19-14-21-35.png)
:::

> Once characters are known, can find composition factors.

## Affine Weyl Group

Letting \( a\in {\mathbb{N}} \), we have \( W_a = W\rtimes a({\mathbb{Z}}\Phi) \) where \( {\mathbb{Z}}\Phi \) is the root lattice. Note that there are other variants:

-   \( W_a = W\rtimes a({\mathbb{Z}}\Phi^\vee) \),
-   \( W_{\text{ext}} = W \rtimes X(T) \).

So we set \( W_p = W\rtimes p({\mathbb{Z}}\Phi) \) where \( p \) is a prime. What's in this group? We know it contains "products" of reflections with translations. We find that \( W_p \) is generated by
\[  
s_{\beta, np}(\lambda) = \lambda - {\left\langle {\lambda},~{\beta^\vee} \right\rangle}\beta + np \beta
.\]

It is also the case that \( W_p \) acts on \( X(T) \) and there exists a dot action
\[  
w\cdot \lambda = w(\lambda + \rho) - \rho
.\]

::: {.example}
Consider \( A_1 \), so \( \alpha = 2 \). We consider what the stabilizer is:
\[  
s_{\alpha, np}\cdot \lambda &= \lambda \\
s_{\alpha, np}(\lambda + \rho) - \rho &= \lambda \\
(\lambda + \rho) - {\left\langle {\lambda _ \rho},~{\alpha^\vee} \right\rangle}\alpha + np\alpha - \rho &= \lambda
.\]

After cancellation in the last line above, we obtain
\[  
\lambda = np-1
,\]
which exactly yields the \( p-1, 2p-1, \cdots \) we saw before.
:::

::: {.example}
Consider \( A_2 \). We obtain "alcoves":

![Image](figures/image_2020-10-19-14-36-02.png)
:::

We can get a stronger version of weak linkage, which we'll just call linkage:

::: {.theorem title="Linkage"}
\[  
[H^0(\lambda): L(\mu)] \neq 0 \implies \lambda \in W_p \cdot \mu
.\]
:::

::: {.warnings}
These are difficult to compute in general, or to even detect when they're zero. For \( p\gg 0 \), these multiplicities are computed via Kazhdan-Lusztig polynomials.
:::

### Ordering of Weights

There is a partial ordering on the weight lattice given by
\[  
\mu \leq \lambda \iff \lambda - \mu = \sum_{\alpha\in \Phi^+} n_\alpha \alpha, \quad n_\alpha \geq 0
.\]

::: {.definition title="Strong Linkage"}
For \( \mu, \lambda \in X(T) \), we say \( \mu \) is **strongly linked** to \( \lambda \), denoted \( \mu \uparrow \lambda \), if there exists a sequence of weights \( \mu_1, \cdots, \mu_r \in X(T) \) and reflections \( s_1, \cdots, s_r \) such that
\[  
\mu \leq \mu_1 = s_1 \cdot \mu \leq \mu_2 = s_2\cdot \mu 1 \leq \cdots \leq s_r \mu_{r-1}
.\]
:::

::: {.remark}
Note that

-   \( \mu \uparrow \lambda \implies \mu \leq \lambda \), so this is stronger than the usual linkage
-   \( \mu \uparrow \lambda \implies \mu \in W_p \cdot \lambda \).
:::

::: {.theorem title="Strong Linkage Principle"}
\[  
[H^0(\lambda): L(\mu)] \neq 0 \implies \lambda \in \mu \uparrow \lambda
.\]

Moreover, there is a version of strong linkage for \( H^i(\lambda) \) for \( i> 1 \).
:::

> Next time: history of strong linkage, and translation functors.

# Wednesday, October 21

## Strong Linkage

Let \( G \) be a semisimple algebraic group and \( k = \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}_p\mkern-1.5mu}\mkern 1.5mu \). We found that the *affine Weyl group* \( W_p \) played an important role here.

::: {.theorem title="Strong Linkage I"}
Suppose we have a nonzero composition factor in the induced/Weyl module. Then
\[
[H^0 \lambda : L(\mu)] \neq 0]\implies \mu \uparrow \lambda
.\]

In other words, there's a series of reflections sending \( \mu \) to \( \lambda \) which doesn't increase it's value in the ordering.
:::

::: {.theorem title="Strong Linkage II"}
Let \( \lambda \in X(T) \) with \( {\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} \geq 0 \) for all \( \alpha\in \Delta \). Suppose \( \mu \in X(T)_+ \).
\[
[H^i w\cdot \lambda : L(\mu)] \neq 0 \text{ for some } i\geq 0 \implies \mu \uparrow \lambda
.\]
:::

::: {.remark}
Note that this is tells us slightly more than Bott-Borel-Weil.
:::

::: {.remark}
There is some history here:

1.  Verma conjectured the first theorem in 1971.

2.  Humphreys (1971) proved it for \( Z_r(\lambda) = \operatorname{Ind}_{B_r}^{G_r} \lambda \).

3.  Strong Linkage II proved by Andersen in 1980.

4.  Jantzen proved strong linkage for \( Z_r \), which implies strong linkage for \( V(\lambda) \).

5.  Doty (1987) proved strong linkage for \( Z_r(\lambda) \) as a \( G_rT{\hbox{-}} \)modules, which implies strong linkage for \( V(\lambda) \).
:::

::: {.remark}
One application is the following: let \( \lambda, \mu \in X(T)_+ \), then \( \operatorname{Ext}_G^n(L(\lambda), L(\mu)) \neq 0 \) for some \( n \geq 0 \). This implies that \( \lambda \in W_p \cdot \mu \).

We can consider some cases

-   If \( n=0 \), we're reduced to previous situations.
-   If \( n=1 \), we can conclude that \( L(\lambda) \) is in the second socle layer of \( H^0 \mu \), or vice-versa. In either case, \( \lambda \in W_p \cdot \mu \).

We can compute this ext by considering an minimal injective resolution
\[  
0 \to L(\mu) \to I_0 = I(\mu) \to I_1 \to \cdots
.\]

We can conclude that
\[
[I(\mu) : H^0(\sigma)] = [H^0(\sigma): L(\mu)] \neq 0
.\]
by Brauer-Humphreys reciprocity, so \( \sigma \in W_p \cdot \mu \). Similarly \( [I(\mu): L(\gamma)] \neq 0 \) implies that \( \gamma \in W_p \cdot \mu \), and continuing in this way we can write
\[
I_1 = \bigoplus_{j=1}^t I(\gamma_j) 
\text{ with each } 
\gamma_j \in W_p \cdot \mu
.\]
So all of these weights are strongly linked to \( \mu \).

But then we know \( \operatorname{Ext}_G^n (L(\lambda), L(\mu)) \neq 0 \) is a subquotient of \( \hom_G(L(\lambda), I_n) \), which thus can not be zero. So \( \lambda \in W_p \cdot \mu \)
:::

## Translation Functors

Consider the case from category \( {\mathcal{O}} \), e.g. by taking \( {\mathfrak{g}}= {\mathfrak{sl}}_3({\mathbb{C}}) \):

![Image](figures/image_2020-10-21-14-19-53.png)

For \( \lambda \) a regular weight, the principal block \( \mathcal{B}_0 \) is Morita-equivalent to \( \mathcal{B}_\lambda \). If \( \mu \) is a singular weight, then by Jantzen there are translation functors

\[  
T_\lambda^\mu: \mathcal{B}_\lambda &\to \mathcal{B}_\mu \\
T_\mu^\lambda: \mathcal{B}_\mu &\to \mathcal{B}_\lambda
.\]

In the case where \( G \) is a semisimple algebraic group and \( k = \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_p \), we have the following picture instead:

![Image](figures/image_2020-10-21-14-23-24.png)

### Blocks

Two simple modules \( S, T \) are in the same *block* if we have a sequence \( T_1, \cdots, T_n \) such that \( S=T_1 \) and \( T_n = T \) where \( \operatorname{Ext}^1(T_i, T_{i+1}) \neq 0 \).

::: {.lemma title="?"}
Let \( M, M' \) be \( H{\hbox{-}} \)modules and \( \mathcal{B}(H) \) be the blocks of \( H \). Then

1.  \( M = \bigoplus_{b\in \mathcal{B}(H)} M_b \) where \( M_b = \sum_{M'\leq M} M' \) the sum of all submodules such that \( M \) has composition in the block \( b \).

2.  
    \[ \operatorname{Ext}_H^i(, M') = \prod_{b\in\mathcal{B}(H)} \operatorname{Ext}_H^i (M_b, M_b') \]
:::

So the question becomes, what are the blocks of \( H \)? Let \( \lambda \in X(T)_+ \), so we can define \( L(\lambda) \), and let \( b(\lambda) \) be the \( G{\hbox{-}} \)block containing \( L(\lambda) \).

We have \( b(\lambda) \in \mathcal{B}(G) \) and \( b(\lambda) \) \( \subseteq X(T)_+ \cap W_p \cdot \lambda \), i.e. we have strong linkage.

> Here we refer to \( b(\lambda) \) as both the block and the weights it contains.

::: {.theorem title="Donkin"}
Let \( \lambda \in X(T)_+ \) be a dominant weight and let \( r\in {\mathbb{Z}} \) be the largest integer such that \( p^r \divides {\left\langle { \lambda + \rho},~{\alpha^\vee} \right\rangle} \) for all \( \alpha\in \Phi \). Then
\[
b(\lambda) = W_p^{(r)} \cdot \lambda \cap X(T)_+ \text{ where } W_p^{(r)} = W\rtimes p^r {\mathbb{Z}}\Phi
.\]
:::

::: {.proposition title="?"}
Let \( B \) be a \( G{\hbox{-}} \)module and \( \lambda \in X(T) \). Set \( {\operatorname{pr}}_\lambda V \) to be the sum of all submodules of \( V \) with composition factors of the form \( L(\mu) \) where \( \mu \in W_p \cdot \lambda \). Then

-   \( V = \bigoplus_{\lambda \in Z} {\operatorname{pr}}_\lambda V \) where \( Z \) are representatives of the \( W_p \) orbits, i.e. one representative from each alcove in the weight lattice.

-   
    \[ \operatorname{Ext}_G^i(V, V') = \prod_{\lambda \in Z} \operatorname{Ext}_G^i ({\operatorname{pr}}_\lambda V, {\operatorname{pr}}_\lambda V') \]

-   The projection functors \( {\operatorname{pr}}_\lambda({\,\cdot\,}) \) are exact.

> Note that this still works for singular weights, not just regular weights.
:::

::: {.example}
We can compute
\[  
{\operatorname{pr}}_\lambda L(\mu) = 
\begin{cases}
0 &= \lambda \not\in W_p \cdot \mu \\
L(\mu) &= \lambda \in W_p \cdot \mu
\end{cases}
.\]

Similarly, by strong linkage,
\[  
{\operatorname{pr}}_\lambda H^i(\mu) =
\begin{cases}
0 &= \lambda \not\in W_p \cdot \mu \\
H^i(\mu) &= \lambda \in W_p \cdot \mu
\end{cases}
.\]
:::

Recall that
\[  
\mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}}\coloneqq\left\{{
\lambda \in X(T) {~\mathrel{\Big|}~}
0 \leq {\left\langle {\lambda + \rho},~{\beta^\vee} \right\rangle} \leq p \,\, \forall \beta\in\Phi^+
}\right\}
.\]
For every \( \mu, \lambda \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \), consider \( \mu - \lambda \in X(T) \). Then there is a way to conjugate it under the ordinary \( W \) action to land in the dominant region, i.e. some unique \( \nu \) such that \( \nu \in X(T)_+ \cap W(\mu - \lambda) \).

::: {.definition title="Translation Functors"}
Define
\[  
T_\lambda^\mu V = 
{\operatorname{pr}}_\mu
\qty{
L(\nu) \otimes
{\operatorname{pr}}_\lambda V
}
.\]

So project to \( \lambda \), tensor with an irreducible representation, then project to \( \mu \). This is an exact functor
\[  
T_{\lambda}^\mu: G{\hbox{-}}\mathrm{mod} &\to G{\hbox{-}}\mathrm{mod}
.\]
:::

Next time: we'll show that \( T_\lambda^\mu \) and \( T_\mu^\lambda \) form an adjoint pair. Note that if \( \mu, \lambda \) are in the same block, these are the exact functor which product the categorical equivalence.

# Friday, October 23

## Facets

\( W_p \) has a dot action on \( E \coloneqq X(T) \otimes_{\mathbb{Z}}{\mathbb{R}} \).

::: {.definition title="Facet"}
We can write \( \Phi^+ = \Phi_0^+ \cup\Phi_1^+ \), and define the *facet* as
\[  
F \coloneqq\left\{{
\lambda \in E {~\mathrel{\Big|}~}{\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} = n_\alpha p\,\, \forall\alpha\in \Phi_0^+(F),\,\,
(n_\alpha - 1)p < {\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} < n_\alpha p \,\,\forall \alpha\in \Phi_1^+(F)
}\right\}
.\]
The first condition corresponds to being on a vertex in the following diagram, while the second corresponds to being in the interior of a triangle:

![Image](figures/image_2020-10-23-14-04-42.png)
:::

::: {.definition title="Closure of a Facet"}
The *closure* of a facet is defined by replacing the second condition with an inequality.
\[  
\mkern 1.5mu\overline{\mkern-1.5muF\mkern-1.5mu}\mkern 1.5mu \coloneqq\left\{{
\lambda \in E {~\mathrel{\Big|}~}{\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} = n_\alpha p\,\, 
\forall\alpha\in \Phi_0^+(F),\,\,
n_\alpha - 1 \leq  {\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} \leq n_\alpha p 
\,\,\forall \alpha\in \Phi_1^+(F)
}\right\}
.\]
This includes all of the walls of the triangle.
:::

::: {.definition title="Upper Closure of a Facet"}
Finally, we define the *upper closure* by replacing one inequality with a strict inequality:
\[  
\widehat{F} \coloneqq\left\{{
\lambda \in E {~\mathrel{\Big|}~}{\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} = n_\alpha p\,\, \forall\alpha\in \Phi_0^+(F),\,\,
n_\alpha - 1 < {\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} \leq n_\alpha p \,\,\forall \alpha\in \Phi_1^+(F)
}\right\}
.\]
:::

::: {.definition title="Alcove"}
A facet is called an **alcove** for \( W_p \) iff \( \Phi_0^+(F) = \emptyset \).
:::

::: {.remark}
Note that if \( F \) is an alcove for \( W_p \), then \( \widehat{F} \) is a fundamental domain for \( W_p\curvearrowright E \) with the dot action.
:::

## Translation Functors

Let \( \lambda, \mu\in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \), and define
\[  
T_\lambda^\mu({\,\cdot\,}) \coloneqq
{\operatorname{pr}}_\mu \qty{ L(\nu_1) \otimes{\operatorname{pr}}_\lambda({\,\cdot\,}) }\\
\text{where } 
\nu_1 \in X(T)_+ \cap W(\mu-\lambda)
.\]

This is exact as a composition of exact functors, since we're tensoring over a field and taking projections (which are themselves exact).

::: {.lemma title="?"}
Let \( \lambda,\mu\in X(T) \) and \( M \) be a finite-dimensional \( G{\hbox{-}} \)module. Then the functors
\[  
F({\,\cdot\,}) &\coloneqq{\operatorname{pr}}_\mu \circ \qty{M\otimes_k {\,\cdot\,}} \circ {\operatorname{pr}}_\lambda \\
G({\,\cdot\,}) &\coloneqq{\operatorname{pr}}_\lambda \circ \qty{M^\vee\otimes_k {\,\cdot\,}} \circ {\operatorname{pr}}_\mu \\
\]
define an adjoint pair, i.e.
\[  
\hom_\mathcal{C}(G({\,\cdot\,}), A) &= \hom_\mathcal{D}({\,\cdot\,}, F(A)) \\
\hom_\mathcal{C}({\,\cdot\,}, G(A)) &= \hom_\mathcal{D}( F({\,\cdot\,}), {\,\cdot\,}) \\
.\]
:::

::: {.proof}
Let \( V, V' \) be \( G{\hbox{-}} \)modules. Then
\[  
\hom_G(FV, V') 
&= \hom_G( {\operatorname{pr}}_\mu\qty{ M\otimes{\operatorname{pr}}_\lambda V  }, V') \\
&= \hom_G(  M\otimes{\operatorname{pr}}_\lambda V  , {\operatorname{pr}}_\mu V') \\
&= \hom_G(  {\operatorname{pr}}_\mu \qty{ M\otimes{\operatorname{pr}}_\lambda V }  , {\operatorname{pr}}_\mu V') \\
&= \hom_G(  {\operatorname{pr}}_\lambda V  , M^\vee\otimes_k {\operatorname{pr}}_\mu V') \\
&= \hom_G(  {\operatorname{pr}}_\lambda V  , {\operatorname{pr}}_\lambda\qty{ M^\vee\otimes_k {\operatorname{pr}}_\mu V'} ) \\
&= \hom_G(  V  , {\operatorname{pr}}_\lambda\qty{ M^\vee\otimes_k {\operatorname{pr}}_\mu V'} ) \\
&= \hom_G(V, GV')
.\]

Here we've used the fact that there no nontrivial homs between distinct blocks.
:::

::: {.theorem title="?"}
Let \( \lambda, \mu \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \) are in the closure of the bottom alcove. Then \( T_\lambda^\mu \leftrightarrows T_\mu \lambda \) form an adjoint pair.
:::

::: {.proof}
Applying the previous corollary, we just need to show the last equality in the following:
\[  
T_\lambda^\mu({\,\cdot\,}) 
&= {\operatorname{pr}}_\mu \qty{ L(\nu_1) \otimes{\operatorname{pr}}_\lambda({\,\cdot\,}) } \\
&= {\operatorname{pr}}_\lambda \qty{ L(\nu_1)^\vee\otimes{\operatorname{pr}}_\mu({\,\cdot\,}) } \\
&=_? T_\mu^\lambda
.\]

This requires checking the highest weight condition on \( L(\nu_1)^\vee= L(-w_0 \nu_1) \). We know \( \nu_1 \in X(T)_+ \cap W(\mu-\lambda) \), so if \( \nu_1 = w(\mu-\lambda) \), we have \( -w_0 \nu_1 = w_0 w (\lambda - \mu) \in W(\lambda - \mu) \). Since \( -w_0 \nu_1 \in X(T)_+ \), this verifies the condition.
:::

::: {.remark}
The adjointness can be extended from homs to exts:
\[  
\operatorname{Ext}_G^i(T_\mu^\lambda V, V' ) \cong \operatorname{Ext}_G^i(V, T_\lambda^\mu V')
.\]
:::

## Technical Preliminaries

1.  If \( \lambda \in X(T) \) and
    \[  
      \sum_\mu a(\mu) e^\mu \in {\mathbb{Z}}[X(T)]^W
      \]
    is \( W{\hbox{-}} \)invariant, then we proved that
    \[  
      \chi(\lambda)
      \qty{
      \sum_\mu a(\mu) e^{\mu}
      }
      = \sum_\mu a(\mu) \chi(\lambda + \mu)
      .\]

2.  If \( {\operatorname{pr}}_\lambda V = V \), then we have
    \[  
    \operatorname{ch}(M\otimes V) 
    &= \operatorname{ch}(M) \operatorname{ch}(V) \\
    &= \operatorname{ch}(M) \qty{\sum_{w\in W_p} a_w \chi(w\cdot\lambda) } \\
    &= \qty{ \sum_{\nu \in X(T)} \dim M_\nu e^\nu } \qty{\sum_{w\in W_p} a_w \chi(w\cdot\lambda) }
    .\]

::: {.proposition title="?"}
Let \( V \) be a finite dimensional \( G{\hbox{-}} \)module with \( {\operatorname{pr}}_\lambda V = V \). Write
\[  
\operatorname{ch}(V) = \sum_{w\in W_p} a_w \chi(w\cdot \lambda) \quad
a_w\in {\mathbb{Z}},\, \text{cofinitely zero}
.\]
Then
\[  
\operatorname{ch}\qty{{\operatorname{pr}}_\lambda \qty{ M\otimes V } } = 
\sum_{w\in W} a_w  \qty{ \sum_{\substack{ \nu \in X(T) \\ \lambda + \nu \in W_p\cdot \mu} } \dim M_\nu } \chi(w\cdot (\lambda + \nu) )
.\]
:::

::: {.proof}
Using (1) and (2), we can write
\[  
\operatorname{ch}(M\otimes V) = 
\sum_{w\in W_p} a_w \sum_\nu \dim M_\nu \chi(w\cdot \lambda + \nu)
.\]
Note that \( w\cdot \lambda + \nu = w\cdot (\lambda + w_1 \nu) \) where \( w_1 \coloneqq w^{-1} \), using the fact that the dot action acts linearly on the second term. This comes from the following computation:
\[  
w\cdot(\mu_1 + \mu_2)
&= w(\mu_1 + \mu_2 - \rho) + \rho \\
&= w(\mu_1 + \rho) - \rho + w\mu_2 \\
&= w\cdot \mu_1 + w\mu_2
.\]

We can thus write
\[  
\operatorname{ch}(M\otimes V) = 
\sum_{w\in W_p} a_w \qty{ \sum_\nu \dim M_\nu \chi(w\cdot \qty{\lambda + \nu})}
,\]
since summing over \( \nu \) is the same as summing over \( w\nu \) for any \( w \).

To get \( \operatorname{ch}({\operatorname{pr}}_\mu(M\otimes V)) \), take \( \chi(w(\lambda + \nu)) \) and note that \( \lambda + \nu \in W_p \cdot \mu \).
:::

::: {.remark}
Given \( \operatorname{ch}V \), one can write \( \operatorname{ch}T_\lambda^\mu V \). What will be important here are stabilizers. If \( \lambda \) is on a wall, the stabilizer fixes the corresponding hyperplane.

![Image](figures/image_2020-10-23-14-50-27.png)
:::

# Monday, October 26

## Review

Let \( V \) be a finite dimensional \( G{\hbox{-}} \)module with \( {\operatorname{pr}}_\lambda V = V \), and write \( \operatorname{ch}(V) = \sum_{w\in W_p} a_w \chi(w\cdot \lambda) \) where \( a_w\in {\mathbb{Z}} \) and only finitely many are nonzero. We can then write
\[  
\operatorname{ch}\qty{{\operatorname{pr}}_\mu(M\otimes V)} = \sum_{w\in W_p} a_w \qty{\sum_{\substack{\nu \in X(T) \\ \lambda+\nu \in W_p\cdot \mu} } \dim M_\nu \, \chi(w\cdot(\lambda + \nu))   }
,\]
where we sum over all weights linked to \( \mu \)

::: {.lemma title="Technical"}
Let \( \lambda,\mu \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \) and \( \nu_1 \in X(T)_+ \cap W(\mu-\lambda) \). Then

a.  \( \lambda + w\nu \not\in W_p\cdot \mu \) for any \( w\in W \) and \( \nu < \nu_1 \).

b.  If \( w\in W \) and \( \lambda + w\nu_1 \in W_p \cdot \mu \) (which can happen), then there exists some \( w_1\in W_p \) such that

-   \( w_1\cdot \lambda = \lambda \), so it stabilizes \( \lambda \),
-   \( w_1\cdot \mu = \lambda + w\nu_1 \)
:::

## Characters of Translated Modules

Goal: find \( \operatorname{ch}T_\lambda^\mu V \).

::: {.theorem title="?"}
Let \( \lambda, \mu \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \) and \( V \) be a finite-dimensional module with \( {\operatorname{pr}}_\lambda V = V \). Write
\[
\operatorname{ch}(V) = \sum_{w\in W_p} a_w \chi(w\cdot \lambda)
,\]
where \( a_w\in {\mathbb{Z}} \) and this is a finite sum. Then
\[  
\operatorname{ch}(T_\lambda^\mu V) = 
\sum_{w\in W_p} a_w \qty{ 
  \sum_{w_1\in S} \chi(ww_1\cdot \mu)
},
\]
where \( S \) is a set of coset representatives for the group
\[
{\operatorname{Stab}}_{W_p}(\lambda) \over {\operatorname{Stab}}_{W_p}(\mu) \cap {\operatorname{Stab}}_{W_p}(\lambda)
\]
:::

::: {.proof}
We can write
\[  
\operatorname{ch}(T_\lambda^\mu V)
&= \operatorname{ch}\qty{{\operatorname{pr}}_\mu\qty{L(\nu_1) \otimes{\operatorname{pr}}_\lambda V } } \\
&= \operatorname{ch}\qty{{\operatorname{pr}}_\mu\qty{L(\nu_1) \otimes V } } \\
&= \sum_{w\in W_p} a_w \qty{\sum_\nu \dim L(\nu_1)_\nu \chi(w\cdot(\lambda + \nu)) }\\
&= \sum_{w\in W_p} a_w  \qty{ \sum_\nu \dim L(\nu_1)_\nu \chi(w\cdot\lambda + \nu)  }
.\]

We need \( \lambda + \nu\in W_p\cdot \mu \) and \( \nu \leq \nu_1 \) to apply the technical lemma.

![Inner and outershell, orbit of \( W \) action?](figures/image_2020-10-26-14-13-36.png){width="250px"}

The last step can be written because the only contributions are \( \nu \in W\nu_1 \) and \( \dim L(\nu_1)_\nu = 1 \), i.e. we're on the outer shell in the figure above.

We can apply (a) and (b) from the technical lemma to write
\[  
\cdots 
&= \sum_{w\in W_p} a_w \sum_{w_1} \chi(w(w_1\cdot \mu))
.\]

By (b), \( w_1 \in {\operatorname{Stab}}_{W_p}(\lambda) \). We don't want duplication, so we can check that \( w_1\cdot\mu = w_2 \cdot\mu = \lambda+ w\nu_1 \) implies that \( w_1 \in w_2 {\operatorname{Stab}}_{W_p}(\mu) \). Thus we need to take the coset representatives stated in the theorem.

> Thus we don't need to consider any weights in the inner shell.
:::

## Equivalence of Categories

Goal: show that a pair of functors each admit a natural transformation to the identity.

::: {.definition title="Natural transformations, isomorphisms, and equivalence of categories"}
Let \( \mathcal{C}, \mathcal{D} \) be categories and \( S, T:\mathcal{C} \to \mathcal{D} \) be two functors. A **natural transformation** \( \alpha:S\to T \) is a function that assigns to each object \( c\in \mathcal{C} \) a morphism \( \alpha_c:S(c) \to T(c) \) in such a way that for every \( f:c\to c' \), we have a commuting square
```{=tex}
\begin{tikzcd}
S(c) \ar[r, "{\alpha_c}"] \ar[d, "S(f)"] & T(c)\ar[d, "T(f)"] \\
S(c') \ar[r, "{\alpha_c}"] & T(c')
\end{tikzcd}
```
If \( \alpha_c \) is an equivalence for all \( c\in \mathcal{C} \), then \( \alpha \) is said to be a **natural isomorphism**. Two categories are said to be **equivalent** iff \( S\circ T \) and \( T\circ S \) are naturally isomorphic to the identity functor.
:::

::: {.theorem title="?"}
Suppose \( \lambda, \mu \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \) belong to the same facet. Then \( T_\lambda^\mu \) induces an equivalence of categories from
\[  
\mathcal{B}_\lambda \coloneqq\mathcal{C} \coloneqq\left\{{V\in {{G}{\hbox{-}}\operatorname{mod}} {~\mathrel{\Big|}~}{\operatorname{pr}}_\lambda V = V}\right\} \leadsto
\mathcal{B}_\mu \coloneqq\mathcal{D} \coloneqq\left\{{V\in {{G}{\hbox{-}}\operatorname{mod}} {~\mathrel{\Big|}~}{\operatorname{pr}}_\mu V = V}\right\}
.\]
where \( T_\mu^\lambda \circ T_\lambda^\mu \cong {\operatorname{pr}}_\lambda \).
:::

::: {.proof}
Using the adjointness of \( T_\lambda^\mu \) and \( T_\mu^\lambda \)\< we can write
\[  
\hom_G(V, T_\mu^\lambda T_\lambda^\mu V) \equiv
\hom_G(T_\lambda^\mu V,  T_\lambda^\mu V)
.\]

So consider the identity map on the latter \( \operatorname{id}: T_\lambda^\mu V{\circlearrowleft} \), and let \( f_V: V\to T_\mu^\lambda T_\lambda^\mu V \) be the corresponding map in the former. We can a natural transformation in the following way

```{=tex}
\begin{tikzcd}
V \ar[r, "{f_V}"]\ar[d, "\operatorname{id}"] & T_\mu^\lambda T_\lambda^\mu V \ar[d, "\operatorname{id}'"] \\
V' \ar[r, "{f_{V'}}"] & T_\mu^\lambda T_\lambda^\mu V'
\end{tikzcd}
```
It suffices to show that the \( f_V \) are isomorphism as maps of \( G{\hbox{-}} \)modules, so one proceeds by

-   Showing it works for simple \( G{\hbox{-}} \)modules, and

-   Applying induction to composition length, using the five lemma.

Suppose \( V \) is simple, then by the prior theorem we can write
\[  
\operatorname{ch}T_\mu^\lambda T_\lambda^\mu V = 
\sum_{w\in W_p} a_w \qty{\sum_{w_1, w_2} \chi\qty{w(w_2 w_1)\cdot \lambda } }
.\]
We know that

-   \( w_1\in {\operatorname{Stab}}_{W_p}(\mu) / \sim \)
-   \( w_2\in {\operatorname{Stab}}_{W_p}(\lambda) / \sim \)

Note that if \( \mu, \lambda \) are in the same facet, then the stabilizers are the same.

![Weights in the same facet share a stabilizer.](figures/image_2020-10-26-14-42-57.png)

So \( \lambda, \mu \) are in the same facet, so \( w_1 = \operatorname{id}, w_2 = \operatorname{id} \) and \( f_V \) is an isomorphism. We thus obtain \( T_\mu^\lambda T_\lambda^\mu =\cong {\operatorname{pr}}_\lambda \) and \( T_\lambda^\mu T_\mu^\lambda =\cong {\operatorname{pr}}_\mu \). Thus \( B_\lambda \cong B_\mu \).
:::

*Question*: What happens when translating from an alcove onto a wall? A similar formula will hold in this case: we will get either induced modules or zero, depending on the dominance of the weights. This will lead into the Lusztig conjectures.

# Wednesday, October 28

## Review of Last Time

Suppose we have two weights in the same facet, i.e. they're in the same stabilizer under the action of the affine Weyl group:

![Weights in the same facet](figures/image_2020-10-28-13-56-17.png)

We had a theorem: if \( \lambda, \mu \) are in the same facet, then \( \mathcal{B}_\lambda \cong \mathcal{B}_\mu \) is an equivalence of categories, where the map is via the translation functors.

## Description of \( T_\lambda^\mu {H^i(w\cdot \lambda) } \) {#description-of-t_lambdamu-hiwcdot-lambda}

We can write
\[  
T_\lambda^\mu \qty{H^i(w\cdot \lambda)} 
&= {\operatorname{pr}}_\mu \qty{L(\nu_1) \otimes{\operatorname{pr}}_\lambda\qty{H^i(w\cdot \lambda)} } \\
&= {\operatorname{pr}}_\mu \qty{L(\nu_1) \otimes{H^i(w\cdot \lambda)} } \\
&= {\operatorname{pr}}_\mu \qty{L(\nu_1) \otimes{R^i \operatorname{Ind}_B^G w\cdot \lambda} } \\
&= {\operatorname{pr}}_\mu\qty{R^i \operatorname{Ind}_B^G \qty{L(\nu_1) \otimes w\cdot \lambda } }
.\]

Take a composition series by \( B{\hbox{-}} \)modules of \( L(\nu_1) \otimes w\cdot \lambda \), say
\[  
0 = M_0 \subseteq M_1 \cdots \subseteq M_r = L(\nu_1) \otimes w\cdot \lambda
.\]
where \( M_j / M_{j-1} \cong \lambda+j + w\cdot \lambda \) and \( \lambda_j < \lambda_{j'} \implies j < j' \), i.e. we can order them in a decreasing way.

Consider the SES

```{=tex}
\begin{tikzcd}
0 \ar[r] & M_{j-1} \ar[r] & M_j \ar[r] & M_{j} / M_{j-1} \ar[r] & 0
\end{tikzcd}
```
where applying \( {\operatorname{pr}}_\mu({\,\cdot\,}) \) induces the LES
```{=tex}
\begin{tikzcd}
\cdots \ar[r] & {\operatorname{pr}}_\mu M_{j-1} \ar[r] & {\operatorname{pr}}_\mu M_j \ar[r] & {\operatorname{pr}}_\mu \left( M_{j} / M_{j-1} \right) \ar[r] & \cdots
\end{tikzcd}
```
We know that
\[  
{\operatorname{pr}}_\mu H^i\qty{\lambda_j + w\cdot \lambda} = 
\begin{cases}
H^i(\lambda_j + w\cdot \lambda ) & \lambda+j + w\cdot \lambda \in W_p\cdot \mu \\
0 & \text{else}
\end{cases}
,\]
i.e. this projection is the identity for weights linked to \( \mu \) and zero otherwise. We also have
\[  
{\operatorname{pr}}_\mu H^i(M_r) = T_\lambda^\mu H^i(w\cdot \lambda)
.\]

::: {.theorem title="?"}
Let \( \lambda, \mu \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \) and \( F \) be a facet with \( \lambda \in F \). If \( \mu \in \mkern 1.5mu\overline{\mkern-1.5muF\mkern-1.5mu}\mkern 1.5mu \), then we have
\[  
T_\lambda^\mu\qty{H^i(w\cdot \lambda)} = H^i(w\cdot \mu) \qquad \forall w\in W_p
.\]
:::

::: {.example title="?"}
![Image](figures/image_2020-10-28-14-12-31.png)

Here consider \( H_0(\lambda) \xrightarrow{T_\lambda^\mu} H_0(\mu) = 0 \), since \( \mu \) is outside of the dominant region (in orange.) We also have \( H^0(w\cdot \lambda) \to H^0(w\cdot \mu) \neq 0 \), since this falls *into* the dominant region.
:::

::: {.proof title="?"}
Let \( \lambda \in F \) and \( \mu\in\mkern 1.5mu\overline{\mkern-1.5muF\mkern-1.5mu}\mkern 1.5mu \). Then \( {\operatorname{Stab}}_{W_p}(\lambda) \subseteq {\operatorname{Stab}}_{W_p}(\mu) \). By a previous technical lemma, we had a formula for computing \( \operatorname{ch}T_\lambda^\mu V \), which involved considering
\[  
w_1 \in {{\operatorname{Stab}}_{W_p}(\lambda) \over {\operatorname{Stab}}_{W_p}(\lambda) \cap{\operatorname{Stab}}_{W_p}(\mu)}
.\]
In this case, we get \( w_1 = \operatorname{id} \), since the top and bottom are equal.

By that lemma, there exists a unique \( \ell \) such that \( w\cdot \lambda + \lambda_\ell \in W_p\cdot \mu \), where \( \lambda_\ell \) is a weight of \( L(\nu_1) \). From the LES, we have

```{=tex}
\begin{tikzcd}
\cdots \ar[r] & {\operatorname{pr}}_\mu M_{j-1} \ar[r] & {\operatorname{pr}}_\mu M_j \ar[r] & {\operatorname{pr}}_\mu \left( M_{j} / M_{j-1} \right) = \lambda_j + w\cdot \lambda \ar[r] & \cdots
\end{tikzcd}
```
where the last term will only be nonzero in restricted cases. We can thus conclude that
\[  
{\operatorname{pr}}_\mu(H^i(M_j))  =
\begin{cases}
0 & j< \ell \\
H^i(w\cdot \mu) & j\geq \ell.
\end{cases}
\]
Setting \( j=r \), we have
\[  
T_\lambda^\mu \qty{H^i(w\cdot\lambda)} = {\operatorname{pr}}_\mu H^j(M_r) = H^i(w\cdot \mu)
.\]
:::

Suppose \( \lambda \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \) and \( \mu \in C_{\mathbb{Z}} \). What happens when you translate \( \lambda \) (blue) off of a wall? \( T_\lambda^\mu\qty{H^0(w\cdot \lambda)} \) has a filtration with factors \( H^0(w_1\cdot \mu) \) and \( H^0(w_2\cdot \mu) \) (shown in green).

![Filtration coming from translating off of a wall](figures/image_2020-10-28-14-25-12.png){width="350px"}

If \( w\lambda \) is a vertex with \( \mu \in C_{\mathbb{Z}} \), then \( T_\lambda^\mu(H^0(w\cdot \lambda)) \) has six factors:

![Weight where the translation has six factors](figures/image_2020-10-28-14-27-05.png){width="350px"}

::: {.proposition title="?"}
Suppose \( \lambda \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \) and \( \mu \in C_{\mathbb{Z}} \), and let \( w\in W_p \) where \( w\cdot \lambda \in X(T)_+ \). Then \( T_\lambda^\mu (H^0(w\cdot \lambda)) \) has a filtration such that all of the composition factors are of the form \( H^0(ww_1 \cdot \mu) \) where \( w_1\in {\operatorname{Stab}}_{W_p}(\lambda) \) and each of the factors occurs at most once.
:::

Recall that \( \widehat{F} \) denotes the *upper closure*.

::: {.proposition title="?"}
Let \( \lambda, \mu \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \) be in the bottom alcove, where \( \mu \in \mkern 1.5mu\overline{\mkern-1.5muF\mkern-1.5mu}\mkern 1.5mu_1 \) but \( \lambda\in F_1 \). Let \( F \) be the facet containing \( w\cdot\lambda \), then
\[  
T_\lambda^\mu(L(w\cdot \lambda)) = 
\begin{cases}
L(w\cdot \mu)  & w\cdot \mu \in \widehat{F} \\
0 & \text{else}.
\end{cases}
\]
:::

::: {.example title="?"}
In this situation, we have \( T_\lambda^\mu(L(\lambda)) = 0 \):

![Image](figures/image_2020-10-28-14-35-11.png){width="350px"}

If instead \( \mu \in \widehat{C}_{\mathbb{Z}} \), we have \( T_\lambda^\mu( L(\lambda)) = L(\mu) \):

![Image](figures/image_2020-10-28-14-36-02.png){width="350px"}
:::

**Big Question**: What happens to \( L(w\cdot \lambda) \) when translating away from a wall?

::: {.definition title="Walls"}
A facet \( F \) is a **wall** \( \iff {\left\lvert { \Phi_0^+(F) } \right\rvert} = 1 \). In this case, there exists a unique \( \alpha \) such that \( {\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} = n_\alpha p \).

![Example of a wall](figures/image_2020-10-28-14-39-23.png)
:::

::: {.remark}
Note that \( s_F = s_{\beta, n_p} \) where \( n_p = {\left\langle {\lambda + \rho},~{\beta^\vee} \right\rangle} \) acts on the wall as the identity and reflects across it:

![Image](figures/image_2020-10-28-14-41-36.png)

Here \( {\operatorname{Stab}}_{W_p}(\lambda) = \left\{{1, s_F}\right\} \).
:::

::: {.proposition title="?"}
Consider the following situation:

![Image](figures/image_2020-10-28-14-43-39.png)

1.  \( [T_\mu^\lambda (L(w\cdot \mu)) : L(w\cdot \lambda)] = 2 \), appearing once in the socle and once in the head.

2.  \( L(w\cdot \lambda) = \operatorname{Soc}_G T_\mu^\lambda(L(w\cdot \mu)) = T_\mu^\lambda(L(w\cdot \mu)) / {\operatorname{rad}}T_\mu^\lambda (L(w\cdot \mu)) \).

![Heart of the module](figures/image_2020-10-28-14-46-57.png)
:::

**Big Problems**:

1.  When is the heart semisimple?

2.  Determine the composition factors in the heart?

Given these, you could compute dimensions of irreducible representations.

# Monday, November 02

Today: Lusztig conjectures, but first some alcove geometry.

## Alcove Geometry

### Length Function for Alcoves

Let \( A, B \) be alcoves, and recall that a hyperplane is give by
\[  
H_{\alpha, m} \coloneqq\left\{{ \lambda \in X(T) {~\mathrel{\Big|}~}{\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} = mp }\right\}
.\]

These are codimension 1 objects:

![Image](figures/image_2020-11-02-13-55-24.png)

We can also divide these into positive and negative sides:

\[  
H_{\alpha, m}^+ &\coloneqq\left\{{   \lambda \in X(T) {~\mathrel{\Big|}~}{\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} > mp }\right\} \\
H_{\alpha, m}^- &\coloneqq\left\{{   \lambda \in X(T) {~\mathrel{\Big|}~}{\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} < mp }\right\} 
.\]

Let \( S(A, B) \) be the set of hyperplanes separating \( A \) and \( B \).

![Hyperplanes separating two alcoves](figures/image_2020-11-02-13-58-08.png)

If \( H\in S(A, B) \), then define a function
\[  
\varepsilon(H) \coloneqq
\begin{cases}
1 & A\in H_{\alpha, m}^- \\
-1 & A\in H_{\alpha, m}^+
\end{cases}
,\]
and from it construct a **distance function**
\[  
d(A, B) \coloneqq\sum_{H\in S(A, B)} \varepsilon(H)
.\]

Recall that we can define
\[  
C_{\mathbb{Z}}= \left\{{\lambda \in X(T) {~\mathrel{\Big|}~}0 < {\left\langle {\lambda+\rho},~{\alpha^\vee} \right\rangle}<p \,\, \forall \alpha\in\Phi^+ }\right\}
,\]
and for \( \lambda \in C_{\mathbb{Z}} \)

\[  
d(w\cdot \lambda) = d(C_{\mathbb{Z}}, wC_{\mathbb{Z}})
.\]

for \( w\in W_p \).

Now consider the following situation:

![Image](figures/image_2020-11-02-14-02-44.png)

Recall that computing \( \operatorname{ch}L(\lambda) \) is equivalent to finding \( [H^0(w\cdot \lambda): L(w_2\cdot \lambda)] \). We know that
\[  
[T_\mu^\lambda (L(w\cdot\mu)) : L(w\cdot \mu)] = 2
,\]
where the \( w \)s are now the same, and the structure of the module is

![O](figures/image_2020-11-02-14-06-10.png)

where knowing the structure of the heart of the module is an open problem.

The setup is the following: Let \( \lambda\in X(T) \cap C_{\mathbb{Z}} \) where \( \mu \in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \). Since it's on a wall, there is a nontrivial stabilizer \( {\operatorname{Stab}}_{W_p}(\mu) = \left\langle{s}\right\rangle \). We can write
\[  
\operatorname{ch}L(w\cdot \lambda) = \sum_{w'} a_{w, w'} \chi(w' \cdot \lambda)
.\]

The sum is over \( w'\in W_p \) where \( w'\cdot \lambda \in X(T)_+ \), and we have strong linkage \( w'\cdot \lambda \uparrow w\cdot \lambda \). Now consider translating from \( \lambda \) to the wall \( \mu \). We can write
\[  
\operatorname{ch}L(w\cdot \lambda) = \sum_{w'} a_{w, w'} \chi(w' \cdot \mu)
.\]

Since \( \left\langle{s}\right\rangle \) is the stabilizer, we have
\[  
\operatorname{ch}T_\mu^\lambda L(w\cdot \mu)
&= \sum_{w'} a_{w, w'} \chi(w' \cdot \lambda)
+ \sum_{w'} a_{w, w'} \chi(w's \cdot \mu) \\
&= \operatorname{ch}L(w\cdot \lambda)
+ \sum_{w'} a_{w, w'} \chi(w's \cdot \mu)
,\]

We can now check that
\[  
\operatorname{ch}T_\mu^\lambda T_\lambda^\mu L(w\cdot \lambda) = 
\operatorname{ch}L(w\cdot \lambda) + \chi(ws\cdot \lambda ) + \sum_{w'} b_{w'} \chi(w'\cdot\lambda)
.\]

Note that in the last sum, the \( b_{w'} \) with \( w'\in W_p \) satisfy \( w'\cdot \lambda \in X(T)_+ \) and \( d(w'\cdot\lambda) < d(w\cdot \lambda) \). We would like to compute
\[  
[H^0(w_1\cdot \lambda) : L(w_2\cdot \lambda)
.\]
using induction on \( d(w_1\cdot \lambda) \).

Suppose that for all \( w_1 \) with \( d(w_1\cdot\lambda) < d(w\cdot \lambda) \), we know all of the \( b_{w'} \). In this case, we know \( \chi(ws\cdot \lambda) \) by Weyl's character formula. We'd then only need to know the translated character
\[  
T_\mu^\lambda T_\lambda^\mu L(w\cdot \lambda)
.\]
Note that it's sufficient to know all of its composition factors
\[  
[T_\mu^\lambda T_\lambda^\mu L(w\cdot \lambda): L(w_2\cdot \lambda)
,\]

and since we know the head and the socle, it suffices to understand the composition factors in its heart:

![Understanding the composition factors of the heart.](figures/image_2020-11-02-14-20-41.png)

::: {.remark title="Question (Vogan, Beilinson-Bernstein)"}
Is the heart semisimple for
\[  
{\left\langle {w(\lambda + \rho)},~{\alpha^\vee} \right\rangle} \leq p(p-h-2) && \forall \alpha\in \Phi^+
.\]
where \( w\cdot\lambda = w(\lambda + \rho) - \rho \)?
:::

::: {.definition title="Coxeter Number"}
Define \( h \) to be the **Coxeter number**, defined by
\[  
h \coloneqq{\left\langle {\rho},~{\alpha_0^\vee} \right\rangle} + 1
\]
where \( \alpha_0 \) is the highest short root.
:::

::: {.example title="?"}
Let \( \Phi = A_n \), then \( \alpha_0 = \alpha_1 + \alpha_2 + \cdots + \alpha_n \). Then \( h=n+1 \).
:::

::: {.example title="?"}
Let \( \Phi = G_2 \), then \( \alpha_n = 3\alpha_1 + 2\alpha_2 \), and \( h = 5+1 = 6 \).
:::

::: {.remark}
Andersen showed that this question is equivalent to the Lusztig conjecture. To state this conjecture, we'll need a few more definitions.
:::

::: {.definition title="Jantzen Region"}
Define the **Jantzen region** by
\[  
\operatorname{Jan} \coloneqq\left\{{\lambda \in X(T) {~\mathrel{\Big|}~}
0 \leq {\left\langle {\lambda + \rho},~{\alpha^\vee} \right\rangle} \leq p(p-h-2) \,\, \forall \alpha\in \Phi^+
}\right\}
.\]
:::

::: {.proposition title="Lusztig Conjecture"}
Let \( \lambda \in X(T) \cap C \) and \( w\cdot\lambda \in \operatorname{Jan} \) with \( w\in W_p \). Then
\[  
\operatorname{ch}L(w\cdot \lambda) = \sum_{w'} (-1)^{d(w\cdot \lambda) - d(w'\cdot \lambda)} P_{w'w_0, ww_0} (1) \chi(w'\cdot \lambda)
.\]
where \( w'\in W_p \) with \( w'\cdot\lambda \in X(T)_+ \). The polynomials \( P \) appearing here are the KL-polynomials for \( W_p \) and \( w_0 \) is the longest element in \( W \).
:::

::: {.remark}
Note that the Lusztig conjecture is similar to the Kazhdan-Lusztig conjectures: in that setting, we're in category \( {\mathcal{O}} \), we have the Weyl group instead of the affine Weyl group, and we're concerned with the characters of Verma modules. Note that this conjecture is true for category \( {\mathcal{O}} \) and in the case of quantum groups. In the quantum group setting, you can only iterate Frobenius once, but for algebraic groups it can be iterated. The presence of the affine Weyl group also makes these settings very different.
:::

::: {.remark}
Some remarks on the conjecture:

-   This is true for \( p\gg 0 \), by Andersen-Jantzen-Soergel (1994) and Kazhdan-Lustzig, Koshiwana-Tanisaki.

-   It was unknown if there was an effective lower bound until it was found by Fiebig (possibly in 2000s)

-   Williamson demonstrated a counterexample by looking at Steinberg weights.
:::

If we know \( \operatorname{ch}L(\lambda) \) for \( \lambda \in X_1(T) \) in the restricted region, by Steinberg's twisted tensor product formula we can compute \( L(\mu) \) for \( \mu \in X(T)_+ \). So when is the restricted region contained in the Jantzen region, so \( X_1(T) \subseteq \operatorname{Jan} \)? Assume that \( \lambda \in X_1(T) \), then compute
\[  
{\left\langle {\lambda+\rho},~{\alpha_0^\vee} \right\rangle} = {\left\langle {\lambda},~{\alpha_0^\vee} \right\rangle} + (h-1)
.\]
Note that by extending scalars to \( {\mathbb{Q}} \), we get an inequality in the ordering of the form \( \lambda \leq_{\mathbb{Q}}(p-1_\rho) \). We can then write

\[  
{\left\langle {\lambda+\rho},~{\alpha_0^\vee} \right\rangle} 
&= {\left\langle {\lambda},~{\alpha_0^\vee} \right\rangle} + (h-1) \\
\leq {\left\langle {(p-1) \rho},~{\alpha_0^\vee} \right\rangle} + (h-1)  \\
&= (p-1)(h-1) + (h-1) \\
&= p(h-1) 
.\]
When is this less than or equal to \( p(p-h-2) \)? We can check that this happens iff
\[  
p(h-1) &\leq p(p-h-2) \\
\iff h-1 &\leq p-h-2 \\
\iff 2h+1 &\leq p
,\]
so the conjecture (as stated in its original form) reads
\[  
p\geq 2h+1 \implies X_1(T) \subseteq \operatorname{Jan}
.\]

::: {.remark}
Kato conjectured that this bound could be lowered to \( p\geq h \), but Williamson produced counterexamples around 2013. Essentially, the calculation of \( \operatorname{ch}L(\lambda) \) is still open.
:::

Next time: we'll define \( G_rT{\hbox{-}} \)modules. We'll define a graded category to prevent the weights from collapsing mod \( p \). These turn out to be easier to work with than \( G_r{\hbox{-}} \)modules, and results can be pushed down.

# Wednesday, November 04

Today: \( G_r{\hbox{-}}T \) modules.

Note that \( G_r{~\trianglelefteq~}G_r T \), with \( G_r T/G_r \cong T^{(r)} \). We consider \( G_r T{\hbox{-}} \)modules, which are \( G_r{\hbox{-}} \)modules with a \( T \) action given by
\[  
G_r \times M &\to M \\
(g, m) &\mapsto g\cdot m
\]
which are \( T{\hbox{-}} \)equivariant, i.e. \( t(g\cdot m) = (t\cdot g)(t\cdot m) \) for \( t\in T, g\in G_r \), and \( m\in M \) is a \( G_r T{\hbox{-}} \)module. This essentially induces a grading on \( G_r \).

## Representations for \( G_r T \) and \( G_r B \) {#representations-for-g_r-t-and-g_r-b}

Recall that we have a Frobenius map, for which we take the scheme-theoretic kernel:
\[  
F&: G \to G \\ 
F^r &\coloneqq F\circ F \circ \cdots \circ F \\
G_r &\coloneqq\ker F^r
,\]
and we then define
\[  
G_r T \coloneqq(F^r)^{-1} (T) \\
G_r B \coloneqq(F^r)^{-1} (B) 
\]
taken as scheme-theoretic objects.

Noting that \( B\subset G_r B \), for \( \lambda \in X(T) \) we define
\[  
\widehat{Z}_r' (\lambda) &\coloneqq\operatorname{Ind}_B^{G_r B} \lambda \\
\widehat{Z}_r (\lambda) &\coloneqq\operatorname{Coind}_B^{G_r B} \lambda
.\]

These are enhancements of the baby Verma modules, in the sense that if we take restrictions we get
\[  
\widehat{Z}_r' (\lambda) \downarrow_{G_r} = \operatorname{Ind}_{B_r}^{G_r} \lambda
.\]

We similarly have
\[  
{Z}_r' (\lambda) \downarrow_{G_r T} &= \operatorname{Ind}_{B_r T}^{G_r T} \lambda \\
\widehat{Z}_r' (\lambda) \downarrow_{G_r T} &= \operatorname{Coind}_{B_r T}^{G_r T} \lambda
.\]

::: {.proposition title="?"}
```{=tex}
\envlist
```
1.  \( \widehat{Z}_r(\lambda + p^r \mu) \cong \widehat{Z}_r(\lambda) \otimes p^r \mu \)
2.  \( \widehat{Z}_r' (\lambda + p^r \mu) \cong \widehat{Z}_r' (\lambda) \otimes p^r \mu \)
3.  \( \operatorname{ch}\widehat{Z}_r(\lambda) = \operatorname{ch}\widehat{Z}_r' (\lambda) = e^\lambda \prod_{\alpha\in\Phi^+} {1 - e^{-p^r\mu} \over 1 - e^{-\alpha}} \).
:::

::: {.proof title="of 1 and 2"}
From the definition, we have
\[  
\widehat{Z}_r'(\lambda + p^r \mu)
&= \operatorname{Ind}_{B}^{G_r B} (\lambda + p^r \mu) \\
&= \operatorname{Ind}_{B}^{G_r B} (\lambda \otimes p^r \mu) \\
\cong \qty{\operatorname{Ind}_B^{G_r B} \lambda} \otimes p^r\mu
.\]
Where in the last equality we've applied the tensor identity, noting that \( p^r\mu \) is a 1-dimensional \( G_r B{\hbox{-}} \)module, since
\[  
G_r B \to G_r B/G_r = B^{(r)} = B/B_r
,\]
making it a representation by pullback.
:::

::: {.proof title="of 3"}
We can write
\[  
\widehat{Z}_r(\lambda) = \operatorname{dist}(U_r) \otimes\lambda
,\]
and thus
\[  
\operatorname{ch}\widehat{Z}_r(\lambda) 
&= e^{\lambda} \operatorname{ch}\operatorname{dist}(U_r)  \\
&= e^{\lambda} \prod_{\alpha\in \Phi^+}\qty{ 1 + e^{-\alpha} + \cdots + e^{-(p^r-1)\alpha} } \\
&= e^\lambda {1 - e^{-p^r \alpha} \over 1 - e^{-\alpha}} && \text{as a geometric series}
.\]
:::

The next theorem is related to the fact that when comparing these categories of modules, one is essentially a graded version of the other.

::: {.theorem title="?"}
Let \( M\in{{G_rT}{\hbox{-}}\operatorname{mod}} \), then TFAE:

1.  \( M \) is an injective \( G_r T{\hbox{-}} \)module.
2.  \( M \) is an injective \( G_r{\hbox{-}} \)module.
:::

Note that \( G_r {~\trianglelefteq~}G_r T \), where the quotient is \( T^{(r)} \) which is twisted by Frobenius \( r \) times.

::: {.proof title="?"}
We'll apply the Lydon-Hoschild-Serre spectral sequence: for \( N \) a \( G_r T{\hbox{-}} \)module,
\[  
E_2^{i, j} = \operatorname{Ext}_{T^{(r)}}^{i}\qty{K, \operatorname{Ext}_{G_r}^j\qty{N, M} } \Rightarrow\operatorname{Ext}_{G_r T}^{i+j}(N, M)
.\]

\( 2\implies 1 \):

We first note that 2 implies \( \operatorname{Ext}_{G_r}^{>0}(N, M) = 0 \), so the spectral sequence collapses and we have
\[  
\operatorname{Ext}_{T^{(r)}}^i (k, \hom_{G_r}(M, N) ) \cong \operatorname{Ext}_{G_r T}^i(N, M)
.\]
Since modules over \( T^{(r)} \) are completely reducible, we have
\[  
\operatorname{Ext}_{T^{(r)}}^{>0} ( k, \hom_{G_r}(N, M) ) = 0
,\]

and thus \( \operatorname{Ext}_{G_r T}^{>0}(N, M) = 0 \), making \( M \) an injective \( G_r T{\hbox{-}} \)module. \( \hfill\blacksquare \)\

\( 1\implies 2 \):

The simple \( G_r T{\hbox{-}} \)modules are of the form \( N\coloneqq L_r(\lambda) \otimes p^r\sigma \) where \( \lambda\in X_r(T) \) and \( \sigma\in X(T) \). Note that \( L_r(\lambda) \) is simple \( G_r{\hbox{-}} \)module. Applying the spectral sequence, there is a 5 term exact sequence. Letting \( E_t \coloneqq\operatorname{Ext}_{G_rT}^t (N, M) \).

```{=tex}
\begin{tikzcd}
0 \ar[r] &
E_2^{1, 0} \ar[r] &
E_1         \ar[r] &
E_2^{0, 1} \ar[r] &
E_2^{2, 0} \ar[r] &
E_2
\end{tikzcd}
```
Everything is zero here except for the middle term: \( E_1, E_2 = 0 \) by assumption? \( E_2^{1, 0}, E_2^{2, 0} = 0 \) by ?.

We can thus conclude that
\[  
0 = E_2^{0, 1}
&= \hom_{T^{(r)}}(k, \operatorname{Ext}_{G_r}^1 (L_r(\lambda) \otimes p^r\sigma, M)  ) \\ 
&= \hom_{T^{(r)}}(p^r\sigma, \operatorname{Ext}_{G_r}^1 (L_r(\lambda), M)  ) 
,\]
which holds for all \( p^r \sigma \), and thus \( \operatorname{Ext}_{G_r}^1 (L_r(\lambda), M) = 0 \) for all \( \lambda\in X_1(T) \). So \( M \) is injective as a \( G_r{\hbox{-}} \)module.
:::

::: {.proposition title="?"}
Let \( \lambda \in X(T) \), then

1.  \( \widehat{Z}_r (\lambda) \downarrow_{B_r T} \) is the projective cover of \( \lambda \) and the injective hull of \( \lambda - 2(p^r-1)\rho \).

2.  \( \widehat{Z}_r' (\lambda) \downarrow_{B_r^+} \) is the projective cover of \( \lambda - 2(p^r-1)\rho \) and the injective hull of \( \lambda \).
:::

## Summary: Classification of Simple \( G_r T{\hbox{-}} \)Modules {#summary-classification-of-simple-g_r-thbox-modules}

-   \( \operatorname{Soc}_{B_r^+} \widehat{Z}_r '(\lambda) = \lambda \)
-   \( \widehat{Z}_r ' (\lambda) ^{U^+} = \lambda \), where the RHS denotes the \( U^+ \) invariants.
-   Let \( \widehat{L}_r(\lambda) \coloneqq\operatorname{Soc}_{G_r T} \widehat{Z}_r' (\lambda) \).
-   Each simple \( G_r T{\hbox{-}} \)module is isomorphic to \( \widehat{L}_r (\lambda) \) for some \( \lambda\in X(T) \).
-   \( \widehat{L}_r(\lambda) \downarrow_{G_r} \cong L_r (\lambda) \) for all \( \lambda \in X_1(T) \).
-   Translation invariance: \( \widehat{L}_r(\lambda + p^r\sigma) = \widehat{L}_r (\lambda) \otimes p^r\sigma \)
-   \( \widehat{L}_r (\lambda + p^r \sigma) \downarrow_{G_r} = L_r(\lambda) \) for all \( \lambda \in X_r(T) \).

![Example in \( \Phi = B_2 \)](figures/image_2020-11-04-14-44-01.png)

> This essentially allows you to replace working mod \( p \) in characteristic \( p \) with working with integers instead, allowing the usual weight theory to be used.

::: {.proposition title="?"}
Let \( \lambda \in X(T) \), then there exists an isomorphism of \( G{\hbox{-}} \)modules
\[  
H^i(\lambda) = R^i \operatorname{Ind}_{G_r B}^G \widehat{Z}_r ' (\lambda)
,\]
where \( \widehat{Z}_r'(\lambda) = \operatorname{Ind}_B^{G_r B}(\lambda) \).
:::

# Friday, November 06

## Good \( (p, r){\hbox{-}} \) Filtrations {#good-p-rhbox--filtrations}

Last time: \( G_r T \) and \( G_r B \) modules. We roughly know the category of \( G_r \) modules, and we think of \( G_r T \) as graded \( G_r{\hbox{-}} \)modules. We defined
\[  
\widehat{Z}_r' (\lambda) &\coloneqq\operatorname{Ind}_{B}^{G_r B}(\lambda) \\
\widehat{Z}_r' (\lambda) &\coloneqq\operatorname{Coind}_{B^+}^{G_r B^+}(\lambda)
.\]

We can use these for classification since we have a correspondence
\[  
\left\{{\substack{\text{Simple }G_rT{\hbox{-}}\text{modules}}}\right\}
&\iff
\left\{{\substack{X(T)}}\right\} \\
\widehat{L}_r(\lambda) = \widehat{L}_r(\lambda_0) \otimes p^r \lambda &\mapsfrom \lambda = \lambda_0 + p^r \lambda_1
,\]
where \( \widehat{L}_r(\lambda_0) \) is a simple \( G_r{\hbox{-}} \)module and \( \lambda_0 \in X_r(T) \).

::: {.proposition title="?"}
For each \( \lambda\in X(T) \) and \( i\in {\mathbb{N}} \), there exists an isomorphism of \( G{\hbox{-}} \)modules
\[  \left\{{\substack{X(T)}}\right\} \ \widehat{L}_
H^i(\lambda) = R^i \operatorname{Ind}_{G_r B}^G \widehat{Z}_r'( \lambda  )
.\]
:::

::: {.proof title="?"}
We can compose the two functors to get a Grothendieck-type spectral sequence
\[  
E_2^{m, n} = R^m \operatorname{Ind}_{G_r B}^{G} \qty{ R^n \operatorname{Ind}_{B}^{G_r B}(\lambda) }
\Rightarrow
R^{m+n} \operatorname{Ind}_B^G(\lambda)
,\]
which follows from induction being transitive. Note that \( \operatorname{Ind}_{B}^{G_r B}({\,\cdot\,}) \) is exact, since coinduction is given by \( \operatorname{dist}(G_rB)\otimes_{\operatorname{Dist}(B)}\lambda \cong \operatorname{Dist}(U_r^+)\otimes_k \lambda \) is tensoring over a field, and this is dual to induction. Thus \( R^{>0} \operatorname{Ind}_B^{G_r B}(\lambda) = 0 \) and the spectral sequence collapses to yield
\[  
R^m \operatorname{Ind}_{G_r B}^G R^0 \operatorname{Ind}_{B}^{G_r B} 
= R^m \operatorname{Ind}_{G_r B}^G \operatorname{Ind}_{B}^{G_r B} 
= R^m \operatorname{Ind}_B^G(\lambda)
,\]
where we can just note that \( \operatorname{Ind}_B^{G_r B}(\lambda) = \widehat{Z}_r'(\lambda) \).
:::

Recall *Kempf's vanishing theorem*: if \( \lambda \in X(T)_+ \) is a dominant weight, then \( H^{>0}(\lambda) = 0 \).

::: {.definition title="$p\\dash$filtration, due to Steve Donkin"}
Let \( M\in {{G}{\hbox{-}}\operatorname{mod}} \), then \( M \) has a (good) **\( (p, r){\hbox{-}} \)filtration** iff there exists a sequence of \( G{\hbox{-}} \)modules
\[  
0 = M_0 \subseteq M_1 \subseteq M_2 \subseteq \cdots \subseteq M_s = M
\]
such that \( M_i / M_{i+1} \cong L(\lambda_0) \otimes H^0(\lambda_1)^{(r)} \) where \( \lambda_0 \in X_r(T) \) (so the first time is irreducible) and \( \lambda_1 \in X(T)_+ \), so the second term is twisted.
:::

::: {.remark}
Question due to Jantzen: let \( \lambda \in X(T)_+ \). Does \( H^0(\lambda) \) have a good \( (p, r){\hbox{-}} \)filtration?
:::

This question was open for a while, until the following was found:

::: {.proposition title="Parshall-Scott, 2013"}
If \( p\geq 2(h-1) \) and Lusztig's character formula holds for \( G \), then \( H^0(\lambda) \) has a good \( (p, r) \) filtration.
:::

::: {.proposition title="Bendell-Nakano-Pillen-Sobaje, 2019"}
There are counterexamples to Jantzen's question. Example: \( \Phi = G_2 \) and \( p=2 \).
:::

> Later: we'll see how to construct these filtrations by factoring induction into intermediate inductions.

::: {.theorem title="?"}
Let \( \lambda \in X(T)_+ \) and assume every composition factor of the baby Verma \( \widehat{Z}_r'(\lambda) \) has the form \( \widehat{L}_r(\mu_0 + p^r \mu_1) = \widehat{L}_r(\mu_0) \otimes p^r \mu_1 \) where \( \mu_0\in X_r(T) \) and \( \mu_1\in X(T) \) is any weight. Suppose further that \( {\left\langle {\mu_1 + \rho},~{\beta^\vee} \right\rangle}\geq 0 \) for all \( \beta\in \Delta \) (so it's "pretty dominant"). Then \( H^0(\lambda) \) has a good \( (p, r) \) filtration, and moreover
\[  
[ \widehat{Z}_r'(\lambda) : \widehat{L}_r(\mu_0) \otimes p^r \mu_1 ]
= [ H^0(\lambda) : L(\mu_0) \otimes H^0(\mu_1)^{(r)} ]
.\]
:::

::: {.proof title="?"}
Suppose \( \widehat{L}_r(\mu_0 + p^r\mu_1) \) is a composition factor of \( \widehat{Z}_r' \). Then since we have \( G{\hbox{-}} \)modules, we can use the tensor identity to write
\[  
R^i \operatorname{Ind}_{G_r B}^{G} L_r(\mu_0) \otimes p^r \mu_1
&= L_r(\mu_0) \otimes R^i \operatorname{Ind}_{G_r B}^{G} p^r \mu_1 \\
&= L_r(\mu_0) \otimes H^i(\mu_1)^{(r)}
,\]
where the last equality follows from a theorem we won't prove here. We can set \( i=0 \) to yield
\[  
\operatorname{Ind}_{G_r B}^{G} L_r(\mu_0) \otimes p^r \mu_1
\cong L_r(\mu_0) \otimes H^0(\mu_1)^{(r)}
.\]
Recall that \( H^0(\lambda) = \operatorname{Ind}_{G_r B}^{G} \widehat{Z}_r'(\lambda) \), so we'll take a composition series for \( \widehat{Z}_r'(\lambda) \) and apply the induction functor to it. So let such a composition series be given by
\[  
0\subseteq N_0 \subseteq N_1 \subseteq \cdots \subseteq N_s = \widehat{Z}_r'(\lambda)
,\]
where \( N_i / N_{i-1} \cong L(\mu_0) \otimes p^r \mu_1 \) for some \( \mu_0\in X_r(T) \) and \( \mu_1\in X(T) \). Now apply the functor \( \operatorname{Ind}_{G_r B}^{G}({\,\cdot\,}) \) which yields
\[  
0\subseteq \cdots \subset \operatorname{Ind}_{G_r B}^{G} N_i \subseteq \cdots \subseteq H^0(\lambda)
.\]

Question: is this a good \( (p, r) \) filtration?

::: {.warnings}
Note that if we have
\[  
0 \to N_1 \to N_2 \to N_2/N_1 \to 0
\]
this yields
\[  
0 \to \operatorname{Ind}N_1 \to \operatorname{Ind}N_2 \to \operatorname{Ind}(N_2/N_1) \to R^1 \operatorname{Ind}N_1 \to \cdots
.\]

Here we need \( \operatorname{Ind}(N_2/N_1) \cong \operatorname{Ind}N_2 / \operatorname{Ind}N_1 \), so we need to show \( R^1 \operatorname{Ind}N_1 = 0 \).
:::

Using the tensor identity we can write
\[  
R^1 \operatorname{Ind}N_1
&= R^1 \operatorname{Ind}_{G_r B}^G L_r(\sigma_0) \otimes p^r \sigma_0 \\
&= L_r(\sigma_0) \otimes\qty{R^1 \operatorname{Ind}_{G_r B}^G \sigma_1 }^{(r)}
\]
and \( {\left\langle {\sigma_1 + \rho},~{\beta^\vee} \right\rangle} \geq 0 \), so \( R^1 \operatorname{Ind}_{G_r B}^G \sigma_1 = 0 \). Thus we can extend the region from Kempf's vanishing slightly:

![Image](figures/image_2020-11-06-14-38-20.png)
:::

Finding composition factors for the \( \widehat{Z}_r' \) is in general a hard problem: if we had this, we'd have the characters of the irreducibles. Some combinatorics can be used here.

## Strong Linkage

Note that strong linkage for \( H^0(\lambda) \) implies strong linkage for \( \widehat{Z}_r'(\lambda) \).

::: {.theorem title="?"}
Let \( \lambda, \mu \in X(T) \), then if \( [\widehat{Z}_r'(\lambda): \widehat{L}(\mu)] \neq 0 \), then \( \mu\uparrow\lambda \) and \( \mu\in W_p\cdot\lambda + p^r X(T) \).
:::

::: {.proof title="?"}
Note that \( \widehat{Z}_r'(\lambda) \) is finite dimensional. Idea: tensor by a 1d rep to make all composition factors dominant. Then for any weight \( \lambda \), we can find a large enough weight that moves \( \lambda \) into the dominant chamber:

![](figures/image_2020-11-06-14-45-02.png)

I.e., we can tensor by \( p^r v \) for \( v \) large so that \( \widehat{Z}_r'(\lambda) \otimes p^r v \) has composition factors if the form \( L(\mu_0) \otimes p^r \mu_1 \) with \( {\left\langle {\mu_1 + \rho},~{\beta^\vee} \right\rangle} \geq 0 \) for all \( \beta\in\Delta \).

Then \( \mu + p^r v \uparrow \lambda p^r v \), which implies \( \mu\uparrow \lambda \), and so using strong linkage we have a \( p{\hbox{-}} \)filtration on \( H^0(\lambda + p^r v) \).
:::

Next time: extensions in \( {{G_r T}{\hbox{-}}\operatorname{mod}} \) and the Steinberg module (very important in representation theory, has some nice properties).

# Monday, November 09

## Strong Linkage

We have two categories:

-   \( G_r T \), with a notion of *strong linkage*, and
-   \( G_r \), which instead only has *linkage*.

We'll restate a few theorems.

::: {.theorem title="?"}
```{=tex}
\envlist
```
Let \( \lambda, \mu \in X(T) \).

1.  If \( [\widehat{Z}_r(\lambda) : \widehat{L}_r(\mu) ]_{G_r T} \neq 0 \), then \( \mu \uparrow \lambda \) are strongly linked.

2.  If \( [{Z}_r(\lambda) : {L}_r(\mu) ]_{G_r} \neq 0 \), then \( \mu \in W_p \cdot\lambda + p^r X(T) \).
:::

::: {.example title="?"}
In the case of \( \Phi = A_2 \), we'll consider the two different categories.

We have the following picture for \( \widehat{Z} \):

![Image](figures/image_2020-11-09-14-02-01.png)

Considering \( X_1(T) \) and \( [\widehat{Z}_1(\lambda) : \widehat{L}_1(\mu)] \neq 0 \), and \( \widehat{Z}_1(\lambda) \) has 6 composition factors as \( G_1T{\hbox{-}} \)modules.

On the other hand, for \( Z \), we have the following:

![Image](figures/image_2020-11-09-14-05-34.png)

This again has 6 composition factors, obtained by ??

```{=tex}
\todo[inline]{What's the main difference?}
```
:::

## Extensions

Let \( \lambda, \mu \in X(T) \). We can use the Chevalley anti-automorphism (essentially the transpose) to obtain a form of duality for extensions:
\[  
\operatorname{Ext}_{G_r T}^j \qty{ \widehat{L}_r(\lambda), \widehat{L}_r(\mu) } 
= 
\operatorname{Ext}_{G_r}^j \qty{ \widehat{L}_r(\mu), \widehat{L}_r(\lambda) } \qquad \text{for }j\geq 0
.\]

We have a form of a weight space decomposition
\[  
\operatorname{Ext}_{G_r}^j \qty{L_r(\lambda), L_r(\mu) }
= \bigoplus_{\gamma \in X(T)} \operatorname{Ext}_{G_r}^j \qty{L_r(\lambda), L_r(\mu) }_{\gamma}
\]
where we are taking the fixed points under the torus \( T \) action on the first factor (for which \( T_r \) acts trivially). We can write this as
\[  
\cdots 
&= \bigoplus_{\gamma \in X(T)} \operatorname{Ext}_{G_r}^j \qty{L_r(\lambda), L_r(\mu) \otimes\gamma } \\
&= \bigoplus_{\gamma \in X(T)} \operatorname{Ext}_{G_rT}^j \qty{L_r(\lambda), L_r(\mu) \otimes p^r v } \\
&= \bigoplus_{v \in X(T)} \operatorname{Ext}_{G_rT}^j \qty{ \widehat{L}_r(\lambda), \widehat{L}_r(\mu + p^r v) }
.\]

So if we know extensions in the \( G_r \) category, we know them in the \( G_r T \) category.

There is an isomorphism
\[  
\operatorname{Ext}_{G_r T}^1 \qty{ \widehat{L}_r(\lambda), \widehat{L}_r(\mu) } 
\cong {\operatorname{Hom}}_{G_R T}\qty{ {\operatorname{rad}}_{G_r T} \widehat{Z}_r(\lambda), \widehat{L}_r(\mu) }
.\]

Finally, for \( \lambda, \mu \in X(T) \), if the above \( \operatorname{Ext}^1 \) vanishes, then \( \lambda \in W_p \cdot \mu \) (i.e. \( \lambda \) and \( \mu \) are linked).

## The Steinberg Modules

::: {.example title="Steinberg"}
Consider \( A_2 \):

![Image](figures/image_2020-11-09-14-16-57.png)

Taking the representation corresponding to \( (p-1, p-1) \) yields the "first Steinberg module"
\[  
L(p-1, p-1) = L((p-1)\rho) \coloneqq\operatorname{St}_1 
.\]

In this case, we have an equality of many modules:

\[  
H^0((p-1) \rho) =
L((p-1) \rho) =
V((p-1) \rho) =
T((p-1) \rho)
.\]
:::

::: {.definition title="Steinberg Modules"}
The \( r \)th **Steinberg module** is defined to be \( L((p^r-1)\rho) \).
:::

::: {.remark}
In general, we have
\[  
L((p^r-1)\rho) = 
H^0((p^r-1)\rho) = 
V((p^r-1)\rho)
.\]

We also have
\[  
\widehat{Z}_r((p^r-1)\rho) \cong
L((p^r-1)\rho) \downarrow_{G_r T}
.\]
:::

::: {.theorem title="?"}
The Steinberg module is both injective and projective as both a \( G_r{\hbox{-}} \)module and a \( G_rT{\hbox{-}} \)module.
:::

::: {.proof title="?"}
It suffices to prove that \( \operatorname{St}_r \) is projective over \( G_r T \), then by a previous theorem, it will also be projective over \( G_r \). Let \( \widehat{L}_r(\mu) \) be a simple \( G_rT{\hbox{-}} \)module, and consider
\[  
\operatorname{Ext}_{G_rT}^1(\operatorname{St}_r, \widehat{L}_r(\mu)) =
\operatorname{Ext}_{G_rT}^1(\widehat{L}_r((p^r-1)\rho), \widehat{L}_r(\mu))
.\]
If we show this is zero for every simple module, the result will follow.

Suppose \( (p^r-1)\rho\not< \mu \). In this case, the RHS above is zero.

```{=tex}
\todo[inline]{Missed why: something to do with radical of the first term?}
```
Otherwise, we have
\[  
\operatorname{Ext}_{G_rT}^1(\widehat{L}_r(\mu), \operatorname{St}_r) =
{\operatorname{Hom}}_{G_rT}({\operatorname{rad}}(\widehat{Z}_r(\mu)) , \operatorname{St}_r)
.\]
Suppose that the RHS is nonzero. Then \( {\operatorname{rad}}\qty{\widehat{Z}_r(\mu)} \twoheadrightarrow\operatorname{St}_r \), and thus
\[
\dim {\operatorname{rad}}\qty{ \widehat{Z}_r(\mu) } \geq \dim \operatorname{St}_r = p^{r{\left\lvert {\Phi^+} \right\rvert}}
\]
But we know that
\[
\dim {\operatorname{rad}}\qty{\widehat{Z}_r(\mu)} < \dim \widehat{Z}_r(\mu) = p^{r{\left\lvert {\Phi^+} \right\rvert}}
,\]
so we've reached a contradiction and the hom must be zero.
:::

::: {.proposition title="Open Conjecture, Donkin, MSRI 1990: 'DFilt Conjecture'"}
Let \( G \) be a reductive group and \( M \) a finite-dimensional \( G{\hbox{-}} \)module. Then \( M \) has a good \( (p, r){\hbox{-}} \)filtration iff \( \operatorname{St}_r \otimes M \) has a good filtration.
:::

::: {.remark}
See NK (Nakano-Kildetoft, 2015) and BNPS (Bendel-Nakano-Pillen-Subaje, \( 2018{\hbox{-}} \)).
:::

::: {.remark title="Important! What we've been working toward stating"}
The forward direction is equivalent to the statement that \( \operatorname{St}_r \otimes L(\lambda) \) has a good filtration for \( \lambda \in X_r(T) \).
:::

::: {.proposition title="Conjecture"}
The Dfilt conjecture in the forward direction holds for all \( p \).
:::

::: {.remark}
This is known for \( p\geq 2h-4 \)? BNPS has shown that this holds for all rank 2 groups, which is strong evidence. The reverse implication is **not** true: BNPS-Crelle 2020 shows that for \( \Phi = G_2, p=2 \), there exists an \( H^0(\lambda) \) that does not have a good \( (p, r){\hbox{-}} \)filtration. There is a similar conjecture for tilting modules ("DTilt").
:::

Main difference to category \( {\mathcal{O}} \): infinitely many highest weight representations?

Upcoming:

-   Viewing the \( G_r T \) category as "almost" a highest weight category
-   Defining standard and costandard modules \( \Delta(\lambda) \) and \( \nabla(\lambda) \).
-   Injective \( G_r T{\hbox{-}} \)modules
-   Results of Verma and Humphreys on the Lifting Conjecture: does every \( G_r T{\hbox{-}} \)module come from a \( G{\hbox{-}} \)module?
-   Donkin's Tilting Module Conjecture (DTilt)

::: {.proposition title="Statement of DTilt Conjecture, Kildetoft-Nakano-Subaje MSRI 1990"}
DFilt implies DTilt, and DTilt implies the forward direction of DFilt.
:::

# Friday, November 13

## Review

Review: we're considering \( G_r T{\hbox{-}} \)modules, with several associated modules of interest:

-   Simple modules \( \widehat{L}_r(\lambda) \) for \( \lambda \in X(T) \)
-   Intermediate modules \( \nabla(\lambda) = \widehat{Z}_r'(\lambda) \) and \( \Delta(\lambda) = \widehat{Z}_r(\lambda) \).
-   Injective and projective modules \( \widehat{Q}_r(\lambda) \)

::: {.theorem title="?"}
Let \( M \) be a \( G_r T{\hbox{-}} \)module of finite dimension. Then \( M \) has a \( \widehat{Z}_r \) filtration \( \iff \) \( M\downarrow_{B_r} \) is projective.
:::

::: {.remark}
From this, the multiplicity \( [M: \widehat{Z}_r(\mu)] \) (the number of times \( \widehat{Z}_r(\mu) \) appears in a \( \widehat{Z}_r \) filtration ) is well-defined. Moreover, we have a decomposition
\[  
M\downarrow_{B_r} = \bigoplus_{\mu} Z_r(\mu)\downarrow_{B_r}
,\]
where the sum contains as many terms as the number of factors that appear. We have \( Z_r(\mu)\downarrow_{B_r} \twoheadrightarrow\mu \), making is the projective cover of \( \mu \) and thus indecomposable. We can then apply the Krull-Schmidt theorem.
:::

## Reciprocity

Consider \( \widehat{Q}_r(\lambda) \), a projective \( G_r T{\hbox{-}} \)module. Note that it also happens to be injective. We saw before that the functor \( \operatorname{Coind}_{B_r T}^{G_r T}({\,\cdot\,}) \) is exact, and thus \( \widehat{Q}_r(\lambda)\downarrow_{B_r T} \) being projective implies that \( \widehat{Q}_r(\lambda)\downarrow{B_r} \) is also projective. This implies that \( \widehat{Q}_r(\lambda) \) has a \( \widehat{Z}_r{\hbox{-}} \)filtration.

Thus the multiplicity can be computed as
\[
[\widehat{Q}_r(\lambda) : \widehat{Z}_r(\mu)] 
&= [\widehat{Q}_r \downarrow{B_r T} : \widehat{Z}_r(\mu)] \\
&= \dim {\operatorname{Hom}}_{B_r T}\qty{\widehat{Q}_r(\lambda), \mu } \\
&= \dim {\operatorname{Hom}}_{B_r T}\qty{ \widehat{Q}_r(\lambda), \operatorname{Ind}_{B_r T}^{G_r T} \mu } && \text{by Frobenius reciprocity} \\
\]

::: {.exercise title="?"}
Show that
\[  
[M: S] = \dim {\operatorname{Hom}}_A( P(S), \mu) = [\operatorname{Ind}_{B_r T}^{B_r T} \mu : \widehat{L}_r(\lambda)]
.\]
:::

We can thus continue this computation as
\[  
\cdots 
&= [\widehat{Z}_r'(\mu) : \widehat{L}_r(\mu)] \\
&= [\widehat{Z}_r(\mu) : \widehat{L}_r(\mu)]
,\]
since \( \operatorname{ch}\widehat{Z}_r (\mu) = \operatorname{ch}\widehat{Z}_r'(\mu) \).

Thus we have the following reciprocity theorem

::: {.theorem title="Humphreys"}
\[  
[\widehat{Q}_r(\lambda): \widehat{Z}_r(\mu)] = [\widehat{Z}_r(\mu) : \widehat{L}_r (\lambda) ]
.\]
:::

::: {.remark}
This is hard to prove in the \( G_r \) category, need to work in the \( G_r T \) category and descend. However, this reciprocity does also work for \( G_r \).
:::

::: {.example title="?"}
For \( G = {\operatorname{SL}}_2 \), consider \( G_1 T \) or \( G_1 \) where \( \lambda = 0,1,2,\cdots, (p-1) \). We have a notion of *linkage*: \( \lambda, \mu \) are in the same \( G_1 \) block iff \( \lambda + \mu = p-2 \). Note that \( \lambda = p-1 \) is in its own block.

We have
\[  
Z_r(\lambda) = \operatorname{Coind}_{B_1^+}^{G_1} \lambda \twoheadrightarrow L(\lambda)
.\]
If \( \lambda + \mu = p-2 \), then we have the following situation:

![Image](figures/image_2020-11-13-14-15-25.png){width="350px"}

Taking \( \lambda = p-1 \), we have \( Z_r((p-1)\rho) = L(p-1) = \operatorname{St}_1 \).

Applying reciprocity, we gave
\[  
[Q_1(0) : Q_1(\mu)] = [Q_1(\mu): L(0)]
.\]
Since \( Q_1(0) \) has factors \( Z_1(0) \) and \( Z_1(p-2) \), we have

![Image](figures/image_2020-11-13-14-18-03.png){width="350px"}

We can identify the two filtrations here:

![Image](figures/image_2020-11-13-14-19-49.png){width="350px"}

Similarly, for \( Q_1(p-2) \) we have

![Image](figures/image_2020-11-13-14-21-17.png){width="350px"}

We have

-   \( \dim \widehat{Q}_1(\lambda) = 2p \) for \( \lambda \neq p-1 \)

-   \( \dim \widehat{Q}_1(p-1) = p \) for \( \lambda = p-1 \).
:::

::: {.remark title="Some historical background on reciprocity laws"}
Some work predated the BGG Category \( {\mathcal{O}} \). For finite groups, a notion of CDE triangles was worked out.

1.  Pollack (1967) computed the structure of projectives for \( G_1 \) in \( G = {\operatorname{SL}}_2 \).

2.  Humphreys (1971) proved reciprocity for \( G_1 \). (They were students together.)

3.  Bernstein-Gelfand-Gelfand (1976): developed machinery for Category \( {\mathcal{O}} \), crediting Humphreys.

4.  Roche-Caridi (1980): Proved reciprocity for generalized Verma modules.

5.  BGG Algebra, Irving: A more axiomatic approach.

6.  CPS (1988): Generalized to highest weight categories, also attributed to Humphreys.

7.  Holmes-Nakano (1987): Proved when there is a triangular decomposition \( A = A^- A_0 A^+ \), looked at filtrations and reciprocity, applies to Lie algebras of Cartan type.[^1]
:::

## Toward Lifting Conjectures

Recall that \( G_r T \subseteq G \).

**Question**: Given \( \widehat{Q}_r(\lambda) \) for a restricted weight \( \lambda \in X_r(T) \), does \( \widehat{Q}_r(\lambda) \) *lift* to \( G \)? I.e., does there exist a \( G{\hbox{-}} \)module \( M(\lambda) \) such that \( M(\lambda)\downarrow_{G_r T} = \widehat{Q}_r(\lambda) \)?

::: {.remark}
Note that \( L_r(\lambda) \) for \( \lambda\in X_r(T) \) lifts to \( G \), since \( L(\lambda)\downarrow_{G_r T} = \widehat{L}_r(\lambda) \).
:::

::: {.theorem title="?"}
Let \( p > 2h-2 \) and \( \lambda \in X_r(T) \), then \( \widehat{Q}_r(\lambda) \) has a lift to a \( G \) structure.
:::

::: {.remark title="Some history"}
```{=tex}
\envlist
```
-   One can prove that the \( G \) structure is unique, since this turns out to be a projective module in an appropriate category (which we won't get into).

-   Ballard (1970s) proved the theorem for \( p>3h-3 \).

-   Jantzen (late 1970s) lowered the bound to \( p>2h-2 \)

-   Amazingly, no one has been able to lower this bound! This is currently an open question.

-   For \( G = {\operatorname{SL}}_2, {\operatorname{SL}}_3 \), it is known that \( \widehat{Q}_r(\lambda) \) has a \( G \) structure for all \( p \).
:::

### Donkin's Tilting Module Conjecture

From MSRI, 1990. Some notation first: for \( \lambda \in X_r(T) \), define
\[  
\widehat{\lambda} \coloneqq 2(p-1) \rho + w_0 \lambda
.\]

::: {.conjecture title="?"}
Let \( G \) be a semisimple simply connected algebraic group over \( k = \mkern 1.5mu\overline{\mkern-1.5muF\mkern-1.5mu}\mkern 1.5mu_p \) for some \( p \). Then
\[  
T(\widehat{\lambda}) \downarrow_{G_r T} \cong \widehat{Q}_r(\lambda)
.\]
:::

```{=tex}
\todo[inline]{Something about DTilt conjecture being true for $p>2h-2$.}
```
Next time:

-   Proof of theorem

-   \( \widehat{Q}_r(\lambda) \divides \operatorname{St}_r \otimes L(\sigma) \) as \( G{\hbox{-}} \)modules, and is also projective as a \( G_r T{\hbox{-}} \)module.

-   Find a \( G{\hbox{-}} \)summand \( M(\lambda) \) such that \( M(\lambda)\downarrow_{G_r T} = \widehat{Q}_r (\lambda) \).

-   More with injective modules.

-   Possibly something about cohomology of Frobenius kernels.

# Monday, November 16

We'll focus on the following theorem:

::: {.theorem title="Special case of Humphreys-Verma conjecture, 1973"}
Let \( p> 2h-2 \) and \( \lambda\in X_r(T) \), then \( \widehat{Q}_r(\lambda) \) has a \( G{\hbox{-}} \)structure.
:::

Recall Donkin's tilting conjecture:

::: {.conjecture title="DTilt"}
Let \( \lambda\in X_r(T) \), then
\[  
T(\widehat{\lambda})\downarrow_{G_r T} = \widehat{Q}_r(\lambda)
.\]
where \( \lambda = 2(p-1)\rho + w_0\lambda \).
:::

::: {.remark}
There is a counterexample to DTilt conjecture due to Bendel-Pillen-Nakano-Subaje (2019) to DTilt for \( \Phi = G_2 \) and \( p=2 \). Note that this doesn't apply to the previous conjecture, which could still be true.
:::

## Existence of \( G{\hbox{-}} \)Structures: Some Preliminaries {#existence-of-ghbox-structures-some-preliminaries}

We want to consider \( G{\hbox{-}} \)structures on injective modules. Let \( V, W \) be \( G{\hbox{-}} \)modules, then
\[  
{\operatorname{Hom}}_{G_r}(V, W) = [V^\vee\otimes W]^{G_r}
,\]
which is a module on which \( G_r \) acts trivially where we pull back the action using the map \( G \to G/G_r \). Moreover, there exists a \( G{\hbox{-}} \)modules \( M \) such that \( {\operatorname{Hom}}_{G_r}(V, W) = M^{(r)} \) twisted \( r \) times.

We can consider blocks, e.g. by considering \( {\operatorname{pr}}_\nu M \). This is the sum of all submodules with composition factors in the same block as \( L(\nu) \). We can write \( M = \bigoplus_{\nu\in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}}} {\operatorname{pr}}_\nu M \).

![\( \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \)](figures/image_2020-11-16-14-03-33.png){width="350px"}

Thus we can write
\[  
{\operatorname{Hom}}_{G_r}(V, M) = \bigoplus_{\nu\in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}}} {\operatorname{Hom}}_{G_r}^\nu(V, W) = \qty{ {\operatorname{pr}}_\nu M }^{(r)}
.\]

Note that for \( p>h \) the Coxeter number, \( 0\in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}} \), since
\[  
0 \leq {\left\langle {0+\rho},~{\alpha^\vee} \right\rangle} = {\left\langle {\rho},~{\alpha_0^\vee} \right\rangle} = h-1 < p
,\]
where \( h = {\left\langle {\rho},~{\alpha_0^\vee} \right\rangle} \).

We can then write
\[  
{\operatorname{Hom}}_G(V, W) = {\operatorname{Hom}}_{G_r}(V, W)^{G_r} \subseteq {\operatorname{Hom}}_{G_r}^0(V, W)
,\]
where the middle term involves trivial modules.

### Sketch of Proof

::: {.claim}
Let \( \lambda \in X_r(T) \) and consider \( M \coloneqq\operatorname{St}_r \otimes L( (p^r-1)\rho + w_0 \lambda ) \). Then \( \widehat{Q}_r(\lambda) \) is a direct summand of \( M \) as a \( G_r T{\hbox{-}} \)module.
:::

In other words, if we restrict this down to \( G_r T{\hbox{-}} \)modules, we get a \( G_r T{\hbox{-}} \)summand. Note that if DFilt holds, \( M \) is a Tilting module.

Recall that \( M \) is a projective and injective \( G_r T{\hbox{-}} \) module. It suffices to show that \( \widehat{L}_r(\lambda)\in \operatorname{Soc}_{G_r T} M \), for which we look at the hom space
\[  
{\operatorname{Hom}}_{G_r T} (\widehat{L}_r(\lambda), \operatorname{St}_r \otimes L( (p^r-1)\rho + w_0 \lambda ) )
&= {\operatorname{Hom}}_{G_r T} (\widehat{L}_r(\lambda) \otimes\operatorname{St}_r, L( (p^r-1)\rho + w_0 \lambda ) ) \\
&= {\operatorname{Hom}}_{G_r T} (\operatorname{St}_r, \widehat{L}_r(-w_0 \lambda) \otimes L( (p^r-1)\rho + w_0 \lambda ) ) 
,\]

```{=tex}
\todo[inline]{Something about $(p^r-1)\rho$ being a highest weight? And the last $L$ term being nonzero?}
```
Let \( Q_\lambda \) be the injective hull of \( L_\lambda \) as a \( G{\hbox{-}} \)module. This yields an injection \( L(\lambda)\hookrightarrow M \). Since we also have a map into the injective hull, we can extend:

```{=tex}
\begin{tikzcd}
& Q_\lambda \\
L(\lambda) \ar[r, hook]\ar[ur, hook] & M\ar[u, dotted, "\exists \phi"] \supseteq \widehat{Q}_r(\lambda)
\end{tikzcd}
```
Moreover, \( \phi:\widehat{Q}_r(\lambda)\to Q_\lambda \) is an injective map since \( L(\lambda) \subseteq \operatorname{Soc}_{G_r}(\lambda) \). Thus the image \( \phi\qty{\widehat{Q}_r(\lambda) } \cong \widehat{Q}_r(\lambda) \) and is a \( G_r T \) summand of \( \phi(M) \) since \( \widehat{Q}_r(\lambda) \) is an injective \( G_r T{\hbox{-}} \)module. We have a split exact sequence
\[  
0 \to \phi(\widehat{Q}_r(\lambda)) \hookrightarrow\phi(M) \to ? \to 0
.\]

The idea is now that \( \phi(M) \) is a \( G{\hbox{-}} \)module, so we'll show \( \phi(M) \) is indecomposable as both a \( G \) and a \( G_r T \) module. In this case, we'll have
\[  
\phi(M) = \phi(\widehat{Q}_r(\lambda)) \cong \widehat{Q}_r(\lambda)
.\]

It suffices to prove that \( \operatorname{Soc}_{G_r} \phi(M) = L_r(\lambda) \). Note that that it suffices to show there's only one summand, since the socle can't be decomposed further, which will yield irreducibility. We have
\[  
\operatorname{Soc}_G \phi(M) = L(\lambda)
.\]

We also know that \( \operatorname{Soc}_G \phi(M) \subseteq \operatorname{Soc}_{G_r} \phi(M) \). But if \( L(\mu) \subseteq \operatorname{Soc}_{G_r} \phi(M) \), then it is also contained in \( \operatorname{Soc}_G \phi(M) \). Hence if \( \operatorname{Soc}_{G_r}\phi(M) \) is isotypic of type \( L(\lambda) \), we have a decomposition
\[  
\operatorname{Soc}_{G_r}\phi(M) 
&= \bigoplus_{\sigma\in X_r(T)} L(\sigma) \otimes{\operatorname{Hom}}_{G_r}(L(\sigma), \phi(M)) \\
&= L(\lambda) \otimes{\operatorname{Hom}}_{G_r}(L(\lambda), \phi(M)) \\
&= \bigoplus_{\nu\in \mkern 1.5mu\overline{\mkern-1.5muC\mkern-1.5mu}\mkern 1.5mu_{\mathbb{Z}}} L(\lambda) \otimes{\operatorname{Hom}}_{G_r}^\nu (L(\lambda), \phi(M))
,\]
where we've broken this up into blocks. Note that \( \phi(M) \) is an indecomposable \( G{\hbox{-}} \)module, thus using linkage we can conclude that there is only one summand. By the previous statement, we have
\[  
k = {\operatorname{Hom}}_{G}(L(\lambda), \phi(M))
 \subseteq {\operatorname{Hom}}_{G_r}^0 (L(\lambda), \phi(M))
,\]
and hence

`\begin{equation}
\operatorname{Soc}_{G_r} \phi(M) = L(\lambda) \otimes{\operatorname{Hom}}_{G_r}^0 (L(\lambda), \phi(M))
.\end{equation}`{=tex}

::: {.remark}
Up until now, we've only used that \( p>h \). If we show that the hom space in the last equality is just the trivial module \( k \), then we're done. This would imply that \( \operatorname{Soc}_{G_r} \phi(M) = L(\lambda) \), in which case \( \phi(M) \) is an indecomposable \( G_r T{\hbox{-}} \)module and \( \phi(M) = \widehat{Q}_r(\lambda) \).
:::

The critical equation to show:

`\begin{equation}
{\operatorname{Hom}}_{G_r}^0 (L(\lambda), \phi(M)) = k
.\end{equation}`{=tex}

Suppose that \( {\operatorname{Hom}}_{G_r}^0 (L(\lambda), \phi(M)) \neq k \). Then there exists a \( \nu\in X(T)_+ \cap W_p \cdot 0 \) with \( \nu\neq 0 \) such that \( L(\nu)^{(r)} = L(p^r \nu) \) is a composition factor of \( {\operatorname{Hom}}_{G_r}^0 (L(\lambda), \phi(M)) \). This would imply that \( L(\lambda) \otimes L(\nu)^{(r)} = L(\lambda+ p^r\nu) \) is a composition factor of \( \operatorname{St}_r \otimes H^0( (p^r-1)\rho + w_0 \lambda) \).

The idea now is to check the weights in this module either by Weyl's character formula or weight estimates. The upshot: for \( p>2h-2 \), \( \lambda+ p^r \nu \) is a weight if \( \nu = 0 \). \( \hfill\blacksquare \)

How might this bound be lowered? Maybe the condition of the hom space being trivial is too strong, since being indecomposable isn't equivalent to having a simple socle.

## Steinberg Tensor Product Theorem for Injective \( G_r T{\hbox{-}} \)Modules {#steinberg-tensor-product-theorem-for-injective-g_r-thbox-modules}

::: {.proposition title="?"}
Let \( \lambda_0 \in X_r(T) \) and \( \lambda_1 \in X(T) \). Then there exists an isomorphism of \( G_r T{\hbox{-}} \)modules
\[  
\widehat{Q}_{r+1}(\lambda_0 + p^r \lambda_1)\downarrow_{G_r T} 
\,\, \cong \widehat{Q}_r(\lambda_0) \otimes\widehat{Q}_1(\lambda_1)^{(r)}
,\]
where the last term is a \( G_1 T{\hbox{-}} \)module with \( G_r \) acting trivially, which thus becomes a \( G_r T{\hbox{-}} \)module.
:::

::: {.remark}
Comparing this with the situation where \( \lambda_1 \in X(T)_+ \), we get
\[  
L(\lambda_0 + p^r \lambda_1) 
\cong L(\lambda_0) \otimes L(\lambda_1)^{(r)}
,\]
which is an isomorphism of \( G{\hbox{-}} \)modules.
:::

Next time: we'll complete injective modules, and if we have time, we'll talk about cohomology.

# Wednesday, November 18

## Steinberg Tensor Product Formula

Recall the Steinberg tensor product formula: Let \( \lambda \in X(T_+) \) with \( \operatorname{ch}(k) = p \), then write
\[  
\lambda = \sum_{j=1}^s p^j \lambda_j
\]
with \( \lambda_j \in X_1(T) \). Then
\[  
L(\lambda) = L(\lambda_0) \otimes\bigotimes_{j=1}^s L(\lambda_j)^{(j)}
.\]

The goal is to find a formula resembling this for \( G \) and \( G_r{\hbox{-}} \)modules.

::: {.proposition title="?"}
Let \( \lambda_0 \in X_r(T), \lambda_1 \in X(T) \). Then there exists an isomorphism of \( G_r T{\hbox{-}} \)modules
\[  
\widehat{Q}_{r+1} (\lambda_0 + p^r \lambda_1) = \widehat{Q}_r (\lambda_0) \otimes\widehat{Q}_1(\lambda_1)^{(r)}
,\]
and by inflation, \( \widehat{Q}_1(\lambda)^{(r)} \) is a \( G_r T{\hbox{-}} \)module.
:::

::: {.proof title="?"}
We have a decomposition of \( G_r T{\hbox{-}} \)modules:
\[  
\operatorname{Soc}_{G_r} \widehat{Q}_{r+1}(\lambda) = \bigoplus_{\mu\in X_r(T)} \widehat{L}_r(\mu) \otimes{\operatorname{Hom}}_{G_r}(\widehat{L}_r(\mu), \widehat{Q}_{r+1}(\lambda) )
.\]

We can write

\[  
\operatorname{Soc}_{G_{r+1}} \widehat{Q}_{r+1}(\lambda) 
&= \widehat{L}_{r+1}(\lambda) \\
&= \widehat{L}_r(\lambda_0) \otimes\widehat{L}_1(\lambda_1)^{(r)}
.\]
And since there can only be one summand, we can combine these two to write

\[  
\operatorname{Soc}_{G_r} \widehat{Q}_{r+1}(\lambda) = \widehat{L}_r(\lambda_0) \otimes{\operatorname{Hom}}_{G_r}(\widehat{L}_r(\lambda_0), \widehat{Q}_{r+1}(\lambda) )
,\]
which implies that
\[  
\operatorname{Soc}_{G_{r+1} T} \hom_{G_r}(\widehat{L}_r(\lambda_0), \widehat{Q}_{r+1}(\lambda)  ) &\cong \widehat{L}_1(\lambda_1)^{(r)}
.\]

We want to show that this hom is injective, so we'll use the Lydon-Hochschild-Serre spectral sequence
\[  
E_2^{i, j} = \operatorname{Ext}_{G_{r+1} T/G_r}^i (N, \operatorname{Ext}^j( \widehat{L}_r(\lambda_0), \widehat{Q}_{r+1}(\lambda) )  )
\Rightarrow
\operatorname{Ext}^{i+j}_{G_{r+1} T} ( N\otimes\widehat{L}_r(\lambda_0), \widehat{Q}_{r+1}(\lambda) )
.\]

There will be a lot of vanishing here. We know that

-   \( \widehat{Q}_{r+1}(\lambda) \) is an injective \( G_{r+1}T{\hbox{-}} \)module, and
-   \( \widehat{Q}_{r+1}(\lambda) \) is an injective \( G_{r}{\hbox{-}} \)module,

so \( E_2^{>0, 0} = 0 \):

\[  
\operatorname{Ext}_{G_{r}T/G_r}^i(N, {\operatorname{Hom}}_{G_r}( \widehat{L}_r(\lambda_0), \widehat{Q}_{r+1}(\lambda) )  )
.\]

We can thus conclude that \( \hom_{G_r}( \widehat{L}_r(\lambda_0), \widehat{Q}_{r+1}(\lambda) ) \) is an injective \( G_{r+1}T/G_r{\hbox{-}} \)module. Thus
\[  
{\operatorname{Hom}}_{G_r}(\widehat{L}_r(\lambda_0), \widehat{Q}_{r+1}(\lambda) ) \cong \widehat{Q}_{1}(\lambda_1)^{(r)}
.\]

To finish the proof, note that \( \widehat{Q}_{r+1}(\lambda) \downarrow_{G_r T} = \bigoplus_{j=1}^m \widehat{Q}_r(\mu_j) \), and thus
\[  
\widehat{Q}_{r+1}(\lambda) = \bigoplus_{j-1}^m \widehat{Q}_r(\lambda_0) \otimes p^r v_j
.\]

Furthermore, at the level of characters we have \( \sum e^{v_j} = \operatorname{ch}\widehat{Q}_1(\lambda_1) \) and thus
\[  
\widehat{Q}_1(\lambda_1)^{(r)} = \bigoplus_{j=1}^m p^r v_j
.\]
:::

::: {.remark}
Suppose \( \lambda_0, \lambda_1, \lambda_{r-1}\in X(T) \), where we can write \( \lambda = \sum_{i=0}^{r-1} \lambda_i p^i \). Then for characters we have
\[  
\widehat{Q}_{r}(\lambda) = \prod_{j=0}^{r-1} \operatorname{ch}\widehat{Q}_1(\lambda_j)^{(j)}
.\]
:::

Let \( L(\lambda) \) be an irreducible representation for \( G \), and set \( Q_\lambda \) to be the injective hull of \( L(\lambda) \), so we have an exact sequence \( 0 \to L(\lambda) \hookrightarrow Q(\lambda) \).

::: {.proposition title="?"}
Let \( \lambda\in X_r(T) \), and assume that the \( G_r T{\hbox{-}} \) structure on \( \widehat{Q}_r(\lambda) \) can be lifted to \( G \). Then

a.  If \( \lambda'\in X(T)_+ \), then there exists an isomorphism of \( G{\hbox{-}} \)modules:
    \[  
    \widehat{Q}_r(\lambda) \otimes Q_{\lambda'}^{(r)} \cong Q_{\lambda + p^r \lambda'}
    .\]

b.  If \( \lambda'\in X(T) \) and \( r'>r \), then there exists an isomorphism of \( G_{r'} T{\hbox{-}} \)modules
    \[  
    \widehat{Q}_r(\lambda) \otimes\widehat{Q}_{r' - r}(\lambda')^{(r)} \cong \widehat{Q}_{r'}(\lambda + p^r \lambda')
    .\]
:::

::: {.proof title="of a"}
We want to show that \( \widehat{Q}_r(\lambda) \otimes Q_{\lambda'}^{(r)} \) is an injective \( G{\hbox{-}} \)module and that the socle of the LHS is equal to \( L(\lambda + p^r \lambda') \).

::: {.claim}
Let \( N{~\trianglelefteq~}G \) be groups, and suppose \( V_1 \in {{G}{\hbox{-}}\operatorname{mod}} \) is injective as an \( N{\hbox{-}} \)module and \( V_2 \) is injective as a \( G/N{\hbox{-}} \)module. Then \( V_1 \otimes V_2 \) is injective as a \( G{\hbox{-}} \)module.
:::

::: {.proof title="of claim"}
We'll again use the LHS spectral sequence,
\[  
E_{2}^{i, j} = \operatorname{Ext}_{G/N}^i(k, \operatorname{Ext}_N^j(E, V_1\otimes V_2) )
\Rightarrow
\operatorname{Ext}_G^{i+j}(E, V_1 \otimes V_2)
.\]
Using the assumption that \( V_1 \) is injective as an \( N{\hbox{-}} \)module, we have collapsing
\[  
\operatorname{Ext}_N^{>0}(E, V_1\otimes V_2) = \operatorname{Ext}_N^{>0} (E\otimes V_2, V_1)
.\]
and thus
\[  
\operatorname{Ext}_{G/N}^{>0}(k, {\operatorname{Hom}}_N(E, V_1\otimes V_2) )
= \operatorname{Ext}_G^{>0}(N, V_1\otimes V_2)
= 0
.\]
For the first line, we can write \( \hom_N(E, V_1) \otimes V_2 \). This vanishes for every possible \( E \), making \( V_1\otimes V_2 \) injective.
:::

In our situation, we'll be taking \( N\coloneqq G_r {~\trianglelefteq~}G \), where \( G/G_r = G^{(r)} \). Thus the claim proves part (a).
:::

::: {.proof title="of b"}
Recall that the \( G{\hbox{-}} \)socle is contained in \( \operatorname{Soc}_{G_r} \), yielding
\[  
\operatorname{Soc}_{G_r} \widehat{Q}_r(\lambda) \otimes Q_{\lambda'}^{(r)} 
= \widehat{L}_R(\mu) \otimes{\operatorname{Hom}}_{G_r}( \widehat{L}_r(\mu), \widehat{Q}_r(\lambda)  ) \otimes Q_{\lambda}^{(r)}
.\]
We know that the hom is only nonzero when \( \lambda = \mu \), so this is equal to
\[  
\cdots
&= \widehat{L}_R(\lambda) \otimes Q_{\lambda'}^{(r)}
,\]
since in this term, the hom is just equal to \( k \). Thus we have
\[  
\operatorname{Soc}_G \widehat{Q}_r(\lambda) \otimes Q_{\lambda'}^{(r)}
= \widehat{L}_r(\lambda) \otimes L(\lambda')^{(r)} = \operatorname{Soc}_G Q_{\lambda+ p^r \lambda'}
.\]
Since this is an injective module and the socles match, this must be an isomorphism.
:::

::: {.corollary title="?"}
Let \( \lambda \in X(T)_+ \) with \( \lambda = \sum_{j=0}^s \lambda_j p^j \) with \( \lambda_j \in X_1(T) \). Moreover, assume all \( Q_r(\mu) \) lift to \( G \). Then there exists a \( {{G}{\hbox{-}}\operatorname{mod}} \) isomorphism
\[  
Q_r(\lambda) = \bigotimes_{j=0}^s \widehat{Q}_1(\lambda_j)^{(j)}
.\]
:::

Next time: cohomology of Frobenius kernels and relation to the nilpotent cones, related to ABG equivalence, computing the cohomology ring for \( G_1 \).

# Friday, November 20

## Cohomology of Frobenius Kernels

These predate cohomology for the small quantum group.

::: {.theorem title="Ginzburg-Kuman, 1993"}
Let \( \ell > h \) be odd, then

1.  \( H^{2n}(U_\xi(g), {\mathbb{C}}) = {\mathbb{C}}[\mathcal{N}] \) for \( \mathcal{N} \) the nilpotent cone.

2.  \( H^{2k+1}(U_\xi(g), G) = 0 \).
:::

Letting \( G \) be a reductive algebra over \( k = \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}_p\mkern-1.5mu}\mkern 1.5mu \), recall that we have the \( r \)th Frobenius \( F^r:G\to G \), where \( G_r \coloneqq\ker F^r \) and \( A \coloneqq\operatorname{Dist}(G_r) \). We define \( R = H^\cdot(G_r, k) = H^\cdot(A, K) = \operatorname{Ext}_A(k, k) \). How do we compute this ring?

We have
```{=tex}
\begin{tikzcd}
0 \ar[r] & k \ar[r] & M_1 \ar[r] & \cdots \ar[r] & M_t \ar[r] & k \ar[r] \ar[dllll, "\cong"] & 0 \in \operatorname{Ext}_A^t(k, k) \\
0 \ar[r] & k \ar[r] & N_1 \ar[r] & \cdots \ar[r] & N_s \ar[r] & k \ar[r] & 0 \in \operatorname{Ext}_A^s(k, k) \\
\end{tikzcd}
```
We then concatenate these in \( \operatorname{Ext}_A^{s+t}(k, k) \).

The best answers occur when \( r=1 \) and \( p>h \), due to results by Friendlander-Parhsll for \( p\geq 3h-3 \), and by Andersen-Jantzen for \( p>h \).

::: {.proposition title="?"}
Let \( B \subset G \) where \( B = T\rtimes U \) and \( \mathfrak{u} = \operatorname{Lie}(U) \), \( p> h \). Then

1.  \( H^{2\cdot}(B, k) = S^0(u^*)^{(1)} \)

2.  \( H^{2k+1}(B, k) = 0 \).
:::

::: {.proof title="?"}
The main idea: there is a spectral sequence
\[  
E_1^{2i, j} = \qty{  
S^i(u^*)^{(1)} \otimes\Lambda^j(u^*)
}^{T_1}
\Rightarrow
\qty{ 
H^{2i+j}(U_1, k)^{T_1} = S^i(u^*) \otimes\qty{ \Lambda^j(u^*) }^{T_1} \Rightarrow H^{2i+j}(B, k)
}
\]
which is not a Grothendieck-type spectral sequence, and instead comes from filtering a complex and taking the associated graded. Using routine group combinatorics for \( p>h \), we can find that \( \Lambda^\cdot(u^*)^{T_1} \cong k \). This causes the spectral sequence to collapse.
:::

::: {.proposition title="?"}
There exists a spectral sequence
\[  
E_2^{i, j} = R^i \operatorname{Ind}_{B/B_1}^{G/G_1} H^j(B_1, k) \Rightarrow H^{i+j}(G_1, k)
.\]
:::

::: {.proof title="?"}
::: {.fact}
We can identify
\[  
R^j \operatorname{Ind}_{B/B_1}^{G/G_1} S^0(u^*)^{(1)} = R^j \operatorname{Ind}_B^G S^0(u^*) \qquad \text{for } j>0
.\]
:::

This yields

1.  \( \operatorname{Ind}_{B/B_1}^{G/G_1} S^0(u^*)^{(1)} = k \) (???)

2.  \( H^{2\cdot+1}(G, k) = 0 \).

So

\[  
H^{2\cdot}(G, k) = \qty{ \operatorname{Ind}_B^G S^0(u^*)  }^{(1)} \coloneqq k[G \underset{\scriptscriptstyle {B} }{\times} u]
.\]

This yields the **Springer resolution**

```{=tex}
\begin{tikzcd}
G \underset{\scriptscriptstyle {B} }{\times} u \ar[r, "\pi"] & G\cdot u = \mathcal{N} \\
\pi^{-1}(O_{\text{reg}}) \ar[u, "\subset"] & O_{\text{reg}}\ar[l, "\cong"] \ar[u, "\subset"]
\end{tikzcd}
```
We can thus write
\[  
k[G\underset{\scriptscriptstyle {B} }{\times} u] 
&= k[ \pi^{-1}(O_{\text{reg}}) \\
&= k[O_{\text{reg}}] \\
&= k[\mathcal{N}]
,\]
since all singularities lie in codimension strictly greater than \( 2 \).
:::

::: {.theorem title="F-P, A-J, 1980s"}
For \( p>h \),

1.  \( H^{2\cdot }(G, k) = k[{\mathcal{N}}] \)
2.  \( H^{2\cdot + 1}(G, k) = 0 \).
:::

::: {.example title="?"}
Let \( G = {\operatorname{SL}}_2(k) \) and \( {\mathfrak{g}}= {\mathfrak{sl}}_2(k) \). Then for \( x\in {\mathfrak{sl}}_2(k) \), we can write
\[  
x = \begin{bmatrix}
a & b \\
c & -a
\end{bmatrix} && \det(x) = -a^2 - bc = 0
.\]
Then we have a presentation of the cohomology ring:
\[  
H^{2\cdot}(G, k) = k[a,b,c] / \left\langle{a^2 + bc = 0}\right\rangle, && {\left\lvert {a} \right\rvert} = {\left\lvert {b} \right\rvert} = {\left\lvert {c} \right\rvert} = 2
.\]
:::

## Finite Generation of Cohomology

A finite group scheme is essentially the same as a cocommutative Hopf algebra.

::: {.theorem title="Friendlander-Suslin, 1997, Inv. Math"}
Let \( A \) be a cocommutative Hopf algebra over \( k \). Then \( H^{\,\cdot\,}(A, k) \) is a finitely generated algebra
:::

::: {.example title="?"}
\( H{\,\cdot\,}(G_r, k) \) is a finitely generated algebra.
:::

::: {.problem title="Open"}
Is \( H^{\,\cdot\,}(A, k) \) a finitely generated algebra when \( A \) is a finite dimensional Hopf algebra?
:::

::: {.problem title="Open"}
Compute \( H^{\,\cdot\,}(G_r, k) \) for \( r\geq 2 \).
:::

# Monday, November 23

Today: last lecture. Note that (some) videos will be available online, see Youtube channel.

## Cohomology of Frobenius Kernels

Let \( r=1 \), and consider \( H^0(G_1; k) \). For \( p > h \), we know \( H^{2\cdot} = k[\mathcal{N}] \) and zero otherwise. What is known for \( p<h \)?

::: {.definition title="The Restricted Nillcone"}
For an arbitrary \( p \), we have the following: define
\[  
\mathcal{N}_1({\mathfrak{g}}) = \left\{{x\in {\mathfrak{g}}{~\mathrel{\Big|}~}x^{[p]} = 0 }\right\}
,\]
where \( {\mathfrak{g}}= \operatorname{Lie}(G) \).
:::

Note that \( p>h \), we have \( \mathcal{N}_1({\mathfrak{g}}) = \mathcal{N} \). Taking \( {\mathfrak{gl}}_n \), this is matrices whose \( p \)th power is zero. Note that the Frobenius map is still a derivation in characteristic \( p \).

::: {.theorem title="Jantzen, 1986"}
\[  
\operatorname{mSpec}(H^\cdot(G_1; k) ) \cong \mathcal{N}_1({\mathfrak{g}})
.\]
:::

::: {.theorem title="Carlson-Lin-Nakano-Parshall, UGA VIGRE"}
For some \( G{\hbox{-}} \)orbit \( \mathcal{O} \) in \( \mathcal{N} \),
\[  
\mathcal{N}_1({\mathfrak{g}}) = \mkern 1.5mu\overline{\mkern-1.5mu\mathcal{O}\mkern-1.5mu}\mkern 1.5mu
,\]
i.e. it is the closure of some \( G{\hbox{-}} \)orbit. In particular, \( \mathcal{N}_1({\mathfrak{g}}) \) is irreducible.
:::

For \( \lambda\in X(T) \), set
\[  
\Phi_\lambda \coloneqq\left\{{ \alpha\in\Phi {~\mathrel{\Big|}~}{\left\langle {\lambda+\rho},~{\alpha^\vee} \right\rangle} \in p{\mathbb{Z}}}\right\}
.\]

When \( p \) is good, there exists \( w\in W \) such that \( w(\Phi_\lambda) = \Phi_J \) for some \( J \subset\Delta \).

```{=tex}
\todo[inline]{Something about being on or off a wall, and conjugating?}
```
::: {.example title="?"}
We can determine which \( p \) are good for each type:

-   \( A_n \): \( p \) is always good.
-   \( B_n \): \( p\neq 2 \)
-   \( C_n \): \( p\neq 2 \)
-   \( D_n \): \( p\neq 2 \)
-   \( E_6 \): \( p\neq 2 \)
-   \( E_7 \): \( p\neq 2, 3 \)
-   \( E_8 \): \( p\neq 2, 3,5 \)
-   \( F_4 \): \( p\neq 2, 3 \)
-   \( G_2 \): \( p\neq 2, 3 \)
:::

::: {.conjecture}
Let \( p \) be a good and \( w(\Phi_0) = \Phi_J \) for some \( J \subseteq \Delta \). By NPV, \( \mathcal{N}_1({\mathfrak{g}}) = G \cdot \mu_J \). Assuming that \( p\nmid(X(T): {\mathbb{Z}}\Phi) \), then

-   \( H^{2\cdot}(G; k) = k[\mathcal{N}_1({\mathfrak{g}})] \)
-   \( H^{2\cdot + 1}(G; k) = 0 \).
:::

::: {.remark}
This is a natural generalization of \( p>h \). There is some situational evidence for this to be true:

1.  For \( p=h-1 \), we have \( \mathcal{N}_1({\mathfrak{g}}) = \mkern 1.5mu\overline{\mkern-1.5mu{\mathcal{O}}_{\operatorname{Reg}}\mkern-1.5mu}\mkern 1.5mu \) and the conjecture is true.
2.  For quantum groups, \( H^\cdot(U_q({\mathfrak{g}}); {\mathbb{C}}) \) and it is again true.

```{=tex}
\todo[inline]{Something about BNPP}
```
:::

::: {.remark}
Some key points:

1.  By the Gravert-Riemenschneider theorem, for \( k= \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}_p\mkern-1.5mu}\mkern 1.5mu \),
    \[  
    R^{i>0} \operatorname{Ind}_{P_J}^{C_r} S^\cdot(u_J^*) = 0
    .\]

2.  Normality of \( \mathcal{N}_1({\mathfrak{g}}) \).

A fact about something from earlier: the ring of regular functions on springer resolution equal to those on the nilpotent cone.
:::

## Support Varieties

Very common in modern mathematics. Define \( R \coloneqq H^{\,\cdot\,}(G_1; k) \), which is a finitely generated algebra. Note that \( R \) acts on \( \operatorname{Ext}_{G_1}^{\,\cdot\,}(M, M) \), which is finitely generated over \( R \). So what is the support of this module? Define \( V_{G_1}(M) \coloneqq\operatorname{mSpec}\qty{R/J_M} \), where \( J_M \coloneqq\operatorname{Ann}_R \operatorname{Ext}_{G_1}^{\,\cdot\,}(M, M) \).

::: {.conjecture title="Jantzen, 1986"}
Let \( p \) be good and \( \lambda \in X(T)_+ \) be a dominant weight. Consider \( \Phi_\lambda \) ad \( w\in W \) such that \( w(\Phi_\lambda) = \Phi_J \) for some \( J \subseteq \Delta \). Then
\[  
V_{G_1} (H^0(\lambda)) = G\cdot \mu_J
.\]
:::

::: {.remark}
Now proved! Jantzen proved for type \( A_n \), and Nakano-Parshall-Vella proved it in general in 2002.
:::

::: {.remark}
For tilting modules, there is a conjecture for \( V_G(T(\lambda)) \) (Humphreys conjecture). Type \( A_n \) with \( p>h+1 \) was verified by W. Harelstry, and \( p=2 \) by Cooper. This is still open, but is known for quantum groups and unknown for general algebraic groups.
:::

[^1]: Simple Lie algebras in characteristic \( p \) with a triangular decomposition which is highly non-symmetric (negative part is typically smaller).

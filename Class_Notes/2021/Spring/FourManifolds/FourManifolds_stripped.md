```{=tex}
\def\contradiction
{
\tikz[baseline, x=0.2em, y=0.2em, line width=0.04em]
\draw (0,0) -- ({4*cos(45)},{4*sin(45)})
    (-1,1) -- ({-1 + 4*cos(45)},{1 + 4*sin(45)})
    (-1,3) -- ({-1 + 4*cos(315)},{3 + 4*sin(315)})
    (0,4) -- ({0 + 4*cos(315)},{4 + 4*sin(315)});
}
```

# Tuesday, January 12

## Background

From Phil's email:

There are very few references in the notes, and I'll try to update them to include more as we go. Personally, I found the following online references particularly useful:

-   Dietmar Salamon: Spin Geometry and Seiberg-Witten Invariants [@Dietmar99]

-   Richard Mandelbaum: Four-dimensional Topology: An Introduction [@Mandelbaum1980]

    -   This book has a nice introduction to surgery aspects of four-manifolds, but as a warning: It was published right before Freedman's famous theorem. For instance, the existence of an exotic R\^4 was not known. This actually makes it quite useful, as a summary of what was known before, and provides the historical context in which Freedman's theorem was proven.

-   Danny Calegari: Notes on 4-Manifolds [@Calegari]

-   Yuli Rudyak: Piecewise Linear Structures on Topological Manifolds [@Rudyak]

-   Akhil Mathew: The Dirac Operator [@Matthew]

-   Tom Weston: An Introduction to Cobordism Theory [@Weston]

    A wide variety of lecture notes on the Atiyah-Singer index theorem, which are available online.

## Introduction

::: {.definition title="Topological Manifold"}
Recall that a **topological manifold** (or \( C^0 \) manifold) \( X \) is a Hausdorff topological space *locally homeomorphic* to \( {\mathbb{R}}^n \) with a countable topological base, so we have charts \( \phi_u: U\to {\mathbb{R}}^n \) which are homeomorphisms from open sets covering \( X \).
:::

::: {.example title="The circle"}
\( S^1 \) is covered by two charts homeomorphic to intervals:

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) { \fontsize{45pt}{1em} \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures/}{2021-01-16_21-54.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.remark}
Maps that are merely continuous are poorly behaved, so we may want to impose extra structure. This can be done by imposing restrictions on the transition functions, defined as
\[
t_{uv} \coloneqq\varphi_V \to \varphi_U ^{-1} : \varphi_U(U \cap V) \to \varphi_V(U \cap V)
.\]
:::

::: {.definition title="Restricted Structures on Manifolds"}
```{=tex}
\envlist
```
-   We say \( X \) is a **PL manifold** if and only if \( t_{UV} \) are piecewise-linear. Note that an invertible PL map has a PL inverse.

-   We say \( X \) is a **\( C^k \) manifold** if they are \( k \) times continuously differentiable, and **smooth** if infinitely differentiable.

-   We say \( X \) is **real-analytic** if they are locally given by convergent power series.

-   We say \( X \) is **complex-analytic** if under the identification \( {\mathbb{R}}^n \cong {\mathbb{C}}^{n/2} \) if they are holomorphic, i.e. the differential of \( t_{UV} \) is complex linear.

-   We say \( X \) is a **projective variety** if it is the vanishing locus of homogeneous polynomials on \( {\mathbb{CP}}^N \).
:::

::: {.remark}
Is this a strictly increasing hierarchy? It's not clear e.g. that every \( C^k \) manifold is PL.
:::

::: {.question}
Consider \( {\mathbb{R}}^n \) as a topological manifold: are any two smooth structures on \( {\mathbb{R}}^n \) diffeomorphic?
:::

::: {.remark}
Fix a copy of \( {\mathbb{R}} \) and form a single chart \( {\mathbb{R}}\xrightarrow{\operatorname{id}} {\mathbb{R}} \). There is only a single transition function, the identity, which is smooth. But consider
\[
X &\to {\mathbb{R}}\\
t &\mapsto t^3
.\]
This is also a smooth structure on \( X \), since the transition function is the identity. This yields a different smooth structure, since these two charts don't like in the same maximal atlas. Otherwise there would be a transition function of the form \( t_{VU}: t\mapsto t^{1/3} \), which is not smooth at zero. However, the map
\[
X &\to X \\
t &\mapsto t^3
.\]
defines a diffeomorphism between the two smooth structures.
:::

::: {.claim}
\( {\mathbb{R}} \) admits a unique smooth structure.
:::

::: {.proof title="sketch"}
Let \( \tilde {\mathbb{R}} \) be some exotic \( {\mathbb{R}} \), i.e. a smooth manifold homeomorphic to \( {\mathbb{R}} \). Cover this by coordinate charts to the standard \( {\mathbb{R}} \):

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-16_22-31.pdf_tex} };
\end{tikzpicture}
```
::: {.fact}
There exists a cover which is *locally finite* and supports a *partition of unity*: a collection of smooth functions \( f_i: U_i \to {\mathbb{R}} \) with \( f_i \geq 0 \) and \( {\operatorname{supp}}f \subseteq U_i \) such that \( \sum f_i = 1 \) (*i.e., bump functions*). It is also a purely topological fact that \( \tilde {\mathbb{R}} \) is orientable.
:::

So we have bump functions:

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-16_22-37.pdf_tex} };
\end{tikzpicture}
```
Take a smooth vector field \( V_i \) on \( U_i \) everywhere aligning with the orientation. Then \( \sum f_i V_i \) is a smooth nowhere vector field on \( X \) that is nowhere zero in the direction of the orientation. Taking the associated flow
\[
{\mathbb{R}}&\to \tilde {\mathbb{R}}\\
t &\mapsto \varphi(t)
.\]
such that \( \varphi'(t) = V(\varphi(t)) \). Then \( \varphi \) is a smooth map that defines a diffeomorphism. This follows from the fact that the vector field is everywhere positive.

::: {.slogan}
To understand smooth structures on \( X \), we should try to solve differential equations on \( X \).
:::
:::

::: {.remark}
Note that here we used the existence of a global frame, i.e. a trivialization of the tangent bundle, so this doesn't quite work for e.g. \( S^2 \).
:::

::: {.question}
What is the difference between all of the above structures? Are there obstructions to admitting any particular one?
:::

::: {.answer}
```{=tex}
\envlist
```
1.  (Munkres) Every \( C^1 \) structure gives a unique \( C^k \) and \( C^ \infty \) structure.[^1]

2.  (Grauert) Every \( C^ \infty \) structure gives a unique real-analytic structure.

3.  Every PL manifold admits a smooth structure in \( \dim X \leq 7 \), and it's unique in \( \dim X\leq 6 \), and above these dimensions there exists PL manifolds with no smooth structure.

4.  (Kirby--Siebenmann) Let \( X \) be a topological manifold of \( \dim X\geq 5 \), then there exists a cohomology class \( \operatorname{ks}(X) \in H^4(X; {\mathbb{Z}}/2{\mathbb{Z}}) \) which is 0 if and only if \( X \) admits a PL structure. Moreover, if \( \operatorname{ks}(X) = 0 \), then (up to concordance) the set of PL structures is given by \( H^3(X; {\mathbb{Z}}/2{\mathbb{Z}}) \).

5.  (Moise) Every topological manifold in \( \dim X\leq 3 \) admits a unique smooth structure.

6.  (Smale et al.): In \( \dim X\geq 5 \), the number of smooth structures on a topological manifold \( X \) is finite. In particular, \( {\mathbb{R}}^n \) for \( n \neq 4 \) has a unique smooth structure. So dimension 4 is interesting!

7.  (Taubes) \( {\mathbb{R}}^4 \) admits uncountably many non-diffeomorphic smooth structures.

8.  A compact oriented smooth surface \( \Sigma \), the space of complex-analytic structures is a complex orbifold [^2] of dimension \( 3g-2 \) where \( g \) is the genus of \( \Sigma \), up to biholomorphism (i.e. *moduli*).
:::

::: {.remark}
Kervaire-Milnor: \( S^7 \) admits 28 smooth structures, which form a group.
:::

# Friday, January 15

::: {.remark}
Let
\[
V &\coloneqq\left\{{a^2 + b^2 + c^2 + d^3 + e^{6k-1} = 0}\right\} \subseteq {\mathbb{C}}^5 \\
S_\varepsilon&\coloneqq\left\{{ {\left\lvert {a} \right\rvert}^2 + {\left\lvert {b} \right\rvert}^2 + {\left\lvert {c} \right\rvert}^2 + {\left\lvert {d} \right\rvert}^2 + {\left\lvert {e} \right\rvert}^2}\right\}
.\]
Then \( V_k \cap S_\varepsilon\cong S^7 \) is a homeomorphism, and taking \( k=1,2,\cdots, 28 \) yields the 28 smooth structures on \( S^7 \). Note that \( V_k \) is the cone over \( V_k \cap S_\varepsilon \).

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) { 
\fontsize{25pt}{1em} 
\import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures/}{2021-01-15_13-54.pdf_tex} };
\end{tikzpicture}
```
> ? Admits a smooth structure, and \( \mkern 1.5mu\overline{\mkern-1.5muV\mkern-1.5mu}\mkern 1.5mu_k \subseteq {\mathbb{CP}}^5 \) admits no smooth structure.
:::

::: {.question}
Is every triangulable manifold PL, i.e. homeomorphic to a simplicial complex?
:::

::: {.answer}
No! Given a simplicial complex, there is a notion of the **combinatorial link** \( L_V \) of a vertex \( V \):

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) {
\import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures/}{2021-01-15_13-57.pdf_tex} };
\end{tikzpicture}
```
It turns out that there exist simplicial manifolds such that the link is not homeomorphic to a sphere, whereas every PL manifold admits a "PL triangulation" where the links are spheres.
:::

::: {.remark}
What's special in dimension 4? Recall the **Kirby-Siebenmann** invariant \( \operatorname{ks}(x) \in H^4(X; {\mathbb{Z}}_2) \) for \( X \) a topological manifold where \( \operatorname{ks}(X) = 0 \iff X \) admits a PL structure, with the caveat that \( \dim X \geq 5 \). We can use this to cook up an invariant of 4-manifolds.
:::

::: {.definition title="Kirby-Siebenmann Invariant of a 4-manifold"}
Let \( X \) be a topological 4-manifold, then
\[
\operatorname{ks}(X) \coloneqq\operatorname{ks}(X \times{\mathbb{R}})
.\]
:::

::: {.remark}
Recall that in \( \dim X\geq 7 \), every PL manifold admits a smooth structure, and we can note that
\[
H^4(X; {\mathbb{Z}}_2) = H^4(X \times{\mathbb{R}}; {\mathbb{Z}}_2) = {\mathbb{Z}}_2,
.\]
since every oriented 4-manifold admits a fundamental class. Thus
\[
\operatorname{ks}(X) = 
\begin{cases}
0 & X \times{\mathbb{R}}\text{ admits a PL and smooth structure} 
\\
1 & X \times{\mathbb{R}}\text{ admits no PL or smooth structures }.
\end{cases}
\]
:::

::: {.remark}
\( \operatorname{ks}(X) \neq 0 \) implies that \( X \) has no smooth structure, since \( X \times{\mathbb{R}} \) doesn't. Note that it was not known if this invariant was nonzero for a while!
:::

::: {.remark}
Note that \( H^2(X; {\mathbb{Z}}) \) admits a symmetric bilinear form \( Q_X \) defined by
\[
{\left\langle { \alpha},~{ \beta} \right\rangle} \mapsto \int_X \alpha\wedge \beta = \alpha \smile\beta([X]) \in {\mathbb{Z}}
.\]
where \( [X] \) is the fundamental class.
:::

# Main Theorems for the Course

Proving the following theorems is the main goal of this course.

::: {.theorem title="Freedman"}
If \( X, Y \) are compact oriented topological 4-manifolds, then \( X\cong Y \) are homeomorphic if and only if \( \operatorname{ks}(X) = \operatorname{ks}(Y) \) and \( Q_X \cong Q_Y \) are isometric, i.e. there exists an isometry
\[
\varphi: H^2(X; {\mathbb{Z}}) \to H^2(Y; {\mathbb{Z}})
.\]
that preserves the two bilinear forms in the sense that \( {\left\langle {\varphi \alpha},~{ \varphi \beta} \right\rangle} = {\left\langle { \alpha},~{ \beta} \right\rangle} \).

Conversely, every **unimodular** bilinear form appears as \( H^2(X; {\mathbb{Z}}) \) for some \( X \), i.e. the pairing induces a map
\[
H^2(X; {\mathbb{Z}}) &\to H^2(X; {\mathbb{Z}})^\vee\\
\alpha \mapsto {\left\langle { \alpha },~{ {\,\cdot\,}} \right\rangle}
.\]
which is an isomorphism. This is essentially a classification of simply-connected 4-manifolds.
:::

::: {.remark}
Note that preservation of a bilinear form is a stand-in for "being an element of the orthogonal group", where we only have a lattice instead of a full vector space.
:::

::: {.remark}
There is a map \( H^2(X; {\mathbb{Z}}) \xrightarrow{PD} H_2(X; {\mathbb{Z}}) \) from Poincaré , where we can think of elements in the latter as closed surfaces \( [\Sigma] \), and
\[
{\left\langle { \Sigma_1 },~{ \Sigma_2 } \right\rangle} = \text{signed number of intersections points of } \Sigma_1 \pitchfork\Sigma_2
.\]
Note that Freedman's theorem is only about homeomorphism, and is not true smoothly. This gives a way to show that two 4-manifolds are homeomorphic, but this is hard to prove! So we'll black-box this, and focus on ways to show that two *smooth* 4-manifolds are *not* diffeomorphic, since we want homeomorphic but non-diffeomorphic manifolds.
:::

::: {.definition title="Signature"}
The **signature** of a topological 4- manifold is the signature of \( Q_X \), where we note that \( Q_X \) is a symmetric nondegenerate bilinear form on \( H^2(X; {\mathbb{R}}) \) and for some \( a, b \)
\[
(H^2(X; {\mathbb{R}}), Q_x) \xrightarrow{\text{isometric}} {\mathbb{R}}^{a, b}
.\]
where \( a \) is the number of \( +1 \)s appearing in the matrix and \( b \) is the number of \( -1 \)s. This is \( {\mathbb{R}}^{ab} \) where \( e_i^2 = 1, i=1\cdots a \) and \( e_i^2 = -1, i=a+1, \cdots b \), and is thus equipped with a specific bilinear form corresponding to the Gram matrix of this basis.
\[
\begin{bmatrix}
1 & 0 & 0 & 0 & 0
\\
0 & 1 & 0 & 0 & 0
\\
0 & 0 & \ddots & 0 & 0
\\
0 & 0 & 0 & -1 & 0
\\
0 & 0 & 0 & 0 & -1
\end{bmatrix}
= I_{a\times a} \oplus -I_{b \times b}
.\]
Then the signature is \( a-b \), the dimension of the positive-definite space minus the dimension of the negative-definite space.
:::

::: {.theorem title="Rokhlin's Theorem"}
Suppose \( {\left\langle { \alpha},~{\alpha} \right\rangle} \in 2{\mathbb{Z}} \) and \( \alpha\in H^2(X; {\mathbb{Z}}) \) and \( X \) a simply connected **smooth** 4-manifold. Then 16 divides \( \operatorname{sig}(X) \).
:::

::: {.remark}
Note that Freedman's theorem implies that there exists topological 4-manifolds with no smooth structure.
:::

::: {.theorem title="Donaldson"}
Let \( X \) be a smooth simply-connected 4-manifold. If \( a=0 \) or \( b=0 \), then \( Q_X \) is diagonalizable and there exists an orthonormal basis of \( H^2(X; {\mathbb{Z}}) \).
:::

::: {.remark}
This comes from Gram-Schmidt, and restricts what types of intersection forms can occur.
:::

## Warm Up: \( {\mathbb{R}}^2 \) Has a Unique Smooth Structure {#warm-up-mathbbr2-has-a-unique-smooth-structure}

::: {.remark}
Last time we showed \( {\mathbb{R}}^1 \) had a unique smooth structure, so now we'll do this for \( {\mathbb{R}}^2 \). The strategy of solving a differential equation, we'll now sketch the proof.
:::

::: {.definition title="Riemannian Metrics"}
A **Riemannian metric** \( g\in \operatorname{Sym}^2 T^*X \) for \( X \) a smooth manifold is a metric on every \( T_p X \) given by
\[
g_p: T_pX \times T_p X &\to {\mathbb{R}}\\
g(v, v) \geq 0, g(v,v) = 0 \iff v=0
.\]
:::

::: {.definition title="Almost complex structure"}
An **almost complex structure** is a \( J\in \mathop{\mathrm{End}}(TX) \) such that \( J^2 = -\operatorname{id} \).
:::

::: {.remark}
Let \( e\in T_p X \) and \( e\neq 0 \), then if \( X \) is a surface then \( \left\{{e, Je}\right\} \) is a basis of \( T_p X \).

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) { 
\fontsize{25pt}{1em} 
\import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures/}{2021-01-15_14-33.pdf_tex} };
\end{tikzpicture}
```
This is a basis because if \( Je \) and \( e \) are parallel, then ??? In particular, \( J_p \) is determined by a point in \( {\mathbb{R}}^2\setminus\left\{{\text{the }x{\hbox{-}}\text{axis}}\right\} \)
:::

### Sketch of Proof

Let \( \tilde {\mathbb{R}}^2 \) be an exotic \( {\mathbb{R}}^2 \).

#### Step 1

Choose a metric on \( \tilde {\mathbb{R}}^2 \) \( g \coloneqq\sum f_I g_i \) with \( g_i \) metrics on coordinate charts \( U_i \) and \( f_i \) a partition of unity.

#### Step 2

Find an almost complex structure on \( \tilde {\mathbb{R}}^2 \). Choosing an orientation of \( \tilde {\mathbb{R}}^2 \), \( g \) defines a unique almost complex structure \( J_p e \coloneqq f\in T_p \tilde {\mathbb{R}}^2 \) such that

-   \( g(e, e) = g(f, f) \)
-   \( g(e, f) = 0 \).
-   \( \left\{{e, f}\right\} \) is an oriented basis of \( T_p \tilde {\mathbb{R}}^2 \)

This is because after choosing \( e \), there are two orthogonal vectors, but only one choice yields an *oriented* basis.

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) {
\fontsize{25pt}{1em} 
  \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures/}{2021-01-15_14-39.pdf_tex}
  };
\end{tikzpicture}
```
#### Step 3

We then apply a theorem:

::: {.theorem title="?"}
Any almost complex structure on a surface comes from a complex structure, in the sense that there exist charts \( \varphi_i: U_i \to {\mathbb{C}} \) such that \( J \) is multiplication by \( i \).
:::

So \( d \varphi(J \cdot e) = i \cdot d \varphi_i (e) \), and \( (\tilde {\mathbb{R}}^2, J) \) is a complex manifold. Since it's simply connected, the Riemann Mapping Theorem shows that it's biholomorphic to \( {\mathbb{D}} \) or \( {\mathbb{C}} \), both of which are diffeomorphic to \( {\mathbb{R}}^2 \).

> See the Newlander-Nirenberg theorem, a result in complex geometry.

# Lecture 3 (Wednesday, January 20)

Today: some background material on sheaves, bundles, connections.

## Sheaves

::: {.definition title="Presheaves and Sheaves"}
Recall that if \( X \) is a topological space, a **presheaf** of abelian groups \( \mathcal{F} \) is an assignment \( U\to \mathcal{F}(U) \) of an abelian group to every open set \( U \subseteq X \) together with a restriction map \( \rho_{UV}: \mathcal{F}(U) \to \mathcal{F}(V) \) for any inclusion \( V \subseteq U \) of open sets. This data has to satisfying certain conditions:

a.  \( \mathcal{F}(\emptyset) = 0 \), the trivial abelian group.

b.  \( \rho_{UU}: \mathcal{F}(U) \to \mathcal{F}(U) = \operatorname{id}_{\mathcal{F}(U) } \)

c.  Compatibility if restriction is taken in steps: \( U \subseteq V \subseteq W \implies \rho_{VW} \circ \rho_{UV} = \rho_{UW} \).

We say \( \mathcal{F} \) is a **sheaf** if additionally:

d.  Given \( s_i \in \mathcal{F}(U_i) \) such that \( \rho_{U_i \cap U_j} (s_i) = \rho_{U_i \cap U_j} (s_j) \) implies that there exists a unique \( s\in \mathcal{F}(\bigcup_i U_i) \) such that \( \rho_{U_i}(s) = s_i \).

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) { 
\fontsize{45pt}{1em} 
\import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-20_13-59.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.example title="?"}
Let \( X \) be a topological manifold, then \( \mathcal{F}\coloneqq C^0({\,\cdot\,}, {\mathbb{R}}) \) the set of continuous functionals form a sheaf. We have a diagram

```{=tex}
\begin{tikzcd}
    U && {C^0(U; {\mathbb{R}})} \\
    \\
    V && {C^0(V; {\mathbb{R}})}
    \arrow[hook, from=3-1, to=1-1]
    \arrow["{\text{restrict cts. functions}}", dashed, hook, from=1-3, to=3-3]
    \arrow["{\mathcal{F}}", from=1-1, to=1-3]
    \arrow["{\mathcal{F}}"', from=3-1, to=3-3]
\end{tikzcd}
```
> [Link to diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJVIl0sWzAsMiwiViJdLFsyLDAsIkNeMChVOyBcXFJSKSJdLFsyLDIsIkNeMChWOyBcXFJSKSJdLFsxLDAsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzIsMywiXFx0ZXh0e3Jlc3RyaWN0IGN0cy4gZnVuY3Rpb25zfSIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFswLDIsIlxcbWF0aGNhbHtGfSJdLFsxLDMsIlxcbWF0aGNhbHtGfSIsMl1d)

Property (d) holds because given sections \( s_i \in C^0(U_i; {\mathbb{R}}) \) agreeing on overlaps, so \( { \left.{{s_i}} \right|_{{U_i \cap U_j}} } = { \left.{{s_j}} \right|_{{U_i \cap U_j}} } \), there exists a unique \( s\in C^0(\bigcup_i U_i; {\mathbb{R}}) \) such that \( { \left.{{s}} \right|_{{U_i}} } = s_i \) for all \( i \) -- continuous functions glue.
:::

::: {.remark}
Recall that we discussed various structures on manifolds: PL, continuous, smooth, complex-analytic, etc. We can characterize these by their sheaves of functions, which we'll denote \( {\mathcal{O}} \). For example, \( {\mathcal{O}}\coloneqq C^0({\,\cdot\,}; {\mathbb{R}}) \) for topological manifolds, and \( {\mathcal{O}}\coloneqq C^ \infty ({\,\cdot\,}; {\mathbb{R}}) \) is the sheaf for smooth manifolds. Note that this also works for PL functions, since pullbacks of PL functions are again PL. For complex manifolds, we set \( {\mathcal{O}} \) to be the sheaf of holomorphic functions.
:::

::: {.example title="Locally Constant Sheaves"}
Let \( A\in {\mathbf{Ab}} \) be an abelian group, then \( \underline{A} \) is the sheaf defined by setting \( \underline{A}(U) \) to be the locally constant functions \( U\to A \). E.g. let \( X \in {\mathbf{Mfd}}_{{\mathbf{Top}}} \) be a topological manifold, then \( \underline{{\mathbb{R}}}(U) = {\mathbb{R}} \) if \( U \) is connected since locally constant \( \implies \) globally constant in this case.
:::

::: {.warnings}
Note that the presheaf of constant functions doesn't satisfy (d)! Take \( {\mathbb{R}} \) and a function with two different values on disjoint intervals:

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) { 
\fontsize{41pt}{1em} 
\import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-20_14-11.pdf_tex} };
\end{tikzpicture}
```
Note that \( { \left.{{s_1}} \right|_{{U_1 \cap U_2}} } = { \left.{{s_2}} \right|_{{U_1 \cap U_2}} } \) since the intersection is empty, but there is no constant function that restricts to the two different values.
:::

## Bundles

::: {.remark}
Let \( \pi: \mathcal{E}\to X \) be a **vector bundle**, so we have local trivializations \( \pi ^{-1} (U) \xrightarrow{h_u} Y^d \times U \) where we take either \( Y={\mathbb{R}}, {\mathbb{C}} \), such that \( h_v \circ h_u ^{-1} \) preserves the fibers of \( \pi \) and acts linearly on each fiber of \( Y\times(U \cap V) \). Define
\[
t_{UV}: U \cap V \to \operatorname{GL}_d(Y)
\]
where we require that \( t_{UV} \) is continuous, smooth, complex-analytic, etc depending on the context.

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) { 
\fontsize{47pt}{1em} 
\import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-20_14-17.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.example title="Bundles over $S^1$"}
There are two \( {\mathbb{R}}^1 \) bundles over \( S^1 \):

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) { 
\fontsize{32pt}{1em} 
\import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-20_14-20.pdf_tex} };
\end{tikzpicture}
```
Note that the Mobius bundle is not trivial, but can be locally trivialized.
:::

::: {.remark}
We abuse notation: \( \mathcal{E} \) is also a sheaf, and we write \( \mathcal{E}(U) \) to be the set of sections \( s: U\to \mathcal{E} \) where \( s \) is continuous, smooth, holomorphic, etc where \( \pi \circ s = \operatorname{id}_U \). I.e. a bundle is a sheaf in the sense that its sections *form* a sheaf.
:::

::: {.example title="?"}
The trivial line bundle gives the sheaf \( {\mathcal{O}} \) : maps \( U \xrightarrow{s} U\times Y \) for \( Y={\mathbb{R}}, {\mathbb{C}} \) such that \( \pi \circ s = \operatorname{id} \) are the same as maps \( U\to Y \).
:::

::: {.definition title="$\\OO\\dash$modules"}
An **\( {\mathcal{O}}{\hbox{-}} \)module** is a sheaf \( \mathcal{F} \) such that \( \mathcal{F}(U) \) has an action of \( \mathcal{O}(U) \) compatible with restriction.
:::

::: {.example title="?"}
If \( \mathcal{E} \) is a vector bundle, then \( \mathcal{E}(U) \) has a natural action of \( {\mathcal{O}}(U) \) given by \( f\curvearrowright s \coloneqq fs \), i.e. just multiplying functions.
:::

::: {.example title="Non-example"}
The locally constant sheaf \( \underline{{\mathbb{R}}} \) is not an \( {\mathcal{O}}{\hbox{-}} \)module: there isn't natural action since the sections of \( {\mathcal{O}} \) are generally non-constant functions, and multiplying a constant function by a non-constant function doesn't generally give back a constant function.
:::

We'd like a notion of maps between sheaves:

::: {.definition title="Morphisms of Sheaves"}
A **morphism** of sheaves \( \mathcal{F} \to \mathcal{G} \) is a group morphism \( \varphi(U): \mathcal{F}(U) \to \mathcal{G}(U) \) for all opens \( U \subseteq X \) such that the diagram involving restrictions commutes:

```{=tex}
\begin{tikzcd}
\mathcal{F}(U) 
\ar[r, "\phi(U)"] 
\ar[d, "\rho_{UV}"]
&
\mathcal{G}(U) 
\ar[d, "\rho_{UV}"]
\\
\mathcal{F}(V) 
\ar[r, "\phi(V)"] 
&
\mathcal{F}(V) 
\end{tikzcd}
```
:::

::: {.example title="An $\\OO\\dash$module that is not a vector bundle."}
Let \( X = {\mathbb{R}} \) and define the **skyscraper sheaf** at \( p \in {\mathbb{R}} \) as
\[
{\mathbb{R}}_p(U) \coloneqq
\begin{cases}
{\mathbb{R}}& p\in U 
\\
0 & p\not\in U.
\end{cases}
.\]

The \( {\mathcal{O}}(U){\hbox{-}} \)module structure is given by
\[
{\mathcal{O}}(U) \times{\mathcal{O}}(U) &\to {\mathbb{R}}_p(U) \\
(f, s) &\mapsto f(p) s
.\]
This is not a vector bundle since \( {\mathbb{R}}_p(U) \) is not an infinite dimensional vector space, whereas the space of sections of a vector bundle is generally infinite dimensional (?). Alternatively, there are arbitrarily small punctured open neighborhoods of \( p \) for which the sheaf makes trivial assignments.
:::

::: {.example title="of morphisms"}
Let \( X = {\mathbb{R}}\in {\mathbf{Mfd}}_{\operatorname{Sm}} \) viewed as a smooth manifold, then multiplication by \( x \) induces a morphism of structure sheaves:
\[
(x \cdot): {\mathcal{O}}&\to {\mathcal{O}}\\
s & \mapsto x\cdot s
\]
for any \( x\in {\mathcal{O}}(U) \), noting that \( x\cdot s\in {\mathcal{O}}(U) \) again.

::: {.exercise title="?"}
Check that \( \ker \varphi \) is naturally a sheaf and \( \ker(\varphi)(U) = \ker (\varphi(U)): \mathcal{F}(U) \to \mathcal{G}(U) \)
:::

Here the kernel is trivial, i.e. on any open \( U \) we have \( (x\cdot):{\mathcal{O}}(U) \hookrightarrow{\mathcal{O}}(U) \) is injective. Taking the cokernel \( \operatorname{coker}(x\cdot) \) as a presheaf, this assigns to \( U \) the quotient presheaf \( {\mathcal{O}}(U) / x{\mathcal{O}}(U) \), which turns out to be equal to \( {\mathbb{R}}_0 \). So \( {\mathcal{O}}\to {\mathbb{R}}_0 \) by restricting to the value at \( 0 \), and there is an exact sequence
\[
0 \to {\mathcal{O}}\xrightarrow{(x\cdot)} {\mathcal{O}}\to {\mathbb{R}}_0 \to 0
.\]

This is one reason sheaves are better than vector bundles: the category is closed under taking quotients, whereas quotients of vector bundles may not be vector bundles.
:::

# Lecture 4 (Friday, January 22)

## The Exponential Exact Sequence

Let \( X = {\mathbb{C}} \) and consider \( {\mathcal{O}} \) the sheaf of holomorphic functions and \( {\mathcal{O}}^{\times} \) the sheaf of *nonvanishing* holomorphic functions. The former is a vector bundle and the latter is a sheaf of abelian groups. There is a map \( \exp: {\mathcal{O}}\to {\mathcal{O}}^{\times} \), the **exponential map**, which is the data \( \exp(U): {\mathcal{O}}(U) \to {\mathcal{O}}^{\times}(U) \) on every open \( U \) given by \( f\mapsto e^f \). There is a kernel sheaf \( 2\pi i \underline{{\mathbb{Z}}} \), and we get an exact sequence
\[
0 \to 2\pi i \underline{{\mathbb{Z}}} \to {\mathcal{O}}\xrightarrow{\exp} {\mathcal{O}}^{\times}\to \operatorname{coker}(\exp) \to 0
.\]

::: {.question}
What is the cokernel sheaf here?
:::

Let \( U \) be a contractible open set, then we can identify \( {\mathcal{O}}^{\times}(U) / \exp({\mathcal{O}}^{\times}(U)) = 1 \).

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) { 
\fontsize{44pt}{1em} 
\import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-22_13-58.pdf_tex} 
};
\end{tikzpicture}
```
Any \( f\in {\mathcal{O}}^{\times}(U) \) has a logarithm, say by taking a branch cut, since \( \pi_1(U) =0 \implies \log f \) has an analytic continuation. Consider the annulus \( U \) and the function \( z\in {\mathcal{O}}^{\times}(U) \), then \( z\not\in \exp({\mathcal{O}}(U)) \) -- if \( z=e^f \) then \( f=\log(z) \), but \( \log(z) \) has monodromy on \( U \):

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) { 
\fontsize{44pt}{1em} 
\import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-22_14-02.pdf_tex} 
};
\end{tikzpicture}
```
Thus on any sufficiently small open set, \( \operatorname{coker}(\exp) = 1 \). This is only a presheaf: there exists an open cover of the annulus for which \( { \left.{{z}} \right|_{{U_i}} } \), and so the naive cokernel doesn't define a sheaf. This is because we have a locally trivial section which glues to \( z \), which is nontrivial.

::: {.exercise title="?"}
Redefine the cokernel so that it is a sheaf. Hint: look at sheafification, which has the defining property \( {\operatorname{Hom}}_{{\operatorname{Presh}}}(\mathcal{G}, \mathcal{F}^{\operatorname{Presh}}) ={\operatorname{Hom}}_{{\operatorname{Sh}}}( \mathcal{G}, \mathcal{F}^{{\operatorname{Sh}}}) \) for any sheaf \( \mathcal{G} \).
:::

::: {.definition title="Global Sections Sheaf"}
The **global sections** sheaf of \( \mathcal{F} \) on \( X \) is given by \( H^0( X; \mathcal{F}) = \mathcal{F}(X) \).
:::

::: {.example title="?"}
```{=tex}
\envlist
```
-   \( C^ \infty (X) = H^0(X, C^ \infty ) \) are the smooth functions on \( X \)
-   \( VF(X) = H^0(X; T) \) are the smooth vector fields on \( X \) for \( T \) the tangent bundle
-   If \( X \) is a complex manifold then \( {\mathcal{O}}(X) = H^0(X; {\mathcal{O}}) \) are the globally holomorphic functions on \( X \).
-   \( H^0(X; {\mathbb{Z}}) = \underline{{\mathbb{Z}}}(X) \) are ??
:::

::: {.remark}
Given vector bundles \( V, W \), we have constructions \( V \oplus W, V \otimes W, V^\vee, {\operatorname{Hom}}(V, W) = V^\vee\otimes W, \operatorname{Sym}^n V, \bigwedge^p V \), and so on. Some of these work directly for sheaves:

-   \( \mathcal{F} \oplus \mathcal{G}(U) \coloneqq\mathcal{F}(U) \oplus \mathcal{G}(U) \)
-   For tensors, duals, and homs \( \mathscr{H}\kern-2pt\operatorname{om}(V, W) \) we only get presheaves, so we need to sheafify.
:::

::: {.warnings}
\( {\operatorname{Hom}}(V, W) \) will denote the *global* homomorphisms \( \mathscr{H}\kern-2pt\operatorname{om}(V, W)(X) \), which is a sheaf.
:::

::: {.example title="?"}
Let \( X^n \in {\mathbf{Mfd}}_{{\operatorname{sm}}} \) and let \( \Omega^p \) be the sheaf of smooth \( p{\hbox{-}} \)forms, i.e \( \bigwedge^p T^\vee \), i.e. \( \Omega^p(U) \) are the smooth \( p \) forms on \( U \), which are locally of the form \( \sum f_{i_1, \cdots, i_p} (x_1, \cdots, x_n) dx_{i_1} \wedge dx_{i_2} \wedge \cdots dx_{i_p} \) where the \( f_{i_1, \cdots, i_p} \) are smooth functions.

::: {.example title="Sub-example"}
Take \( X= S^1 \), writing this as \( {\mathbb{R}}/{\mathbb{Z}} \), we have \( \Omega^1(X) \ni dx \). There are two coordinate charts which differ by a translation on their overlaps, and \( dx(x + c) =dx \) for \( c \) a constant:

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) { 
\fontsize{44pt}{1em} 
\import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-22_14-22.pdf_tex} 
};
\end{tikzpicture}
```
:::

::: {.exercise title="?"}
Check that on a torus, \( dx_i \) is a well-defined 1-form.
:::
:::

::: {.remark}
Note that there is a map \( d: \Omega^p \to \Omega^{p+1} \) where \( \omega\mapsto d \omega \).
:::

::: {.warnings}
\( d \) is **not** a map of \( {\mathcal{O}}{\hbox{-}} \)modules: \( d(f\cdot \omega) = f\cdot \omega + {\color{red} df \wedge \omega} \), where the latter is a correction term. In particular, it is not a map of vector bundles, but is a map of sheaves of abelian groups since \( d ( \omega_1 + \omega_2) = d( \omega_1 ) + d ( \omega_2) \), making \( d \) a sheaf morphism.
:::

Let \( X \in {\mathbf{Mfd}}_{\mathbb{C}} \), we'll use the fact that \( TX \) is complex-linear and thus a \( {\mathbb{C}}{\hbox{-}} \)vector bundle.

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) { 
\fontsize{44pt}{1em} 
\import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-22_14-27.pdf_tex} 
};
\end{tikzpicture}
```
::: {.remark title="Subtlety 1"}
Note that \( \Omega^p \) for complex manifolds is \( \bigwedge^p T^\vee \), and so if we want to view \( X \in {\mathbf{Mfd}}_{\mathbb{R}} \) we'll write \( X_{{\mathbb{R}}} \). \( TX_{\mathbb{R}} \) is then a real vector bundle of rank \( 2n \).
:::

::: {.remark title="Subtlety 2"}
\( \Omega^p \) will denote *holomorphic* \( p{\hbox{-}} \)forms, i.e. local expressions \( \sum f_I(z_1, \cdots, z_n) \bigwedge dz_I \). For example, \( e^zdz\in \Omega^1({\mathbb{C}}) \) but \( z\mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu dz \) is not, where \( dz = dx + idy \). We'll use a different notation when we allow the \( f_I \) to just be smooth: \( A^{p, 0} \), the sheaf of \( (p, 0){\hbox{-}} \)forms. Then \( z\mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu dz\in A^{1, 0} \).
:::

::: {.remark}
Note that \( T^\vee X_{\mathbb{R}}\otimes _{\mathbb{C}}= A^{1, 0} \oplus A^{0, 1} \) since there is a unique decomposition \( \omega = fdz + gd\mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu \) where \( f,g \) are smooth. Then \( \Omega^d X_{\mathbb{R}}\otimes_{\mathbb{R}}{\mathbb{C}}= \bigoplus _{p+q=d} A^{p, q} \). Note that \( \Omega_{\setminus}^p \neq A^{p, q} \) and these are really quite different: the former are more like holomorphic bundles, and the latter smooth. Moreover \( \dim \Omega^p(X) < \infty \), whereas \( \Omega_{\setminus}^1 \) is infinite-dimensional.
:::

# Principal \( G{\hbox{-}} \)Bundles and Connections (Monday, January 25) {#principal-ghbox-bundles-and-connections-monday-january-25}

::: {.definition title="Principal Bundles"}
Let \( G \) be a (possibly disconnected) Lie group. Then a **principal \( G{\hbox{-}} \)bundle** \( \pi:P\to X \) is a space admitting local trivializations \( h_u: \pi ^{-1} (U) \to G \times U \) such that the transition functions are given by left multiplication by a continuous function \( t_{UV}: U \cap V \to G \).

```{=tex}
\begin{tikzpicture}
\fontsize{40pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-25_13-55.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.remark}
Setup: we'll consider \( TX \) for \( X\in {\mathbf{Mfd}}_{\operatorname{Sm}} \), and let \( g \) be a metric on the tangent bundle given by
\[
g_p: T_pX^{\otimes 2} \to {\mathbb{R}}
,\]
a symmetric bilinear form with \( g_p(u, v) \geq 0 \) with equality if and only if \( v=0 \).
:::

::: {.definition title="The Frame Bundle"}
Define \( {\operatorname{Frame}}_p(X) \coloneqq\left\{{\text{bases of } T_p X}\right\} \), and \( {\operatorname{Frame}}X \coloneqq\bigcup_{p\in X} {\operatorname{Frame}}_p X \).
:::

::: {.remark}
More generally, \( {\operatorname{Frame}}\mathcal{E} \) can be defined for any vector bundle \( \mathcal{E} \), so \( {\operatorname{Frame}}X \coloneqq{\operatorname{Frame}}TX \). Note that \( {\operatorname{Frame}}X \) is a principal \( \operatorname{GL}_n({\mathbb{R}}){\hbox{-}} \)bundle where \( n\coloneqq\operatorname{rank}(\mathcal{E}) \). This follows from the fact that the transition functions are fiberwise in \( \operatorname{GL}_n({\mathbb{R}}) \), so the transition functions are given by left-multiplication by matrices.
:::

::: {.remark title="Important"}
A principal \( G{\hbox{-}} \)bundle admits a \( G{\hbox{-}} \)action where \( G \) acts by *right* multiplication:
\[
P \times G \to P \\
( (g, x), h) \mapsto (gh, x)
.\]
This is necessary for compatibility on overlaps. **Key point**: the actions of left and right multiplication commute.
:::

::: {.definition title="Orthogonal Frame Bundle"}
The **orthogonal frame bundle** of a vector bundle \( \mathcal{E} \) equipped with a metric \( g \) is defined as \( {\operatorname{OFrame}}_p \mathcal{E}\coloneqq\left\{{\text{orthonormal bases of } \mathcal{E}_p}\right\} \), also written \( O_r({\mathbb{R}}) \) where \( r \coloneqq\operatorname{rank}( \mathcal{E}) \).
:::

::: {.remark}
The fibers \( P_x \to \left\{{x}\right\} \) of a principal \( G{\hbox{-}} \)bundle are naturally **torsors** over \( G \), i.e. a set with a free transitive \( G{\hbox{-}} \)action.
:::

::: {.definition title="?"}
Let \( \mathcal{E}\to X \) be a complex vector bundle. Then a **hermitian metric** is a hermitian form on every fiber, i.e. 
\[
h_p: \mathcal{E}_p \times\overline{\mathcal{E}_p } \to {\mathbb{C}}
.\]
where \( h_p(v, \mkern 1.5mu\overline{\mkern-1.5muv\mkern-1.5mu}\mkern 1.5mu ) \geq 0 \) with equality if and only if \( v=0 \). Here we define \( \overline{\mathcal{E}_p} \) as the fiber of the complex vector bundle \( \overline{\mathcal{E}} \) whose transition functions are given by the complex conjugates of those from \( \mathcal{E} \).
:::

::: {.remark}
Note that \( \mathcal{E}, \overline{\mathcal{E}} \) are genuinely different as complex bundles. There is a *conjugate-linear* map given by conjugation, i.e. \( L(cv) = \mkern 1.5mu\overline{\mkern-1.5muc\mkern-1.5mu}\mkern 1.5mu L(v) \), where the canonical example is
\[
{\mathbb{C}}^n &\to {\mathbb{C}}^n \\
(z_1, \cdots, z_n) &\mapsto (\mkern 1.5mu\overline{\mkern-1.5muz_1\mkern-1.5mu}\mkern 1.5mu, \cdots, \mkern 1.5mu\overline{\mkern-1.5muz_n\mkern-1.5mu}\mkern 1.5mu)
.\]
:::

::: {.definition title="Unitary Frame Bundle"}
We define the **unitary frame bundle** \( {\operatorname{UFrame}}(\mathcal{E}) \coloneqq\bigcup_p {\operatorname{UFrame}}(\mathcal{E})_p \), where at each point this is given by the set of orthogonal frames of \( \mathcal{E}_p \) given by \( (e_1, \cdots, e_n) \) where \( h(e_i , \mkern 1.5mu\overline{\mkern-1.5mue_j\mkern-1.5mu}\mkern 1.5mu ) = \delta_{ij} \).
:::

::: {.remark}
This is a principal \( G{\hbox{-}} \)bundle for \( G = U_r({\mathbb{C}}) \), the invertible matrices \( A_{/{\mathbb{C}}} \) satisfy \( A \overline{A}^t = \operatorname{id} \).
:::

::: {.example title="of more principal bundles"}
For \( G={\mathbb{Z}}/2{\mathbb{Z}} \) and \( X= S^1 \), the Möbius band is a principal \( G{\hbox{-}} \)bundle:

```{=tex}
\begin{tikzpicture}
\fontsize{43pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-25_14-25.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.example title="more principal bundles"}
For \( G={\mathbb{Z}}/2{\mathbb{Z}} \), for any (possibly non-oriented) manifold \( X \) there is an **orientation principal bundle** \( P \) which is locally a set of orientations on \( U \), i.e. 
\[
P\coloneqq\left\{{(x, O) {~\mathrel{\Big|}~}x\in X,\, O \text{ is an orientation of }T_p X}\right\}
.\]
Note that \( P \) is an oriented manifold, \( P\to X \) is a local isomorphism, and has a canonical orientation. (?) This can also be written as \( P = {\operatorname{Frame}}X / \operatorname{GL}_n^+({\mathbb{R}}) \), since an orientation can be specified by a choice of \( n \) linearly independent vectors where we identify any two sets that differ by a matrix of positive determinant.
:::

::: {.definition title="Associated Bundles"}
Let \( P\to X \) be a principal \( G{\hbox{-}} \)bundle and let \( G\to \operatorname{GL}(V) \) be a continuous representation. The **associated bundle** is defined as
\[
P\times_G V = \left\{{(p, v){~\mathrel{\Big|}~}p\in P,\, v\in V}\right\} / \sim && \text{where } (p, v) \sim (pg, g ^{-1} v)
,\]
which is well-defined since there is a right action on the first component and a left action on the second.
:::

::: {.example title="?"}
Note that \( {\operatorname{Frame}}(\mathcal{E}) \) is a \( \operatorname{GL}_r({\mathbb{R}}){\hbox{-}} \)bundle and the map \( \operatorname{GL}_r({\mathbb{R}}) \xrightarrow{\operatorname{id}} \operatorname{GL}({\mathbb{R}}^r) \) is a representation. At every fiber, we have \( G \times_G V = (p, v)/\sim \) where there is a unique representative of this equivalence class given by \( (e, pv) \). So \( P\times_G V_p \to \left\{{p}\right\} \cong V_x \).

::: {.exercise title="?"}
Show that \( {\operatorname{Frame}}( \mathcal{E}) \times_{\operatorname{GL}_r({\mathbb{R}})} {\mathbb{R}}^r \cong \mathcal{E} \). This follows from the fact that the transition functions of \( P \times_G V \) are given by left multiplication of \( t_{UV}: U \cap V \to G \), and so by the equivalence relation, \( \operatorname{im}t_{UV} \in \operatorname{GL}(V) \).
:::
:::

::: {.remark}
Suppose that \( M^3 \) is an oriented Riemannian 3-manifold. Them \( TM\to {\operatorname{Frame}}(M) \) which is a principal \( {\operatorname{SO}}(3){\hbox{-}} \)bundle. The universal cover is the double cover \( {\operatorname{SU}}(2) \to {\operatorname{SO}}(3) \), so can the transition functions be lifted? This shows up for spin structures, and we can get a \( {\mathbb{C}}^2 \) bundle out of this.
:::

# Wednesday, January 27

## Bundles and Connections

::: {.definition title="Connections"}
Let \( \mathcal{E}\to X \) be a vector bundle, then a **connection** on \( \mathcal{E} \) is a map of sheaves of abelian groups
\[
\nabla: \mathcal{E}\to \mathcal{E}\otimes\Omega^1_X  
\]
satisfying the *Leibniz rule*:
\[ 
\nabla (fs) = f \nabla s + s\otimes ds 
\]
for all opens \( U \) with \( f\in {\mathcal{O}}(U) \) and \( s\in \mathcal{E}(U) \). Note that this works in the category of complex manifolds, in which case \( \nabla \) is referred to as a **holomorphic connection**.
:::

::: {.remark}
A connection \( \nabla \) induces a map
\[
\tilde{\nabla}: \mathcal{E}\otimes\Omega^p &\to \mathcal{E}\otimes\Omega^{p+1} \\
s \otimes \omega &\mapsto \nabla s \wedge w + s\otimes d \omega
.\]
where \( \wedge: \Omega^p \otimes\Omega^1 \to \Omega^{p+1} \). The standard example is
\[
d: {\mathcal{O}}&\to \Omega^1 \\
f &\mapsto df
.\]
where the induced map is the usual de Rham differential.
:::

::: {.exercise title="?"}
Prove that the *curvature* of \( \nabla \), i.e. the map
\[
F_{\nabla} \coloneqq\nabla \circ \nabla: \mathcal{E}\to \mathcal{E}\otimes\Omega^2  
\]
is \( {\mathcal{O}}{\hbox{-}} \)linear, so \( F_{\nabla}(fs) = f\nabla \circ \nabla(s) \). Use the fact that \( \nabla s \in \mathcal{E}\otimes\Omega^1 \) and \( \omega \in \Omega^p \) and so \( \nabla s \otimes \omega \in \mathcal{E} \Omega^1 \otimes \Omega^p \) and thus reassociating the tensor product yields \( \nabla s \wedge \omega \in \mathcal{E}\otimes\Omega^{p+1} \).
:::

::: {.remark}
Why is this called a connection?

```{=tex}
\begin{tikzpicture}
\fontsize{25pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-27_14-05.pdf_tex} };
\end{tikzpicture}
```
This gives us a way to transport \( v\in \mathcal{E}_p \) over a path \( \gamma \) in the base, and \( \nabla \) provides a differential equation (a flow equation) to solve that lifts this path. Solving this is referred to as **parallel transport**. This works by pairing \( \gamma'(t) \in T_{ \gamma(t) } X \) with \( \Omega^1 \), yielding \( \nabla s = ( \gamma'(t)) = s( \gamma(t)) \) which are sections of \( \gamma \).

Note that taking a different path yields an endpoint in the same fiber but potentially at a different point, and \( F_\nabla = 0 \) if and only if the parallel transport from \( p \) to \( q \) depends only on the homotopy class of \( \gamma \).

> Note: this works for any bundle, so can become confusing in Riemannian geometry when all of the bundles taken are tangent bundles!
:::

::: {.example title="A classic example"}
The Levi-Cevita connection \( \nabla^{LC} \) on \( TX \), which depends on a metric \( g \). Taking \( X=S^2 \) and \( g \) is the round metric, there is nonzero curvature:

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-27_14-15.pdf_tex} };
\end{tikzpicture}
```
In general, every such transport will be rotation by some vector, and the angle is given by the area of the enclosed region.
:::

::: {.definition title="Flat Connection and Flat Sections"}
A connection is **flat** if \( F_\nabla = 0 \). A section \( s \in \mathcal{E}(U) \) is **flat** if it is given by
\[
L(U) \coloneqq\left\{{ s\in \mathcal{E}(U) {~\mathrel{\Big|}~}\nabla s = 0}\right\}
.\]
:::

::: {.exercise title="?"}
Show that if \( \nabla \) is flat then \( L \) is a *local system*: a sheaf that assigns to any sufficiently small open set a vector space of fixed dimension. An example is the constant sheaf \( \underline{{\mathbb{C}}^d} \). Furthermore \( {\operatorname{rank}}(L) = {\operatorname{rank}}(\mathcal{E}) \).
:::

::: {.remark}
Given a local system, we can construct a vector bundle whose transition functions are the same as those of the local system, e.g. for vector bundles this is a fixed matrix, and in general these will be constant transition functions. Equivalently, we can take \( L\otimes_{\mathbb{R}}{\mathcal{O}} \), and \( L\otimes 1 \) form flat sections of a connection.
:::

## Sheaf Cohomology

::: {.definition title="?"}
Let \( \mathcal{F} \) be a sheaf of abelian groups on a topological space \( X \), and let \( \mathfrak{U} \coloneqq\left\{{U_i}\right\} \rightrightarrows X \) be an open cover of \( X \). Let \( U_{i_1, \cdots, i_p} \coloneqq U_{i_1} \cap U_{i_2} \cap\cdots \cap U_{i_p} \). Then the **Čech Complex** is defined as
\[
C_{\mathfrak{U}}^p(X, \mathcal{F}) \coloneqq\prod_{i_1 < \cdots < i_p} \mathcal{F}(U_{i_1, \cdots, i_p})   
\]
with a differential
\[
{{\partial}}^p: C_{\mathfrak{U}}^p(X, \mathcal{F}) &\to C_{\mathfrak{U}}^{p+1}(X \mathcal{F}) \\
\sigma &\mapsto ({{\partial}}\sigma)_{i_0, \cdots, i_p} \coloneqq\prod_j (-1)^j { \left.{{\sigma_{i_0, \cdots, \widehat{i_j}, \cdots, i_p}}} \right|_{{U_{i_0, \cdots, i_p}}} }
\]
where we've defined this just on one given term in the product, i.e. a \( p{\hbox{-}} \)fold intersection.
:::

::: {.exercise title="?"}
Check that \( {{\partial}}^2 = 0 \).
:::

::: {.remark}
The Čech cohomology \( H^p_{\mathfrak{U}}(X, \mathcal{F}) \) with respect to the cover \( \mathfrak{U} \) is defined as \( \ker {{\partial}}^p/\operatorname{im}{{\partial}}^{p-1} \). It is a difficult theorem, but we write \( H^p(X, \mathcal{F}) \) for the Čech cohomology for any sufficiently refined open cover when \( X \) is assumed paracompact.
:::

::: {.example title="?"}
Consider \( S^1 \) and the constant sheaf \( \underline{{\mathbb{Z}}} \):

```{=tex}
\begin{tikzpicture}
\fontsize{42pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-27_14-40.pdf_tex} };
\end{tikzpicture}
```
ere we have
\[
C^0(S^1, \underline{{\mathbb{Z}}}) = \underline{{\mathbb{Z}}}(U_1) \oplus \underline{{\mathbb{Z}}}(U_2) = \underline{{\mathbb{Z}}} \oplus \underline{{\mathbb{Z}}}
,\]
and
\[
C^1(S^1, {\mathbb{Z}}) = \bigoplus_{\substack{ \text{double} \\ \text{intersections}} } \underline{{\mathbb{Z}}}(U_{ij})  \underline{{\mathbb{Z}}}(U_{12}) = \underline{{\mathbb{Z}}}(U_1 \cap U_{2}) = \underline{{\mathbb{Z}}} \oplus \underline{{\mathbb{Z}}}
.\]
We then get
\[
C^0(S^1, \underline{{\mathbb{Z}}}) &\xrightarrow{{{\partial}}} C^1(S^1, \underline{{\mathbb{Z}}}) \\
{\mathbb{Z}}\oplus {\mathbb{Z}}&\to {\mathbb{Z}}\oplus {\mathbb{Z}}\\
(a, b) &\mapsto (a-b, a-b)
,\]

Which yields \( H^*(S^1, \underline{{\mathbb{Z}}}) = [{\mathbb{Z}}, {\mathbb{Z}}, 0, \cdots] \).
:::

# Sheaf Cohomology (Friday, January 29)

Last time: we defined the Čech complex \( C_{\mathfrak{U} }^p(X, \mathcal{F} ) \coloneqq\prod_{i_1, \cdots, i_p} \mathcal{F} (U_{i_1} \cap\cdots \cap U_{i_p}) \) for \( \mathfrak{U}\coloneqq\left\{{U_i}\right\} \) is an open cover of \( X \) and \( F \) is a sheaf of abelian groups.

::: {.fact}
If \( \mathfrak{U} \) is a sufficiently fine cover then \( H^p_{\mathfrak{U}}(X, \mathcal{F}) \) is independent of \( \mathfrak{U} \), and we call this \( H^p(X; \mathcal{F}) \).
:::

::: {.remark}
Recall that we computed \( H^p(S^1, \underline{{\mathbb{Z}}} = [{\mathbb{Z}}, {\mathbb{Z}}, 0, \cdots] \).
:::

::: {.theorem title="?"}
Let \( X \) be a paracompact and locally contractible topological space. Then \( H^p(X, \underline{{\mathbb{Z}}}) \cong H^p_{{\operatorname{Sing}}}(X, \underline{{\mathbb{Z}}}) \). This will also hold more generally with \( \underline{{\mathbb{Z}}} \) replaced by \( \underline{A} \) for any \( A\in {\mathbf{Ab}} \).
:::

::: {.definition title="Acyclic Sheaves"}
We say \( \mathcal{F} \) is *acyclic* on \( X \) if \( H^{> 0 }(X; \mathcal{F}) = 0 \).
:::

::: {.remark}
How to visualize when \( H^1(X; \mathcal{F}) = 0 \):

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-01-29_14-01.pdf_tex} };
\end{tikzpicture}
```
On the intersections, we have \( \operatorname{im}{{\partial}}^0 = \left\{{ (s_{i} - s_{j})_{ij} {~\mathrel{\Big|}~}s_i \in \mathcal{F}(U_i)}\right\} \), which are *cocycles*. We have \( C^1(X; \mathcal{F}) \) are collections of sections of \( \mathcal{F} \) on every double overlap. We can check that \( \ker {{\partial}}^1 = \left\{{ (s_{ij}) {~\mathrel{\Big|}~}s_{ij} - s_{ik} + s_{jk} = 0}\right\} \), which is the cocycle condition. From the exercise from last class, \( {{\partial}}^2 = 0 \).
:::

::: {.theorem title="(Important!)"}
Let \( X \) be a paracompact Hausdorff space and let
\[
0 \to \mathcal{F}_1 \xrightarrow{\varphi} \mathcal{F}_2 \to \mathcal{F}_3 \to 0   
\]
be a SES of sheaves of abelian groups, i.e. \( \mathcal{F}_3 = \operatorname{coker}(\varphi) \) and \( \varphi \) is injective. Then there is a LES in cohomology:

```{=tex}
\begin{tikzcd}
    0 && {H^0(X; \mathcal{F}_1)} && {H^0(X; \mathcal{F}_2)} && {H^0(X; \mathcal{F}_3)} \\
    \\
    && {H^1(X; \mathcal{F}_1)} && {H^1(X; \mathcal{F}_2)} && {H^1(X; \mathcal{F}_3)} \\
    \\
    && \cdots
    \arrow[from=1-7, to=3-3]
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow[from=3-7, to=5-3]
\end{tikzcd}
```
:::

::: {.example title="?"}
For \( X \) a manifold, we can define a map and its cokernel sheaf:

\[
0 \to \underline{{\mathbb{Z}}} \xrightarrow{\cdot 2} \underline{{\mathbb{Z}}} \to \underline{{\mathbb{Z}}/2{\mathbb{Z}}} \to 0
.\]
Using that cohomology of constant sheaves reduces to singular cohomology, we obtain a LES in homology:

```{=tex}
\begin{tikzcd}
    0 && {H^0(X; {\mathbb{Z}})} && {H^0(X; {\mathbb{Z}})} && {H^0(X; {\mathbb{Z}}/2{\mathbb{Z}})} \\
    \\
    && {H^1(X; {\mathbb{Z}})} && {H^1(X; {\mathbb{Z}})} && {H^1(X; {\mathbb{Z}}/2{\mathbb{Z}})} \\
    \\
    && \cdots
    \arrow[from=1-7, to=3-3]
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow[from=3-7, to=5-3]
\end{tikzcd}
```
:::

::: {.corollary title="of theorem"}
Suppose \( 0 \to \mathcal{F}\to I_0 \xrightarrow{d_0} I_1 \xrightarrow{d_1} I_2 \xrightarrow{d_2} \cdots \) is an exact sequence of sheaves, so on any sufficiently small set kernels equal images., and suppose \( I_n \) is acyclic for all \( n\geq 0 \). This is referred to as an **acyclic resolution**. Then the homology can be computed at \( H^p(X; \mathcal{F}) = \ker (I_p(X) \to I_{p+1}(X)) / \operatorname{im}(I_{p-1}(X) \to I_p(X) ) \).

> Note that locally having kernels equal images is different than satisfying this globally!
:::

::: {.proof title="of corollary"}
This is a formal consequence of the existence of the LES. We can split the LES into a collection of SESs of sheaves:

\[
0 \to \mathcal{F}\to I_0 \xrightarrow{d_0} \operatorname{im}(d_0) \to 0 && \operatorname{im}(d_0) = \ker(d_1) \\ 
0 \to \ker(d_1) \hookrightarrow I_1 \to I_1/\ker (d_1) = \operatorname{im}(d_1) && \operatorname{im}(d_1) = \ker(d_2) \\ 
.\]
Note that these are all exact sheaves, and thus only true on small sets. So take the associated LESs. For the SES involving \( I_0 \), we obtain:

```{=tex}
\begin{tikzcd}
    {} \\
    \\
    {} &&&& \cdots \\
    \\
    {H^{p-1}(\mathcal{F})} && {H^{p-1}(\mathcal{I_0}) = 0} && {H^{p-1}(\mathcal{\operatorname{im}(d_0)})} \\
    \\
    {H^p(\mathcal{F})} && {\cdots = 0}
    \arrow[from=5-1, to=5-3]
    \arrow[from=5-3, to=5-5]
    \arrow["\cong", from=5-5, to=7-1]
    \arrow[from=7-1, to=7-3]
    \arrow[from=3-5, to=5-1]
\end{tikzcd}
```
The middle entries vanish since \( I_* \) was assumed acyclic, and so we obtain \( H^p(\mathcal{F}) \cong H^{p-1}(\operatorname{im}d_0) \cong H^{p-1}(\ker d_1) \). Now taking the LES associated to \( I_1 \), we get \( H^{p-1}(\ker d_1) \cong H^{p-2}(\operatorname{im}d_1) \). Continuing this inductively, these are all isomorphic to \( H^p(\mathcal{F}) \cong H^0(\ker d_p)/ d_{p-1}(H^0(I_{p-1})) \) after the \( p \)th step.
:::

::: {.corollary title="of the previous corollary"}
Suppose \( \mathfrak{U}\rightrightarrows X \), then if \( \mathcal{F} \) is acyclic on each \( U_{i_1, \cdots, i_p} \), then \( \mathfrak{U} \) is sufficiently fine to compute Čech cohomology, and \( H^p_{\mathfrak{U}}(X; \mathcal{F}) \cong H^p(X; \mathcal{F}) \).
:::

::: {.proof title="?"}
See notes.
:::

::: {.corollary title="of corollary"}
Let \( X \in {\mathbf{Mfd}}_\setminus \), then \( H^p(X, \underline{{\mathbb{R}}}) = H^p_{\mathrm{dR}}(X;\ RR) \).
:::

::: {.proof title="?"}
Idea: construct an acyclic resolution of the sheaf \( \underline{{\mathbb{R}}} \) on \( M \). The following exact sequence works:

\[
0 \to \underline{{\mathbb{R}}} \to {\mathcal{O}}\xrightarrow{d} \Omega^1 \xrightarrow{d} \Omega^2 \to \cdots
.\]
So we start with locally constant functions, then smooth functions, then smooth 1-forms, and so on. This is an exact sequence of sheaves, but importantly, not exact on the total space. To check this, it suffices to show that \( \ker d^p = \operatorname{im}d^{p-1} \) on any contractible coordinate chart. In other words, we want to show that if \( d \omega=0 \) for \( \omega\in \Omega^p({\mathbb{R}}^n) \) then \( \omega= d \alpha \) for some \( \alpha\in \Omega^{p-1}({\mathbb{R}}^n) \). This is true by integration! Using the previous corollary, \( H^p(X; \underline{{\mathbb{R}}}) = \ker(\Omega^p(X) \xrightarrow{d} \Omega^{p+1}(X) ) / \operatorname{im}(\Omega^{p-1}(X) \xrightarrow{d} \Omega^p(X)) \).
:::

> Check Hartshorne to see how injective resolutions line up with derived functors!

# Monday, February 01

::: {.remark}
Last time \( \underline{{\mathbb{R}}} \) on a manifold \( M \) has a resolution by vector bundles:
\[
0 \to \underline{{\mathbb{R}}} \hookrightarrow\Omega^1 \xrightarrow{d} \Omega^2 \xrightarrow{d} \cdots
.\]
This is an exact sequence of sheaves of any smooth manifold, since locally \( d \omega = 0 \implies \omega = d \alpha \) (by the *Poincaré \( d {\hbox{-}} \)lemma*). We also want to know that \( \Omega^k \) is an acyclic sheaf on a smooth manifold.
:::

::: {.exercise title="?"}
Let \( X\in Top \) and \( \mathcal{F}\in {\operatorname{Sh}}({\mathbf{Ab}})_{/X} \). We say \( \mathcal{F} \) is **flasque** if and only if for all \( U \supseteq V \) the map \( \mathcal{F}(U) \xrightarrow{\rho_{UV}} \mathcal{F}(V) \) is surjective. Show that \( \mathcal{F} \) is acyclic, i.e. \( H^i(X; \mathcal{F}) = 0 \). This can also be generalized with a POU.
:::

::: {.example title="?"}
The function \( 1/x\in {\mathcal{O}}({\mathbb{R}}\setminus\left\{{0}\right\}) \), but doesn't extend to a continuous map on \( {\mathbb{R}} \). So the restriction map is not surjective.
:::

::: {.remark}
Any vector bundle on a smooth manifold is acyclic. Using the fact that \( \Omega^k \) is acyclic and the above resolution of \( \underline{{\mathbb{R}}} \), we can write \( H^k(X; {\mathbb{R}}) = \ker(d_k) / \operatorname{im}d_{k-1} \coloneqq H^k_{dR}(X; {\mathbb{R}}) \).
:::

::: {.remark}
Now letting \( X \in {\mathbf{Mfd}}_{\mathbb{C}} \), recalling that \( \Omega^p \) was the sheaf of holomorphic \( p {\hbox{-}} \)forms. Locally these are of the form \( \sum_{{\left\lvert {I} \right\rvert} = p} f_I(\mathbf{z}) dz^I \) where \( f_I(\mathbf{z}) \) is holomorphic. There is a resolution
\[
0 \xrightarrow{} \Omega^p \xrightarrow{} A^{p, 0}
,\]
where in \( A^{p, 0} \) we allowed also \( f_I \) are *smooth*. These are the same as bundles, but we view sections differently. The first allows only holomorphic sections, whereas the latter allows smooth sections. What can you apply to a smooth \( (p, 0) \) form to check if it's holomorphic?
:::

::: {.example title="?"}
For \( p=0 \), we have
\[
0 \to {\mathcal{O}}\to A^{0, 0}
.\]
where we have the sheaf of holomorphic functions mapping to the sheaf of smooth functions. We essentially want a version of checking the Cauchy-Riemann equations.
:::

::: {.definition title="?"}
Let \( \omega\in A^{p, q}(X) \) where
\[
d \omega = \sum {\frac{\partial f_I}{\partial z_j}\,} dz^j \wedge dz^I \wedge d\mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu^J + \sum_j {\frac{\partial f_I}{\partial \mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu_j}\,} d\mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu^j \wedge dz^I d\mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu^J\coloneqq{\partial}+ \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu 
\]
with \( {\left\lvert {I} \right\rvert} = p, {\left\lvert {J} \right\rvert} = q \).
:::

::: {.example title="?"}
The function \( f(z) = z\mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu \in A^{0, 0}({\mathbb{C}}) \) is smooth, and \( df = \mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu dz + z d\mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu \). This can be checked by writing \( z^j = x^j + iy^j \) and \( \mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu^j = x^j - iy_j \), and \( {\frac{\partial }{\partial \mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu}\,} g = 0 \) if and only if \( g \) is holomorphic. Here we get \( {\partial}\omega \in A^{p+1, q}(X) \) and \( \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu \in A^{p, q+1}(X) \), and we can write \( d(z \mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu) = {\partial}(z\mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu) + \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu(z\mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu) \).
:::

::: {.definition title="Cauchy-Riemann Equations"}
Recall the Cauchy-Riemann equations: \( \omega \) is a holomorphic \( (p, 0) {\hbox{-}} \)form on \( {\mathbb{C}}^n \) if and only if \( \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu\omega = 0 \).
:::

::: {.remark}
Thus to extend the previous resolution, we should take
\[
0 \to \Omega^p \hookrightarrow A^{p, 0} \xrightarrow{\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu} A^{p, 1} \xrightarrow{\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu} A^{p, 2} \to \cdots
.\]
The fact that this is exact is called the *Poincaré \( \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu{\hbox{-}} \)lemma*.
:::

::: {.remark}
There are no bump functions in the holomorphic world, and since \( \Omega^p \) is a holomorphic bundle, it may not be acyclic. However, the \( A^{p, q} \) *are* acyclic (since they are smooth vector bundles and thus admit POUs), and we obtain
\[
H^q(X; \Omega^p) = \ker( \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu_q) / \operatorname{im}(\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu_{q-1})
.\]
Note the similarity to \( H_{\mathrm{dR}} \), using \( \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu \) instead of \( d \). This is called **Dolbeault cohomology**, and yields invariants of complex manifolds: the **Hodge numbers** \( h^{p, q}(X) \coloneqq\dim_{\mathbb{C}}H^q(X; \Omega^p) \). These are analogies:

  Smooth                           Complex
  -------------------------------- ------------------------------
  \( \underline{{\mathbb{R}}} \)   \( \Omega^p \)
  \( \Omega^k \)                   \( A^{p, q} \)
  Betti numbers \( \beta_k \)      Hodge numbers \( h^{p, q} \)

Note the slight overloading of terminology here!
:::

::: {.theorem title="Properties of Singular Cohomology"}
Let \( X\in {\mathbf{Top}} \), then \( H_{{\operatorname{Sing}}}^i(X; {\mathbb{Z}}) \) satisfies the following properties:

-   Functoriality: given \( f\in {\operatorname{Hom}}_{\mathbf{Top}}(X, Y) \), there is a pullback \( f^*: H^i(Y; {\mathbb{Z}}) \to H^i(X; {\mathbb{Z}}) \).

-   The cap product: a pairing
    \[
    H^i(X; {\mathbb{Z}}) \otimes_{\mathbb{Z}}H_j(X; {\mathbb{Z}}) &\to H_{j-i}(X; {\mathbb{Z}}) \\
    \varphi\otimes\sigma &\mapsto \varphi\qty{{ \left.{{\sigma}} \right|_{{\Delta_{0, \cdots, j}}} }} { \left.{{ \sigma}} \right|_{{\Delta_{i, \cdots, j}}} }
    .\]
    This makes \( H_* \) a module over \( H^* \).

-   There is a ring structure induced by the cup product:
    \[
    H^i(X; {\mathbb{R}}) \times H^j(X; {\mathbb{R}})\to H^{i+j}(X; {\mathbb{R}}) && \alpha\cup \beta &= (-1)^{ij} \beta \cup \alpha
    .\]

-   Poincaré Duality: If \( X \) is an oriented manifold, there exists a fundamental class \( [X] \in H_{n}(X; {\mathbb{Z}}) \cong {\mathbb{Z}} \) and \( ({\,\cdot\,})\cap X: H^i \to H_{n-i} \) is an isomorphism.
:::

::: {.remark}
Let \( M \subset X \) be a submanifold where \( X \) is a smooth oriented \( n{\hbox{-}} \)manifold. Then \( M \hookrightarrow X \) induces a pushforward \( H_n(M; {\mathbb{Z}}) \xrightarrow{\iota_*} H_n(X; {\mathbb{Z}}) \) where \( \sigma \mapsto \iota \circ \sigma \). Using Poincaré duality, we'll identify \( H_{\dim M}(X; {\mathbb{Z}}) \to H^{\operatorname{codim}M}(X; {\mathbb{Z}}) \) and identify \( [M] = PD( \iota_*( [M])) \). In this case, if \( M\pitchfork N \) then \( [M] \cap [N] = [M \cap N] \), i.e. the cap product is given by intersecting submanifolds.
:::

::: {.warnings}
This can't always be done! There are counterexamples where homology classes can't be represented by submanifolds.
:::

# Wednesday, February 03

Consider an oriented surface, and take two oriented submanifolds

```{=tex}
\begin{tikzpicture}
\fontsize{39pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-02-03_13-54.pdf_tex} };
\end{tikzpicture}
```
We can then take the fundamental classes of the submanifolds, say \( [\alpha], [\beta] \in H^1(X; {\mathbb{Z}}) \xrightarrow{PD} H^1(X, {\mathbb{Z}}) \). Here \( T_p \alpha \oplus T_p \beta = T_p X \), since the intersections are transverse. Since \( \alpha, \beta \) are oriented, let \( \left\{{ e }\right\} \) be a basis of \( T_p \alpha \) (up to \( {\mathbb{R}}^+ \)) and similarly \( \left\{{ f }\right\} \) a basis of \( T_p \beta \). We can then ask if \( \left\{{ e, f }\right\} \) constitutes an *oriented* basis of \( T_pX \). If so, we write \( \alpha \cdot_p \beta \coloneqq+1 \) and otherwise \( \alpha \cdot_p \beta = - 1 \). We thus have
\[
[ \alpha] \smile[ \beta] \in H^2(X; {\mathbb{Z}}) \xrightarrow{PD} H_0(X; {\mathbb{Z}}) = {\mathbb{Z}}
\]
since \( X \) is connected. We can thus define the **intersection form** \( \alpha\cdot \beta\coloneqq[ \alpha] \smile[ \beta] \). In general if \( A, B \) are oriented transverse submanifolds of \( M \) which are themselves oriented, we'll have \( [A] \smile[B] = [A \cap B] \). We need to be careful: how do we orient the intersection? This is given by comparing the orientations on \( A \) and \( B \) as before.

::: {.example title="?"}
If \( \dim M = \dim A + \dim B \), then any \( p\in A \cap B \) is oriented by comparing \( \left\{{ \mathrm{or}_A, \mathrm{or}_B}\right\} \) to \( \mathrm{or}_M \).

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-02-03_14-03.pdf_tex} };
\end{tikzpicture}
```
Here it suffices to check that \( \left\{{ e, f_1, f_2 }\right\} \) is an oriented basis of \( T_p M \).
:::

::: {.example title="?"}
In this case, \( [\alpha] \smile[\beta] = 0 \) and so \( \alpha\cdot \beta = 0 \):

```{=tex}
\begin{tikzpicture}
\fontsize{44pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-02-03_14-06.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.remark}
Note that cohomology with \( {\mathbb{Z}} \) coefficients can be defined for any topological space, and Poincaré duality still holds.
:::

::: {.remark}
We'll be considering \( M = M^4 \), smooth 4-manifolds. How to visualize: take a 3-manifold and cross it with time!

```{=html}
<!--\begin{tikzpicture}-->
```
```{=html}
<!--\fontsize{42pt}{1em} -->
```
```{=html}
<!--\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-02-03_14-08.pdf_tex} };-->
```
```{=html}
<!--\end{tikzpicture}-->
```
![Picking one basis element in the time direction](figures/time_manifold_glitch_workaround.png)

Here \( ? \) is oriented in the "forward time" direction, and this is a surface at time \( t=0 \). Where \( A\cdot B = +1 \), since \( \left\{{ e_1, e_2, f_1, f_2 }\right\} = \left\{{ e_x, e_y, e_z, e_t }\right\} \) is a oriented basis for \( {\mathbb{R}}^4 \). For \( ?^2 \), switching the order of \( \alpha, \beta \) no longer yields an oriented basis, but in this case it is \( ? \) and \( A\cdot B = B \cdot A \). This is because
\[
A \coloneqq
\begin{bmatrix}
0 &  1
\\
1 & 0 
\end{bmatrix}
\implies \det(A)
=-1 &&
\det 
\begin{bmatrix}
A &  
\\
 & A 
\end{bmatrix}
 = 1
.\]
:::

::: {.remark}
Let \( M^{2n} \) be an oriented manifold, then the cup product yields a bilinear map \( H^n(M; {\mathbb{Z}}) \otimes H^n(M; {\mathbb{Z}}) \to {\mathbb{Z}} \) which is symmetric when \( n \) is odd and antisymmetric (or symplectic) when \( n \) is even. This is a **perfect** (or **unimodular**) pairing (potentially after modding out by torsion) which realizes an isomorphism:
\[
\qty{ H^n(M; {\mathbb{Z}})/{\operatorname{tors}}}^\vee&\xrightarrow{\sim} H^n(M; {\mathbb{Z}})/{\operatorname{tors}}\\
\alpha \smile{\,\cdot\,}&\mapsfrom \alpha
,\]
where the LHS are linear functionals on cohomology.
:::

::: {.remark}
Recall the universal coefficients theorem:
\[
H^i(X; {\mathbb{Z}})/{\operatorname{tors}}\cong \qty{ H_i(X; {\mathbb{Z}})/{\operatorname{tors}}}^\vee
.\]
The general theorem shows that \( H^i(X; {\mathbb{Z}})_{\operatorname{tors}}= H_{i-1}(X; {\mathbb{Z}})_{\operatorname{tors}} \).
:::

::: {.remark}
Note that if \( M \) is an oriented 4-manifold, then

```{=tex}
\begin{tikzcd}
    && {\operatorname{tors}}& {\text{torsionfree}} &&&&& {\operatorname{tors}}& {\text{torsionfree}} \\
    {H^0} && 0 & {\mathbb{Z}}&&& {H_0} && 0 & {\mathbb{Z}}\\
    {H^1} && 0 & \textcolor{rgb,255:red,214;green,92;blue,92}{{\mathbb{Z}}^{\beta_1}} &&& {H_1} && A & \textcolor{rgb,255:red,214;green,92;blue,214}{{\mathbb{Z}}^{\beta_1}} \\
    {H^2} && A & \textcolor{rgb,255:red,92;green,92;blue,214}{{\mathbb{Z}}^{\beta_2}} & {} & {{}} & {H_2} && A & \textcolor{rgb,255:red,92;green,92;blue,214}{{\mathbb{Z}}^{\beta_2}} \\
    {H^3} && A & \textcolor{rgb,255:red,214;green,92;blue,214}{{\mathbb{Z}}^{\beta_1}} &&& {H_3} && 0 & \textcolor{rgb,255:red,214;green,92;blue,92}{{\mathbb{Z}}^{\beta_1}} \\
    {H^4} && 0 & {\mathbb{Z}}&&& {H_4} && 0 & {\mathbb{Z}}
    \arrow["PD", from=4-5, to=4-6]
\end{tikzcd}
```
In particular, if \( M \) is simply connected, then \( H_1(M) = {\mathbf{Ab}}(\pi_1(M)) = 0 \), which forces \( A = 0 \) and \( \beta_1 = 0 \).
:::

::: {.definition title="Lattice"}
A **lattice** is a finite-dimensional free \( {\mathbb{Z}}{\hbox{-}} \)module \( L \) together with a symmetric bilinear form
\[
\cdot: L^{\otimes 2} &\to {\mathbb{Z}}\\
\ell \otimes m &\mapsto \ell \cdot m
.\]
The lattice \( (L, \cdot) \) is **unimodular** if and only if the following map is an isomorphism:
\[
L &\to L^\vee\\
\ell &\mapsto \ell \cdot ({\,\cdot\,})
.\]
:::

::: {.remark}
How to determine if a lattice is unimodular: take a basis \( \left\{{ e_1, \cdots, e_n }\right\} \) of \( L \) and form the *Gram matrix* \( M_{ij} \coloneqq( e_i \cdot e_j) \in \operatorname{Mat}(n\times n, {\mathbb{Z}})^{\operatorname{Sym}} \). Then \( (L, \cdot) \) is unimodular if and only if \( \det(M) = \pm 1 \) if and only if \( M ^{-1} \) is integral. In this case, the rows of \( M ^{-1} \) will form a basis of the dual basis.
:::

::: {.definition title="?"}
The **index** of a lattice is \( {\left\lvert { \det M} \right\rvert} \).
:::

::: {.exercise title="?"}
Prove that \( {\left\lvert {\det M} \right\rvert} = {\left\lvert { L^\vee/ L } \right\rvert} \).
:::

::: {.remark}
In general, for \( M^{4k} \), the \( H^{2k}/{\operatorname{tors}} \) is unimodular. For \( M^{4k+2} \), the \( H^{2k+1}/{\operatorname{tors}} \) is a unimodular *symplectic* lattice, which is obtained by replacing the word "symmetric" with "antisymmetric" everywhere above.
:::

::: {.example title="?"}
For the torus, since the dimension is \( 2 \pmod 4 \), you get the skew-symmetric matrix
\[
\begin{bmatrix}
0  & 1
\\
-1 & 0
\end{bmatrix}
.\]

```{=tex}
\todo[inline]{Check!}
```
:::

::: {.definition title="?"}
A lattice is **nondegenerate** if \( \det M \neq 0 \).
:::

::: {.definition title="?"}
The tensor product \( L \otimes_{\mathbb{Z}}{\mathbb{R}} \) is a vector space with an \( {\mathbb{R}}{\hbox{-}} \)valued symmetric bilinear form. This allows extending the lattice from \( {\mathbb{Z}}^n \) to \( {\mathbb{R}}^n \).
:::

::: {.remark}
If \( (L, \cdot) \) is nondegenerate, then Gram-Schmidt will yield an orthonormal basis \( \left\{{ v_i }\right\} \). The number of positive norm vectors is an invariant, so we obtain \( {\mathbb{R}}^{p, q} \) where \( p \) is the number of \( +1 \)s in the Gram matrix and \( q \) is the number of \( -1 \)s. The **signature** of \( (L, {\,\cdot\,}) \) is \( (p, q) \), or by abuse of notation \( p-q \). This is an invariant of the 4-manifold, as is the lattice itself \( H^2(X; {\mathbb{Z}})/{\operatorname{tors}} \) equipped with the intersection form.
:::

::: {.remark}
There is a perfect pairing called the **linking pairing**:

\[
H^i(X; {\mathbb{Q}}/{\mathbb{Z}}) \otimes H^{n-i-1}(X; {\mathbb{Q}}/{\mathbb{Z}}) \to {\mathbb{Q}}/{\mathbb{Z}}
.\]

```{=tex}
\begin{tikzpicture}
\fontsize{44pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-02-03_14-43.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.remark}
\( A \cdot B \coloneqq\sum_{p\in A \cap B} \operatorname{sgn}_p(A, B) \), where \( A \pitchfork B \) and this turns out to be equal to the cup product. This works for topological manifolds -- but there are no tangent spaces there, so taking oriented bases doesn't work so well! You can also view
\[
[A] \smile[\omega] = \int_A \omega
.\]
:::

# Friday, February 05

::: {.remark}
Recall that a lattice is **unimodular** if the map \( L\to L^\vee\coloneqq{\operatorname{Hom}}(L, {\mathbb{Z}}) \) is an isomorphism, where \( \ell \mapsto \ell \cdot ({\,\cdot\,}) \). To check this, it suffices to check if the Gram matrix \( M \) of a basis \( \left\{{e_i}\right\} \) satisfies \( {\left\lvert { \det M } \right\rvert} = 1 \).
:::

::: {.example title="Determinant 1 Integer Matrices"}
The matrices \( [1] \) and \( [-1] \) correspond to the lattice \( {\mathbb{Z}}e \) where either \( e^2 \coloneqq e\cdot e = 1 \) or \( e^2 = -1 \). If \( M_1, M_2 \) both have absolute determinant \( 1 \), then so does
\[
\begin{bmatrix}
M_1 & 0 
\\
0 & M_2
\end{bmatrix}
.\]

So if \( L_1, L_2 \) are unimodular, then taking an orthogonal sum \( L_1 \oplus L_2 \) also yields a unimodular lattice. So this yields diagonal matrices with \( p \) copies of \( +1 \) and \( q \) copies of \( -1 \). This is referred to as \( rm{1}_{p, q} \), and is an *odd* unimodular lattice of signature \( (p, q) \) (after passing to \( {\mathbb{R}} \)). Here *odd* means that there exists a \( v\in L \) such that \( v^2 \) is odd.
:::

::: {.example title="Even unimodular lattices"}
An even lattice must have no vectors of odd norm, so all of the diagonal elements are in \( 2{\mathbb{Z}} \). This is because \( (\sum n_i e_i)^2 = \sum_i n_i^2 e_i^2 + \sum_{i<j} 2 n_i, n_j e_i \cdot e_j \). Note that the matrix must be symmetric, and one example that works is
\[
\begin{bmatrix}
0 & 1 
\\
1 & 0
\end{bmatrix}
.\]
We'll refer to this lattice as \( H \), sometimes referred to as the *hyperbolic cell* or *hyperbolic plane*.
:::

::: {.example title="A harder even unimodular lattice"}
This is built from the \( E_8 \) Dynkin diagram:

```{=tex}
\begin{tikzcd}
    &&&& {\bullet_{e_8}} \\
    {\bullet_{e_7}} & {\bullet_{e_6}} & {\bullet_{e_5}} & {\bullet_{e_4}} & {\bullet_{e_3}} & {\bullet_{e_2}} & {\bullet_{e_1}}
    \arrow[no head, from=2-1, to=2-2]
    \arrow[no head, from=2-2, to=2-3]
    \arrow[no head, from=2-3, to=2-4]
    \arrow[no head, from=2-4, to=2-5]
    \arrow[no head, from=2-5, to=1-5]
    \arrow[no head, from=2-5, to=2-6]
    \arrow[no head, from=2-6, to=2-7]
\end{tikzcd}
```
The rule here is
\[
e_i \cdot e_j = 
\begin{cases}
-2  & i =  j
\\
1 & e_i \to e_j \\
0 & \text{if not connected}.
\end{cases}
\]
So for example, \( e_2 \cdot e_6 = 0, e_1 \cdot e_3 = 1, e_2^2 = -2 \). You can check that \( \det(e_i \cdot e_j) = 1 \), and this is referred to as the \( E_8 \) lattice. This is of signature \( (0, 8) \), and it's negative definite if and only if \( v^2 < 0 \) for all \( v\neq 0 \). One can also negate the intersection form to define \( -E_8 \). Note that any simply-laced Dynkin diagram yields some lattice. For example, \( E_{10} \) is unimodular of signature \( (1, 9) \), and it turns out that \( E_{10} \cong E_8 \oplus H \).
:::

::: {.definition title="?"}
Take
\[ 
\mathbf{II}_{a, a+8b} \coloneqq\bigoplus_{i=1}^a H \oplus \bigoplus_{j=1}^b E_8 
,\]
which is an even unimodular lattice since the diagonal entries are all \( -2 \), and using the fact that the signature is additive, is of signature \( (a, a+8b) \). Similarly,
\[ 
\mathbf{II}_{a+8b, a} \coloneqq\bigoplus_{i=1}^a H \oplus \bigoplus_{j=1}^b (-E_8) 
,\]
which is again even and unimodular.
:::

::: {.remark}
Thus

-   \( \mathbf{I}_{p, q} \) is odd, unimodular, of signature \( (p, q) \).
-   \( \mathbf{II}_{p, q} \) is even, unimodular, of signature \( (p, q) \) only for \( p \equiv q \pmod 8 \).
:::

::: {.theorem title="Serre"}
Every unimodular lattice which is not positive or negative definite is isomorphic to either \( \mathbf{I}_{p, q} \) or \( \mathbf{II}_{p, q} \) with \( 8\mathrel{\Big|}p-q \).
:::

::: {.remark}
So there are obstructions to the existence of even unimodular lattices. Other than that, the number of (say) positive definite even unimodular lattices is

  Dimension   Number of Lattices
  ----------- ---------------------------------------------------
  8           1: \( E_8 \)
  16          2: \( E_8^{\oplus 2}, D_{16}^+ \)
  24          24: The Neimeir lattices (e.g. the Leech lattice)
  32          \>\( 8\times 10^{16} \)!!!!

Note that the signature of a definite lattice must be divisible by 8.
:::

::: {.remark}
There is an isometry: \( f: E_8 \to E_8 \) where \( f\in O(E_8) \), the linear maps preserving the intersection form (i.e. the Weyl group \( W(E_8) \), given by \( v\mapsto v + (v, e_i) e_i \). The Leech lattice also shows up in the sphere packing problems for dimensions \( 2,4,8,24 \). See Hale's theorem / Kepler conjecture for dimension 3! This uses an identification of \( L \) as a subset of \( {\mathbb{R}}^n \), namely \( L \otimes_{\mathbb{Z}}{\mathbb{R}}\cong {\mathbb{R}}^{24} \) for example, and the map \( L \hookrightarrow({\mathbb{R}}^{24}, \cdot) \) is an isometric embedding into \( {\mathbb{R}}^n \) with the standard form. Connection to classification of Lie groups: root lattices.
:::

::: {.remark}
If \( M^4 \) is a compact oriented 4-manifold and if the intersection form on \( H^2(M; {\mathbb{Z}}) \) is indefinite, then the only invariants we can extract from that associated lattice are

-   Whether it's even or odd, and
-   Its signature

If the lattice is even, then the signature satisfies \( 8\mathrel{\Big|}p-q \). So Poincaré duality forces unimodularity, and then there are further number-theoretic restrictions. E.g. this prohibits \( \beta_2 =7 \), since then the signature couldn't possibly be 8 if the intersection form is even.
:::

## Characteristic Classes

::: {.definition title="?"}
Let \( G \) be a topological group, then a **classifying space** \( EG \) is a contractible topological space admitting a free continuous \( G{\hbox{-}} \)action with a "nice" quotient.
:::

::: {.remark}
Thus there is a map \( EG \to BG \coloneqq EG/G \) which has the structure of a principal \( G{\hbox{-}} \)bundle.

```{=tex}
\begin{tikzpicture}
\fontsize{40pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-02-05_14-37.pdf_tex} };
\end{tikzpicture}
```
Here we use a point \( p \) depending on \( U \) in an orbit to identify orbits \( g\cdot p \) with \( g \), and we want to take transverse slices to get local trivializations of \( U\in BG \). It suffices to know where \( \pi ^{-1} (U) \cong U \times G \), and it suffices to consider \( U \times\left\{{e}\right\} \). Moreover, \( EG\to BG \) is a universal principal \( G{\hbox{-}} \)bundle in the sense that if \( P\to X \) is a universal \( G{\hbox{-}} \)bundle, there is an \( f:X\to BG \).

```{=tex}
\begin{tikzcd}
    P && EG \\
    \\
    X && BG
    \arrow[from=1-1, to=3-1]
    \arrow["f", from=3-1, to=3-3]
    \arrow[from=1-3, to=3-3]
    \arrow[dashed, from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwyLCJYIl0sWzIsMCwiRUciXSxbMiwyLCJCRyJdLFswLDAsIlAiXSxbMywwXSxbMCwyLCJmIl0sWzEsMl0sWzMsMSwiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d)

Here bundles will be classified by homotopy classes of \( f \), so
\[
\left\{{\text{Principal $G{\hbox{-}}$bundles} {}_{/ X} }\right\} \rightleftharpoons[X, BG]
.\]
:::

::: {.warnings}
This only works for paracompact Hausdorff spaces! The line \( {\mathbb{R}} \) with the doubled origin is a counterexample, consider complex line bundles.
:::

```{=tex}
\todo[inline]{Revisit this last section, had to clarify a few things for myself!}
```
# Monday, February 08

Last time: \( BG \) and \( EG \). See Milnor and Stasheff.

::: {.example title="?"}
Let \( G \coloneqq\operatorname{GL}_n({\mathbb{R}}) = {\mathbb{R}}^{\times} \), then we can take
\[
EG = {\mathbb{R}}^{\infty } \coloneqq\left\{{ (a_1, a_2, \cdots ) {~\mathrel{\Big|}~}a_i \in {\mathbb{R}}, a_{i\gg 0} = 0, a_i \text{ not all zero } }\right\}
.\]
Then \( {\mathbb{R}}^{\times} \) acts on \( EG \) by scaling, and we can take the quotient \( {\mathbb{R}}^{\infty } \setminus\left\{{0}\right\}/ {\mathbb{R}}^{\times} \), where \( \mathbf{a} \sim \lambda \mathbf{a} \) for all \( \lambda \in {\mathbb{R}}^{\times} \). This yields \( {\mathbb{RP}}^{\infty } \) as the quotient. You can check that \( E_G \) is contractible: it suffices to show that \( S^{\infty } \coloneqq\left\{{ \sum {\left\lvert {a_i} \right\rvert} = 1 }\right\} \) is contractible. This works by decreasing the last nonzero coordinate and increasing the first coordinate correspondingly. Moreover, local lifts exist, so we can identify \( {\mathbb{RP}}^{\infty } \cong B{\mathbb{R}}^{\times}= BG \). Similarly \( BC^{\times}\cong {\mathbb{CP}}^{\infty } \) with \( E{\mathbb{C}}^{\times}\coloneqq{\mathbb{C}}^{\infty } \setminus\left\{{0}\right\} \).
:::

::: {.example title="?"}
Consider \( G = \operatorname{GL}_n({\mathbb{R}}) \). It turns out that \( BG = {\operatorname{Gr}}(d, {\mathbb{R}}^{\infty }) \), which is the set of linear subspaces of \( {\mathbb{R}}^{\infty } \) of dimension \( d \). This is spanned by \( d \) vectors \( \left\{{e_ i}\right\} \) in some large enough \( {\mathbb{R}}^N \subseteq {\mathbb{R}}^{\infty } \), since we can take \( N \) to be the largest nonvanishing coordinate and include all of the vectors into \( {\mathbb{R}}^{\infty } \) by setting \( a_{> N} = 0 \). For any \( L \in {\operatorname{Gr}}_d({\mathbb{R}}^{\infty }) \), since \( {\mathbb{R}}^d \) has a standard basis, there is a natural \( \operatorname{GL}_d \) torsor: the set of ordered bases of linear subspaces. So define
\[
EG \coloneqq\left\{{ \text{bases of linear subspaces } L \in {\operatorname{Gr}}_d({\mathbb{R}}^{\infty }) }\right\}
,\]
then any \( A\in \operatorname{GL}_d({\mathbb{R}}) \) acts on \( EG \) by sending \( (L, \left\{{e_i}\right\}) \mapsto (L, \left\{{ Le_i}\right\} ) \). We can identify \( EG \) as \( d{\hbox{-}} \)tuples of linearly independent elements of \( {\mathbb{R}}^{\infty } \), and there is a map
\[
EG &\to BG \\
\left\{{e_i}\right\} &\mapsto {\operatorname{span}}_{\mathbb{R}}\left\{{e_i}\right\}
.\]
Thus there is a universal vector bundle over \( BGL_d \):

```{=tex}
\begin{tikzcd}
\mathcal{E}_L \coloneqq L 
  \ar[r] 
& 
\mathcal{E} 
  \ar[d] 
\\
& 
BGL_d
\end{tikzcd}
```
So \( \mathcal{E} \subseteq BGL_d \times{\mathbb{R}}^{\infty } \), where we can define \( \mathcal{E} \coloneqq\left\{{(L, p) {~\mathrel{\Big|}~}p\in L}\right\} \). In this case, \( EG = {\operatorname{Frame}}( \mathcal{E}) \) is the frame bundle of this universal bundle. The same setup applies for \( G \coloneqq\operatorname{GL}_d({\mathbb{C}}) \), except we take \( {\operatorname{Gr}}_d({\mathbb{C}}^{\infty }) \).
:::

::: {.example title="?"}
Consider \( G = O_d \), the set of orthogonal transformations of \( {\mathbb{R}}^d \) with the standard bilinear form, and \( U_d \) the set of unitary such transformations. To be explicit:
\[
U_d \coloneqq\left\{{ A \in \operatorname{Mat}(d \times d, {\mathbb{C}}) {~\mathrel{\Big|}~}{\left\langle {Av},~{Av} \right\rangle} = {\left\langle {v},~{v} \right\rangle} }\right\}
,\]
where
\[
{\left\langle { {\left[ {v_1, \cdots, v_n} \right]}},~{{\left[ {v_1, \cdots, v_n } \right]} } \right\rangle} = \sum {\left\lvert {v_i} \right\rvert}^2
.\]
Alternatively, \( A^t A = I \) for \( O_d \) and \( {\overline{{A^t}}} A = I \) for \( U_d \). In this case, \( BO_d = {\operatorname{Gr}}_d( {\mathbb{R}}^{\infty } ) \) and \( BU_d = {\operatorname{Gr}}_d( {\mathbb{C}}^{ \infty }) \), but we'll make the fibers smaller: set the fiber over \( L \) to be
\[
(EO_d)_L \coloneqq\left\{{ \text{orthogonal frames of } L }\right\}
\]
and similarly \( (EU_d)_L \) the unitary frames of \( L \). That there are related comes from the fact that \( \operatorname{GL}_d \) retracts onto \( O_d \) using the Gram-Schmidt procedure.
:::

::: {.remark}
Recall that there is a bijective correspondence
\[
\left\{{\substack{
  \text{Principal $G{\hbox{-}}$ bundles}
  \\ \text{on } X
}}\right\}
&\rightleftharpoons
  [X, BG]
\]
and there is also a correspondence
\[
\left\{{\substack{
  \text{Principal $\operatorname{GL}_d{\hbox{-}}$bundles }\\
  \text{on } X
}}\right\}
&\rightleftharpoons
\left\{{\substack{
  \text{Principal ${\mathcal{O}}_d{\hbox{-}}$bundles } \\
  \text{on } X
}}\right\}
\]
Using the associated bundle construction, on the LHS we obtain vector bundles \( \mathcal{E}\to X \) of rank \( d \), and on the RHS we have bundles with a metric. In local trivializations \( U \times{\mathbb{R}}^d \to {\mathbb{R}}^d \), the metric is the standard one on \( {\mathbb{R}}^d \). This is referred to as a **reduction of structure group**, i.e. a principal \( \operatorname{GL}_d \) bundle admits possibly different trivializations for which the transition functions lie in the subgroup \( O_d \).
:::

::: {.example title="?"}
Given any trivial principal \( G{\hbox{-}} \)bundle, it has a reduction of structure group to the trivial group. But the fact that the bundle is trivial may not be obvious.

```{=html}
<!--\begin{tikzpicture}-->
```
```{=html}
<!--\fontsize{41pt}{1em} -->
```
```{=html}
<!--\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{forbidden_donut.pdf_tex} };-->
```
```{=html}
<!--\end{tikzpicture}-->
```
![](figures/forbidden_donut.png)
:::

::: {.remark}
We want to compute \( H^*(BU_d; {\mathbb{Z}}) \). Why is this important? Given any complex vector bundle \( \mathcal{E}\to X \) there is an associated principal \( U_d \) bundle by choosing a metric, so we get a homotopy class \( [X, BU_d] \). Given any \( f\in [X, BU_d] \) and any \( \alpha\in H^k(BU_d; {\mathbb{Z}}) \), we can take the pullback \( f^* \alpha \in H^k(X; {\mathbb{Z}}) \), which are **Chern classes**.
:::

::: {.exercise title="?"}
Show that \( H^*(BU_d; {\mathbb{Z}}) \) stabilizes as \( d\to \infty \) to an infinitely generated polynomial ring \( {\mathbb{Z}}[c_1, c_2, \cdots] \) with each \( c_i \) in cohomological degree \( 2i \), so \( c_i \in H^{2i}(BU_d, {\mathbb{Z}}) \).
:::

::: {.definition title="?"}
There is a map \( BU_{d-1} \to BU_d \), which we can identify as \( {\operatorname{Gr}}_{d-1}(C^{\infty }) \to {\operatorname{Gr}}_d({\mathbb{C}}^{\infty }) \). This is defined by sending a basis \( \left\{{v_1, \cdots, v_{d-1}}\right\} \mapsto {\operatorname{span}}\left\{{ (1, 0, 0, \cdots), sv_1, \cdots, sv_{d-1} }\right\} \) where \( s: {\mathbb{C}}^{\infty } \to {\mathbb{C}}^{\infty} \) is the map that shifts every coordinate to the right by one.

```{=tex}
\todo[inline]{
  Question: does ${\operatorname{Gr}}_d({\mathbb{C}}^{\infty})$ deformation retract onto the image of this map?
}
```
This will yield a fiber sequence \( S^{2d-1} \to BU_{d-1} \to BU_d \), and using connectedness of the sphere and the LES in homotopy this will identify \( H^*(BU_d) = H^*(BU_{d-1})[c_d] \) where \( c_d \in H^{2d}(BU_d) \). The **Chern class** of a vector bundle \( \mathcal{E} \) , denoted \( c_k( \mathcal{E} ) \), will be defined as the pullback \( f^* c_k \).
:::

# Wednesday, February 10

::: {.theorem title="?"}
As \( n\to \infty \), we have
\[
H^*(BO_n, {\mathbb{Z}}/2{\mathbb{Z}}) = {\mathbb{Z}}/2{\mathbb{Z}}[w_1, w_2, \cdots]
&& w_i \in H^i
\]
:::

::: {.definition title="?"}
Given any principal \( O_n{\hbox{-}} \)bundle \( P\to X \), there is an induced map \( X \xrightarrow{f} BO_n \), so we can pull back the above generators to define the **Stiefel-Whitney classes** \( f^* w_i \).
:::

::: {.remark}
If \( P \coloneqq{\operatorname{OFrame}}TX \), then \( f^* w_1 \) measures whether \( X \) has an orientation, i.e. \( f^* w_1 = 0 \iff X \) can be oriented. We also have \( f^* w_i(P) = w_i( \mathcal{E} ) \) where \( P = {\operatorname{OFrame}}( \mathcal{E} ) \). In general, we'll just write \( w_i \) for Stiefel-Whitney classes and \( c_i \) for Chern classes.
:::

::: {.definition title="Pontryagin Classes"}
The **Pontryagin classes** of a real vector bundle \( \mathcal{E} \) are defined as
\[
p_i( \mathcal{E} ) = (-1)^i c_{2i}( \mathcal{E} \otimes_{\mathbb{R}}{\mathbb{C}})
.\]
Note that the complexified bundle above is a complex vector bundle with the same transition functions as \( \mathcal{E} \), but has a reduction of structure group from \( \operatorname{GL}_n({\mathbb{C}}) \) to \( \operatorname{GL}_n({\mathbb{R}}) \).
:::

::: {.observation}
\( {\mathbb{RP}}^{\infty } \) and \( {\mathbb{CP}}^{\infty } \) are examples of \( K(\pi, n) \) spaces, which are the unique-up-to-homotopy spaces defined by
\[
\pi_k K (\pi, n) = 
\begin{cases}
\pi &  k=n
\\
0 & \text{else}.
\end{cases}
\]
:::

::: {.theorem title="Brown Representability"}
\[
H^n(X; \pi) \cong [X, K( \pi, n) ]
.\]
:::

::: {.example title="?"}
\[
[X, {\mathbb{RP}}^{\infty } ] &\cong H^1(X; {\mathbb{Z}}/2{\mathbb{Z}}) \\
[X, {\mathbb{CP}}^{\infty } ] &\cong H^2(X; {\mathbb{Z}})
.\]
:::

::: {.proposition title="?"}
There is a correspondence
\[
\left\{{\substack{
  \text{Complex line bundles}
}}\right\}
\rightleftharpoons
[X, {\mathbb{CP}}^{\infty }] = [X, BC^{\times}]
\rightleftharpoons
H^2(X; {\mathbb{Z}})
\]
Importantly, note that for \( X \in {\mathbf{Mfd}}_{\mathbb{C}} \), \( H^2(X; {\mathbb{Z}}) \) measures *smooth* complex line bundles and not holomorphic bundles.
:::

::: {.proof title="?"}
We'll take an alternate direct proof. Consider the exponential exact sequence on \( X \):
\[
0 \to \underline{Z} \to {\mathcal{O}}\xrightarrow{\exp} {\mathcal{O}}^{\times}
.\]
Note that \( \underline{{\mathbb{Z}}} \) consists of locally constant \( {\mathbb{Z}}{\hbox{-}} \)valued functions, \( {\mathcal{O}} \) consists of smooth functions, and \( {\mathcal{O}}^{\times} \) are ???.

```{=tex}
\todo[inline]{Can't read screenshot! :(}
```
This yields a LES in homology:

```{=tex}
\begin{tikzcd}
    {H^0(X; \underline{{\mathbb{Z}}})} && {H^0(X; {\mathcal{O}})} && {H^0(X; {\mathcal{O}}^{\times})} \\
    \\
    {H^1(X; \underline{{\mathbb{Z}}})} && \textcolor{rgb,255:red,214;green,92;blue,92}{H^1(X; {\mathcal{O}})} && {H^1(X; {\mathcal{O}}^{\times})} \\
    \\
    {H^2(X; \underline{{\mathbb{Z}}})} && \textcolor{rgb,255:red,214;green,92;blue,92}{H^2(X; {\mathcal{O}})} && {H^2(X; {\mathcal{O}}^{\times})}
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=3-1, out=0, in=180]
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=5-1, out=0, in=180]
    \arrow[from=5-1, to=5-3]
    \arrow[from=5-3, to=5-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOSxbMCwwLCJIXjAoWDsgXFxjb25zdGFudHtcXFpafSkiXSxbMCwyLCJIXjEoWDsgXFxjb25zdGFudHtcXFpafSkiXSxbMCw0LCJIXjIoWDsgXFxjb25zdGFudHtcXFpafSkiXSxbMiwwLCJIXjAoWDsgXFxPTykiXSxbMiwyLCJIXjEoWDsgXFxPTykiLFswLDYwLDYwLDFdXSxbMiw0LCJIXjIoWDsgXFxPTykiLFswLDYwLDYwLDFdXSxbNCwwLCJIXjAoWDsgXFxPT1xcdW5pdHMpIl0sWzQsMiwiSF4xKFg7IFxcT09cXHVuaXRzKSJdLFs0LDQsIkheMihYOyBcXE9PXFx1bml0cykiXSxbMCwzXSxbMyw2XSxbNiwxXSxbMSw0XSxbNCw3XSxbNywyXSxbMiw1XSxbNSw4XV0=)

Since \( {\mathcal{O}} \) admits a partition of unity, \( H^{>0}(X; {\mathcal{O}}) = 0 \) and all of the red terms vanish. For complex line bundles \( L \), \( H^1(X, {\mathcal{O}}^{\times}) \cong H^2(X; {\mathbb{Z}}) \). Taking a local trivialization \( { \left.{{L}} \right|_{{U}} } \cong U \times{\mathbb{C}} \), we obtain transition functions
\[
t_{UV} \in C^{\infty }(U \cap V, \operatorname{GL}_1({\mathbb{C}}) )
\]
where we can identify \( \operatorname{GL}_1({\mathbb{C}}) \cong {\mathbb{C}}^{\times} \). We then have
\[
(t_{U_{ij}}) \in \prod_{i < j} {\mathcal{O}}^{\times}(U_i \cap U_j) = C^1(X; {\mathcal{O}}^{\times})
.\]
Moreover,
\[
\qty{ 
t_{U_{ij}}
t_{U_{ik}} ^{-1}
t_{U_{jk}}
}_{i,j,k} 
= {{\partial}}( t_{U_{ij} } ) _{i, j} = 0
,\]
since transitions functions satisfy the cocycle condition. So in fact \( (t_{U_{ij}}) \in Z^1(X; {\mathcal{O}}^{\times}) = \ker {{\partial}}^1 \), and we can take its equivalence class \( [ ( t_{U_{ij} } ) ] \in H^1(X; {\mathcal{O}}^{\times}) = \ker {{\partial}}^1 / \operatorname{im}{{\partial}}^0 \). Changing trivializations by some \( s_i \in \prod_i {\mathcal{O}}^{\times}(U_i) \) yields a composition which is a different trivialization of the same bundle:

```{=tex}
\begin{tikzcd}
    {{ \left.{{L}} \right|_{{U_i}} }} && {U_i \times{\mathbb{C}}} &&& {U_i \times{\mathbb{C}}}
    \arrow["{h_i}", from=1-1, to=1-3]
    \arrow["{\cdot s_i}", from=1-3, to=1-6]
    \arrow[curve={height=30pt}, from=1-1, to=1-6]
\end{tikzcd}
```
So the \( (t_{ U_{ij}} \) change *exactly* by an \( {{\partial}}^0( s_i) \). Thus the following map is well-defined:
\[
L \mapsto [ (t_{U_{ij}} ) ] \in H^1(X; {\mathcal{O}}^{\times})
.\]

There is another construction of the map
\[
\left\{{L}\right\} *\to H^2(X; {\mathbb{Z}}) \\
L &\mapsto c_1(L)
.\]
Take a smooth section of \( L \) and \( s\in H^0(X; L) \) that intersects an \( {\mathcal{O}}{\hbox{-}} \)section of \( L \) transversely. Then
\[
V(s) \coloneqq\left\{{ x\in X {~\mathrel{\Big|}~}s(x) = 0 }\right\}
\]
is a submanifold of real codimension 2 in \( X \), and \( c_1(L) = [ V(s) ] \in H^2(X; {\mathbb{Z}}) \).
:::

::: {.theorem title="Splitting Principle for Complex Vector Bundles"}
```{=tex}
\envlist
```
1.  Suppose that \( \mathcal{E} = \bigoplus_{i=1}^r L_i \) and let \( c(\mathcal{E}) \coloneqq\sum c_i(\mathcal{E} \). Then
    \[
      c(\mathcal{E}) = \prod_{i=1}^r \qty{ 1 + c_i (L_i) }
      .\]

2.  Given any vector bundle \( \mathcal{E} \to X \), there exists some \( Y \) and a map \( Y\to X \) such that \( f^*: H^k(X; {\mathbb{Z}}) \hookrightarrow H^k(Y; {\mathbb{Z}}) \) is injective and \( f^* \mathcal{E} = \bigoplus_{i=1}^r L_i \).
:::

::: {.slogan}
To verify any identities on characteristic classes, it suffices to prove them in the case where \( \mathcal{E} \) splits into a direct sum of line bundles.
:::

::: {.example title="?"}
\[
c( \mathcal{E} \oplus \mathcal{F}) = c( \mathcal{E} ) c( \mathcal{F} )
.\]
To prove this, apply the splitting principle. Choose \( Y, Y' \) splitting \( \mathcal{E}, \mathcal{E}' \) respectively, this produces a space \( Z \) and a map \( f:Z\to X \) where both split. We can write
\[
f^* \mathcal{E} &= \bigoplus L_i 
&& c(f^* \mathcal{E} ) = \prod \qty{ 1 + c_1(L_i) } \\
f^* \mathcal{F} &= \bigoplus M_j 
&& c(f^* \mathcal{E} ) = \prod \qty{ 1 + c_1(M_j) } \\
.\]

We thus have
\[
c( f^* \mathcal{E} \oplus f^* \mathcal{F} ) 
&= \prod \qty{1 + c_1(L_i) } \qty{1 + c_1(M_j)} \\
&= c(f^* \mathcal{E} ) c(f^* \mathcal{F} )
,\]
and \( f^* (c( \mathcal{E} \oplus \mathcal{F} ) = f^* (c (\mathcal{E}) c( \mathcal{F})) \). Since \( f^* \) is injective, this yields the desired identity.
:::

::: {.example title="?"}
We can compute \( c(\operatorname{Sym}^2 \mathcal{E}) \), and really any tensorial combination involving \( \mathcal{E} \), and it will always yield some formula in the \( c_i( \mathcal{E} ) \).
:::

# Friday, February 12

::: {.remark}
Last time: the splitting principle. Suppose we have \( \mathcal{E} = L_1 \oplus \cdots \oplus L_r \) and let \( x_i \coloneqq c_i(L_i) \). Then \( c_k(\mathcal{E}) \) is the degree \( 2k \) part of \( \prod_{i=1}^r (1 + x_i ) \) where each \( x_i \) is in degree \( 2 \). This is equal to \( e_k(x_1, \cdots, x_r) \) where \( e_k \) is the \( k \)th elementary symmetric polynomial.
:::

::: {.example title="?"}
For example,

-   \( e_1 = x_1 + \cdots x_r \).

-   \( e_2 = x_1 x_2 + x_1 x_3 + \cdots = \sum_{i < j} x_i x_j \)

-   \( e_3 = \sum_{i<j<k} x_i x_j x_k \), etc.
:::

::: {.remark}
The theorem is that any symmetric polynomial is a polynomial in the \( e_i \). For example, \( p_2 = \sum x_i^2 \) can be written as \( e_1^2 - 2e_2 \). Similarly, \( p_3 = \sum x_i^3 = e_1^3 - 3e_1 e_2 -3e_3 \) Note that the coefficients of these polynomials are important for representations of \( S_n \), see *Schur polynomials*.
:::

::: {.remark}
Due to the splitting principle, we can pretend that \( x_i = c_i(L_i) \) exists even when \( \mathcal{E} \) doesn't split. If \( \mathcal{E} \to X \), the individual symbols \( x_i \) don't exist, but we can write '
\[
x_1^3 + \cdots + x_r^3 = e_1^3 - 3e_1 e_2 - 3e_3 \coloneqq c_1(\mathcal{E})^3 + 3c_1(\mathcal{E}) c_2(\mathcal{E}) + \cdots
,\]
which is a well-defined element of \( H^6(X; {\mathbb{Z}}) \). So this polynomial defines a characteristic class of \( \mathcal{E} \), and this can be done for any symmetric polynomial. We can change basis in the space of symmetric polynomials to now define different characteristic classes.
:::

::: {.definition title="Chern Character"}
The **Chern character** is defined as
\[
\operatorname{ch}(\mathcal{E}) 
&\coloneqq\sum_{i=1}^r e^{x_i}\in H^*(X; {\mathbb{Q}}) \\
&\coloneqq\sum_{i=1}^r \sum_{k=0}^{\infty } {x_i^k \over k!} \\
&= \sum_{k=0}^{\infty } {p_k(x_1, \cdots, x_r) \over k!} \\
&= \operatorname{rank}(\mathcal{E}) + c_1(\mathcal{E}) + { c_1(\mathcal{E}) - c_2(\mathcal{E}) \over 2!} + { c_1(\mathcal{E})^3 - 3c_1(\mathcal{E}) c_2(\mathcal{E}) - 3 c_3(\mathcal{E}) \over 3!} + \cdots \\
& \qquad \in H^0 + H^2 + H^4 + H^6 \\
&=\operatorname{ch}_0(\mathcal{E}) + \operatorname{ch}_1(\mathcal{E}) + \operatorname{ch}_2( \mathcal{E} ) + \cdots, \\
&   \quad \operatorname{ch}_i(\mathcal{E}) \in H^{2i}(X; {\mathbb{Q}}) 
.\]
:::

::: {.definition title="Todd Class"}
The **total Todd class**
\[
\mathrm{td}(\mathcal{E})
\coloneqq
\prod_{i=1}^r { x_i \over 1 - e^{-x_i} }
.\]

Note that
\[
{x_i \over 1 - e^{-x_i} } = 1 + {x_i \over 2} + {x_i^2 \over 12} + {x_i^4 \over 720} + \cdots = 1 + {x_i \over 2} + \sum_{i=1}^{\infty } { (-1)^{i-1} B_i \over (2i)! } x^{2i}
.\]
where L'Hopital shows that the derivative at \( x_i = 0 \) exists, so it's analytic at zero and the expansion makes sense, and the \( B_i \) are Bernoulli numbers.
:::

::: {.remark title="Very important and useful!!"}
\( \operatorname{ch}(\mathcal{E} \oplus \mathcal{F}) = \operatorname{ch}(\mathcal{E}) + \operatorname{ch}(\mathcal{F}) \) and \( \operatorname{ch}( \mathcal{E} \otimes\mathcal{F} ) = \sum_{i,j} e^{x_i + y_j} = \operatorname{ch}( \mathcal{E} ) \operatorname{ch}(\mathcal{F} ) \) using the fact that \( c_1(L_1 \otimes L_2) = c_1(L_1) c_1(L_2) \). So \( \operatorname{ch} \) is a "ring morphism" in the sense that it preserves multiplication \( \otimes \) and addition \( \oplus \), making the Chern character even better than the total Chern class.
:::

::: {.definition title="Todd Class"}
Let \( X \in {\mathbf{Mfd}}_{\mathbb{C}} \), then define the **Todd class** of \( X \) as \( \mathrm{td}_{\mathbb{C}}(X) \coloneqq\mathrm{td}(TX) \) where \( TX \) is viewed as a complex vector bundle. If \( X\in {\mathbf{Mfd}}_{\mathbb{R}} \), define \( \mathrm{td}_{\mathbb{R}}= \mathrm{td}(TX \otimes_{\mathbb{R}}{\mathbb{C}}) \).
:::

## Section 5: Riemann-Roch and Generalizations

::: {.remark}
Let \( X\in {\mathbf{Top}} \) and let \( \operatorname{\mathcal{F}} \) be a sheaf of vector spaces. Suppose \( h^i(X; \operatorname{\mathcal{F}}) \coloneqq\dim H^i(X; \operatorname{\mathcal{F}}) < \infty \) for all \( i \) and is equal to 0 for \( i \gg 0 \).
:::

::: {.definition title="Euler Characteristic of a Sheaf"}
The **Euler characteristic** of \( \operatorname{\mathcal{F}} \) is defined as
\[
\chi(X; \operatorname{\mathcal{F}}) \coloneqq\chi(\operatorname{\mathcal{F}}) \coloneqq\sum_{i=0}^{\infty } (-1)^i h_i(X; \operatorname{\mathcal{F}} )
.\]
:::

::: {.warnings}
This is not always well-defined!
:::

::: {.example title="?"}
Let \( X\in {\mathbf{Mfd}}_{\text{cpt}} \) and take \( \operatorname{\mathcal{F}} \coloneqq\underline{{\mathbb{R}}} \), we then have
\[
\chi(X; \underline{{\mathbb{R}}}) = h^0(X; {\mathbb{R}}) - h^1(X; {\mathbb{R}}) + \cdots = b_0 - b_1 + b_2 - \cdots \coloneqq\chi_{{\mathbf{Top}}}(X)
.\]
:::

::: {.example title="?"}
Let \( X = {\mathbb{C}} \) and take \( \operatorname{\mathcal{F}} \coloneqq{\mathcal{O}}\coloneqq{\mathcal{O}}^{\text{holo}} \) the sheaf of holomorphic functions. We then have \( h^{> 0}(X; {\mathcal{O}}) = 0 \), but \( H^0(X; {\mathcal{O}}) \) is the space of all holomorphic functions on \( {\mathbb{C}} \), making \( \dim_{\mathbb{C}}h^0(X; {\mathcal{O}}) \) infinite.
:::

::: {.example title="?"}
Take \( X = {\mathbb{P}}^1 \) with \( {\mathcal{O}} \) as above, \( h^0({\mathbb{P}}^1; {\mathcal{O}}) = 1 \) since \( {\mathbb{P}}^1 \) is compact and the maximum modulus principle applies, so the only global holomorphic functions are constant. We can write \( {\mathbb{P}}^1 = {\mathbb{C}}_1 \cup{\mathbb{C}}_2 \) as a cover and \( h^i({\mathbb{C}}, {\mathcal{O}}) = 0 \), so this is an acyclic cover and we can use it to compute \( h^1({\mathbb{P}}^1; {\mathcal{O}}) \) using Čech cohomology. We have

-   \( C^0({\mathbb{P}}^1; {\mathcal{O}}) = {\mathcal{O}}({\mathbb{C}}_1) \oplus {\mathcal{O}}({\mathbb{C}}_2) \)

-   \( C^1({\mathbb{P}}^1; {\mathcal{O}}) = {\mathcal{O}}({\mathbb{C}}_1 \cap{\mathbb{C}}_2) = {\mathcal{O}}({\mathbb{C}}^{\times}) \).

-   The boundary map is given by
    \[
    {\partial}_0: C^0 &\to C^1 \\
    ( f(z), g(z) ) &\mapsto g(1/z) - f(z)
    \]
    and there are no triple intersections.

Is every holomorphic function on \( {\mathbb{C}}^{\times} \) of the form \( g(1/z) - f(z) \) with \( f,g \) holomorphic on \( {\mathbb{C}} \). The answer is yes, by Laurent expansion, and thus \( h^1 = 0 \). We can thus compute \( \chi({\mathbb{P}}^1; {\mathcal{O}}) = 1-0 = 1 \).
:::

# Monday, February 15

::: {.remark}
Last time: we saw that \( \chi({\mathbb{P}}^1, {\mathcal{O}}) = 1 \), and we'd like to generalize to holomorphic line bundles on a Riemann surface. This will be the main ingredient for Riemann-Roch.
:::

::: {.theorem title="?"}
Let \( X \in {\mathbf{Mfd}}_{\mathbb{C}} \) be compact and let \( \mathcal{F} \) be a holomorphic vector bundle on \( X \) [^3] Then \( \chi \) is well-defined and
\[ h^{> \dim_{\mathbb{C}}X}(X; \mathcal{F} ) = 0.\]
:::

::: {.remark}
The locally constant sheaf \( \underline{{\mathbb{C}}} \) is not an \( {\mathcal{O}}{\hbox{-}} \)module, i.e. \( \underline{{\mathbb{C}}}(U) \not\in {{{\mathcal{O}}(U)}{\hbox{-}}\mathbf{Mod}} \). In fact, \( h^{2i}(X, \underline{{\mathbb{C}}}) = {\mathbb{C}} \) for all \( i \).
:::

::: {.proof title="?"}
We'll can resolve \( \mathcal{F} \) as a sheaf by first mapping to its smooth sections and continuing in the following way:
\[
0 \to \mathcal{F} \to C^{\infty } \mathcal{F} \xrightarrow{\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu} F \otimes A^{0, 1} \to \cdots
,\]
where \( \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5muf = \sum_i {\frac{\partial f}{\partial {\overline{{z}}}_i}\,} \, d{\overline{{z}}}_i \). Suppose we have a holomorphic trivialization of \( { \left.{{\mathcal{F} }} \right|_{{U}} } \cong {\mathcal{O}}_{U}^{\oplus r} \) and we have sections \( (s_1, \cdots, s_r) \in C^{\infty } \mathcal{F}(U) \), which are smooth functions on \( U \). In local coordinates we have
\[
\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mus \coloneqq(\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mus_1, \cdots, \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mus_r)
,\]
but is this well-defined globally? Given a different trivialization over \( V \subseteq X \), the \( s_i \) are related by transition functions, so the new sections are \( t_{UV}(s_1, \cdots, s_r) \) where \( t_{UV}: U \cap V \to \operatorname{GL}_r({\mathbb{C}}) \). Since \( t_{UV} \) are holomorphic, we have
\[
\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu( t_{UV} (s_1, \cdots, s_r)) = t_{UV} \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu(s_1, \cdots, s_r)
.\]
This makes \( \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu: C^{\infty } \mathcal{F} \to F\otimes A^{0, 1} \) a well-defined (but not \( {\mathcal{O}}{\hbox{-}} \)linear) map. We can thus continue this resolution using the Leibniz rule:

\[
0 \to \mathcal{F} \to C^{\infty } \mathcal{F} \xrightarrow{\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu} F \otimes A^{0, 1} \xrightarrow{\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu} \cdots F \otimes A^{0, 2} \xrightarrow{\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu} \cdots
,\]
which is an exact sequence of sheaves since \( (A^{0, {\,\cdot\,}}, \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu) \) is exact.

```{=tex}
\todo[inline]{Why? Split into line bundles?}
```
We can identify \( C^{\infty }\operatorname{\mathcal{F}} = \operatorname{\mathcal{F}} \otimes A^{0, 0} \), and \( \operatorname{\mathcal{F}} \otimes A^{0, q} \) is a smooth vector bundle on \( X \). Using partitions of unity, we have that \( \operatorname{\mathcal{F}} \otimes A^{0, q} \) is acyclic, so its higher cohomology vanishes, and
\[
H^i(X; \operatorname{\mathcal{F}} ) \cong 
\frac
{ \ker ( \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu: \operatorname{\mathcal{F}}\otimes A^{0, i} \to \operatorname{\mathcal{F}} \otimes A^{0, i+1} }
{ \operatorname{im}( \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu: \operatorname{\mathcal{F}}\otimes A^{0, i-1} \to \operatorname{\mathcal{F}} \otimes A^{0, i} }
.\]
However, we know that \( A^{0, p} = 0 \) for all \( p> n \coloneqq\dim_{\mathbb{C}}X \), since any wedge of \( p>n \) forms necessarily vanishes since there are only \( n \) complex coordinates.
:::

::: {.warnings}
This only applies to holomorphic vector bundles or \( {\mathcal{O}}{\hbox{-}} \)modules!
:::

## Riemann-Roch

::: {.theorem title="Riemann-Roch"}
Let \( C \) be a compact connected Riemann surface, i.e. \( X\in {\mathbf{Mfd}}_{\mathbb{C}} \) with \( \dim_{\mathbb{C}}(X) = 1 \), and let \( \mathcal{L}\to C \) be a holomorphic line bundle. Then
\[
\chi(C, \mathcal{L}) = \deg(L) + (1-g) && \text{where } \int_C c_1(\mathcal{L})
\]
and \( g \) is the genus of \( C \).
:::

::: {.proof title="?"}
We'll introduce the notion of a "point bundle", which are particularly nice line bundles, denoted \( {\mathcal{O}}(p) \) for \( p\in {\mathbb{C}} \).

```{=tex}
\begin{tikzpicture}
\fontsize{35pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-02-15_14-16.pdf_tex} };
\end{tikzpicture}
```
Taking \( {\mathbb{D}} \) to be a disc of radius \( 1/2 \) and \( V \) to be its complement, we have \( t_{uv}(z) = z^{-1}\in {\mathcal{O}}^*(U \cap V) \). We can take a holomorphic section \( s_p \in H^0( C, {\mathcal{O}}(p) ) \), where \( { \left.{{s_p}} \right|_{{U}} } = z \) and \( { \left.{{s_p}} \right|_{{V}} } = 1 \). Then \( t_{uv}( { \left.{{s_p}} \right|_{{U}} } ) = { \left.{{s_p}} \right|_{{V}} } \) on the overlaps. We have a function which precisely vanishes to first order at \( p \). Recall that \( c_1( {\mathcal{O}}(p) ) \) is represented by \( [ V(s) ] = [p] \), and moreover \( \int_C c_1 ( {\mathcal{O}}(p) ) = 1 \). We now want to generalize this to a **divisor**: a formal \( {\mathbb{Z}}{\hbox{-}} \)linear combination of points.

::: {.example title="?"}
Take \( p, q,r\in C \), then a divisor can be defined as something like \( D \coloneqq 2[p] - [q] + 3[r] \).
:::

Define \( {\mathcal{O}}(D) \coloneqq\bigotimes_{i} {\mathcal{O}}(p_i)^{\otimes n_i} \) for any \( D = \sum n_i [p_i] \). Here tensoring by negatives means taking duals, i.e. \( {\mathcal{O}}( -[p] ) \coloneqq{\mathcal{O}}^{\otimes_{-1}} \coloneqq{\mathcal{O}}(p)^\vee \), the line bundle with inverted transition functions. \( {\mathcal{O}}(D) \) has a meromorphic section given by
\[
s_D \coloneqq\prod s_{p_i}^{n_i} \in \operatorname{Mero}(C, {\mathcal{O}}(D) )
\]
where we take the sections coming from point bundles. We can compute
\[
\int_C c_1 ( {\mathcal{O}}(D) ) = \sum n_i \coloneqq\deg(D)
.\]
.

::: {.example title="?"}
\[
\deg( 2[p] -[q] + 3[r]) = 4
.\]
:::

::: {.remark}
Assume our line bundle \( L \) is \( {\mathcal{O}}(D) \), we'll prove Riemann-Roch in this case by induction on \( \sum {\left\lvert {n_i} \right\rvert} \). The base case is \( {\mathcal{O}} \), which corresponds to taking an empty divisor. Then either

-   Take \( D = D_0 + [p] \) with \( \deg(D_0) < \sum {\left\lvert {n_i} \right\rvert} \) (for which we need some positive coefficient), or
-   Take \( D_0 = D + [p] \).
:::

::: {.claim}
There is an exact sequence
\[
0 \to {\mathcal{O}}(D_0) &\to {\mathcal{O}}(D) \to {\mathbb{C}}_p \to 0\\
s\in {\mathcal{O}}(D_0)(U) &\mapsto s \cdot s_p \in {\mathcal{O}}( D_0 + [p] ) (U)
,\]
where the last term is the skyscraper sheaf at \( p \).
:::

::: {.proof title="?"}
The given map is \( {\mathcal{O}}{\hbox{-}} \)linear and injective, since \( s_p\neq 0 \) and \( s s_p=0 \) forces \( s=0 \). Recall that we looked at \( {\mathcal{O}}\xrightarrow{\cdot z} {\mathcal{O}} \) on \( {\mathbb{C}} \), and this section only vanishes at \( p \) (and to first order). The same situation is happening here.
:::

Thus there is a LES

```{=tex}
\begin{tikzcd}
    &&&& 0 \\
    \\
    {H^0( {\mathcal{O}}(D_0) )} && {H^0( {\mathcal{O}}(D) )} && {H^0( {\mathcal{O}}({\mathbb{C}}_p) )} \\
    \\
    {H^1( {\mathcal{O}}(D_0) )} && {H^1( {\mathcal{O}}(D) )} && {H^1( {\mathcal{O}}({\mathbb{C}}_p) ) = 0} \\
    \\
    0
    \arrow[from=3-5, to=5-1, out=0, in=180]
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[from=5-1, to=5-3]
    \arrow[from=5-3, to=5-5]
    \arrow[from=1-5, to=3-1, out=0, in=180]
    \arrow[from=5-5, to=7-1, out=0, in=180]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMCwyLCJIXjAoIFxcT08oRF8wKSApIl0sWzIsMiwiSF4wKCBcXE9PKEQpICkiXSxbNCwyLCJIXjAoIFxcT08oXFxDQ19wKSApIl0sWzAsNCwiSF4xKCBcXE9PKERfMCkgKSJdLFsyLDQsIkheMSggXFxPTyhEKSApIl0sWzQsNCwiSF4xKCBcXE9PKFxcQ0NfcCkgKSA9IDAiXSxbNCwwLCIwIl0sWzAsNiwiMCJdLFsyLDNdLFswLDFdLFsxLDJdLFszLDRdLFs0LDVdLFs2LDBdLFs1LDddXQ==)

We also have \( h^1({\mathbb{C}}_p) = 0 \) by taking a sufficiently fine open cover where \( p \) is only in one open set. So just checking Čech cocycles yields \( C_U^1(C, {\mathbb{C}}_p) \coloneqq\prod_{i<j} {\mathbb{C}}_p(U_i \cap U_j) = 0 \) since \( p \) is in no intersection.

```{=tex}
\begin{tikzpicture}
\fontsize{35pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-02-15_14-38.pdf_tex} };
\end{tikzpicture}
```
We obtain \( \chi( {\mathcal{O}}(D) = \chi( {\mathcal{O}}(D_0) ) + 1 \), using that it is additive in SESs
\[
0 \to 
\operatorname{\mathcal{E}}_1 \to
\operatorname{\mathcal{E}}_2 \to
\operatorname{\mathcal{E}}_3 \to
0
\implies && 
\chi(\operatorname{\mathcal{E}}_2) = \chi( \operatorname{\mathcal{E_1}}) + \chi( \operatorname{\mathcal{E}}_3 )
\]
and thus
\[
\int_C c_1 ({\mathcal{O}}(D) ) = \sum n_i = \deg(D) = \deg D_0 + 1
.\]
The last step is to show that \( \chi(C, {\mathcal{O}}) = 1-g \), so just define \( g \) so that this is true!
:::

::: {.remark}
Why is every \( L \cong {\mathcal{O}}(D) \) for some \( D \)? Easy to see if \( L \) has meromorphic sections: if \( s \) is a meromorphic section of \( L \), then the following works:
\[
D = \operatorname{Div}(s) = \sum_p {\operatorname{Ord}}_p(s) [p]
.\]
Then \( {\mathcal{O}}\cong L\otimes{\mathcal{O}}(-D) \) has a meromorphic section \( s s_{-D} \), a global nonvanishing section with \( \operatorname{Div}(s s_{-D} ) = \emptyset \). Proving that every holomorphic line bundle has a meromorphic section is hard!
:::

# Friday, February 19

## Applications of Riemann-Roch

::: {.definition title="Curves"}
A **curve** is a compact complex manifold of complex dimension 1.
:::

::: {.example title="?"}
Let \( C \) be a curve, then \( \Omega_C^1 \) is the sheaf of holomorphic 1-forms, and \( \Omega_C^{>1} = 0 \). We also have the sheaves \( A^{1, 0}, A^{0, 1}, A^{1, 1}, \) the sheaves of smooth \( (p, q){\hbox{-}} \)forms. Here the only nonzero combinations are \( (0, 0), (0, 1), (1, 0), (1, 1) \) by dimensional considerations. Let \( L \) be a holomorphic line bundle on \( C \), then
\[ \chi(C, L) = h^0(L) - h^1(L) = \deg(L) + 1 - g .\]
:::

::: {.remark}
In general it can be hard to compute \( h^1(L) \), since this is sheaf cohomology (sections over double overlaps, cocycle conditions, etc). On the other hand, \( h^0 \) is easy to understand, since \( h^0( \Omega^1_C) \) is the dimension of the global holomorphic sections \( H^0(C, L) = L(C) \). A key tool here is the following:
:::

::: {.proposition title="Serre Duality"}
\[
H^1(C, L) \cong H^0(C, L ^{-1} \otimes\Omega_C^1)^\vee
,\]
noting that these are both global sections of a line bundle.
:::

::: {.proof title="?"}
Recall that we had a resolution of the sheaf \( L \) given by by smooth vector bundles:
\[
0 \to L \hookrightarrow L\otimes A^{0, 0} \xrightarrow{\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu} L \otimes A^{0, 1} \xrightarrow{\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu} 0
.\]
So we know that \( H^1(C, L) = H^0(L\otimes A^{0, 1}) / \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5muH^0(L\otimes A^{0, 0}) \). Choose a Hermitian metric \( h \) on \( L \), i.e. a map \( h: L\otimes{\overline{{L}}} \to {\mathcal{O}} \). On fibers, we have \( h_p: L_p \otimes\mkern 1.5mu\overline{\mkern-1.5mu L_p \mkern-1.5mu}\mkern 1.5mu \to {\mathbb{C}} \). We'll also choose a metric on \( C \), say \( g \). Since \( C \) is a Riemann surface, we have an associated volume form \( \nu \) on \( C \) (essentially the determinant), so we can define a pairing between sections of \( L\otimes A^{0, 0} \):
\[
{\left\langle {s},~{t} \right\rangle} \coloneqq\int_C h(s, {\overline{{t}}} ) \,d\nu
.\]
Note that \( {\left\langle {s},~{s} \right\rangle} = \int_C h(s, {\overline{{s}}} \,d\nu \geq 0 \) since \( h(s, {\overline{{s}}})(p) = 0 \iff s_p = 0 \), and moreover this integral is zero if and only if \( s=0 \). So we have an inner product on \( H^0(L\otimes A^{0, 0}) \). We can also define a pairing on sections of \( L\otimes A^{0, 1} \), say
\[
{\left\langle { s \otimes \alpha},~{ t \otimes \beta} \right\rangle} = \int_C h(s, {\overline{{t}}}) \alpha\wedge {\overline{{\beta}}}
.\]
Note that \( h \) is a smooth function and \( \alpha\wedge {\overline{{\beta}}} \) is a \( (1, 1){\hbox{-}} \)form. Moreover, this is positive and nondegenerate. We want to understand the cokernel of the linear map
\[
H^0(L \otimes A^{0, 0}) \xrightarrow{\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu} H^0( L \otimes A^{0, 1})
.\]
To compute \( \operatorname{coker}(\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu) \), we can look at the kernel of the adjoint, and it suffices to find the orthogonal complement of \( \operatorname{im}( \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu) \), i.e. 
\[
\operatorname{coker}(\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu) = \left\{{ t\in H^0(L\otimes A^{0, 1}) {~\mathrel{\Big|}~}{\left\langle {\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mus},~{t} \right\rangle} = 0 \, \forall s}\right\} 
.\]

```{=tex}
\begin{tikzpicture}
\fontsize{44pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures}{2021-02-19_14-18.pdf_tex} };
\end{tikzpicture}
```
So we want to understand sections \( t\in H^0(L\otimes A^{0, 1}) \) such that
\[
\int_C (\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mus){\overline{{t}}} = 0 && \forall s\in H^0(L\otimes A^{0, 0})
,\]
where \( {{\partial}}C = \emptyset \). We'll basically want to do integration by parts on this. Note that \( h(s, t) = hst \) here where we view \( h \) as a certain section. Note that \( {\overline{{t}}} \in H^0({\overline{{L}}} \otimes A^{1, 0}) \), so we can replace \( {\partial} \) with \( d = \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu+ {\partial} \) and apply Stokes' theorem:
\[
\int_C s d(h {\overline{{t}}}) &= 0 && \forall s\in H^0(L\otimes A^{0, 0}) \\
0 
&= \int_C s\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu(h {\overline{{t}}}) \\
&= \int_C s {\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu(h {\overline{{t}}}) \over d\nu}d\nu\\
&= {\left\langle {s},~{{\overline{{\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu(h {\overline{{t}}}) \over d\nu }}}} \right\rangle}
\]
where \( h \in C^{\infty }(L ^{-1} \otimes{\overline{{L}}}^{-1}) \) and \( h{\overline{{t}}} \in C^{\infty }(L^{-1}\otimes A^{1, 0}) \). But the right-hand side is in \( H^0(L \otimes A^{0, 0} ) \) and by nondegeneracy we can conclude
\[
{\overline{{\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu(h {\overline{{t}}}) \over d\nu }}} = 0
\iff \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu(h{\overline{{t}}}) = 0
.\]
We thus have \( h{\overline{{t}}} \in H^0( L ^{-1}\otimes A^{1, 0} \) which is a holomorphic line bundle tensored with \( A^{0, 0} \). Thus \( \operatorname{coker}(\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu) \cong_h H^0( L ^{-1} \otimes\Omega^1) \).
:::

::: {.remark}
We showed \( {\left\langle {\mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mus},~{t} \right\rangle} = {\left\langle {s},~{Y (t)} \right\rangle} \) where \( Y \) is the adjoint given above. Then the kernel of \( Y \) wound up being where \( \mkern 1.5mu\overline{\mkern-1.5mu{\partial}\mkern-1.5mu}\mkern 1.5mu \) vanishes, i.e. holomorphic sections of a separate bundle. Here we had

-   \( t \in H^0(L\otimes A^{0, 1}) \)
-   \( {\overline{{t}}} \in H^0({\overline{{L}}}\otimes A^{1,0}) \)
-   \( h\in H^0( L ^{-1} \otimes{\overline{{ L ^{-1} }}}) \)
:::

[^1]: Note that this doesn't start at \( C^0 \), so topological manifolds are genuinely different! There exist topological manifolds with no smooth structure.

[^2]: Locally admits a chart to \( {\mathbb{C}}^n/ \Gamma \) for \( \Gamma \) a finite group.

[^3]: Or more generally a finitely-generated \( {\mathcal{O}}{\hbox{-}} \)module, i.e. a coherent sheaf.

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

![image_2021-01-13-14-02-19](figures/image_2021-01-13-14-02-19.png)
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

![image_2021-01-13-14-22-18](figures/image_2021-01-13-14-22-18.png)

::: {.fact}
There exists a cover which is *locally finite* and supports a *partition of unity*: a collection of smooth functions \( f_i: U_i \to {\mathbb{R}} \) with \( f_i \geq 0 \) and \( {\operatorname{supp}}f \subseteq U_i \) such that \( \sum f_i = 1 \) (*i.e., bump functions*). It is also a purely topological fact that \( \tilde {\mathbb{R}} \) is orientable.
:::

So we have bump functions:

![image_2021-01-13-14-25-30](figures/image_2021-01-13-14-25-30.png)

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
1.  Munkres: Every \( C^1 \) structure gives a unique \( C^k \) and \( C^ \infty \) structure.[^1]

2.  Grouert : Every \( C^ \infty \) structure gives a unique real-analytic structure.

3.  Every PL manifold admits a smooth structure in \( \dim X \leq 7 \), and it's unique in \( \dim X\leq 6 \), and above these dimensions there exists PL manifolds with no smooth structure.

4.  Kirby-Sibenmann: Let \( X \) be a topological manifold of \( \dim X\geq 5 \), then there exists a cohomology class \( k_s(X) \in H^4(X; {\mathbb{Z}}/2{\mathbb{Z}}) \) which is 0 if and only if \( X \) admits a PL structure. Moreover, if \( ks(X) = 0 \), then (up to concordance) the set of PL structures is given by \( H^3(X; {\mathbb{Z}}/2{\mathbb{Z}}) \).

5.  Moise: Every topological manifold in \( \dim X\leq 3 \) admits a unique smooth structure.

6.  Smale (et al): in \( \dim X\geq 5 \), the number of smooth structures on a topological manifold \( X \) is finite. In particular, \( {\mathbb{R}}^n \) for \( n \neq 4 \) has a unique smooth structure. So dimension 4 is interesting!

7.  Toubes: \( {\mathbb{R}}^4 \) admits uncountably many non-diffeomorphic smooth structures.

8.  A compact oriented smooth surface \( \Sigma \), the space of complex-analytic structures is a complex orbifold [^2] of dimension \( 3g-2 \) where \( g \) is the genus of \( \Sigma \), up to biholomorphism (i.e. *moduli*).
:::

::: {.remark}
Kervaire-Milnor: \( S^7 \) admits 28 smooth structures, which form a group.
:::

# Friday, January 15

Let \( V = \left\{{a^2 + b^2 + c^2 + d^3 + e^{6k-1} = 0}\right\} \subseteq {\mathbb{C}}^5 \) and \( S_\varepsilon\coloneqq\left\{{ {\left\lvert {a} \right\rvert}^2 + {\left\lvert {b} \right\rvert}^2 + {\left\lvert {c} \right\rvert}^2 + {\left\lvert {d} \right\rvert}^2 + {\left\lvert {e} \right\rvert}^2}\right\} \). Then \( V_k \cap S_\varepsilon\cong S^7 \) is a homeomorphism, and taking \( k=1,2,\cdots 28 \) yields the 28 smooth structures on \( S^7 \). Notice that \( V_k \) is the cone over \( V_k \cap S_\varepsilon \).
```{=tex}
\begin{tikzpicture}

\node (node_one) at (0,0) {
  \includegraphics{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures/2021-01-15_13-54}
  };
  \end{tikzpicture}
```
> ? Admits a smooth structure, and \( \mkern 1.5mu\overline{\mkern-1.5muV\mkern-1.5mu}\mkern 1.5mu_k \subseteq {\mathbb{CP}}^5 \) admits no smooth structure.

::: {.question}
Is every triangulable manifold PL, i.e. homeomorphic to a simplicial complex?
:::

::: {.answer}
No! Given a simplicial complex, there is a notion of the **combinatorial link** of a vertex.

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) {
  \includegraphics{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures/2021-01-15_13-57}
  };
  \end{tikzpicture}
```
It turns out that there exist simplicial manifolds such that the link is not homeomorphic to a sphere, whereas every PL manifold admits a "PL triangulation" where the links are spheres.
:::

::: {.remark}
What's special in dimension 4? Recall the **Kirby-Siebenmann** invariant \( ks(x) \in H^4(X; {\mathbb{Z}}_2) \) for \( X \) a topological manifold where \( ks(X) = 0 \iff X \) admits a PL structure, with the caveat that \( \dim X \geq 5 \). We can use this to cook up an invariant of 4-manifolds.
:::

::: {.definition title="Kirby-Sibemann Invariant of a 4-manifold"}
Let \( X \) be a topological manifold, then
\[
ks(X) \coloneqq ks(X \times{\mathbb{R}})
.\]
:::

::: {.remark}
Recall that in \( \dim X\geq 7 \), every PL manifold admits a smooth structure, and we can note that
\[
H^4(X; {\mathbb{Z}}_2) = H^4(X \times{\mathbb{R}}; {\mathbb{Z}}_2) = {\mathbb{Z}}_2,
.\]
since every oriented 4-manifold admits a fundamental class. Thus \[ ks(X) =

```{=tex}
\begin{cases}
0 & X \times{\mathbb{R}}\text{ admits a PL and smooth structure} 
\\
1 & .X \times{\mathbb{R}}\text{ admits no PL or smooth structures }
\end{cases}
```
.\]
:::

::: {.remark}
\( ks(X) \neq 0 \) implies that \( X \) has no smooth structure, since \( X \times{\mathbb{R}} \) doesn't. Note that it was not known if this invariant was nonzero for a while!
:::

::: {.remark}
Note that \( H^2(X; {\mathbb{Z}}) \) admits a symmetric bilinear form \( Q_X \) defined by
\[
{\left\langle { \alpha},~{ \beta} \right\rangle} \mapsto \int_X \alpha\wedge \beta = \alpha \cupproduct \beta([X]) \in {\mathbb{Z}}
.\]
where \( [X] \) is the fundamental class.
:::

::: {.theorem title="Freedman"}
If \( X, Y \) are compact oriented topological 4-manifolds, then \( X\cong Y \) are homeomorphic if and only if \( ks(X) = ks(Y) \) and \( Q_X \cong Q_Y \) are isometric, i.e. there exists an isometry
\[
H^2(X; {\mathbb{Z}}) \to H^2(Y; {\mathbb{Z}})
.\]
that preserves the two bilinear forms in the sense that \( {\left\langle {\varphi \alpha},~{ \varphi \beta} \right\rangle} = {\left\langle { \alpha},~{ \beta} \right\rangle} \). Conversely, every **unimodular** bilinear form appears as \( H^2(X; {\mathbb{Z}}) \) for some \( X \), i.e. the pairing induces a map
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
\( H^2(X; {\mathbb{Z}}) \xrightarrow{PD} H_2(X; {\mathbb{Z}}) \), where we can think of elements in the latter as closed surfaces \( [\Sigma] \), and
\[
{\left\langle { \Sigma_1 },~{ \Sigma_2 } \right\rangle} = \text{signed number of intersections points of } \Sigma_1 \pitchfork\Sigma_2
.\]
Note that Freedman's theorem is only about homeomorphism, and is not true smoothly. This gives a way to show that two 4-manifolds are homeomorphic, but this is hard to prove! So we'll black-box this, and focus on ways to show that two *smooth* 4-manifolds are *not* diffeomorphic, since we want homeomorphic but non-diffeomorphic manifolds.
:::

::: {.definition title="Signature"}
The **signature** of a topological 4- manifold is the signature of \( Q_X \), where we note that \( Q_X \) is a symmetric nondegenerate bilinear form on \( H^2(X; {\mathbb{R}}) \) and for some \( a, b \)
\[
H^2(X; {\mathbb{R}}), Q_x \xrightarrow{\text{isometric}} {\mathbb{R}}^{a, b}
.\]
where \( a \) is the number of \( +1 \)s appearing in the matrix and \( b \) is the number of \( -1 \)s. This is \( {\mathbb{R}}^{ab} \) where \( e_i^2 = 1, i=1\cdots a \) and \( e_i^2 = -1, i=a+1, \cdots b \), and is thus equipped with a specific bilinear form corresponding to the Gram matrix of this basis. \[

```{=tex}
\begin{bmatrix}
1 & 0 & 0
\\
0 & \vdots & 0
\\
0 & 0 & -1
\end{bmatrix}
```
.\] Then the signature is \( a-b \), the dimension of the positive-definite space minus the dimension of the negative-definite space.
:::

::: {.theorem title="Rohklin's Theorem"}
Suppose \( {\left\langle { \alpha},~{\alpha} \right\rangle} \in 2{\mathbb{Z}} \) and \( \alpha\in H^2(X; {\mathbb{Z}}) \) and \( X \) a simply connected **smooth** 4-manifold. Then 16 divides \( \sig(X) \).
:::

::: {.remark}
Note that Freedman's theorem implies that there exists topological 4-manifolds with no smooth structure.
:::

::: {.theorem title="Donaldson"}
Let \( X \) be a smooth simply-connected 4-manifold. If \( a=0 \) or \( b=0 \), then \( Q_X \) is diagonalizable and there exists an orthonomal basis of \( H^2(X; {\mathbb{Z}}) \).
:::

::: {.remark}
This comes from Gram-Schmidt, and restricts what types of intersection forms can occur.
:::

Proving these theorems is the main goal of this course.

## Warm Up

Last time we showed \( {\mathbb{R}}^1 \) had a unique smooth structure, so now we'll do this for \( {\mathbb{R}}^2 \). The strategy of solving a differential equation, we'll now sketch the proof.

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

Let \( e\in T_p X \) and \( e\neq 0 \), then if \( X \) is a surface then \( \left\{{e, Je}\right\} \) is a bsis of \( T_p X \).

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) {
  \includegraphics{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures/2021-01-15_14-33}
  };
  \end{tikzpicture}
```
This is a basis because if \( Je \) and \( e \) are parallel, then ??? In particular, \( J_p \) is determined by a point in \( {\mathbb{R}}^2\setminus{x{\hbox{-}}\text{axis}} \) Let \( \tilde {\mathbb{R}}^2 \) be an exotic \( {\mathbb{R}}^2 \).

-   Step 1: Choose a metric on \( \tilde {\mathbb{R}}^2 \) \( g \coloneqq\sum f_I g_i \) with \( g_i \) metrics on coordinate charts \( U_i \) and \( f_i \) a partition of unity.

-   Step 2: Find an almost complex structure on \( \tilde {\mathbb{R}}^2 \). Choosing an orientation of \( \tilde {\mathbb{R}}^2 \), \( g \) defines a unique almost complex structure \( J_p e \coloneqq f\in T_p \tilde {\mathbb{R}}^2 \) such that \( g(e, e) = g(f, f) \) and \( (e, f) \) is an oriented basis of \( T_p \tilde {\mathbb{R}}^2 \) and \( g(e, f) = 0 \). This is because after choosing \( e \), there are two orthogonal vectors, but only one choice yields an *oriented* basis.

```{=tex}
\begin{tikzpicture}
\node (node_one) at (0,0) {
  \includegraphics{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/FourManifolds/sections/figures/2021-01-15_14-39}
  };
  \end{tikzpicture}
```
We then apply a theorem:

::: {.theorem title="?"}
Any almost complex structure on a surface comes from a complex structure, in the sense that there exist charts \( \varphi_i: U_i \to {\mathbb{C}} \) such that \( J \) is multiplication by \( i \).
:::

So \( d \varphi(J \cdot e) = i \cdot d \varphi_i (e) \), and \( (\tilde {\mathbb{R}}^2, J) \) is a complex manifold. Since it's simply connected, the Riemann Mapping Theorem shows that it's biholomorphic to \( {\mathbb{D}} \) or \( {\mathbb{C}} \), both of which are diffeomorphic to \( {\mathbb{R}}^2 \).

> See Newlander Nuremburg theorem.

[^1]: Note that this doesn't start at \( C^0 \), so topological manifolds are genuinely different! There exist topological manifolds with no smooth structure.

[^2]: Locally admits a chart to \( {\mathbb{C}}^n/ \Gamma \) for \( \Gamma \) a finite group.

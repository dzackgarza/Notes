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
# Lecture 1: Overview (Wednesday, January 13)

## Course Logistics

> Note (DZG): Everything in this section comes from Akram!

### Description

"I am teaching a topics course about Heegaard Floer homology next semester. Heegaard Floer homology was defined by Peter Ozsváth and Zoltan Szabó around 2000. It is a package of powerful invariants of smooth 3- and 4-manifolds, knots/links and contact structures. Over the last two decades, it has become a central tool in low-dimensional topology. It has been used extensively to study and resolve important questions concerning unknotting number, slice genus, knot concordance and Dehn surgery. It has been employed in critical ways to study taut foliations, contact structures and smooth 4-manifolds. There are also many rich connections between Heegaard Floer homology and other manifold and knot invariants coming from gauge theory as well as representation theory. We will learn the basic construction of Heegaard Floer homology, starting with the definition of the 3-manifold and knot invariants. In the second half of this course, we will turn to computations and applications of the theory to low-dimensional topology and knot theory. In particular, several numerical invariants have been defined using this homological invariants. At the end of the semester, I would expect each one of you to learn the construction of one of these invariants (of course with my help) and present it to the class."

### Expository Papers

-   [@G] J. Greene, [Heegaard Floer homology](https://www.ams.org/journals/notices/202101/rnoti-p19.pdf)
-   [@H] J. Hom, [Lecture notes on Heegaard Floer homology](https://arxiv.org/pdf/2008.01836.pdf)
-   [@L] R. Lipshitz, [Heegaard Floer homologies](https://arxiv.org/abs/1411.4540)
-   [@M] C. Manolescu, [An introduction to knot Floer homology](https://arxiv.org/abs/1401.7107)
-   [@OS-1] P. Ozsváth and Z. Szabó, [An introduction to Heegaard Floer homology](https://web.math.princeton.edu/~petero/Introduction.pdf)
-   [@OS-2] P. Ozsváth and Z. Szabó, [Lectures on Heegaard Floer homology](https://web.math.princeton.edu/~petero/Lectures.pdf)
-   [@OS-3] P. Ozsváth and Z. Szabó, [Heegaard diagrams and holomorphic disks](https://arxiv.org/pdf/math/0403029.pdf)

### Research Papers

-   [@OSz04a] Peter Ozsváth and Zoltán Szabó, Holomorphic disks and topological invariants for closed three-manifolds. Ann. of Math. (2) 159 (2004), no. 3, 1027--1158. [arXiv:math/0101206](https://arxiv.org/abs/math/0101206)
-   [@OSz04b] Peter Ozsváth and Zoltán Szabó, Holomorphic disks and three-manifold invariants: properties and applications. Ann. of Math. (2) 159 (2004), no. 3, 1159--1245. [arXiv:math/0105202](https://arxiv.org/abs/math/0105202)
-   [@OSz04c] Peter Ozsváth and Zoltán Szabó, Holomorphic disks and knot invariants. Adv. Math. 186 (2004), no. 1, 58--116. [arXiv:math/0209056](https://arxiv.org/abs/math/0209056)
-   [@OSz06] Peter Ozsváth and Zoltán Szabó, Holomorphic triangles and invariants for smooth four manifolds. Adv. Math. 202 (2006), no. 2, 326--400. [arXiv:math/0110169](https://arxiv.org/abs/math/0110169)
-   [@Per08] Timothy Perutz, Hamiltonian handleslides for Heegaard Floer homology. Proceedings of Gökova Geometry-Topology Conference 2007, 15--35, Gökova Geometry/Topology Conference (GGT), Gökova, 2008. [arXiv:0801.0564](https://arxiv.org/abs/0801.0564)

### Basic Morse Theory, Symplectic Geometry and Floer Homology

-   [@Mi-1] Milnor, [Morse theory](https://press.princeton.edu/books/paperback/9780691080086/morse-theory-am-51-volume-51)
-   [@Mi-2] Milnor, [Lectures on the \( h{\hbox{-}} \)cobordism theorem](https://press.princeton.edu/books/hardcover/9780691651132/lectures-on-the-h-cobordism-theorem)
-   [@Ca] A. Cannas da Silva. [Lectures on Symplectic Geometry](https://www.springer.com/gp/book/9783540421955)
-   [@Mc] D. McDuff, [Floer theory and low-dimensional topology](http://www.math.stonybrook.edu/~dusa/floer8.pdf)
-   [@AD] M. Audin and M. Damian, [Morse theory and Floer homology](https://link.springer.com/book/10.1007/978-1-4471-5496-9)
-   [@Hu] M. Hutchings, [Lecture notes on Morse homology (with an eye towards Floer theory and pseudoholomorphic curves)](https://math.berkeley.edu/~hutching/teach/276-2010/mfp.ps)

### Low-dimensional Topology

-   [@S] N. Saveliev, [Lectures on the topology of 3-manifolds](https://www.degruyter.com/view/title/121170)
-   [@R] D. Rolfsen, [Knots and links](https://bookstore.ams.org/chel-346-h/)
-   [@GS] R. Gompf and A. Stipsicz, [4-manifolds and Kirby calculus](https://bookstore.ams.org/gsm-20)
-   [@L] R. Lickorish, [An introduction to knot theory](https://link.springer.com/book/10.1007/978-1-4612-0691-0)

### Suggested Topics for Presentations

-   [@SW] S. Sarkar and J. Wang, \[An algorithm for computing some Heegaard Floer homologies, Ann. of Math., 171 (2010), 1213--1236, [arXiv:math/0607777](https://arxiv.org/abs/math/0607777).

-   Grid homology from:

    -   C. Manolescu and P. Ozsváth and S. Sarkar, [A combinatorial description of knot Floer homology](https://annals.math.princeton.edu/wp-content/uploads/annals-v169-n2-p07.pdf), Ann. of Math., 169 (2009), 633--660, [arXiv:math/0607691](https://arxiv.org/abs/math/0607691).

    -   P. Ozsváth and A. Stipsicz and Z. Szabó, [Grid Homology for Knots and Links](https://bookstore.ams.org/surv-208),

        -   Also available [here](https://web.math.princeton.edu/~petero/GridHomologyBook.pdf) with comment: please go and buy a hard copy, too!

-   J. Hom, [A survey on Heegaard Floer homology and concordance](https://www.worldscientific.com/doi/abs/10.1142/S0218216517400156) J. of Knot Theo. and Its Ram.(2) 26 (2017) [arXiv:1512.00383](https://arxiv.org/abs/1512.00383)

-   K. Honda and W. Kazez and G. Matić, [On the contact class in Heegaard Floer homology](https://projecteuclid.org/euclid.jdg/1261495333), J. Differential Geom. (2) 83 (2009), 289-311, [arXiv:math/0609734](https://arxiv.org/abs/math/0609734)

-   Sutured Floer homology from:

    -   [@L] Lipshitz expository paper listed above
    -   A. Juhász [Holomorphic discs and sutured manifolds](https://projecteuclid.org/euclid.agt/1513796585) Algebr. Geom. Topol., (3) 6 (2006), 1429-1457, [arXiv:math/0601443](https://arxiv.org/abs/math/0601443)
    -   A. Juhász, [Knot Floer homology and Seifert surfaces](https://projecteuclid.org/euclid.agt/1513796824) Algebr. Geom. Topol., (1) 8 (2008), 603-608 [arxiv:math/0702514](https://arxiv.org/abs/math/0702514)

```{=tex}
\todo[inline]{Convert to bibtex?}
```
## Intro and Motivation

We'll assume everything is smooth and oriented.

::: {.proposition title="Osvath-Szabo (2000)"}
To closed 3-manifolds \( M \) we can assign a graded abelian group \( \widehat{HF}(M) \), which can be computed combinatorially [^1] . There are several variants:

-   \( HF^- \in {\operatorname{grMod}}({\mathbb{Z}}_2[u]) \), [^2]

-   \( HF^+ \in {\operatorname{Mod}}({\mathbb{Z}}_2[u, u ^{-1} ] / u {\mathbb{Z}}_2[u]) \).

-   \( HF^\infty \in {\operatorname{grMod}}({\mathbb{Z}}_2[u, u ^{-1} ]) \),

\( HF^+ \) and \( HF^\infty \) can be computed using \( HF^- \). In general, we'll write \( HF^{\,\cdot\,} \) to denote constructions that work with any of the above variants.
:::

::: {.remark}
Note that \( {\mathbb{Z}}_2 \) can be replaced with \( {\mathbb{Z}} \), but it's technical and we won't discuss it here. For the first half of the course, we'll just discuss \( \widehat{HF} \), and we'll discuss the latter 3 in the second half.
:::

### Geometric Information

These invariants can be used to compute the **Thurston seminorm** of a 3-manifold:

::: {.definition title="Thurston Seminorm"}
A homology class \( \alpha\in H_2(M) \) can be represented as \( \alpha\in [S] \) for \( S \) a closed surface whose fundamental class represents \( \alpha \) where \( S = \bigcup_{i=1}^n S_i \) can be a union of closed embedded surfaces \( S_i \). Then we first compute
\[
\max\left\{{0, - \chi(S_i) }\right\} 
=
\begin{cases}
0 & \text{if } S_i \cong {\mathbb{S}}^2, {\mathbb{T}}^2 \\ 
\\
- \chi(S_i) = 2g(S_i) - 2  & \text{ else} .
\end{cases}
.\]
Note that the max checks if \( \chi \) is positive. Then define
\[
{\left\lVert { \alpha } \right\rVert} \coloneqq\min_S \qty{ \sum_{i=1}^n 
\max\left\{{0, - \chi(S_i) }\right\} }
,\]
where we sum over the embedded subsurfaces and check which overall surface gives the smallest norm.
:::

::: {.remark}
Note that this can't be a norm, since if \( {\mathbb{S}}^2, {\mathbb{T}}^2 \in [S] \implies {\left\lVert {\alpha } \right\rVert}= 0 \).
:::

::: {.theorem title="Osvath-Szabo"}
\( HF \) detects [^3] the Thurston seminorm, and there is a splitting as groups/modules
\[
HF^{\,\cdot\,}(M) = \bigoplus _{\mathfrak{s} \in {\operatorname{Spin}}^c(M)} HF^{\,\cdot\,}(M, S) 
\]
where \( S \in {\operatorname{Spin}}^c(M) \) is a **spin\( ^c \) structure**: an oriented 2-dimensional vector bundle on \( M \) (up to some equivalence).
:::

::: {.remark}
The Thurston norm \( {\left\lVert {a} \right\rVert} \) can be computed from this data by considering a perturbed version of \( \widehat{HF} \), denoted \( \underline{\widehat{HF}} \), in the following way: taking the first Chern class \( c_1(\mathfrak{s}) \in H^2(M) \) (which can be associated to every 2-dimensional vector bundle), we have
\[
{\left\lVert { \alpha} \right\rVert} = \max_{\underline{\widehat{HF}}(M, \mathfrak{s}  ) \neq 0 }
{\left\lvert {{\left\langle { c_1(\mathfrak{s})  },~{ \alpha } \right\rangle}  } \right\rvert}
.\]
:::

::: {.slogan}
Floer homology groups split over these spin\( ^c \) structures and can be used to compute Thurston norms.
:::

::: {.theorem title="Ni"}
Given \( F \subseteq M \) with genus \( g\geq 2 \), \( HF \) detects if \( M \) *fibers* over \( S^1 \) with \( F \) as a fiber, i.e. there exists a fiber bundle

```{=tex}
\begin{tikzcd}
F 
  \ar[r, hook] 
& 
M
  \ar[d, "\pi"] 
\\
& 
S^1 
\end{tikzcd}
```
This uses the existence of the splitting over spin\( ^c \) structures and uses \( HF^+ \) in the following way: such a bundles exists if and only if
\[
\bigoplus _{{\left\langle { c_1(\mathfrak{s}) },~{ [F] } \right\rangle}  =2g-2} HF^+(M, \mathfrak{s}) = {\mathbb{Z}}
.\]
:::

::: {.definition title="Contact Structure"}
Equivalently,

-   A smooth oriented nowhere integrable 2-plane field \( \xi \), or

-   A 2-plane field \( \xi \coloneqq\ker( \alpha) \) where \( \alpha \) is a 1-form such that \( \alpha\wedge d \alpha > 0 \). [^4]
:::

::: {.example title="?"}
The standard contact structure on \( {\mathbb{R}}^3 \) is given by
\[
\alpha\coloneqq dz - ydz
,\]
which yields the following 2-plane field \( \xi \coloneqq\ker \alpha \):

![2-Plane Field in \( {\mathbb{R}}^3 \)](figures/image_2021-01-18-23-04-19.png)

You can see that \( z=0 \implies y=0 \), so the \( xy{\hbox{-}} \)plane is in the kernel, yielding the flat planes down the middle:

![Flat Planes](figures/Flat_Planes.png)
:::

::: {.proposition title="Contact Class (Osvath-Szabo-Honda-Kazez-Matic)"}
To each such \( \xi \) one can associate a **contact class** \( c(\xi) \in \widehat{HF}(-M) \), where \( -M \) is \( M \) with the reversed orientation.
:::

::: {.remark}
This gives obstructions for two of the following important properties of contact structures:

-   Being **overtwisted**, or
-   Being **Stein fillable**.
:::

::: {.theorem title="?"}
```{=tex}
\envlist
```
-   If \( \xi \) is overtwisted, then \( c(\xi) = 0 \).
-   If \( \xi \) is Stein fillable, then \( c(\xi) \neq 0 \).
:::

We'll also discuss similar invariants for knots that were created after these invariants for manifolds.

::: {.definition title="Knots"}
Recall that a **knot** is an embedding \( S^1 \hookrightarrow M \).

![Example: the trefoil knot](figures/image_2021-01-18-23-13-07.png){width="150px"}
:::

::: {.proposition title="Knot Floer Homology (Ozsváth-Szabó)"}
Given a knot \( K \subseteq M \) a 3-manifold (e.g. \( M = S^3 \)), there is extra algebraic structure on \( \widehat{CF}(M) \): a filtration. These allow defining a new bigraded abelian group \( \widehat{HFK}(M, K) \) (which is also a \( {\mathbb{Z}}_2{\hbox{-}} \)vector space) that takes includes the information of \( K \). This yields a decomposition
\[
\widehat{HFK}(M, K) = \bigoplus _{m, a} \widehat{HFK}_m(M, K, a)
.\]

This similarly works for other variants: there is a filtration on \( CF^-(M) \) which yields \( HFK^-(M, K) \), a bigraded \( {\mathbb{Z}}_2[u]{\hbox{-}} \)module.
:::

Some properties of Knot Floer Homology:

::: {.fact}
\( \widehat{HFK}(K) \) categorifies the Alexander polynomial \( \Delta_K(t) \) of \( K \), i.e. taking the graded Euler characteristic yields
\[
\Delta_K (t) =\sum_{m, a} (-1)^m\qty{ \dim \widehat{HFK}_m(K, a) } t^a
.\]
:::

::: {.fact}
\( \widehat{HFK}(K) \) detects the **Seifert genus** of a knot \( g(K) \), defined as the smallest \( g \) such that there exists an embedded surface [^5] \( F \) of genus \( g \) in \( S^3 \) that bounds \( K \), so \( {{\partial}}F = K \).

::: {.example title="The Unknot"}
The unknot bounds a disc, so its genus is zero:

![The genus of the unknot](figures/image_2021-01-18-23-29-23.png)
:::

::: {.exercise title="The Trefoil"}
Using the "outside" disc on the trefoil, find 3 bands that show its genus is 1.

![The genus of the trefoil](figures/image_2021-01-18-23-30-49.png)
:::

The genus can be computed by setting \( \widehat{HFK}(K, a) \coloneqq\bigoplus _m \widehat{HFK}_m(K, a) \), which yields
\[
g(k) = \max \left\{{ a {~\mathrel{\Big|}~}\widehat{HFK}(K, a) \neq 0 }\right\}
.\]
Note that the \( a \) grading here is referred to as the **Alexander grading**.
:::

::: {.fact}
\( \widehat{HFK} \) detects whether or not a knot is **fibered**, where \( K \) is fibered if and only if it admits an \( S^1 \) family \( F_t \) of Seifert surfaces such that \( t\neq s\in S^1 \implies F_t \cap F_s = K \). I.e., there is a fibration on the knot complement where each fiber is a Seifert surface:

```{=tex}
\begin{tikzcd}
\Sigma_g 
  \ar[r] 
& 
S^3\setminus K
  \ar[d, "\pi"] 
\\
& 
K 
\end{tikzcd}
```
::: {.example title="The Unknot"}
The unknot is fibered by \( {\mathbb{D}}^2 \)s:

![The unknot fibered by discs.](figures/image_2021-01-18-23-38-35.png)
:::

This is "detected" in the following sense: \( K \) is fibered if and only if
\[
\widehat{HFK}(k, g(K)) = {\mathbb{Z}}_2
.\]
:::

::: {.definition title="Slice Genus"}
Let \( K \subseteq S^3 \). We know \( S^3 = {{\partial}}B^4 \), so we consider all of the smoothly properly embedded surfaces \( F \) in \( B^4 \) such that \( {{\partial}}F = K \) and take the smallest genus:

![Knot in \( S^3 \) bounding a surface in \( B^4 \)](figures/image_2021-01-18-23-56-35.png)

We thus define the **slice genus** or **4-ball genus** as
\[
g_S(K) \coloneqq g_4(K) \coloneqq\min 
\left\{{
g(F) {~\mathrel{\Big|}~}F\hookrightarrow B^4 \text{ smootherly, properly with } {{\partial}}F = K
}\right\}
.\]
:::

::: {.exercise title="?"}
Show that \( g_4(K) \leq g(K) \).
:::

::: {.definition title="Unknotting number"}
Define \( u(K) \) the **unknotting number** of \( K \) as the minimum number of times that \( K \) must cross itself to become unknotted.
:::

::: {.example title="The Trefoil"}
Consider changing the bottom crossing of a trefoil:

![Changing one crossing in the trefoil](figures/image_2021-01-19-00-01-14.png)

This in fact produces the unknot:

![Unkink to yield the unknot](figures/image_2021-01-19-00-02-00.png)

Thus \( u(K) = 1 \), assuming that we know \( K \neq 0 \) is not the unknot.
:::

::: {.exercise title="?"}
Show that \( g_f(K) \leq u(K) \).

> Hint: each crossing change \( K\to K' \) yields some surface that is a cobordism from \( K \) to \( K' \) in \( B^4 \), and you can use each step to build your surface.

![Surface between \( K \) and \( K' \)](figures/image_2021-01-19-00-04-13.png)
:::

::: {.theorem title="Ozsváth-Szabó"}
Define an invariant \( \tau(K) \in {\mathbb{Z}} \) from \( \widehat{HFK} \) such that \( {\left\lvert {\tau(K)} \right\rvert} \leq g_4(K) \leq u(K) \).
:::

::: {.definition title="Torus Knots $T_{p, q}$ "}
Recall that we can view \( {\mathbb{T}}^2 \coloneqq{\mathbb{R}}^2/{\mathbb{Z}}^2 \) where the action is \( (x, y) \xrightarrow{(m, n)} (x+m, y+m) \), i.e. we module out by integer translations. Then for \$p, q \> 0 \$ coprime, \( T_{p, q} \) is the image of the line \( y = mx \) in \( {\mathbb{T}}^2 \) where \( m=p/q \).
:::

::: {.example title="$T_{2, 3}$ "}
The torus knot \( T_{2, 3} \) wraps 3 times around the torus in one direction and twice in the other:

![The torus knot \( T_{2, 3} \)](figures/image_2021-01-19-00-09-51.png)
:::

::: {.theorem title="Milnor"}
\[
g_4(T_{p, q}) = u(T_{p, q}) = { (p-1)(1-q) \over 2}
.\]

-   First proved by Kronheimer-Mrowka
-   Another proof by Osvath-Szabó using Heegard Floer homology.
:::

::: {.exercise title="?"}
Show that \( u(T_{p. q}) \leq {(p-1)(q-1) \over 2} \), i.e. torus knots can be unknotted with this many crossing changes.
:::

::: {.theorem title="Osvath-Szabó"}
\[
\tau(T_{p, q}) = 
{(p-1)(q-1) \over 2}
,\]

which implies
\[
{(p-1)(q-1) \over 2}
\leq g_4(T_{p, q})
\leq u(T_{p, q})
\leq {(p-1)(q-1) \over 2}
,\]
making all of these equal.
:::

::: {.remark}
There are better lower bounds for \( u(K) \) defined using \( \widehat{HFK} \) which are *not* lower bounds for the slice genus. There are also other lower bounds for the slice genus with different names (see Jen Hom's survey), some of which are stronger than \( \tau \).
:::

::: {.remark}
Another application of having these lower bounds is that we can construct exotic (or *fake*) \( {\mathbb{R}}^4 \)s, i.e. 4-manifolds \( X \) homeomorphic to \( {\mathbb{R}}^4 \) but not diffeomorphic to \( {\mathbb{R}}^4 \).
:::

::: {.remark}
All of these invariants work nicely in a \( (3+1){\hbox{-}} \)TQFT: we have invariants of 3-manifolds \( M_i \) and knots in them, so we can talk about **cobordisms** between them: \( W^4 \) a compact oriented 4-manifold with \( {{\partial}}W^4 = -M_1 {\coprod}M_2 \).

![A cobordism](figures/image_2021-01-19-00-24-31.png)

Osvath-Szabó define a map
\[
F_{W, t}^{\,\cdot\,}: HF^{\,\cdot\,}(M_1, { \left.{{t}} \right|_{{M_1}} } ) \to HF^{\,\cdot\,}(M_2, { \left.{{t}} \right|_{{M_2}} })
\]
using \( t \) coming from the splitting of spin\( ^c \) structure which yields an invariant of closed 4-manifolds referred to as **mixed invariants**.

Similarly, if we have knots in 3-manifolds we can define a cobordism \( (M_1, K_1) \to (M_2, K_2) \) as \( (W^4, F) \) where \( W^4 \) is a cobordism \( M_1\to M_2 \) and \( F\hookrightarrow W \) is a smoothly embedded surface that is a cobordism from \( K_1\to K_2 \) with \( F \cap M_i = K_i \) and \( {{\partial}}F = -K_1 {\coprod}K_2 \).

![A cobordism including knots](figures/image_2021-01-19-00-29-04.png)

This similarly yields a map

\[
F_{W, F t}^{\,\cdot\,}: HF^{\,\cdot\,}(M_1, K_1, { \left.{{t}} \right|_{{M_1}} } ) \to HF^{\,\cdot\,}(M_2, K_2, { \left.{{t}} \right|_{{M_2}} })
\]
:::

::: {.remark}
This smoothly embedded surface in the middle can be used to study other smoothly embedded surfaces in 4-manifolds, which has been done recently.
:::

# Lecture 2 (Tuesday, January 19)

```{=tex}
\todo[inline]{Copy in references recommended by Akram!}
```
::: {.remark}
For Morse Theory, there are some good exercises in Audin's book -- essentially anything other than the existence questions. The first 8 look good on p. 18.
:::

Today:

1.  Overview of the construction of HF, and

2.  A discussion of Morse Theory.

## Constructing Heegard Floer

First goal: discuss how the name "Heegard" fits in.

::: {.definition title="Genus $g$ handlebody"}
A **genus \( g \) handlebody** \( H_g \) is a compact oriented 3-manifold with boundary obtained from \( B^3 \) by attaching \( g \) solid handles (a neighborhood of an arc).
:::

::: {.example title="Attaching $g=2$ handles to a sphere"}
For \( g=2 \) attached to a sphere, we glue \( D^2 \times I \) by its boundary to \( S^2 \).

![image_2021-01-19-00-35-48](figures/image_2021-01-19-00-35-48.png)

In general, \( {{\partial}}H_g = \Sigma_g \) is a genus \( g \) surface, and \( H_g \setminus{\coprod}_{i=1}^g D_i = B^3 \). We can keep track of the data by specifying \( (\Sigma, \alpha_1, \alpha_2, \cdots, \alpha_g) \) where \( {{\partial}}D_i = \alpha_i \).

![Attaching a handlebody](figures/image_2021-01-19-11-26-35.png)
:::

::: {.definition title="Heegard Decomposition"}
A **Heegard diagram** is \( M = H_1 \cup_{{\partial}}H_2 \) where \( H_i \) are genus \( g \) handlebodies and there is a diffeomorphism \( {{\partial}}H_1 \to {{\partial}}H_2 \).
:::

::: {.theorem title="?"}
Every closed 3-manifold has a Heegard decomposition, although it is not unique.
:::

::: {.definition title="Heegard Diagram"}
A **Heegard diagram** is the data \( (\Sigma_g, \alpha = \left\{{ \alpha_1, \cdots, \alpha_g}\right\}, \beta = \left\{{ \beta_1, \cdots, \beta_g}\right\}) \) where the \( \alpha \) correspond to \( H_1 \) and \( \beta \) to \( H_2 \) and \( \Sigma_g = {{\partial}}H_1 = {{\partial}}H_2 \).
:::

## Lagrangian Floer Homology

This is essentially an infinite-dimensional version of Morse homology.

::: {.definition title="Symplectic Manifold"}
A **symplectic manifold** is a pair \( (M^{2n}, \omega) \) such that

-   \( \omega \) is *closed*, i.e. \( d \omega = 0 \), and
-   \( \omega \) is *nondegenerate*, i.e. \( \wedge^n \omega \neq 0 \).
:::

::: {.definition title="Lagrangian"}
A **Lagrangian submanifold** is an \( L^n \subseteq M \) such that \( { \left.{{\omega}} \right|_{{L}} } = 0 \).
:::

If \( L_1 \cap L_2 \) is finitely many points, case we can define a chain complex
\[
CF(M^{2n}, L_1, L_2) \coloneqq{\mathbb{Z}}_2[L_1 \cap L_2]
,\]
the \( {\mathbb{Z}}_2{\hbox{-}} \)vector space generated by the intersection points of the Lagrangian submanifolds. We'll define a differential by essentially counting discs between intersection points:

![Two intersection points](figures/image_2021-01-19-11-46-38.png)

We'll want to write \( {{\partial}}x = c_y y + \cdots \) where \( c_y \) is some coefficient. How do we compute it? In this case, we have half of the boundary on \( L_1 \) and half is on \( L_2 \)

![i](figures/image_2021-01-19-00-40-08.png)

So we can the number of *holomorphic* discs from \( x \) to \( y \). We'll get \( {\partial}^2 = 0 \iff \operatorname{im}{\partial}\subset \ker {\partial} \), and \( HF \) will be kernels modulo images. In more detail, we'll have
\[
{{\partial}}x = \sum_y \sum_{\mu(\varphi) = 1} \# \widehat{\mathcal{M}} (\varphi)y &&  \widehat{\mathcal{M}}(\varphi) = \mathcal{M}(\varphi) / {\mathbb{R}}
\]
where \( \widehat{\mathcal{M}} \) will (in good cases) be a 1-dimensional manifold with finitely many points. Note that it's not necessarily true that \( CF \) has a grading!

Given a 3-manifold \( M^3 \), we'll associate a Heegard diagram \( \Sigma, \alpha, \beta \). Note the \( g{\hbox{-}} \)element symmetric group acts on \( \prod_{i=1}^g \Sigma \) by permuting the \( g \) coordinates, so we can define \( \operatorname{Sym}^g(\Sigma) \coloneqq\prod_{i=1}^g \Sigma / S_g \).

::: {.theorem title="?"}
The space \( \operatorname{Sym}^g(\Sigma) \) is a smooth complex manifold of \( {\mathbb{R}}{\hbox{-}} \)dimension \( 2g \).
:::

Write \( {\mathbb{T}}_{\alpha} \coloneqq\prod_{i=1}^g \alpha_i \subseteq \prod_{i=1}^g \Sigma \) for a \( g{\hbox{-}} \)dimensional torus; this admits a quotient map to \( \operatorname{Sym}^g(\Sigma) \). We can repeat this to obtain \( {\mathbb{T}}_{\beta} \). Then \( HF^{\,\cdot\,}(M) \) will be a variation of Lagrangian Floer Homology for \( (\operatorname{Sym}^g(\Sigma), {\mathbb{T}}_{\alpha}, {\mathbb{T}}_{\beta} ) \).

::: {.example title="?"}
Consider constructing a genus \( g=1 \) Heegard diagram. Recall that \( S^3 \) can be constructed by gluing two solid torii.

![image_2021-01-19-12-20-16](figures/image_2021-01-19-12-20-16.png)

Here \( (T, \alpha, \beta) \) will be a Heegard diagram for \( S^3 \).
:::

::: {.exercise title="?"}
Show that the following diagram with \( \beta \) defined as some perturbation of \( \alpha \) is a Heegard diagram for \( S^1 \times S^2 \).

![image_2021-01-19-12-21-56](figures/image_2021-01-19-12-21-56.png)
:::

::: {.definition title="Dehn Surgery"}
Consider \( M \) a 3-manifold containing a knot \( K \), we can construct a new 3-manifold by first removing a neighborhood of \( K \) to yield \( M\setminus N(K) \):

![image_2021-01-19-12-23-16](figures/image_2021-01-19-12-23-16.png)

Taking a new solid torus \( S \coloneqq{\mathbb{D}}^2 \times S^1 \) and a diffeomorphism \( i: {{\partial}}S \to {{\partial}}(M \setminus N(K)) \), this yields a new manifold \( M _{\varphi} (K) \), a **surgery** along \( K \).

![image_2021-01-19-12-25-25](figures/image_2021-01-19-12-25-25.png)
:::

::: {.remark}
Note that the diffeomorphism is entirely determined by the image of the curve \( \alpha \) . The Knot Floer chain complex of \( K \) will allow us to compute any flavor \( HF^{\,\cdot\,}M _{\varphi} (K) \) of Floer homology. Why is this important: any closed 3-manifold is surgery on a link in \( S^3 \). However there are many more computational tools available here and not in the other theories: combinatorial approaches to compute, exact sequences, bordered Floer homology.
:::

Next time: we'll talk about "integer surgeries".

# Lecture 3: Morse Theory (Thursday, January 19)

## Intro to Morse Theory

Let \( M^n \) be a smooth closed manifold, then the goal is to study the topology of \( M \) by studying smooth functions \( f \in C^ \infty (M, {\mathbb{R}}) \). We'll need \( f \) to be *generic* in a sense we'll discuss later.

```{=html}
<!--:::{.definition title="$p/q$ Surgery"}-->
```
```{=html}
<!--?-->
```
```{=html}
<!--:::-->
```
```{=html}
<!--![image_2021-01-19-00-41-55](figures/image_2021-01-19-00-41-55.png)-->
```
::: {.definition title="Critical Point"}
A point \( p\in M \) is called a **critical point** if and only if \( (df)_p = 0 \).
:::

::: {.definition title="Hessian / Second Derivative"}
Fixing a critical point \( p \) for \( f \), the **second derivative** or **Hessian** of \( f \) at \( p \) is a bilinear form on \( T_pM \) which is defined in the following way: for \( v, w\in T_p M \), extend \( w \) to a vector field \( \tilde w \) in a neighborhood of \( p \) and set
\[
d^2 f_p(v, w) = v\cdot (\tilde w \cdot f)(p) \coloneqq v \cdot (df)(\tilde w)(p)
.\]
where we take the derivative of \( f \) with respect to \( \tilde w \), then take the derivative with respect to \( v \), then evaluate at the point to get a number.
:::

::: {.remark}
This is only well-defined at critical points (check!). Note that we need \( \tilde w \) so that \( \tilde w \cdot f \) is again a function (and not a number) which can be differentiated again. You can also take e.g. \( \tilde v \cdot (\tilde w \cdot f) \), differentiating with respect to the vector field instead of just the vector \( v \), but we're plugging in \( p \) in either case.
:::

::: {.claim}
The second derivative is

1.  Well-defined, and

2.  Symmetric
:::

::: {.remark}
If you fix a coordinate chart in a neighborhood of \( p \), then the bilinear form is represented by a matrix given by
\[
(d^2 f)_p = H_p =  \qty{ {\frac{\partial ^2}{\partial x_j {\partial}x_i}\,}(p)}_{ij}
.\]
:::

::: {.proof title="of 2"}
We can compute
\[
(d^2 f)_p(v, w) - (d^2 f)_p(w, v) 
&= v\cdot (\tilde w \cdot f)(p) - w \cdot (\tilde v \cdot f)(p) \\
&\coloneqq df_p \qty{ [\tilde v, \tilde w]} \\
& = 0 && \text{since $p$ is a critical point and $df_p = 0$}
.\]
:::

::: {.proof title="of 1"}
This is now easier to prove: we are picking an extension of \( w \) to a vector field, so we need to show that the definition doesn't depend on that choice.
\[
(d^2 f)(_p(v, w) 
&= v\cdot (\tilde w \cdot f)(p) && \text{which doesn't depend on }\tilde v\\
&= (d^2 f)_p(w, v) \\
&= w\cdot (\tilde v \cdot f)(p) && \text{which doesn't depend on } \tilde w
,\]
and thus this is independent of both \( \tilde v \) and \( \tilde w \).
:::

::: {.exercise title="?"}
Show that the second derivative in local coordinates is given by the matrix \( H_p \) above.
:::

::: {.remark}
In local coordinates, we can write \( v = \sum_{i=1}^n a_i {\frac{\partial }{\partial x_i}\,} \) and \( w = \sum_{i=1}^n b_i {\frac{\partial }{\partial x_i}\,} \), and thus
\[
(d^2 f)_p(v, w) = \mathbf{b}^t H_p \mathbf{a} = \sum_{1 \leq i,j \leq n} a_i b_j {\frac{\partial ^2 f}{\partial x_i {\partial}x_j}\,}(p)
.\]
:::

::: {.definition title="Nondegenerate Critical Points"}
A critical point \( p\in M \) is called **nondegenerate** if the bilinear form \( (d^2 f)_p \) is nondegenerate at \( p \), i.e. for all \( v\in T_p M \) there exists a \( w\in T_pM\setminus\left\{{\mathbf{0}}\right\} \) such that \( (d^2 f)_p(v, w) \neq 0 \). This occurs if and only if \( H_p \) is invertible.
:::

::: {.definition title="Index of a critical point"}
Given a nondegenerate critical point \( p\in M \), define the **index** \( \mathop{\mathrm{Ind}}(p) \) of \( f \) at \( p \) in the following way: since \( H_p \) is symmetric and nondegenerate, its eigenvalues are real and nonzero, so define the index as the number of *negative* eigenvalues of \( H_p \).
:::

::: {.definition title="Morse Function"}
A function \( f\in C^ \infty (M, {\mathbb{R}}) \) is called a **Morse function** if and only if all of its critical points are nondegenerate.
:::

::: {.remark}
We'll see that almost every smooth function is Morse, and these are preferable since they have a simple and predictable structure near critical points and don't do anything interesting elsewhere.
:::

::: {.theorem title="Morse Lemma"}
Let \( p\in M \) be a nondegenerate critical point of \( f \) with \( \mathop{\mathrm{Ind}}(p) = \lambda \). Then there exists charts \( \varphi:(U, p) \to ({\mathbb{R}}^n, 0) \) such that writing \( f \) in local coordinates yields
\[
(f \circ \varphi ^{-1} )(x) = f(p) - \sum_{i=1}^{\lambda} x_i^2 + \sum_{j= \lambda + 1}^n x_j^2
.\]
:::

::: {.remark title="Observation 1"}
We have
\[
H_p = 
\begin{bmatrix}
-2&&&&&&\\
&\ddots&&&&&\\
&&-2&&&&\\
&&&2&&&\\
&&&&\ddots&&\\
&&&&&2&\\
&&&&&&2
\end{bmatrix}
= -2 I_{\lambda} \oplus 2 I_{n- \lambda}
.\]
:::

::: {.remark title="Observation 2"}
If \( \lambda=n \)??
:::

::: {.remark title="Observation 3"}
??
:::

::: {.example title="Sphere"}
Consider \( S^2 \) with a height function:

![Sphere with a height function](figures/image_2021-01-19-00-49-32.png)

Then we have a local minimum at the South pole \( p \) and a local max at the North pole \( q \), where \( \mathop{\mathrm{Ind}}(p) = 0 \) and \( \mathop{\mathrm{Ind}}(q) = 2 \). Note that the critical points essentially occur where the tangent space is horizontal
:::

::: {.example title="Torus"}
Consider \( {\mathbb{T}}^2 \) with the height function:

![Torus with a height function](figures/image_2021-01-19-00-49-53.png)

This has a similar max/min as the sphere, but also has two critical points in the middle that resemble saddles:

![Saddle points](figures/image_2021-01-21-12-04-50.png)
:::

::: {.remark}
Define \( M_a \coloneqq f ^{-1} ((- \infty , a]) \); we then want to consider how \( M_a \) changes as \( a \) changes:

![\( M_a \) on the sphere](figures/image_2021-01-21-12-06-29.png)

![\( M_a \) on the torus](figures/image_2021-01-21-12-06-49.png)
:::

::: {.lemma title="?"}
If \( f ^{-1} ([a, b]) \) contains no critical points, then
\[
f ^{-1} (a) &\cong f ^{-1} (b) \\
M_a &\cong M_b
.\]
:::

::: {.definition title="Gradients"}
Choose a metric \( g \) on \( M \), then the **gradient vector** of \( f \) is given by
\[
g(\nabla f, v) = df(v)
.\]
:::

::: {.remark}
We have
\[
df( \nabla f) = g(\nabla f, \nabla f) = {\left\lVert {\nabla f} \right\rVert}^2
.\]
:::

::: {.proof title="?"}
We have the following situation:

![image_2021-01-21-12-11-16](figures/image_2021-01-21-12-11-16.png)

The gradient vector is always tangent to the level sets, so we can consider the curve \( \gamma \) which satisfies \( \dot\gamma(t) = -\nabla f( \gamma(t)) \):

![image_2021-01-21-12-12-42](figures/image_2021-01-21-12-12-42.png)

For technical reasons, we want to end up with cohomology instead of homology and will take \( -\nabla f \) instead of \( \nabla f \) everywhere:

![image_2021-01-21-12-13-35](figures/image_2021-01-21-12-13-35.png)

So \( \gamma \) will be a trajectory of \( - \nabla f \), and \( f ^{-1} [a, b] \cong f ^{-1} (a) \times[0, 1] \). A problem is that following these trajectories may involve arriving at \( f ^{-1} (a) \) at different times:

![image_2021-01-21-12-15-10](figures/image_2021-01-21-12-15-10.png)

We can fix this by normalizing:
\[
V \coloneqq- \nabla f / {\left\lVert { \nabla f} \right\rVert}^2 \implies (df)(v) = {\left\langle { \nabla f},~{ - \nabla f / {\left\lVert {\nabla f} \right\rVert}^2} \right\rangle} = -1
.\]

For every \( p \in f ^{-1} (b) \), if \( \gamma(t) \) is the trajectory starting from \( p \), i.e. \( \gamma(0) = p \), then \( \gamma(b-a) \in f ^{-1} (a) \). So define
\[
\Phi: f ^{-1} (b) \times[0, b-a] &\to f ^{-1} ([a, b]) \\
(p, t) &\mapsto \gamma_p (t)
,\]
which will be a diffeomorphism.
:::

::: {.theorem title="?"}
Suppose \( f ^{-1} ([a, b]) \) contains exactly one critical point \( p \) with \( \mathop{\mathrm{Ind}}(p) = \lambda \) and \( f(p) = c \). Then
\[
M_b = M_a \cup_{{{\partial}}} \qty{ D^ \lambda \times D^{n - \lambda} }
\]
where \( n \coloneqq\dim M \).
:::

::: {.example title="?"}
For \( \lambda= 1, n - \lambda= 2 \):

![image_2021-01-21-12-32-38](figures/image_2021-01-21-12-32-38.png)
:::

::: {.example title="?"}
![image_2021-01-19-00-53-07](figures/image_2021-01-19-00-53-07.png)
:::

::: {.definition title="Unstable Submanifold"}
\[
W_f^u(p) \coloneqq\left\{{p}\right\} \cup\left\{{
\dot{\gamma(t)} = -\nabla f(\gamma(t)),\, \lim_{t\to -\infty} \gamma(t) = p,\, t\in {\mathbb{R}}
}\right\}
.\]
:::

::: {.lemma title="?"}
If \( \mathop{\mathrm{Ind}}(p) = \lambda \) then \( W_f^u(p) \cong {\mathbb{R}}^ \lambda \).
:::

::: {.example title="?"}
![image_2021-01-19-00-55-24](figures/image_2021-01-19-00-55-24.png)
:::

::: {.example title="?"}
![image_2021-01-19-00-55-41](figures/image_2021-01-19-00-55-41.png)
:::

::: {.definition title="Stable Manifold"}
\[
W_f^s(p) \coloneqq\left\{{p}\right\} \cup\left\{{
\dot{\gamma(t)} = -\nabla f(\gamma(t)),\, \lim_{t\to +\infty} \gamma(t) = p,\, t\in {\mathbb{R}}
}\right\}
.\]
:::

::: {.lemma title="?"}
If \( \mathop{\mathrm{Ind}}(p) = \lambda \) then \( W_f^s(p) \cong {\mathbb{R}}^{n- \lambda} \).
:::

::: {.definition title="$C^\\infty$ "}
\( C^ \infty (M; {\mathbb{R}}) \) is defined as smooth function \( M\to |RR \), topologized as:

-   ?
-   ?

And a basis for open neighborhoods around \( p \) is given by
\[
N_g(f) = \left\{{
g:M\to {\mathbb{R}}{~\mathrel{\Big|}~}
{\left\lvert {
{\frac{\partial ^k g}{\partial {\partial}x _{i_1} \cdots {\partial}x _{i_k} }\,}(p)
- 
{\frac{\partial ^k f}{\partial {\partial}x _{i_1} \cdots {\partial}x _{i_k} }\,}(p)
} \right\rvert} < \infty\, \forall \alpha,\, \forall p\in h_ \alpha(C_ \alpha)
}\right\}
.\]
:::

::: {.theorem title="?"}
The set of Morse functions on \( M \) is open and dense in \( C^ \infty (M; {\mathbb{R}}) \).
:::

[^1]: See Sarkour-Wang

[^2]: This is the strongest variant.

[^3]: What does "detect" mean? This is slightly technical.

[^4]: Note that wedging to a nontrivial top form is equivalent to being nowhere integrable here.

[^5]: These are referred to as **Seifert surfaces**.

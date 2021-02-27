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

# Lecture 1: \( {\mathbb{A}}^1 \) Enumerative Geometry {#lecture-1-mathbba1-enumerative-geometry}

Enumerative geometry counts algebro-geometric objects, and in order to actually obtain an invariant number at the end of the day one uses an algebraically closed field \( k \) or \( {\mathbb{C}} \). This is essentially because the conditions imposed are polynomial, and polynomials of degree \( n \) over a closed field always have \( n \) roots.

The goal here is to record information about the fields of definition. However, since we may no longer have invariant numbers as solutions to polynomial equations, we replace this with a notion of *weights* to get an "invariance of bilinear form" principle instead. Over characteristic not 2, we can use quadratic forms, which ties to Lurie's first talk.

## Example: Lines on a Smooth Cubic Surface

> Joint work with Jesse Kass

::: {.definition title="Smooth Cubic Surfaces"}
A **cubic surface** \( X \) consists of the \( {\mathbb{C}} \) solutions to a polynomial in three variables, i.e.
\[
X = \left\{{(x,y,z) \in {\mathbb{C}}^3 {~\mathrel{\Big|}~}f(x,y,z) = 0}\right\},
\]

where \( f \) is degree 3. In general, we want to compactify, so we view \( X \hookrightarrow{\mathbb{CP}}^3 \) as
\[
{\mathbb{CP}}^3 = \left\{{\mathbf{x} = [w,x,y,z]\neq \mathbf{0} {~\mathrel{\Big|}~}\forall \lambda \in {\mathbb{C}}^\times,~\mathbf{x} = \lambda \mathbf{x}}\right\}
\]

and so
\[
X = \left\{{[w,x,y,z] \in {\mathbb{CP}}^3 {~\mathrel{\Big|}~}f(w,x,y,z) = 0}\right\}
\]
where \( f \) is homogeneous. The surface \( X \) is **smooth** if the underlying points form a manifold, or equivalently if the partials don't simultaneously vanish.
:::

::: {.theorem title="Salmon-Cayley, 1849"}
If \( X \) is a smooth cubic surface, then \( X \) contains exactly 27 lines.
:::

::: {.example title="?"}
The Fermat cubic \( f(w,x,y,z) = w^3 + x^3 + y^3 + z^3 \). We can find one line, given by
\[
L = \left\{{[s,-s,t,-t] {~\mathrel{\Big|}~}s,t \in {\mathbb{CP}}^1}\right\},
\]

and in fact this works for any \( \lambda, \omega \) such that \( \lambda^3 = \omega^3 = -1 \), yielding
\[
L' = \left\{{[s,\lambda s,t,\omega t] {~\mathrel{\Big|}~}s,t \in {\mathbb{CP}}^1}\right\}.
\]

We can also permute \( s,t \) around to get more lines, and by counting this yields 27 distinct possibilities: 3 choices for \( \lambda \), 3 choices for \( \omega \), and \( \frac 1 2 {4\choose 2} \) ways to pair them with the \( s,t \) in the original \( L \).

> There is a proof in the notes that these are the only lines, which is relatively elementary.
:::

### Modern Proof

We'll use characteristic classes, which we'll later replace by an \( {\mathbb{A}}^1 \) homotopy theory variant. Let \( {\operatorname{Gr}}(1,3) \) be the Grassmannian parametrizing 1-dimensional subspaces of \( {\mathbb{CP}}^3 \), where the \( {\mathbb{C}} \) points of this space parameterize 2-dimensional subspaces \( W \subseteq {\mathbb{C}}^4 \). This is a moduli space of the lines we're looking for. Let
\[S \to {\operatorname{Gr}}(1,3)\]
be the tautological bundle where the fiber is simply given by \( S_W = W \). We can also form the bundle
\[
(\operatorname{Sym}^3 S)^\vee\to {\operatorname{Gr}}(1,3)
\]
where the fiber over the point corresponding to \( W \) is all of the cubic polynomials on \( W \), i.e. 
\[(\operatorname{Sym}^3 S)^\vee_W = (\operatorname{Sym}^3 W)^\vee.\]
Explicitly, we have the following two bundles to work with:

```{=tex}
\begin{tikzcd}
W \ar[r] & S \ar[r] & {\operatorname{Gr}}(1, 3) \\
\qty{\operatorname{Sym}^3 W}^\vee\ar[r] & \qty{\operatorname{Sym}^3 S}^\vee\ar[r] & {\operatorname{Gr}}(1, 3)
\end{tikzcd}
```
Our chosen \( f \) determines an element of \( (\operatorname{Sym}^3 {\mathbb{C}}^4)^\vee \), which is thus a section \( \sigma_f \) of the second bundle above, where
\[
\sigma_f(W) =  {\left.{{f}} \right|_{{W}} } .
\]
We thus have
\[
{\mathbb{P}}W \in X \iff \sigma_f(W) = 0,
\]
i.e. the line corresponding to \( W \) is in our surface exactly when this section is zero. We now want to count the zeros of \( \sigma_f \), which is exactly what the Euler class does. To be precise, the Euler class counts the zeros of a section of a properly oriented vector bundle with a given weight. Let \( V\to M \) be a rank \( r \) \( {\mathbb{R}}{\hbox{-}} \) vector bundle over a dimension \( r \) real manifold where we assume that \( V \) is oriented.

> We choose \( {\mathbb{R}} \) here because \( {\mathbb{C}} \) is slightly too nice and gives us a preferred orientation (which we'll want to track later.)

For any section \( \sigma \) with only isolated zero, we'll assign a weight to each zero which comes from the topological degree function
\[
\deg: [S^{r-1}, S^{r-1}] \to {\mathbb{Z}},
\]

where we use the brackets to denote homotopy classes of maps.

::: {.definition title="Degrees"}
Let \( p\in M \) where \( \sigma(p) = 0 \), and define \( \deg_p(\sigma) \) in the following way: Choose local coordinates near \( p \). Since the zeros are isolated, we can choose a ball \( B_\varepsilon(p) \) such that \( x\in B_\varepsilon(p) - \left\{{p}\right\} \implies \sigma(x) \neq 0 \). Choose a local trivialization of the total space \( V \). This allows us to view \( \sigma: {\mathbb{R}}^r \to {\mathbb{R}}^r \) as a real function. We can choose coordinates such that \( p = 0 \) in the domain, so \( \sigma(0) = 0 \), and moreover the image \( \sigma(B_\varepsilon(p)) = {\mathbb{R}}- \left\{{0}\right\} \). We can then form a function
\[
\mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu: {\partial}B_\varepsilon(p) = S^{r-1} &\to S^{r-1} = {\partial}\sigma(B_\varepsilon(p)) \\
x &\mapsto \frac{\sigma(x)} {{\left\lVert {\sigma(x)} \right\rVert}},
\]
and so we can take \( \deg_p(\sigma) \coloneqq\deg \mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu \).
:::

::: {.remark}
There is indeterminacy here up to elements of \( \operatorname{GL}(r, {\mathbb{R}}) \) which could possibly affect the sign, however, but this can be fixed using the assumption that \( V \) is oriented and choosing local trivializations for which the orientations are compatible. This gives us a well-defined local degree of a section at a zero.
:::

::: {.definition title="Euler Class"}
The Euler class, which only depends on the bundle and not the section, is given by
\[
e(V) = \sum_{\left\{{p{~\mathrel{\Big|}~}\sigma(p) = 0}\right\}} \deg_p(\sigma).
\]
:::

It can be shown that because \( X \) is smooth, the zeros are all simple and so in the complex case, the degrees are all 1. We thus obtain
\[
{\left\lvert {\left\{{\text{Lines on } X}\right\}} \right\rvert} = e((\operatorname{Sym}^3 S)^\vee),
\]

where the RHS is independent of \( X \) and can be computed using the splitting principle and the cohomology of \( {\operatorname{Gr}} \).

## What about \( {\mathbb{R}} \)? {#what-about-mathbbr}

::: {.theorem title="Schlafli, 19th century"}
\( X \) can have \( 3,7,15 \) or \( 27 \) lines.
:::

So it's not constant, and thus there's not an invariant number here, but Segre (1942) distinguished between hyperbolic and elliptic lines. Recall the characterization of elements in \( {\operatorname{Aut}}L \) for \( L={\mathbb{RP}}^1 \) (real lines) as elliptic/hyperbolic: we have \( {\operatorname{Aut}}L \cong \mathrm{PGL}(2, {\mathbb{R}}) \), so pick some \( I \) corresponding to a matrix
\[
[I] = \begin{pmatrix}a & b \\ c & d\end{pmatrix},\quad  z\mapsto \frac{az+b}{cz+d}
\]
where the second formulation above shows that there are two fixed points, since solving for \( z\mapsto z \) yields a quadratic equation. So we have
\[
\mathrm{Fix}(I) = \left\{{z \in {\mathbb{C}}{~\mathrel{\Big|}~}cz^2 + (d-z)z + b = 0}\right\},
\]
and we characterize \( I \) by the following cases:

-   \( \mathrm{Fix}(I) \) contains two real points: hyperbolic
-   A complex conjugate pair: elliptic

So we'll associate an involution to \( L \), and port over these notions of hyperbolic/elliptic. As we'll see later, for each point on \( L \), there will be a unique other point that has the tangent space, and this involution will swap them. Let \( p\in L \), and consider \( T_pX \cap X \) . Since \( L \) is in both of the varieties we're intersecting here, and we can apply Bezout's theorem, we know that its complement will some degree 2 variety \( Q \) (since the total degree is 3).

So we can write \( T_pX \cap X = L \cup Q \). We know that \( L \cap Q \) will be the intersection of a degree 1 and a degree 2 curve, which will have 2 points of intersection. At one of these points, say \( p \), \( Q \) and \( L \) will intersect transversally, and so the tangent vectors \( T_pQ \) and \( T_pL \) give a 2-dimensional frame, which yields a plane \( P \subseteq T_pX \). Since \( X \) is smooth, we get equality and \( P = T_pX \). This also holds for the second point of intersection, \( p' \), and so we take the involution \( I(p) = p' \) and vice-versa. We then say \( L \) is elliptic/hyperbolic exactly when \( I \) is. A natural way to see that there should be a distinction between two types of lines is to use spin structures. Consider a physical cubic surface sitting inside \( {\mathbb{R}}^3 \), and push the tangent plane alone a line. There are two things that can happen -- one is a twisting by a nontrivial element of \( \pi_1 SO_3({\mathbb{R}}) \), the other is no twisting at all.

::: {.example title="?"}
Look at the Fermat cubic surface \( x^3+y^3+z^3=-1 \)

![](assets/2019-03-03-22-11-15.png)

Interpretation of this image: \( X \subset {\mathbb{R}}^3 \) is a surface, which has 3 lines that are contained in a plane. We this view \( X \) from above this plane, marking a plus/minus to denote the relative height of the surface within each bounded region. Plus denotes part of the surface that bubbles up over the plane, having positive height/\( z \) coordinates, etc.

> (DZG) This took me a while to visualize -- what worked for me was thinking about "egg crate" padding:

![](assets/2019-03-03-22-27-49.png)
:::

After thinking about what physically happens as you push a plane around, it becomes clear that these three lines are all hyperbolic. Note that this question is the same as asking if a path in the frame bundle lifts.

Although the number of lines isn't a constant, we can take a "signature" sort of formula to obtain an invariant. In this case, the number hyperbolic lines minus the number of elliptic lines *is* constant. In this case, the constant is 3.

::: {.slogan}
If you have a result that works over \( {\mathbb{C}} \) and \( {\mathbb{R}} \), it may be a result in \( {\mathbb{A}}^1 \) homotopy theory that has realizations recovering the original results.
:::

## \( {\mathbb{A}}^1 \) Homotopy Theory {#mathbba1-homotopy-theory}

This will allow us to do with schemes much of what we can do in \( \mathbf{Top} \). Smooth schemes behave like manifolds, where there are balls around points. The convention here will be that we're working over smooth schemes, denoted \( \mathrm{Sm}_k \) where \( k \) is a field.

> Remark: in my notation I use \( {\mathbb{RP}}^n, {\mathbb{CP}}^n \), and \( {\mathbb{P}}^n(k) \) to denote various projective spaces. I'll adopt Kirsten's convention here and just denote \( {\mathbb{P}}^n(k) \) as \( {\mathbb{P}}^n \).

We'll get spheres from \( S_{\mathbb{A}}^n \coloneqq{\mathbb{P}}^n/{\mathbb{P}}^{n-1} \). One nice result due to Morel is that there is a degree map
\[
[S_{\mathbb{A}}^n, S_{\mathbb{A}}^n] \to GW(k),
\]

where the target is not the integers in this case, but rather a group of bilinear forms that are quadratic in characteristic not equal to 2. It is the Grothendieck-Witt group, whose elements are formal difference of bilinear forms.

Thus the group itself is the group completion of nondegenerate symmetric isomorphism classes of bilinear forms \( V^2 \to k \) where \( V \) is a finite-dimensional \( k{\hbox{-}} \)vector space.

The group structure arises because if we have two bilinear forms \( B, B' \) on vector spaces \( V, W \) respectively, then we can define a new form on \( V \oplus W \) by working in components and declaring orthogonality between any of the factors. We then take formal differences of these, and inherit a ring structure from the tensor product of forms.

Bilinear forms over fields can all be diagonalized, although in characteristic 2, this only holds in a stable sense.

## The Grothendieck-Witt Group

Since we can diagonalize, the group \( GW(k) \) has a presentation coming from the one dimensional forms. Any of these work as a generator, so we have

-   Generators: \( \left\langle{a}\right\rangle \) where \( a\in k^\times \), corresponding to the form `\begin{align*}
    \left\langle{a}\right\rangle : k^2 &\to k\\
    (x,y) &\mapsto axy
    .\end{align*}`{=tex}

-   Relations: if we change the basis of \( k \) using a multiplication by \( b\in k^\times \), we get \( \left\langle{ab^2}\right\rangle = \left\langle{a}\right\rangle \). \> This means that \( a \in k^\times/(k^\times)^2 \)

    -   We also get \( \left\langle{a}\right\rangle + \left\langle{b}\right\rangle = \left\langle{a+b}\right\rangle + \left\langle{ab(a+b)}\right\rangle \)

There are many concrete computations of this known for global fields, local fields, finite fields, function fields, etc.

::: {.example title="The Complex Numbers"}
Computing \( GW({\mathbb{C}}) \): The generators are in bijection with \( k^\times/(k^\times)^2 \), but since every element of \( {\mathbb{C}} \) is a square, so there's only one element here. We thus obtain
\[
GW({\mathbb{C}}) &\xrightarrow{\sim} {\mathbb{Z}}\\
\beta &\mapsto \dim V
\]
which is realized by taking the rank.
:::

::: {.example title="The Real Number"}
Computing \( GW({\mathbb{R}}) \): We still have the rank, but now we can also take the signature, so we have
\[
GW({\mathbb{R}}) \xrightarrow{\text{rank} \times \text{signature}} {\mathbb{Z}}^2,
\]
although a minor parity issue crops up here that can be fixed without damaging the isomorphism type.
:::

::: {.example title="Finite Fields"}
Computing \( GW({\mathbb{F}}_q) \): We can make a matrix out of how \( \beta \) acts on basis elements and take the determinant of it to obtain an invariant called the *discriminant*, and so
\[
GW({\mathbb{F}}_q) \xrightarrow{\text{discriminant} \times \text{rank}} {\mathbb{F}}_q^\times/({\mathbb{F}}_q^\times)^2 \times {\mathbb{Z}}
\]
Note that the quotient is needed because we can change basis in \( {\mathbb{F}}_q \), which amounts to conjugating by a matrix \( A \), and so this discriminant is only well-defined up to squares.
:::

## Euler Class

There is an Euler class in this setting,
\[
e(V) = \sum_{p{~\mathrel{\Big|}~}\sigma(p) = 0} \deg_p(\sigma).
\]
Letting \( X \) be a smooth cubic surface over \( k \), then a line \( L\subset X \) will be a closed point of the Grassmannian \( {\operatorname{Gr}}(1,3) \), so we can think of it as points of the form
\[
L = \left\{{[a,b,c,d]s + [a',b',c',d']t {~\mathrel{\Big|}~}s,t \in {\mathbb{P}}^1(k(L}\right\}
\]
where the extension field \( k(L) = k(a,b,c,d,a',b',c',d') \) is obtained by adjoining the coefficients to \( k \).

> DZG: I think these are always separable, mentioned later in the talk.

We thus get
\[
{\mathbb{P}}^1(k(L)) \cong L \underset{\substack{\text{closed}\\\text{subscheme}}}\subseteq X_{k(L)} \subseteq {\mathbb{P}}^3(k(L)).
\]

Given such a line \( L\subseteq X \), similar to the real setting, we obtain an involution \( I \in {\operatorname{Aut}}L \cong PGL(2, k(L)) \) after choosing coordinates. We also find that \( \mathrm{Fix}(L) \) again falls into two cases:

-   \( 2 k(L) \) points, or
-   2 conjugate points in some quadratic extension \( k(L)[\sqrt D] \) where \( D \in k(L)^\times / (k(L)^\times)^2 \). These correspond to the oddities in the tangent plane in the real case.

We then define
\[
\mathrm{Type}(L) = \left\langle{D}\right\rangle \in GW(k(L)),
\]

or equivalently \( D=ab-cd \) when \( I = \begin{pmatrix}a&b\\c&d\end{pmatrix} \), in which case \( \mathrm{Type}(L) = \left\langle{-1}\right\rangle \deg I \).

## An Analogous Trace Formula

::: {.theorem title="?"}
Supposing \( X \) is a smooth cubic surface over \( k \) of characteristic not equal to 2, we then have
\[
\sum_{L \in X}\mathrm{Tr}_{k(L) / k}\mathrm{Type}(L) = \text{One fixed quadratic form} = 15 \left\langle{1}\right\rangle + 12 \left\langle{-1}\right\rangle
\]

where the trace/transfer maps are defined as

\[
\mathrm{Tr}_{k(L) / k}: GW(k(L)) &\to GW(k) \\
(V^2 \xrightarrow{\beta} k(L)) &\mapsto (V^2 \xrightarrow{\beta} k) \circ \mathrm{Trace}_\text{Galois}
\]

where \( \mathrm{Trace}_\text{Galois} \) comes from summing the conjugates. Note that we can do this because we can view \( V \) as a vector space over either \( k \) or \( k(L) \), so we end up with a quadratic form over \( k \).
:::

::: {.remark}
Note: we have a well-defined map in the other direction, since the \( GW \) is a stable homotopy group of spheres.
:::

::: {.example title="Complex Number"}
Let \( k={\mathbb{C}} \), then apply rank to get \( 15+12=27 \) on the RHS, while since every element is a square, the Type is just 1, so we get 27 total.
:::

::: {.example title="Reals"}
Let \( k={\mathbb{R}} \), apply signature. If \( L \) is defined over \( C \), so the type is 1, and we're just left with the trace of \( {\mathbb{C}}/{\mathbb{R}} \) -- but this contributes a \( +1 \) and \( -1 \), so there is no contribution. What's left are the lines of \( {\mathbb{R}} \), and since we set it up so type 1 lines are hyperbolic, we just get the trace \( 15-12=3 \).
:::

::: {.example title="Finite Fields"}
Let \( k={\mathbb{F}}_q \). We can define lines in \( {\mathbb{F}}_q^n \), and the "begin a square" partitions \( ({\mathbb{F}}_q^n)^\times \) into two disjoint subsets, we can assign types and we let squares be the hyperbolic elements. We thus get
\[
\left\{\begin{array}{c}
\text{Elliptic lines $L$ } \\
\text{with $k(L) = {\mathbb{F}}_\text{odd}$}
\end{array}\right\} -
\left\{\begin{array}{c}
\text{Hyperbolic lines $L$} \\
\text{with $k(L) = {\mathbb{F}}_\text{even}$}
\end{array}\right\}
\equiv 0 \pmod 2
\]
which follows from computing the discriminant of the given form.
:::

# Lecture 2: User's Guide to \( {\mathbb{A}}^1 \) Homotopy Theory {#lecture-2-users-guide-to-mathbba1-homotopy-theory}

Particularly, arithmetically enriching enumerative results. The first part of this talk focuses on setting up the correct category for this theory.

## Adding Colimits

Recall from last time that we wanted to form a space analogous to a sphere, given by \( {\mathbb{P}}^n/ {\mathbb{P}}^{n-1} \), which we get from a **colimit**

\[
\begin{CD}
  {\mathbb{P}}^{n-1} @>>> {\mathbb{P}}^n \\
  @VVV @VVV \\
  {\{\operatorname{pt}\}}@>>> {\mathbb{P}}^n/ {\mathbb{P}}^{n-1}
\end{CD}
\]

which is the same as requiring that for maps from the total space into the quotient, maps coming from the quotiented space and maps coming from the point agree when the compositions are taken.

::: {.example title="?"}
Another example of a colimit is the union, which is given by

\[
\begin{CD}
  U\cap V @>>> U \\
  @VVV @VVV \\
  V @>>> U \cup V
\end{CD}
\]

These correspond to crushing and gluing operations, which we can do with topological spaces and would like to do with schemes as well. We'd also like smooth schemes to behave like smooth manifolds, in the sense that we can take an open ball around each point. This is part of what \( {\mathbb{A}}^1 \) homotopy theory buys us.
:::

We want colimits, so we add them: let \( {\operatorname{Sm}} \) to be the category of smooth schemes over \( k \). There is a Yoneda embedding

`\begin{align*}
{\operatorname{Sm}}&\xrightarrow{Y} \mathrm{Func}({\operatorname{Sm}}^\text{op}, \mathrm{Sset}) = \text{PreSh}({\operatorname{Sm}}) \\
X &\mapsto \hom({\,\cdot\,}, X)
.\end{align*}`{=tex}

where one might normally require the target to be sets, but since we'd like homotopy colimits and to be able to do things analogous to fibrant/cofibrant replacements, we aim for simplicial sets instead which can essentially be regarded as topological spaces. We can also identify the target with presheaves on the category of smooth schemes. We're building a category for a homotopy theory, which means we need either

-   A simplicial model category, or
-   An \( \infty{\hbox{-}} \)category

Both have notions of fibrations, cofibrations, an associated homotopy category, weak equivalences, etc, and \( \text{PreSh}({\operatorname{Sm}}) \) has this structure.

## Preserving Old Colimits: Picking a Topology

This construction is essentially "freely adding colimits". Since \( {\operatorname{Sm}} \) had colimits (e.g. the union/intersection of open sets), we want \( Y \) to preserve these. We fix this be forcing certain maps to be equivalences using **Bousfield localization**.

This is carried out by looking at open covers
\[
U = \coprod_{\alpha} U_\alpha \to X
\]

and making a simplicial object out of this map and forcing a weak equivalence
\[
\text{cos}^0_x \coprod_\alpha U_\alpha \xrightarrow{\simeq} X
\]

> (DZG) Note: this may be the Cech nerve, not entirely sure. Pretty sure I got the notation wrong though.

This gives us a localization functor
\[
\mathrm{PreSh}({\operatorname{Sm}}) \xrightarrow{L_\tau} \mathrm{Sh}_k
\]

for \( \tau \) a Grothendieck topology which declares certain classes of maps to be covers. We have some choices of topology here, roughly in order of increasing number of open sets:

-   Zariski (on schemes)
-   Nisnevich
-   étale

::: {.definition title="Étale Maps"}
A map \( f\in \hom(X,Y) \in {\operatorname{Sm}} \) (not necessarily smooth) is **étale** at a point \( x\in X \) if the induced map on tangent/cotangent spaces is an isomorphism:
\[
T_x X \xrightarrow{f^*} T_{f(x)}Y
\]
:::

::: {.definition title="Étale Covers"}
A map \( f: \coprod_\alpha U_\alpha \to X \) is an **étale cover** if it is étale and surjective.
:::

::: {.definition title="Nisnevich Covers"}
A map \( f: \coprod_\alpha U_\alpha \to X \) is a **Nisnevich cover** if it is an étale cover and
\[
x\in X \implies \exists u\in U \text{ such that } f^*: k(x) \xrightarrow{\sim}k(u)
.\]
:::

::: {.remark}
This topology has a few nice properties:

-   Smooth schemes have étale maps into \( {\mathbb{A}}^n \), inclusions/closed immersions \( Z \hookrightarrow X \) induce maps \( {\mathbb{A}}^d \hookrightarrow{\mathbb{A}}^n \)
-   Satisfies descent for K-theory
-   The cohomological dimension equals the Krull dimension
-   Cohomology can be computed Čech complexes
-   More listed in Voevodsky's original paper
:::

## Contracting the Affine Line

The last step is forcing \( {\mathbb{A}}^1 \) to be contractible, i.e. \( {\mathbb{A}}^1 \times X \simeq X \), which will come from another localization \( L_{\mathbb{A}} \). This composition will land us in the homotopy theory we want:
\[
{\operatorname{Sm}}\xrightarrow{Y} \text{PreSh}_k \xrightarrow{L_\tau} \text{Sh}_k \xrightarrow{L_{{\mathbb{A}}}} \text{Spc}_k
\]

where \( \tau \) is the choice of the Nisnevich topology, and so we'll call \( \text{Spc}_k \) our \( {\mathbb{A}}^1 \) homotopy theory.

## Making Spheres

Given two pointed spaces \( X, Y \), we have
\[
X \wedge Y = \frac{X \times Y}{(X\times{\{\operatorname{pt}\}}) \cup({\{\operatorname{pt}\}}\times Y)}
\]

In topology, we have \( S^m \wedge S^n = S^{m+n} \). In \( {\mathbb{A}}^1 \) homotopy theory, we have functors to simplicial sets, and so we can take constant functors, and in particular any element space living in simplicial sets is in our new homotopy theory as well. So we have \( S^1 \), we can also take \( {\mathbb{G}}_m = {\mathbb{A}}^1 - \left\{{0}\right\} \), and so we have spheres
\[
S^{p+q,q} = (S^1)^{\wedge p} \wedge ({\mathbb{G}}_m)^{\wedge q} .
\]

Some of these end up being familiar spaces. For example, we can look at the colimit
\[
\begin{CD}
  {\mathbb{G}}_m @>>> {\mathbb{A}}^1 \simeq{\{\operatorname{pt}\}}\\
  @VVV @VVV \\
  {\{\operatorname{pt}\}}\simeq{\mathbb{A}}^1 @>>> {\mathbb{P}}^1
\end{CD}
\]

which follows from the fact that \( {\mathbb{P}}^1 = {\mathbb{A}}^1 \cup\left\{{\infty}\right\} \) (yielding the top-right copy of \( {\mathbb{A}}^1 \)), and we can take a neighborhood around the point at \( \infty \) to obtain the bottom-left copy -- these intersect in \( {\mathbb{G}}_m \).

So \( {\mathbb{P}}^1 \) is the colimit of maps from \( {\mathbb{G}}_m \) to a point, so we can conclude that
\[
{\mathbb{P}}^1 \simeq\Sigma {\mathbb{G}}_m = S^1 \wedge {\mathbb{G}}_m
.\]

We can also show
\[
{\mathbb{A}}^n - \left\{{0}\right\} \simeq(S^1)^{\wedge n-1}\wedge ({\mathbb{G}}_m)^{\wedge n}
.\]
This will rely on a general fact about the colimit of \( X\times Y \) with its projections is a suspension, given by
\[
\begin{CD}
  X\times Y @>>> X \\
  @VVV @VVV \\
  Y @>>> \therefore \Sigma X\wedge Y
\end{CD}
\]

and so we can proceed by induction on the following diagram:
\[
\begin{CD}
  ({\mathbb{A}}^{n-1} - \left\{{0}\right\} )\times({\mathbb{A}}^1 -\left\{{0}\right\}) @>>> ({\mathbb{A}}^{n-1} -\left\{{0}\right\}) \times{\mathbb{A}}^1 \\
  @VVV @VVV \\
  {\mathbb{A}}^n \times({\mathbb{A}}^1 -\left\{{0}\right\}) @>>> {\mathbb{A}}^n - \left\{{0}\right\}
\end{CD}
\]

We also have
\[
{\mathbb{P}}^{n} / {\mathbb{P}}^{n-1} \simeq(S^1)^{\wedge n}\wedge ({\mathbb{G}}_m)^{\wedge n}
.\]
This can be shown because \( {\mathbb{P}}^{n} / {\mathbb{P}}^{n-1} \simeq{\mathbb{P}}^n / {\mathbb{P}}^n-\left\{{0}\right\} \) because \( {\mathbb{A}}^1 \) is trivial and we can homotop the embedded \( {\mathbb{P}}^{n-1} \) down to the origin, giving a line bundle over \( {\mathbb{P}}^{n-1} \). We can then cut out the copy of \( {\mathbb{P}}^{n-1} \) at infinity, yielding
\[
{\mathbb{A}}^n / {\mathbb{A}}^{n} - \left\{{0}\right\} \simeq{\{\operatorname{pt}\}}/ {\mathbb{A}}^{n} - \left\{{0}\right\} = \Sigma ({\mathbb{A}}^{n} - \left\{{0}\right\})
,\]
where the last equality comes from looking at a similar colimit diagram as earlier.

## Thom Spaces

These can be made out of vector bundles, which will prove to be useful in viewing smooth schemes like manifolds. Let \( V \to X \) be an algebraic vector bundle. Then the Thom space

\[
\text{Th}(V) = \frac{V} {V-X} \simeq\frac{{\mathbb{P}}(V \oplus \mathcal O)}{{\mathbb{P}}V}
\]
where \( X \) here corresponds to the zero section, \( \mathcal O \) is the trivial line bundle, and \( {\mathbb{P}}V \) is the projectivization of \( V \) where the coordinate is zero.

> Note: If this was a virtual vector bundle, we could make a Thom spectrum.

The next theorem gives us neighborhoods around points

::: {.theorem title="Purity Theorem"}
Let \( Z \hookrightarrow X \) be a closed immersion in \( {\operatorname{Sm}} \). Consider \( \frac X {X-Z} \), in topology we could take a tubular neighborhood around \( Z \) and view this as a neighborhood mod its boundary. This is equivalent to \( \text{Th}(N_Z X) \), the Thom space of the normal bundle of \( Z \) in \( X \).
:::

::: {.example title="?"}
Let \( Z =\operatorname{Spec}(k) \) and \( X \in {\operatorname{Sm}} \), then let \( U \) be a Zariski open neighborhood of \( z \). Then
\[
U/U-Z \simeq{\mathbb{P}}^n / {\mathbb{P}}^{n-1}
\]
since the Thom space is just a vector space here. So this produces a sphere around \( z \).
:::

::: {.example title="?"}
Replace \( \operatorname{Spec}k \) with \( \operatorname{Spec}(k(z)) \), this yields
\[
{\mathbb{P}}^n_{k(z)} / {\mathbb{P}}^{n-1}_{k(z)} \simeq{\mathbb{P}}^n / {\mathbb{P}}^{n-1} \wedge (\operatorname{Spec}(k(z)\coprod {\{\operatorname{pt}\}})
.\]
:::

> (DZG) Note: video says "disjoint basepoint" here and uses different notation, so what I've written may not be correct.

Compare to manifolds: if \( z\in U \) a small ball, then \( \Sigma {\partial}U \simeq U / U - z \). So if we wanted to look at maps between boundaries, we could suspend and take degrees.

## The Grothendieck-Witt Group

Recall that the target of the degree map was \( {\operatorname{GW}}(k) \); we'll also talk a bit about Milnor K-theory \( K^M_*(k) \). From yesterday, we defined \( {\operatorname{GW}}(k) \) as the isomorphism classes of symmetric nondegenerate bilinear forms over \( k \), which had a generators

`\begin{align*}
\left\langle{a}\right\rangle, \quad a &\in k^\times\\
\left\langle{a}\right\rangle: k^2 &\to k\\
(x,y) &\mapsto axy
.\end{align*}`{=tex}

and relations

`\begin{align*}
\left\langle{ab^2}\right\rangle &= \left\langle{a}\right\rangle \quad&(b\neq 0)\\
\left\langle{a}\right\rangle\otimes\left\langle{b}\right\rangle &= \left\langle{ab}\right\rangle &\\
\left\langle{a}\right\rangle + \left\langle{b}\right\rangle &= \left\langle{a+b}\right\rangle + \left\langle{ab(a+b)}\right\rangle \quad&(a+b\neq 0)
\end{align*}`{=tex}

which follows because we're in \( k^\times/(k^\times)^2 \). Note that the last relation is very important.

These relations imply a special relation concerning a **hyperbolic form,** which is given by
\[
h\coloneqq\left\langle{1}\right\rangle + \left\langle{-1}\right\rangle = \left\langle{a}\right\rangle + \left\langle{-a}\right\rangle
\]
for any \( a \).

We'll look at invariants on bilinear forms -- for many common fields, there are algorithms to determine equality of sums of generators, and thus in \( {\operatorname{GW}} \) there are many tools to work with. Some of these tools are invariants arising from the Milnor conjecture, which involves this group and is a huge achievement in \( {\mathbb{A}}^1 \) homotopy theory.

We have a **rank homomorphism:**
\[
\text{rank}: {\operatorname{GW}}(k) \to {\mathbb{Z}}\\
(B: V^2 \to k) \mapsto \dim V
\]

and the **fundamental ideal** is defined as \( I \coloneqq\ker \text{rank} \). This yields a filtration
\[
{\operatorname{GW}}(k) \supseteq I \supseteq I^2 \supseteq \cdots
\]

where the associated graded are étale cohomology groups and (by the Milnor conjecture) Milnor K-theory groups.

## Milnor K-Theory

We define **Milnor K-theory** as
\[
K_i^M \coloneqq\frac{\bigoplus_{i=1}^\infty  (k^\times)^{\otimes i} } {\left\langle{a\otimes(1-a)}\right\rangle}
\]

which is tensor algebra on \( k^\times \), modded out by the Steinberg relation.

::: {.theorem title="The Milnor Conjecture (Voevodsky)"}
There is a map `\begin{align*}
K_n^M &\to I^n/I^{n+1} \\
\bigotimes_{i=1}^n a_i &\mapsto \prod_{i=1}^n \left(\left\langle{1}\right\rangle - \left\langle{a_i}\right\rangle\right)
.\end{align*}`{=tex}

We can also look at the Kummer map coming from the short exact sequence
\[
1\to {\mathbb{Z}}/2{\mathbb{Z}}\to \overline {k^\times} \to \overline{k^\times} \to 1
\]

which lets us make a map
\[
k^\times \to H_\text{et}^1(k;~{\mathbb{Z}}/2{\mathbb{Z}})
\]

where we can use that fact that \( k^\times \cong K^M_1 \) to land in Milnor K-theory,
\[
K_1^M \to H_\text{et}^1(k;~{\mathbb{Z}}/2{\mathbb{Z}}),
\]

where we can use the cup product to lift this to a map to the \( n \)th graded piece
\[
K_n^M \to H_\text{et}^n(k;~{\mathbb{Z}}/2{\mathbb{Z}}).
\]

Fitting all of this together, we get maps
\[
I^n/I^{n+1} \leftarrow K_n^M \to H_\text{et}^n(k;~{\mathbb{Z}}/2{\mathbb{Z}}),
\]
and the Milnor conjecture states that these are isomorphisms.
:::

In other words, the associated graded of this filtration is the étale cohomology or Milnor K-theory, and if you have a field for which the \( n \)th étale cohomology in \( {\mathbb{Z}}/2{\mathbb{Z}} \) coefficients doesn't vanish, then there is a nontrivial piece in the associated graded.

## Grothendieck-Witt Group Invariants

This lets us view maps \( I^n \to I^n/I^{n+1} \) as invariants on \( {\operatorname{GW}}(k) \).

-   For \( n=0 \), this is the rank homomorphism.
-   For \( n=1 \) we get the discriminant, which is the determinant of the linear map associated to the bilinear form obtained after choosing a basis.
-   For \( n=2 \) this is the Hasse-Witt invariant (see written notes)
-   For \( n=3 \) this is the Arason invariant

For higher \( n \) these invariants don't have names, but for various fields, the lower degrees form a complete invariant -- for example, for finite fields, one needs only check \( n=0,1 \), while \( {\mathbb{Q}} \) requires \( n=0,1,2 \).

The Grothendieck-Witt group is the 0th graded piece of Milnor-Witt K-theory, \( M_*^{MW}(k) \), which is also a homotopy group of spheres in \( {\mathbb{A}}^1 \) homotopy theory (due to Hopkins and Morel).

This group has generators

`\begin{align*}
\left\langle{a}\right\rangle, &\quad a\in k^\times, &\deg a = 1\\
\eta, & & \quad\deg \eta = -1
\end{align*}`{=tex}

and relations

`\begin{align*}
\eta \left\langle{a}\right\rangle &= \left\langle{a}\right\rangle \eta\\
\left\langle{a}\right\rangle\left\langle{1-a}\right\rangle &= 0&\\
\left\langle{ab}\right\rangle &= \left\langle{a}\right\rangle + \left\langle{b}\right\rangle + \eta \left\langle{a}\right\rangle\left\langle{b}\right\rangle\\
\eta h &= 0
\end{align*}`{=tex}

where \( h \) is the same as earlier, but since it's in the wrong group, we need to define this using the isomorphism

`\begin{align*}
G W ( k ) &\cong K _ { 0 } ^ { MW } ( k ) \\
\left\langle{a}\right\rangle &\mapsto 1 + n \left\langle{a}\right\rangle\\
h\coloneqq\left\langle{1}\right\rangle + \left\langle{-1}\right\rangle &\mapsto 2 + \eta\left\langle{-1}\right\rangle\coloneqq h.
\end{align*}`{=tex}

## Degree Theorem

This theorem says that \( \eta \) corresponds to a Hopf map.

::: {.theorem title="Morel"}
\[
[(S^1)^{\wedge n} \wedge ({\mathbb{G}}_m)^{\wedge j},~ (S^1)^{\wedge n} \wedge ({\mathbb{G}}_m)^{\wedge r}] \cong K^{MW}_{r-j}
\]
where the square brackets correspond to homotopy classes of maps. In particular, when \( j=r=n \), we obtain
\[
[{\mathbb{P}}^n /{\mathbb{P}}^{n-1},~ {\mathbb{P}}^n /{\mathbb{P}}^{n-1}] \cong {\operatorname{GW}}(k)
\]
:::

This is a fantastic theorem, which we will see again later when doing oriented Chow groups. A nice consequence is that if we let \( k={\mathbb{R}} \), the degrees behave nicely, characterized by the commutativity of this diagram:

```{=tex}
\begin{tikzcd}
    {[S^{2n}, S^{2n}]} && {[{\mathbb{P}}^n /{\mathbb{P}}^{n-1},~ {\mathbb{P}}^n /{\mathbb{P}}^{n-1}] } && {[S^{n}, S^{n}]} \\
    \\
    {\mathbb{Z}}&& {{\operatorname{GW}}(k)} && {\mathbb{Z}}
    \arrow["{\text{signature}}", from=3-3, to=3-5]
    \arrow["{\text{rank}}"', from=3-3, to=3-1]
    \arrow["{{\mathbb{C}}{\hbox{-}}\text{points}}"', from=1-3, to=1-1]
    \arrow["{{\mathbb{R}}{\hbox{-}}\text{points}}", from=1-3, to=1-5]
    \arrow["\deg", from=1-5, to=3-5]
    \arrow["\deg", from=1-1, to=3-1]
    \arrow["\deg", from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJbU157Mm59LCBTXnsybn1dIl0sWzAsMiwiXFxaWiJdLFsyLDIsIlxcR1coaykiXSxbMiwwLCJbXFxQUF5uIC9cXFBQXntuLTF9LH4gXFxQUF5uIC9cXFBQXntuLTF9XSAiXSxbNCwwLCJbU157bn0sIFNee259XSJdLFs0LDIsIlxcWloiXSxbMiw1LCJcXHRleHR7c2lnbmF0dXJlfSJdLFsyLDEsIlxcdGV4dHtyYW5rfSIsMl0sWzMsMCwiXFxDQ1xcZGFzaFxcdGV4dHtwb2ludHN9IiwyXSxbMyw0LCJcXFJSXFxkYXNoXFx0ZXh0e3BvaW50c30iXSxbNCw1LCJcXGRlZyJdLFswLDEsIlxcZGVnIl0sWzMsMiwiXFxkZWciXV0=)

where the edge degree maps are just the topological degree of maps between spheres and the middle is the \( {\mathbb{A}}^1 \) degree. The signature is the usual difference in \( \pm 1 \)s occurring after diagonalization. Thus \( {\operatorname{GW}}(k) \) lets us simultaneously read off the real and complex degrees of maps between schemes over \( {\mathbb{R}} \). So these homotopy groups are actually homotopy sheaves (not just global sections of sheaves), where we can form a sheaf by taking smash with \( U^+ \) and sheafifying. Thus \( {\operatorname{GW}}(k), K^{MW}_*(k), \) and \( K^M_*(k) \) are all global sections of sheaves.

> DZG: Not sure what \( U^+ \) is here.

## Producing a Sheaf

There is a procedure in Morel's book for producing an unramified sheaf \( K^{MW}_* \) from the values on fields, i.e. \( K^{MW}_*(E) \) for some \( E \supset k \) of finite type. It proceeds as follows: We want to know what the sections are on some scheme \( Y \), so we look at its function field and check \( K^{MW}_* \) on it to see which sections are defined over all of \( Y \) and not over the generic point. This produces the additional data of boundary/residue maps that determine when sections extend globally. So let \( V:E \to {\mathbb{Z}}\cup\left\{{\infty}\right\} \) be a valuation and
\[
\mathcal O_V = \left\{{e\in E {~\mathrel{\Big|}~}V(e) \geq 0}\right\}
\]
and choose a uniformizer \( \pi \) such that \( v(\pi)=1 \). Then form the residue field \( k(V) \coloneqq\mathcal O_V / \left\langle{\pi}\right\rangle \). Then this residue map plus the sections will allow us to define a sheaf, so define the **residue homomorphism**

`\begin{align*}
{\partial}_V^\pi: K_*^{MW}(E) &\to K_*^{MW}(k(V))[-1] \\
\left\langle{\pi}\right\rangle\left\langle{a_1}\right\rangle\cdots\left\langle{a_n}\right\rangle &\mapsto \left\langle{\overline a_1}\right\rangle \cdots\left\langle{\overline a_n}\right\rangle \\
\left\langle{a_1}\right\rangle \cdots \left\langle{a_n}\right\rangle &\mapsto 0 \\
\left\langle{\eta}\right\rangle &\mapsto 0
\end{align*}`{=tex}

where \( a_i \in \mathcal{O}_V^\times \) and \( \overline a_i \) is the reduction.

> Note that it is true that \( {\partial}_V^\pi \eta = \eta {\partial}_V^\pi \), and this is part of what uniquely defines this map. However, we can't have \( \eta \mapsto \eta \), because this does not decrease the degree by 1.

So then the sections on \( \mathcal O \) are given by
\[
K^{MW}_*(\mathcal O_V) \coloneqq\ker {\partial}_V^\pi
\]
and there is a procedure for making a sheaf from this denoted \( K_*^{MW} \). The fact this is a stable homotopy sheaf provides some transfers (seen last time), which we'll start with next time.

# Lecture 3: Transfers

## Defining Some Transfers

Recall that we have the sheaves \( K^{MW}_*, GW \), and the sheaf property means that an inclusion \( K \hookrightarrow L \) induces a map \( \operatorname{Spec}(L) \to \operatorname{Spec}(K) \). We can take \( GW(\operatorname{Spec}(L) \to \operatorname{Spec}(K)) \), and this is exactly the restriction/base change given by \( {\,\cdot\,}\otimes_k L \) of bilinear forms. We also saw that these were stable homotopy sheaves, so there should be transfers, and we want to use them for field extensions. Let \( K\subset L \) be a finite extension of finite-type schemes over \( k \). This leads to transfer maps
\[
\operatorname{Tr}_{L/K}: GW(K) \to GW(L).
\]

There is also a geometric transfer (which is the prettiest!) which we'll define momentarily, given by with multiplication by one of those brackets to define a cohomological transfer. The geometric transfer will depend on a sequence of generators, while, while this choice can be removed for the cohomological transfer. If you use the twisting data you can get an absolute transfer. In the case where \( K\subset L \) is separable, there is a canonical way to explicitly untwist, and the absolute and cohomological transfers agree. For these two, we took
\[
\operatorname{Tr}(B: V^2 \to L) = V^2 \xrightarrow{B} L \xrightarrow{\operatorname{Tr}_{W^k}}
\]
where we now view \( V \) as a \( k{\hbox{-}} \)vector space, and \( \operatorname{Tr}_{W^k} \) is the trace from Galois theory, the sum of the Galois conjugates. We'll show that we have this structure for the geometric transfer. If \( L = K[z]/\left\langle{f}\right\rangle \), so we've chosen some generator, then we get an induced map \( \operatorname{Spec}(L) \overset{z}\hookrightarrow{\mathbb{P}}^1_K \). Since this is a closed immersion corresponding to \( z \), we can form a backwards map
\[
{\mathbb{P}}^1_K \to {{\mathbb{P}}^1_K \over {\mathbb{P}}^1_K-\left\{{z}\right\}} \simeq{\mathbb{P}}^1_L
\]
by crushing everything but \( z \), where the last equivalence was seen in the previous lecture. But now we can take \( K^{MW}_1({\mathbb{P}}^1_K \to {\mathbb{P}}^1_L) \), which is a map
\[
\operatorname{Tr}_{L/K}^{\text{geom}}:  GW(L) \to GW(K)
\]
So we have some transfers.

## Bilinear Forms on Chow Groups

The finale of this morning was going to be adding bilinear forms to Chow groups for the purposes of having a tool in enumerative geometry. So let \( X\in{\operatorname{Sm}} \) and \( X^{(i)} \) codimension \( i \) reduced, irreducible subschemes of \( X \). Then
\[
CH^i(X) = {\bigoplus_{X^{(i)}} {\mathbb{Z}}\over \sim}
\]

where \( \sim \) is rational equivalence, the equivalence relation generated by taking subvarieties of \( V\subset X\times{\mathbb{P}}^1 \) and equating the fibers and the endpoints
\[
V_{\left\{{1}\right\}} \sim V_{\left\{{0}\right\}}
,\]
i.e. \( V\cap(X\times\left\{{1}\right\}) \sim V\cap(X\times\left\{{0}\right\}) \).

These are useful in enumerative geometry -- there are Chern classes, pushforwards, pullbacks, a ring structure, etc. This ring structure lets us do intersection theory, providing some machinery to help with enumerative questions. The \( i \)th Chow group, in addition to being a motivic homology group, also has a nice formula due to Bloch that applies in the case of smooth schemes: \( CH^i(X) \cong H^i(X; K^{M}_i) \) where the RHS is the Nisnevich cohomology of \( X \) with coefficients in Milnor \( K{\hbox{-}} \)theory. Oriented Chow groups (AKA Chow-Witt groups) which are the original Chow groups together with a bilinear form. By Borge and Morel, motivated by the Bloch formula above, these can be defined as
\[
\widetilde{CH}{}^i(X) \coloneqq H^i(X; K_i^{MW}).
\]

This can be computed by a complex (as in Morel's book):

`\begin{align*}
\cdots \to \bigoplus_{z\in X^{(ii1)}} K^{MW}_{1}(K(z), ~\det_{k(z)} T_z X) \to \bigoplus_{z\in X^{(i)}} GW(K(z), ~\det_{k(z)} T_z X)  \\
\to \bigoplus_{z\in X^{(i+1)}} K^{MW}_{-1}(K(z), ~\det_{k(z)} T_z X)  \to \cdots
\end{align*}`{=tex}

where \( k(z) \) is the function field, and since \( z \) has a generic point, we can take the highest wedge power of the tangent space of \( X \) at \( z \) to yield the determinant term, which serves as an added twist. This explains why elements of the oriented Chow are formal combinations of codimension \( i \) subvarieties \( z\in X^{(i)} \) and a bilinear form over \( k(z) \), \( B\in GW(k(z)) \). There's structure here -- Fasel developed ring structure and pushforwards, while in the context of enumerative geometry, Mark Levine works with these. All in all, we have pullbacks, pushforwards, a noncommutative ring structure, and we can twist these groups as well.

## Twisted Chow

First we'll define the twists appearing in the complex above, and then we can define how to do twisted Chow so we can do pushforwards. If \( E \) is a field of finite type over \( k \), then \( K^{MW}_i(E; \Lambda) \) ("twisted by \( \Lambda \)") where \( \Lambda \) is a 1-dimensional \( E{\hbox{-}} \)vector space can be defined as
\[
K^{MW}_i(E) \underset{{\mathbb{Z}}[E^\times]}\otimes{\mathbb{Z}}[\Lambda - \left\{{0}\right\}]
\]
since \( E^\times \) acts of the LHS due to the bracket \( E \) in the Grothendieck-Witt group, and the RHS is possible because we can act on the nonzero elements of the vector space. We can also twist by line bundles \( L \to X \), leading to a definition of **oriented Chow groups twisted by local coefficients** via
\[
\widetilde{CH}{}^i(X; L) \coloneqq H^i(X; K^{MW}_i(L))
\]
where we just take \( K{\hbox{-}} \)Milnor-Witt and twist by \( L \). For any proper \( f: X\to Y \) where \( \dim Y - \dim X = r \), then we have a pushforward map

`\begin{align*}
f_*: \widetilde{CH}{}^i(X, \omega_{X/k}\otimes f^* \mathcal L) \to \widetilde{CH}{}^{i-r}(Y, \omega_{Y/k}\otimes\mathcal L)
.\end{align*}`{=tex}

where \( \omega_{X/K} \) is the canonical line bundle of \( X \) over \( k \) given by \( \det TX \), the determinant of the tangent bundle of \( X \), and \( f^* \mathcal L \) is the pullback of any line bundle from \( f \). Note that the bilinear form here acts like an orientation (which is exciting!), hence the name.

## Degree by Local Degree

Recall from Algebraic Topology that if we have a smooth map \( f:S^n \to S^n \), then there is a notion of degree given picking regular values \( p\in S^n \), so the preimage consists of finitely many points \( f^{-1}(p) = \left\{{q_1, \cdots, q_n}\right\} \), and we define \( \deg f = \sum \underset{q_i}\deg f \) to be the sum of local degrees. There is a formula for computing the degree from differential topology, given by choosing coordinates \( x_1, \cdots, x_n \) near \( q_i \) and \( y_1, \cdots, y_n \) near \( p \) which are compatible with orientations. Then \( f:{\mathbb{R}}^n\to{\mathbb{R}}^n \), so we can form its Jacobian \( \mathrm{Jac}(f) = \det J \) where that matrix \( J \) is given by \( (J)_{i,j} = {\frac{\partial f_i}{\partial x_j}\,} \). We then have

\[
\underset{q_i}\deg f = \begin{cases}
    1,  & \operatorname{Jac}(f) > 0 \\
    -1, & \operatorname{Jac}(f) < 0
\end{cases}
.\]

In \( {\mathbb{A}}^1 \) algebraic topology, instead of just remembering the sign (like the signature), the idea of Lannes-Morel is to remember the entirety of \( \operatorname{Jac}(f) \). Take \( f: {\mathbb{P}}^1 \to {\mathbb{P}}^1 \) over a field \( k \), then let \( p\in {\mathbb{P}}^1(k) \) be a \( k{\hbox{-}} \)rational point so that \( f^{-1}(p) = \left\{{q_1, \cdots, q_n}\right\} \). We can then define
\[
\deg^{{\mathbb{A}}^1}(f) = \sum \langle \underset{q_i}{\operatorname{Jac}} f\rangle \in GW(k)
\]
which doesn't depend on \( p \). We then make an analogous definition for higher dimensions.

::: {.proposition title="?"}
The global degree is a sum of local degrees.
:::

Let \( f: {\mathbb{P}}^n \to {\mathbb{P}}^n \) be finite such that \( f^{-1}({\mathbb{A}}^n) = {\mathbb{A}}^n \) for some chosen copy of \( {\mathbb{A}}^n \subset {\mathbb{P}}^n \). This yields an induced map \( \overline f :{\mathbb{P}}^{n}/{\mathbb{P}}^{n-1} \to {\mathbb{P}}^{n}/{\mathbb{P}}^{n-1} \). We then define the global degree by picking some \( p\in {\mathbb{A}}^n \) and setting
\[
\deg^{{\mathbb{A}}^1}(\overline f) = \sum_{q\in f^{-1}(p)}\underset{q}\deg{{\mathbb{A}}^1}(f)
\]
where the local degree can be define using balls (as in the first lecture), and we let \( \underset{q}\deg{{\mathbb{A}}^1}(f) \) be the degree of the composite map
\[
{{\mathbb{P}}^{n} \over {\mathbb{P}}^{n-1}} \simeq{U \over U-\left\{{q}\right\}} \to {{\mathbb{A}}^n \over {\mathbb{A}}^n - \left\{{p}\right\}} \simeq\operatorname{Th}(N_p{\mathbb{A}}^n) \simeq{{\mathbb{P}}^{n} \over {\mathbb{P}}^{n-1}}
\]
where \( U \) is an open set chosen such that the preimage of \( p \) only contains \( q \), and \( \operatorname{Th}(N_p{\mathbb{A}}^n) \) is the Thom space of the normal bundle (here, the tangent bundle) and the last equality follows from the purity theorem and the fact that everything is \( k{\hbox{-}} \)rational (i.e. \( k(q) = k \)). This can also be made to work at a non-rational point, using the Hatcher-style proof, of taking a collapsing map to yield the composite
\[
{{\mathbb{P}}^{n} \over {\mathbb{P}}^{n-1}} \to {{\mathbb{P}}^{n} \over {\mathbb{P}}^{n-1} -\left\{{q}\right\}}\to {U \over U-\left\{{q}\right\}} \to {{\mathbb{A}}^n \over {\mathbb{A}}^n - \left\{{p}\right\}} \simeq{{\mathbb{P}}^{n} \over {\mathbb{P}}^{n-1}}.
\]
This yields a notion of local degree in terms of global degree, by taking boundaries of balls, and we have the following facts:

-   If \( f \) is etale at \( q \), and \( k \subseteq k(q) \) is separable then

    \[
    \underset q \deg^{{\mathbb{A}}^1} (f) = \operatorname{Tr}_{k(q)/k} \langle \operatorname{Jac}(q) \rangle
    \]

    -   Depending on what you mean by transfer, the hypothesis of separability can be dropped, but it's needed here to take the composition with the Galois theory trace.
    -   We could use this to compute the degree, but we are missing something

::: {.question}
What happens if \( \operatorname{Jac}(f) = 0 \)
:::

::: {.answer}
The Eisenbud-Levine-Khimshiashvili signature formula, which says that if \( f: {\mathbb{R}}^n \to {\mathbb{R}}^n \) where \( 0\mapsto 0 \) is an isolated zero, then \( \underset 0 \deg(f) = \operatorname{signature} (\omega^{EKL}) \) which is a bilinear quadratic form on
\[
Q \coloneqq{\mathbb{R}}[x_1, \cdots, x_n]_0 \over \left\langle{f_1, \cdots, f_n}\right\rangle
\]

where the numerator is localized at zero. Since the zero was isolated in its fiber, \( Q \) is a finite-dimensional \( {\mathbb{R}}{\hbox{-}} \)vector space, and \( \operatorname{Jac}(f) \in Q \) (which may lie in the maximal ideal \( \left\langle{x_1, \cdots, x_n}\right\rangle) \). So we can pick any \( {\mathbb{R}}{\hbox{-}} \)linear \( \eta: Q \to {\mathbb{R}} \) such that \( \eta(\operatorname{Jac}(f)) = \dim Q \). This allows us to define `\begin{align*}
\omega^{EKL}: Q^2 \to {\mathbb{R}}\\
(a,b) \mapsto \eta(ab).
.\end{align*}`{=tex}
:::

A question of Eisenbud was whether or not this whole form could be used as a degree over an arbitrary field \( k \), not just its signature. So does it have an interpretation in algebraic topology? The answer is that it does, as a local degree in \( {\mathbb{A}}^1 \) homotopy theory (which wasn't around at the time).

::: {.theorem title="Kass-Wickelgren"}
\[
\underset 0 \deg^{{\mathbb{A}}^1}(f) = \omega^{EKL}
,\]
constructed in the same way.
:::

This works for any rational point, and one of the projects is to remove the hypothesis that \( k(x) = k \).

::: {.example title="?"}
Let \( f(x) = x^2 \), and consider \( \omega^{EKL} \) for this form. Form \( Q = k[x]/\left\langle{x^2}\right\rangle \), where we don't need to localize at zero since \( 0 \) is the only preimage of \( 0 \). Then \( \operatorname{Jac}(f) = 2x \). Note that \( Q \) has a basis \( \left\{{1, x}\right\} \), and so we can choose

`\begin{align*}
\eta: k[x]/\left\langle{x^2}\right\rangle \to k \\
\eta(2x) = 2\\
\eta(1) = 0
.\end{align*}`{=tex}

where we claim can send 1 wherever we want without altering the isomorphism class of \( \omega^{EKL} \). We do this by forming the Gram matrix

\[
\begin{array}{cc}
 &  \begin{matrix}1 & x\end{matrix} \\
    \begin{matrix}1 \\ x\end{matrix} &
    \begin{bmatrix}
      0 & 1 \\
      1 & 0
    \end{bmatrix}
\end{array}
\]

where the 1s appear since we require \( x\mapsto 1 \), the bottom-right 0 because \( x^2 \) in the ring, and no matter what the top-left corner is, we can change basis by adding a multiple of \( x \) to it.

Thus we can diagonalize this matrix to yield \( \omega^{EKL} = \left\langle{1}\right\rangle + \left\langle{-1}\right\rangle \). Note that we needed to assume \( \operatorname{ch}k \) does not divide \( \dim Q \), otherwise we could have used a distinguished socle element instead in place of the Jacobian.

So now we have a way to concretely calculate degrees of maps \( {\mathbb{P}}^n /{\mathbb{P}}^{n-1}{\circlearrowleft} \), so here's an enumerative application.
:::

## \( {\mathbb{A}}^1 \) Milnor Numbers {#mathbba1-milnor-numbers}

> Joint with Jesse Kass.

::: {.definition title="Nodes"}
A point \( p \) on a scheme \( X \) is a **node** if after base changing to the separable closure \( k^s \) and looking at all of the preimages, the completed local ring
\[
{\mathcal{O}}_{X, p} \cong k^s[[x_1, \cdots, x_n]] / \left\langle{\sum x_i^2 + o(x_i^3)}\right\rangle
,\]
where \( o(x_i^3) \) just denotes higher order terms.
:::

Let \( X = \left\{{f=0}\right\} \) be a hypersurface, which is a scheme determined by a single equation, then if we perturb the equation near a complicated singularity, that singularity would bifurcate into nodes. So let \( p\in X \) be a singularity; as \( X \) is perturbed within a family \( P \), \( p \) bifurcates into nodes. More specifically, for any \( a_1, \cdots, a_n \), we have a family of varieties/hypersurfaces given by
\[
f(x_1, \cdots x_n) + \sum a_i x_i = t
\]
parameterized by \( t \). One definition of the Milnor number is that in any such family, it counts the number of nodes.

Let \( k={\mathbb{C}} \), then a result of Milnor says that for any sufficiently small \( a_1, \cdots, a_n \), the family \( P \) contains \( \mu(p) \) nodes, where \( \mu \) denotes taking the Milnor number. To find nodes, one can look at the gradient and see where all of the coefficients of the linear terms vanish. What remains is \( o(x_i^2) \), so we're looking for zeros of the gradient, which requires looking at the inverse image of the gradient, so we're picking up the degree of the gradient. This gives us another definition,
\[
\mu(p) = \deg(\operatorname{grad}f)(p)
.\]

However, when \( k\neq {\mathbb{C}} \) and generally not algebraically closed, nodes have interesting information, including arithmetic data. For example, consider \( x^2+y^2 \) and \( x^2-y^2 \). The first carves out just the origin, the latter, two diagonal lines.

![](assets/2019-03-09-12-18-52.png)\

The LHS is a non-split node, meaning the tangent is not defined over \( k \), while the RHS is a split node. So we can use the \( {\mathbb{A}}^1 \) degree in place of the topological degree, since we want to count the zeros of the gradient, and it will naturally pick up information about the node.

::: {.definition title="Type of a Node"}
The **type** of a node \( p = \left\{{f=0}\right\} \) is given by
\[
\operatorname{Type}(p) = \underset p \deg^{{\mathbb{A}}^1} (\operatorname{grad}f) \in GW(k).
\]
:::

::: {.example title="?"}
Choose a preimage of \( p \) after base change to \( k(p) \), suppose the node is cut out by the \( f = \sum x_i^2 + o(x_i^3) \). Then we have the local ring \( \widehat{\mathcal{O}}_{X. p} = k[[p]] / \left\langle{f}\right\rangle \). Then \( \operatorname{Type}(p) = \operatorname{Tr}_{k(p)/ k}\left\langle{2^n a_1 \cdots a_n}\right\rangle \), where \( k(p) \) is always a separable extension of \( k \).

Then \( \operatorname{Type}(x^2+ay^2) = \left\langle{a}\right\rangle \). This picks up the two tangent directions in the field of definition, and when it's not rational, it picks up the trace from \( k \) with a 2-tangent direction. So this contains geometric/arithmetic information about both the node and its tangent directions.
:::

::: {.definition title="Milnor Number"}
For \( p \) a singularity on a hypersurface, we can define **the Milnor number**
\[
\mu^{{\mathbb{A}}^1}(p) \coloneqq\underset p \deg (\operatorname{grad}f)
.\]
:::

::: {.theorem title="Kass-Wickelgren"}
It then follows that for a generic \( a_1,\cdots,a_n \), for a singularity \( p \), we have
\[
\sum_{x \in \text{a family of nodes}} \operatorname{Type} (x) = \mu^{{\mathbb{A}}^1}(p) \in GW(k),
\]
which is a fixed element.
:::

### Example of Kass-Wickelgren Theorem

Let \( f(x,y) = y^2-x^3 \), supposing \( \operatorname{ch}(k) \neq 2,3 \) and consider computing the \( {\mathbb{A}}^1 \) Milnor number. We compute \( \operatorname{grad}(f) = (-3x^2, 2y) \). We can choose \( p=0 \) as a singularity, then

`\begin{align*}
\mu^{{\mathbb{A}}^1}(0)
&= \underset 0 \deg(\operatorname{grad}f) \\
&= \underset 0 \deg(x\mapsto -3x^2) \underset 0 \deg(y\mapsto 2y),
.\end{align*}`{=tex}

since the two variables being split apart implies that we can decompose \( \operatorname{grad}f \) into the smash product of two maps into spheres. We know that the latter map is etale, so its degree is \( \left\langle{2}\right\rangle \). For the former, we can use the prior computation for \( x\mapsto x^2 \) and just post-compose with \( x\mapsto 3x \), so we obtain

`\begin{align*}
\mu^{{\mathbb{A}}^1}(0) &= \left\langle{3}\right\rangle(\left\langle{1}\right\rangle + \left\langle{-1}\right\rangle) \left\langle{2}\right\rangle \\
&= \left\langle{-6}\right\rangle + \left\langle{6}\right\rangle\\
&= \left\langle{1}\right\rangle + \left\langle{-1}\right\rangle\\
&= h,
\end{align*}`{=tex}

the hyperbolic form from earlier.

Alternatively, take a family \( y^2 = x^3 + ax + t \). We then have two situations, depending on whether or not \( a=0 \):

![](assets/2019-03-09-12-44-39.png)\

The bottom represents the \( t \) line, where the LHS shows a cusp at \( t=0 \) and otherwise some general fibers. For the RHS, there are nodes exactly when \( x^3+ax+t \) has a double root, which happens exactly when this polynomial' discriminant is zero, which occurs at \( -27t^2-4t \). In particular, \( t \) is degree 2, so there are two nodal fibers (which agrees with Milnor's theorem), and moreover if we add up the types we must get \( h \).

So for example, over \( {\mathbb{F}}_5 \), we \( \left\langle{1}\right\rangle = \left\langle{-1}\right\rangle \), so in a family, it is not possible to have one split and one non-split rational node. For \( {\mathbb{F}}_7 \), this is reversed, and you can't have 2 split or 2 non-split rational nodes.

> Moral of the story: this obstructs certain kinds of arithmetic behavior within these families!

# Lecture 4: The Euler Class

Start with the version from Algebraic Topology. Let \( X \) be be an \( {\mathbb{R}}{\hbox{-}} \)manifold of dimension \( d \) and \( V\twoheadrightarrow X \) be a rank \( r \) vector bundle with fibers \( V_x \) for each \( x\in X \).

::: {.definition title="Thom Space"}
Recall the definition of the Thom space of \( V \),
\[
\text{Th}(V) \cong {\mathbb{P}}(V\oplus \mathcal O)  / {\mathbb{P}}(V) \simeq\frac{V}{V-X}
\]

which can be defined on a fiber
\[
\text{Th}(V_x) \cong {\mathbb{P}}(V\oplus \mathcal O)  / {\mathbb{P}}(V_x) \simeq S^r
\]
where \( \mathcal O \) is a trivial bundle and \( X \) denotes the zero section.
:::

::: {.definition title="Orientation of a Bundle"}
A **bundle** \( V \) is **oriented** by a Thom class \( u\in H^r(\text{Th}(V); {\mathbb{Z}}) \) if each restriction \( H^r(\text{Th}(V_x); {\mathbb{Z}}) \) yields a generator.
:::

::: {.example title="?"}
This occurs when all transitions functions have positive determinant. Let \( \mathcal U \) be an open cover of \( X \), then \( V \) is described by clutching (transition) functions

`\begin{align*}
\left\{{ {\left.{{\varphi}} \right|_{{U \cap W}} }  {~\mathrel{\Big|}~}U,W\in\mathcal U}\right\} \text{ where } \det  {\left.{{\varphi}} \right|_{{U\cap W}} }  > 0
\end{align*}`{=tex}

if and only if \( \det V = L^{\otimes 2} \) for some line bundle \( L \twoheadrightarrow X \). Note that we can do this because if the determinant is greater than zero, we can take a square root, and if we take a positive square root the cocycle condition is still satisfied.
:::

::: {.definition title="Orientation of a Space"}
A **space** \( X \) is **oriented** iff its tangent space \( TX \) is oriented.
:::

Assume \( X \) is a compact manifold and \( d=r \), then by Poincaré duality we obtain an isomorphism \( H^r(X; {\mathbb{Z}}) \cong {\mathbb{Z}} \), and so \( e(V)\in {\mathbb{Z}} \) is an integer. We can compute the Euler class in the following way: choose a section \( \sigma \) with only isolated zeros, then
\[
e(V) = \sum_{~~x\in X {~\mathrel{\Big|}~}\sigma(x) \neq 0} \deg_x(\sigma)
\]
where we sum the local degrees, and \( \sigma \) is locally identified with a function

`\begin{align*}
\sigma: {\mathbb{R}}^d &\to {\mathbb{R}}^r \\
\text{coordinates on } X &\mapsto \text{local trivialization}
\end{align*}`{=tex}

by choosing local coordinates and a local trivialization compatible with the standard orientations of the spheres in the domain and codomain. Note that if we composed the trivialization with an element of \( \operatorname{GL}(U) \) with negative determinant, that would change the local degree so this definition wouldn't make sense for relative orientations -- however, if we change coordinates for \( {\mathbb{R}}^d \) and \( {\mathbb{R}}^r \) simultaneously, it will.

::: {.definition title="Relatively Oriented Bundle"}
The bundle \( V\twoheadrightarrow X \) is **relatively oriented** iff \( \hom(\det TX, \det V) \) is oriented.
:::

We know what it means for such a homomorphism to be positive, and this won't change the value of the local index.

Since \( V \) has an orientation sheaf, let \( \mathcal O(V) \) be a local system on \( X \) with
\[
\mathcal O(V)_x = H^r(\text{Th}(V_x); {\mathbb{Z}})
.\]
We can then use the Thom isomorphism to get a Thom class, so we have \( e(V) \in H^r(X; \mathcal O(-V)) \) which comes from a canonical map. So when \( V\to X \) is relatively oriented, we again have \( e(V) \in {\mathbb{Z}} \).

## \( {\mathbb{A}}^1 \) Algebraic Topology {#mathbba1-algebraic-topology}

Let \( X\in{\operatorname{Sm}} \) be a smooth scheme of dimension \( d \) and \( V\twoheadrightarrow X \) an algebraic bundle of rank \( r \).

::: {.definition title="Oriented Algebraic Bundle"}
\( V \) is *oriented* by the data \( L\twoheadrightarrow X \) a line bundle and an isomorphism \( \det V \cong L^{\otimes 2} \).
:::

::: {.definition title="Relatively Oriented Algebraic Bundle"}
\( V \) is **relatively oriented** if \( \hom(\det TX, \det V) \) is oriented.
:::

::: {.example title="?"}
Consider both \( X = {\mathbb{P}}^n \) and \( X = {\operatorname{Gr}}(m,n) \) be the Grassmannian parametrizing subspaces \( {\mathbb{P}}^m \leq {\mathbb{P}}^n \). Then \( \det TX = \mathcal O(n+1) \), the dual of the tautological tensored \( n+1 \) times -- for the Grassmannian, you put it in the Plucker embedding and pull back the \( \mathcal O(1) \).

\( \therefore X \) is orientable \( \iff n \) is odd.

This follows because we can take \( \mathcal O( \frac{n+1} {2}) \) and choose the morphism required in the definition above.
:::

::: {.example title="?"}
\( \mathcal O(n) \twoheadrightarrow{\mathbb{P}}^1 \) is orientable if and only if it is relatively orientable if and only if \( n \) is even.
:::

::: {.example title="?"}
Take \( {\mathcal{O}}(d)\oplus {\mathcal{O}}(e) \to {\mathbb{P}}^2 \). Since \( 2+1=3 \) is odd, this is orientable if and only if \( d+e \) is odd.
:::

> Note: S. McKean uses this to make an enriched Bezout's theorem for the intersection of plane curves of degree \( d \) and \( e \).

## Computing Euler Classes for Relatively Orientable Bundles

> Joint with Jesse Kass

In addition to the prior assumptions, let \( \sigma \) be a section of \( V \) with only isolated zeros and use the same definition of \( e(V) \), which will land in the Grothendieck-Witt group \( GW(k) \) instead of \( {\mathbb{Z}} \).

what remains is to define the local degree. We'll proceed in the same way by finding a function, which will give us local coordinates and a local trivialization.

::: {.definition title="Nisnevich Coordinates"}
The **Nisnevich** coordinates near \( x \) are given by
\[
\varphi: U \to {\mathbb{A}}^d
\]
which induces an isomorphism on the function field, so the induced extension of residue fields \( k(\varphi(p)) \hookrightarrow k(p) \) is an isomorphism.
:::

::: {.remark}
```{=tex}
\envlist
```
-   Such coordinates determine a distinguished section of \( \det TX(U) \)
-   A local trivialization \(  {\left.{{\varphi}} \right|_{{U}} }  \to {\mathcal{O}}^r \) determines a distinguished section of \( \det V(U) \)

And so we can make the following definition:
:::

::: {.definition title="Compatibility of Coordinates and Trivialization"}
Local coordinates and a local trivialization are **compatible** if for these distinguished sections, we have
\[
\hom(\det TX(U), V(U)) \cong L^{\otimes 2}.
\]
:::

So we can get compatibility by varying the trivialization until we get a square (no problem). Nisnevich coordinates will always exist when \( k(p) \) is a separable extension of \( k \), or the dimension is 1 (by Galois theory). So suppose we have local coordinates \( \phi \) and a local trivialization \( \pi \) that are compatible. If \( \phi: U \hookrightarrow{\mathbb{A}}^d \) is an open immersion, then our section \( \sigma \) is a function can be identified by pulling back \( \sigma: {\mathbb{A}}^d \to {\mathbb{A}}^r \) and defining \( \deg_p(\sigma) \coloneqq\deg_{\phi(p)}(\sigma) \). Note that we don't actually need the immersion condition here, since the \( {\mathbb{A}}^1 \) local degree is finitely determined, and so modifying the function by something in a high enough power of the maximal ideal doesn't change the degree. So if the \( \phi \) given by Nisnevich coordinates is an etale map where the local rings aren't isomorphic, then \( \sigma \) could fail to be pulled back from \( {\mathbb{A}}^d \). However, we could just add something from a really high power of the maximal ideal, and it can be shown that \( \sigma \) is pulled back from \( {\mathbb{A}}^d \). These choices don't affect the outcome, so the assumption is not necessary by "finite determinacy of \( \deg_p \)".

> Need to show that it is well-defined (i.e. it doesn't depend on choice of section), which it is under some conditions.

## Relations to Chow Groups

Next up: some other perspectives. Barge Morel has one that lands in the oriented Chow, \( e(v) \in \widetilde{\text{Ch}}{}^r(X, \det (-V)) \).

> Note that you can use \( V \) or \( -V \) here, since the action of \( GW \) has trivial squares, and the definition of the twist for oriented chow groups means that changing the twist by the square of a bundle doesn't effect the oriented chow groups.

It is defined as follows: There is a distinguished element \( \left\langle{1}\right\rangle\in \widetilde{\text{Ch}}{}^0(X) \) which is determined by a complex
\[
\cdots \to \bigoplus_{z\in X^{(0)}} GW(k(Z), \det T_zX) \to \bigoplus_{z\in X^{(-1)}} GW(k(Z), \det T_zX)
\]

where \( X^{(0)} \) are reduced irreducible subschemes of \( X \), and the RHS disappears because it's the generic point. In Algebraic Topology, the definition of the Thom class involves a canonical map \( \text{Th}(-V)\to X \), making the class land in \( H^0(\text{Th}(-V) \) which under the Thom isomorphism gives something in \( H^r \) with a twist. An analog in this setting is the following pushforward. Let \( \sigma \) denote the zero section of \( V\rightrightarrows X \), then there is a pushforward map
\[
\sigma_*: \widetilde{\text{Ch}}{}^0(X) \to \widetilde{\text{Ch}}{}^r(V, \det p^* V)
\]

where the source with ordinarily have a twist by the canonical, but when pulled back it will disappear.

> Note: the difference between the canonical bundle of \( V \) and the twist we had to do to get rid of \( X \) is like the difference between \( TV \) and \( TX \), yielding the determinant appearing on the RHS.

The map \( p \) also yields an isomorphism
\[
p^*: \widetilde{\text{Ch}}{}^r(X, \det V) \to \widetilde{\text{Ch}}{}^r(V, \det p^* V)
\]

and so we define
\[
e(V) \coloneqq(p^*)^{-1}\sigma_*(\left\langle{1}\right\rangle).
\]

If \( V \twoheadrightarrow X \) is relatively oriented, there is a map \( X \xrightarrow{\pi }\operatorname{Spec}(k) \) and so \( \pi_* e(V) \in GW(k) \).

Other perspectives:

-   There is a different perspective of Morel and Mark Levine, giving the Euler class as the principal obstruction to having a nonvanishing section. This is known to be equal to the one given above, up to a unit (\( \left\langle{a}\right\rangle \))
-   A six functor formalism
-   Mike Hopkins
-   Raxit and Levine?

## Example Computations

::: {.example title="?"}
Let \( n \) be even, and \( V = {\mathcal{O}}_{{\mathbb{P}}^1}(n) \) which can be thought of as meromorphic functions that have a pole of order at most \( n \) at some point, say zero. Then in local coordinates, the function 1 looks like \( x^n \), and so \( e(V) = \deg_0 x^n = {n\over 2} h = {n\over 2}(\left\langle{1}\right\rangle + \left\langle{-1}\right\rangle) \).
:::

::: {.remark}
Ordinary vector bundles in Algebraic Topology for odd-dimensional vector bundles are 2-torsion. Moreover, by a result of Levine, since this is a line bundle we know that the Euler class will be a multiple of \( h \). A similar argument works here?
:::

::: {.example title="?"}
How many lines meet 4 general lines in \( {\mathbb{P}}^3 \)? Follows joint work with Srinivasan, also in Schubert Calculus paper (Mathies Wendt) Lines in \( {\mathbb{P}}^3 \) are parameterized by \( {\operatorname{Gr}}(1,3) \), which is equivalent to \( W \subseteq k^{\oplus 4}, \dim W = 2 \). Let

-   \( L_i \) be 4 lines, no two of which intersect
-   \( e_i \) be a basis of \( k^4 \)
-   \( \phi_i \) be the corresponding dual basis

where \( L_1 = {\mathbb{P}}(ke_3\oplus ke_4) = \left\{{\phi_1=\phi_2 = 0}\right\} \). Lets find a condition on bundles for lines that intersect \( L_1 \). Let \( L= {\mathbb{P}}(k\tilde e_3 \oplus k\tilde e_4) \), the span of some two linearly independent vectors. If we wrote these out in terms of \( e_i \), we'd need to find a combination where the coefficients of \( e_1, e_2 \) vanish, i.e. there needs to be a linear dependence in the part of their basis expansion involving these two elements. We thus get the condition
\[
L\cap L_1 \iff (\phi_1 \wedge \phi_2)(\tilde e_3 \wedge \tilde e_4) = 0
\]

So we look at the line bundle \( S^\vee\wedge S^\vee\rightrightarrows{\operatorname{Gr}}(1,3) \), where the fiber above a dimension 2 subspace \( W \) is given by \( (S^\vee\wedge S^\vee)_{{\mathbb{P}}W} = W^\vee\wedge W^\vee \). Then \( \left\{{\phi_1, \phi_2}\right\} \) determine a section \( \sigma_1 \) of \( S^\vee\wedge S^\vee \) by \( \sigma_1({\mathbb{P}}W) =  {\left.{{\phi_1}} \right|_{{W}} }  \wedge  {\left.{{\phi_2}} \right|_{{W}} }  \), where lines intersection \( L_1 \) correspond exactly to zeros of \( \sigma_1 \). We can do the same thing for the other \( L_i \) and combine them to get a section of \( V \coloneqq\oplus_{i=1}^4S^\vee\wedge S^\vee \), whose zeros are the lines we're looking for. Is this bundle relatively orientable? \( \det TX ={\mathcal{O}}(4), \det V = (S^\vee\wedge S^\vee)^{\otimes 4} \), which are both tensor squares, so yes. Following the recipe, we need to identify \( \sigma \) with a function. To compute \( \deg_{{\mathbb{P}}W}(\sigma) \), choose local coordinates on \( {\operatorname{Gr}}(1,3) \). So we need to choose dimension 2 subspaces parameterized by \( {\mathbb{A}}^4 \), so we'll pick the lines which intersect \( \left\{{\phi_3= \phi_4 = 0}\right\} \), yielding a new basis `\begin{align*}
\tilde e_1 &= e_1 \\
\tilde e_2 &= e_2 \\
\tilde e_3 &= xe_1 + ye_2 + e_3 \\
\tilde e_4 &= x'e_1 + y'e_2 + e_4
\end{align*}`{=tex}

We then have an open subset

`\begin{align*}
U =\operatorname{Spec}(k[x,y,x',y']) \hookrightarrow{\operatorname{Gr}}(1,3) \\
(x,y,x',y') \mapsto {\mathbb{P}}(k\tilde e_3 +k\tilde e_4)
.\end{align*}`{=tex}

so we have some local coordinates. Let \( \tilde \phi_i \) be the dual basis. Next we choose a local trivialization, where \( S^\vee\wedge S^\vee \) can be locally trivialized by \( \tilde\phi_3 \wedge \tilde \phi_4 \) which are compatible with some relative orientation. The expression for the function \( \sigma \) will depend on our choice of line, and instead of notating all of them, just assume that \( L_1 = {\mathbb{P}}(ke_3 \oplus ke_4) \). We then get \( \sigma =(\phi_1 \wedge \phi_2, ?, ?, ?) \) where we just didn't notate the other components. So what is this first component in terms of \( x', y' \)? This amounts to finding the coordinate of \( \tilde\phi_3 \wedge \tilde\phi_4 \) is in \( \phi_1 \wedge \phi_2 \), which is just a linear algebra problem.

We want to find the coefficient \( c \) in
\[
 {\left.{{(\phi_1 \wedge \phi_2)}} \right|_{{k\tilde e_3 \oplus k\tilde e_4}} }  = c (\tilde\phi_3 \wedge \tilde\phi_4)
\]

How many \( \tilde e_3 \) are in \( \phi_1 \)? We can evaluate \( \phi_1(\tilde e_3) \) to get how many \( \tilde \phi_3 \)s we need, but that's just \( x \). So the RHS evaluates to \( (x \tilde\phi_3 \wedge y\tilde\phi_4) + (x'\tilde\phi_3 \wedge y'\tilde\phi_4) \), and we obtain \( c = xy' -yx' \). We can thus write

`\begin{align*}
\sigma: {\mathbb{A}}^4 \to {\mathbb{A}}^4 \\
\sigma(x,y,x',y') = (xy' -yx', ?, ? , ?)
.\end{align*}`{=tex}

Now we can compute the local degree by taking the Jacobian and taking the determinant, but what AG/Arithmetic information is contained in this huge polynomial in \( x,y,x',y' \)s? Is there an AG interpretation of this local degree \( \deg_P(\sigma) \), where \( P=L \) is a point on the Grassmannian? \( L={\mathbb{P}}W \) intersects \( L_i \), so we have 4 points on \( L\cong {\mathbb{P}}^1_{k(L)} \), and therefore we have a cross-ratio \( \lambda \). We can get another cross-ratio by looking at planes in \( {\mathbb{P}}^3 \) containing \( L \), i.e. dimension 3 subspaces \( V \) containing \( W \), so we have
\[
W \subseteq V \subseteq k(L)^4
\]

where \( \dim V = 1 \), so each plane is a \( {\mathbb{P}}^1_{k(L)} \). We get 4 planes containing \( L \), namely the 4 planes spanned by each pair \( (L, L_i) \). This provides a second cross-ratio \( \mu \) Although there was choice, since our section was determined not by \( L \) but rather by the zero set of some functions, normalizing things correctly yields
\[
\deg_L(\sigma) = \operatorname{Tr}_{k(L) / k}\left\langle{\lambda-\mu}\right\rangle.
\]
:::

We thus obtain a theorem:

::: {.theorem title="?"}
`\begin{align*}
\sum_{\quad L {~\mathrel{\Big|}~}L \cap L_i \neq\emptyset}\operatorname{Tr}_{k(L) / k}\left\langle{\lambda-\mu}\right\rangle = \left\langle{1}\right\rangle + \left\langle{-1}\right\rangle = h
.\end{align*}`{=tex}
:::

## Where Things Are Going

-   Gromov-Witten invariants with Jake and Jesse
-   Welschinger invariants, Mark Levine

These produce more than just the 1s appearing in \( h \), and have ties to things like modular forms.

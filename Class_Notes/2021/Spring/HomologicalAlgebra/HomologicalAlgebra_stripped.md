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
# Wednesday, January 13

Reference:

-   The course text is Weibel [@weibel_2011].

-   See the many corrections/errata: <http://www.math.rutgers.edu/~weibel/Hbook-corrections.html>

-   Sections we'll cover:

    -   1.1-1.5,
    -   2.2-2.7,
    -   3.4,
    -   3.6,
    -   6.1,
    -   5.1-5.2,
    -   5.4-5.8,
    -   6.8,
    -   6.7,
    -   6.3,
    -   7.1-7.5,
    -   7.7-7.8,
    -   Appendix A (when needed)

-   Course Website: <https://uga.view.usg.edu/d2l/le/content/2218619/viewContent/33763436/View>

## Overview

::: {.definition title="Exact complexes"}
A **complex** is given by
\[
\cdots \xrightarrow{d_{i-1}} M_{i-1} \xrightarrow{d_i} M_i \xrightarrow{d_{i+1}}M_{i+1} \to  \cdots
.\]
where \( M_i \in {R{\hbox{-}}\operatorname{mod}} \) and \( d_i \circ d_{i-1} = 0 \), which happens if and only if \( \operatorname{im}d_{i-1} \subseteq \ker d_i \). If \( \operatorname{im}d_{i-1} = \ker d_i \), this complex is **exact**.
:::

::: {.example title="?"}
We can apply a functor such as \( \otimes_R N \) to get a new complex
\[
\cdots \xrightarrow{d_{i-1} \otimes 1_N} M_{i-1} \otimes_R N \xrightarrow{d_i \otimes 1} M_i \otimes N  \to M_{i+1} \xrightarrow{d_{i+1} \otimes 1} \cdots
.\]
:::

::: {.example title="?"}
Applying \( {\operatorname{Hom}}(N, {\,\cdot\,}) \) similarly yields
\[
{\operatorname{Hom}}_R(N, M_{i}) \xrightarrow{d_{i-1}^*} {\operatorname{Hom}}_R(N, M_{i+1})
,\]
where \( d_i^* = d_i \circ ({\,\cdot\,}) \) is given by composition.
:::

::: {.example title="?"}
Applying \( {\operatorname{Hom}}({\,\cdot\,}, N) \) yields
\[
{\operatorname{Hom}}_R(M_i, N) \xrightarrow{d_{i}^*} {\operatorname{Hom}}_R(M_{i+1}, N)
\]
where \( d_i^* = ({\,\cdot\,}) \circ d_i \).
:::

::: {.remark}
Note that we can also take complexes with arrows in the other direction. For \( F \) a functor, we can rewrite these examples as
\[
d_i^* \circ d_{i-1}^* = F(d_i) \circ F(d_{i-1}) = F(d_i \circ d_{i-1}) = F(0) = 0
,\]
provided \( F \) is nice enough and sends zero to zero. This follows from the fact that functors preserve composition. Even if the original complex is exact, the new one may not be, so we can define the following:
:::

::: {.definition title="Cohomology"}
\[
H^i(M^*) = \ker d_i^* / \operatorname{im}d_{i-1}^*
.\]
:::

::: {.remark}
These will lead to **\( i \)th derived functors**, and category theory will be useful here. See appendix in Weibel. For a category \( \mathcal{C} \) we'll define

-   \( \mathrm{Obj}(\mathcal{C} ) \) as the objects
-   \( {\operatorname{Hom}}_{\mathcal{C}}(A, B) \) a set of morphisms between them, where a more modern notation might be \( \mathrm{Mor}(A, B) \).
-   Morphisms compose: \( A \xrightarrow{f} B \xrightarrow{g} C \) means that \( g\circ f \in {\operatorname{Hom}}_{\mathcal{C}}(A, C) \)
-   Associativity
-   Identity morphisms

See the appendix for diagrams defining zero objects and the zero map, which we'll need to make sense of exactness. We'll also needs notions of kernels and images, or potentially cokernels instead of images since they're closely related.
:::

::: {.remark}
In the examples, we had \( \ker d_i \subseteq M_i \), but this need not be true since the objects in the category may not be sets. Such an example is the category of complexes of \( R{\hbox{-}} \)modules: \( \operatorname{Cx}({R{\hbox{-}}\operatorname{mod}}) \). In this setting, kernels will be subcomplexes but not subsets.
:::

::: {.definition title="Functors"}
Recall that **functors** are "functions" between categories \( F: \mathcal{C}\to \mathcal{D} \) such that

-   Objects are sent to objects,

-   Morphisms are sent to morphisms, so \( A \xrightarrow{f} B \leadsto F(A) \xrightarrow{F(f)} F(B) \),

-   \( F \) respects composition and identities
:::

::: {.example title="Hom"}
\( {\operatorname{Hom}}_R(N, {\,\cdot\,}): {R{\hbox{-}}\operatorname{mod}}\to {\operatorname{Ab}} \), noting that the hom set may not have an \( R{\hbox{-}} \)module structure.
:::

::: {.remark}
Taking cohomology yields the \( i \)th derived functors of \( F \), for example \( \operatorname{Ext}^i, \operatorname{Tor}_i \). Recall that functors can be *covariant* or contravariant. See section 1 for formulating simplicial and singular homology (from topology) in this language.
:::

## Chapter 1: Chain Complexes

### Complexes of \( R{\hbox{-}} \)modules {#complexes-of-rhbox-modules}

::: {.definition title="Exactness"}
Let \( R \) be a ring with 1 and define \( {R{\hbox{-}}\operatorname{mod}} \) to be the category of *right* \( R{\hbox{-}} \)modules. \( A \xrightarrow{f} B \xrightarrow{g} C \) is **exact** if and only if \( \ker g = \operatorname{im}f \), and in particular \( g\circ f = 0 \).
:::

::: {.definition title="Chain Complex"}
A **chain complex** is
\[
C_{\,\cdot\,}\coloneqq(C_{\,\cdot\,}, d_{\,\cdot\,}) \coloneqq\qty{ \cdots \to C_{n+1} \xrightarrow{d_{n+1}} C_n \xrightarrow{d_n} C_{n-1} \to \cdots }
\]
for \( n \in {\mathbb{Z}} \) such that \( d_n \circ d_{n+1} = 0 \). We drop the \( n \) from the notation and write \( d^2 \coloneqq d\circ d = 0 \).
:::

::: {.definition title="Cycles and boundaries"}
```{=tex}
\envlist
```
-   \( Z_n = Z_n(C_{\,\cdot\,}) = \ker d_n \) are referred to as **\( n{\hbox{-}} \)cycles**.
-   \( B_n = B_n(C_{\,\cdot\,}) = \operatorname{im}d_{n+1} \) are the **\( n{\hbox{-}} \)boundaries**.
:::

::: {.definition title="Homology of a chain complex"}
Note that if \( d^2 = 0 \) then \( B_n \leq Z_n \leq C_n \). In this case, it makes sense to define the quotient module \( H^n(C_{\,\cdot\,}) \coloneqq Z_n / B_n \), the **\( n \)th homology** of \( C_{\,\cdot\,} \).
:::

::: {.definition title="Maps of chain complexes"}
A map \( u: C_{\,\cdot\,}\to D_{\,\cdot\,} \) of chain complexes is a sequence of maps \( u_n: C_n \to D_n \) such that all of the following squares commute:

```{=tex}
\begin{tikzcd}
    {\cdots} & {C_{n+1}} & {C_n} & {C_{n-1}} & {\cdots} \\
    \\
    {\cdots} & {D_{n+1}} & {D_n} & {D_{n-1}} & {\cdots}
    \arrow[from=1-1, to=1-2]
    \arrow[from=1-2, to=1-3]
    \arrow[from=1-3, to=1-4]
    \arrow[from=3-1, to=3-2]
    \arrow[from=3-2, to=3-3]
    \arrow[from=3-3, to=3-4]
    \arrow[from=3-4, to=3-5]
    \arrow[from=1-4, to=1-5]
    \arrow["{u_{n+1}}", from=1-2, to=3-2]
    \arrow["{u_n}", from=1-3, to=3-3]
    \arrow["{u_{n-1}}", from=1-4, to=3-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTAsWzEsMCwiQ197bisxfSJdLFsyLDAsIkNfbiJdLFszLDAsIkNfe24tMX0iXSxbMSwyLCJEX3tuKzF9Il0sWzIsMiwiRF9uIl0sWzMsMiwiRF97bi0xfSJdLFswLDAsIlxcYnVsbGV0Il0sWzAsMiwiXFxidWxsZXQiXSxbNCwyLCJcXGJ1bGxldCJdLFs0LDAsIlxcYnVsbGV0Il0sWzYsMF0sWzAsMV0sWzEsMl0sWzcsM10sWzMsNF0sWzQsNV0sWzUsOF0sWzIsOV0sWzAsMywidV97bisxfSIsMV0sWzEsNCwidV9uIiwxXSxbMiw1LCJ1X3tuLTF9IiwxXV0=)
:::

::: {.remark}
We can thus define a category \( \mathrm{Ch}({R{\hbox{-}}\operatorname{mod}}) \) where

-   The objects are chain complexes,
-   The morphisms are chain maps.
:::

::: {.exercise title="Weibel 1.1.2"}
A chain complex map \( u: C_{\,\cdot\,}\to D_{\,\cdot\,} \) restricts to
\[
u_n: Z_n(C_{\,\cdot\,}) \to Z_n(D_{\,\cdot\,}) \\
u_n: B_n(D_{\,\cdot\,}) \to B_n(D_{\,\cdot\,})
\]
and thus induces a well-defined map \( u_{n, *}: H_n(C_{\,\cdot\,}) \to H_n(D_{\,\cdot\,}) \).
:::

::: {.remark}
Each \( H_n \) thus becomes a functor \( \mathrm{Ch}({R{\hbox{-}}\operatorname{mod}}) \to {R{\hbox{-}}\operatorname{mod}} \) where \( H_n(u) \coloneqq u_{*. n} \).
:::

# Friday, January 15

## Review

> See assignment posted on ELC, due Wed Jan 27

::: {.remark}
Recall that a chain complex is \( C_{\,\cdot\,} \) where \( d^2 = 0 \), and a map of chain complex is a ladder of commuting squares

```{=tex}
\begin{tikzcd}
    \cdots & {C_{n-1}} & {C_{n}} & {C_{n+1}} & \cdots \\
    && {} \\
    \cdots & {D_{n-1}} & {D_n} & {D_{n+1}} & \cdots
    \arrow["{u_{n-1}}", from=1-2, to=3-2]
    \arrow["{u_n}", from=1-3, to=3-3]
    \arrow["{u_{n+1}}", from=1-4, to=3-4]
    \arrow["{d_{n-1}}", from=1-2, to=1-3]
    \arrow["{d_n}", from=1-3, to=1-4]
    \arrow["{d_{n-1}}", from=3-2, to=3-3]
    \arrow["{d_n}"', from=3-3, to=3-4]
    \arrow[from=1-4, to=1-5]
    \arrow[from=3-4, to=3-5]
    \arrow[from=3-1, to=3-2]
    \arrow[from=1-1, to=1-2]
\end{tikzcd}
```
> [Link to diagram](https://q.uiver.app/?q=WzAsMTEsWzEsMCwiQ197bi0xfSJdLFsyLDAsIkNfe259Il0sWzMsMCwiQ197bisxfSJdLFsyLDIsIkRfbiJdLFszLDIsIkRfe24rMX0iXSxbMSwyLCJEX3tuLTF9Il0sWzQsMCwiXFxidWxsZXQiXSxbNCwyLCJcXGJ1bGxldCJdLFswLDIsIlxcYnVsbGV0Il0sWzAsMCwiXFxidWxsZXQiXSxbMiwxXSxbMCw1LCJ1Il0sWzEsMywidV9uIl0sWzIsNCwidSJdLFswLDFdLFsxLDIsImRfbiJdLFs1LDNdLFszLDQsImRfbiIsMl0sWzIsNl0sWzQsN10sWzgsNV0sWzksMF1d) Recall that \( u_n: Z_n(C) \to Z_n(D) \) and \( u_n: B_n(C) \to B_n(D) \) preserves these submodules, so there are induced maps \( u_{{\,\cdot\,}, n}: H_n(D) \to H_n(D) \) where \( H_n(C) \coloneqq Z_n(C) / B_nn-1(C) \). Moreover, taking \( H_n({\,\cdot\,}) \) is a functor from \( \operatorname{Ch}({R{\hbox{-}}\operatorname{mod}}) \to {R{\hbox{-}}\operatorname{mod}} \) for any fixed \( n \) and on objects \( C\mapsto H_n(C) \) and chain maps \( u_{n} \to H_n(u) \coloneqq u_{*, n} \). Note the lower indices denote maps going down in degree.
:::

## Cohomology

::: {.definition title="Quasi-isomorphism"}
A chain map \( u:C\to D \) is a **quasi-isomorphism** if and only if the induced map \( u_{*, n}: H^n(C) \to H^n(D) \) is an isomorphism of \( R{\hbox{-}} \)modules.
:::

::: {.remark}
Note that the usual notion of an isomorphism in the categorical sense might be too strong here.
:::

::: {.definition title="Cohomology"}
A **cochain complex** is a complex of the form
\[
\cdots 
\xrightarrow{d^{n-2}}  C^{n-1}
\xrightarrow{d^{n-1}}  C^{n}
\xrightarrow{d^{n}}  C^{n+1}
\cdots
\]
where \( d^n \circ d^{n-1} = 0 \). We similarly write \( Z^n(C) \coloneqq\ker d^n \) and \( B^n(C) \coloneqq\operatorname{im}d^{n-1} \) and write the \( R{\hbox{-}} \)module \( H^n(C) \coloneqq Z^n/B^n \) for the \( n \)th **cohomology** of \( C \).
:::

::: {.remark}
There is a way to go back and forth bw chain complexes and cochain complexes: set \( C_n \coloneqq C^{-n} \) and \( d_n \coloneqq d^{-n} \). This yields
\[
C^{-n} 
\xrightarrow{d^{-n}} 
C^{-n+1} 
\iff C_n \xrightarrow{d^n} C_{n-1}
,\]
and the notions of \( d^2 = 0 \) coincide.
:::

::: {.definition title="Bounded complexes"}
A cochain complex \( C \) is **bounded** if and only if there exists an \( a\leq b \in {\mathbb{Z}} \) such that \( C_n \neq 0 \iff a\leq n \leq b \). Similarly \( C^n \) is bounded above if there is just a \( b \), and **bounded below** for just an \( a \). All of the same definitions are made for cochain complexes.
:::

::: {.remark}
See the book for classical applications:

-   1.1.3: Simplicial homology
-   1.1.5: Singular homology
:::

## Operations on Chain Complexes

::: {.remark}
Write \( \operatorname{Ch} \) for \( \operatorname{Ch}({R{\hbox{-}}\operatorname{mod}}) \), then if \( f,g: C\to D \) are chain maps then \( f+g:C\to D \) can be defined as \( (f+g)(x) = f(x) + g(x) \), since \( D \) has an addition coming from its \( R{\hbox{-}} \)module structure. Thus the hom sets \( {\operatorname{Hom}}_{\operatorname{Ch}}(C, D) \) becomes an abelian group. There is a distinguished **zero object**[^1] \( 0 \), defined as the chain complex with all zero objects and all zero maps. Note that we also have a zero map given by the composition \( (C \to 0) \circ (0\to D) \).
:::

::: {.definition title="Products and Coproducts"}
If \( \left\{{A_ \alpha}\right\} \) is a family of complexes, we can form two new complexes:

-   The **product** \( \qty{ \prod_ \alpha A_ \alpha}_n \coloneqq\prod_ \alpha A _{\alpha, n} \) with the differential
    \[
    \qty{ \prod d_ \alpha}_n: \prod A _{\alpha, n} \xrightarrow{d _{\alpha, n}} \prod A _{\alpha, n-1}
    .\]

-   The **coproduct** \( \qty{ \coprod _{\alpha} A _{\alpha}}_n \coloneqq\bigoplus _{\alpha} A _{\alpha, n} \), i.e. there are only finitely many nonzero entries, with exactly the same definition as above for the differential.
:::

::: {.remark}
Note that if the index set is finite, these notions coincide. By convention, finite direct products are written as direct sums.

These structures make \( \operatorname{Ch} \) into an **additive category**. See appendix for definition: the homs are abelian groups where composition distributes over addition, existence of a zero object, and existence of finite products. Note that here we have arbitrary products.
:::

::: {.definition title="?"}
We say \( B \) is a **subcomplex** of \( C \) if and only if

-   \( B_n \leq C_n \in {R{\hbox{-}}\operatorname{mod}} \) for all \( n \),
-   The differentials of \( B_n \) are the restrictions of the differentials of \( C_n \).
:::

::: {.remark}
This can be alternatively stated as saying the inclusion \( i: B\to C \) given by \( i_n: B_n \to C_n \) is a morphism of chain complexes. Recall that some squares need to commute, and this forces the condition on restrictions.
:::

::: {.definition title="Quotient Complex"}
When \( B \leq C \), we can form the quotient complex \( C/B \) where
\[
C_n/B_n \xrightarrow{\mkern 1.5mu\overline{\mkern-1.5mud_n\mkern-1.5mu}\mkern 1.5mu} C _{n-1} / B _{n-1}
.\]
Moreover there is a natural projection \( \pi: C\to C/B \) which is a chain map.
:::

Suppose \( f:B\to C \) is a chain map, then there exist induced maps on the levelwise kernels and cokernels, so we can form the **kernel** and **cokernel** complex:

```{=tex}
\begin{tikzcd}
    \cdots && {\ker f_n} && {\ker f_{n-1}} && \cdots \\
    \\
    \cdots && {B_n} && {B_{n-1}} && \cdots \\
    \\
    \cdots && {C_n} && {C_{n-1}} && \cdots \\
    &&& {} & {} \\
    \cdots && {\operatorname{coker}f_n} && {\operatorname{coker}f_{n-1}} && \cdots
    \arrow["{d_n}", from=5-3, to=5-5]
    \arrow["{d_n}", from=3-3, to=3-5]
    \arrow["{\exists d_n}", dashed, from=1-3, to=1-5]
    \arrow["{\exists d_n}", dashed, from=7-3, to=7-5]
    \arrow["{i_{n}}"{description}, from=1-3, to=3-3]
    \arrow["{f_n}"{description}, from=3-3, to=5-3]
    \arrow["{\pi_n}"{description}, from=5-3, to=7-3]
    \arrow["{f_{n-1}}"{description}, from=3-5, to=5-5]
    \arrow["{\pi_{n-1}}"{description}, from=5-5, to=7-5]
    \arrow["{i_{n-1}}"{description}, from=1-5, to=3-5]
    \arrow[from=1-1, to=1-3]
    \arrow[from=3-1, to=3-3]
    \arrow[from=5-1, to=5-3]
    \arrow[from=7-1, to=7-3]
    \arrow[from=7-5, to=7-7]
    \arrow[from=5-5, to=5-7]
    \arrow[from=3-5, to=3-7]
    \arrow[from=1-5, to=1-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTgsWzIsNCwiQ19uIl0sWzQsNCwiQ197bi0xfSJdLFsyLDIsIkJfbiJdLFs0LDIsIkJfe24tMX0iXSxbMiwwLCJcXGtlciBmX24iXSxbNCwwLCJcXGtlciBmX3tuLTF9Il0sWzIsNiwiXFxjb2sgZl9uIl0sWzQsNiwiXFxjb2sgZl97bi0xfSJdLFszLDVdLFs0LDVdLFs2LDAsIlxcY2RvdHMiXSxbNiwyLCJcXGNkb3RzIl0sWzYsNCwiXFxjZG90cyJdLFs2LDYsIlxcY2RvdHMiXSxbMCw2LCJcXGNkb3RzIl0sWzAsNCwiXFxjZG90cyJdLFswLDIsIlxcY2RvdHMiXSxbMCwwLCJcXGNkb3RzIl0sWzAsMSwiZF9uIl0sWzIsMywiZF9uIl0sWzQsNSwiXFxleGlzdHMgZF9uIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsNywiXFxleGlzdHMgZF9uIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzQsMiwiaV97bn0iLDFdLFsyLDAsImZfbiIsMV0sWzAsNiwiXFxwaV9uIiwxXSxbMywxLCJmX3tuLTF9IiwxXSxbMSw3LCJcXHBpX3tuLTF9IiwxXSxbNSwzLCJpX3tuLTF9IiwxXSxbMTcsNF0sWzE2LDJdLFsxNSwwXSxbMTQsNl0sWzcsMTNdLFsxLDEyXSxbMywxMV0sWzUsMTBdXQ==)

Here \( \ker f \leq B \) is a subcomplex, and \( \operatorname{coker}f \) is a quotient complex of \( C \). The chain map \( i: \ker f\to B \) is a categorical kernel of \( f \) in \( \operatorname{Ch} \), and \( \pi \) is similarly a cokernel. See appendix A 1.6. These constructions make \( \operatorname{Ch} \) into an **abelian category**: roughly an additive category where every morphism has a kernel and a cokernel.

# 1.2 (Wednesday, January 20)

## Taking Chain Complexes of Chain Complexes

> See phone pic for missed first 10m

### Double Complexes

::: {.remark}
Consider a double complex:

```{=tex}
\begin{tikzcd}
    &&&& {C_{p, \cdot}} \\
    \\
    && {C_{p-1, q+1}} && {C_{p, q+1}} && {C_{p-1, q+1}} \\
    \\
    {C_{\cdot, q}} && {C_{p-1, q}} && {C_{p, q}} && {C_{p+1, q}} \\
    \\
    && {C_{p-1, q+1}} && {C_{p-1, q+1}} && {C_{p-1, q+1}}
    \arrow["{d_{p, q}^h}", from=5-5, to=5-3]
    \arrow["{d_{p, q}^v}"', from=5-5, to=7-5]
    \arrow[from=3-5, to=5-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTEsWzIsMiwiQ197cC0xLCBxKzF9Il0sWzQsMiwiQ197cCwgcSsxfSJdLFs2LDIsIkNfe3AtMSwgcSsxfSJdLFsyLDQsIkNfe3AtMSwgcX0iXSxbNCw0LCJDX3twLCBxfSJdLFs2LDQsIkNfe3ArMSwgcX0iXSxbMiw2LCJDX3twLTEsIHErMX0iXSxbNCw2LCJDX3twLTEsIHErMX0iXSxbNiw2LCJDX3twLTEsIHErMX0iXSxbNCwwLCJDX3twLCBcXGNkb3R9Il0sWzAsNCwiQ197XFxjZG90LCBxfSJdLFs0LDMsImRfe3AsIHF9XmgiXSxbNCw3LCJkX3twLCBxfV52IiwyXSxbMSw0XV0=)

All of the individual rows and columns are chain complexes, where \( (d^h)^2 = 0 \) and \( (d^v)^2 = 0 \), and the square anticommute: \( d^v d^h + d^h d^v - 0 \), so \( d^v d^h = -d^h d^v \). This is almost a chain complex of chain complexes, i.e. an element of \( \operatorname{Ch}(\operatorname{Ch}{R{\hbox{-}}\operatorname{mod}})) \). It's useful here to consider lines parallel to the line \( y=x \).
:::

::: {.definition title="Bounded Complexes"}
A double complex \( C_{{\,\cdot\,}, {\,\cdot\,}} \) is **bounded** if and only if there are only finitely many nonzero terms along each constant diagonal \( p+q = n \).
:::

::: {.example title="?"}
A *first quadrant* double complex \( \left\{{C_{p, q}}\right\}_{p, q\geq 0} \) is bounded: note that this can still have infinitely many terms, but each diagonal is finite because each will hit a coordinate axis.
:::

::: {.remark title="The sign trick"}
The squares anticommute, since the \( d^v \) are not chain maps between the horizontal chain complexes. This can be fixed by changing every one out of four signs, defining
\[
f_{*, q}: C_{*, q} \to C_{*, q-1} \\
f_{p, q} \coloneqq(-1)^p d^v_{p, q}: C_{p,q} \to C_{p, q-1}
.\]

This yields a new double complex where the signs of each column alternate:

```{=tex}
\begin{tikzcd}
    {C_{0, q}} && {C_{1, q}} && {C_{2, q}} \\
    \\
    {C_{0, q-1}} && {C_{1, q-1}} && {C_{2, q-1}}
    \arrow["{d^v}", from=1-1, to=3-1]
    \arrow["{-d^v}", from=1-3, to=3-3]
    \arrow["{d^v}", from=1-5, to=3-5]
    \arrow["{d^h}"{description}, from=1-5, to=1-3]
    \arrow["{d^h}"{description}, from=1-3, to=1-1]
    \arrow["{d^h}"{description}, from=3-5, to=3-3]
    \arrow["{d^h}"{description}, from=3-3, to=3-1]
\end{tikzcd}
```
Now the squares commute and \( f_{{\,\cdot\,}, q} \) are chain maps, so this object is an element of \( \operatorname{Ch}(\operatorname{Ch}{R{\hbox{-}}\operatorname{mod}}) \).
:::

### Total Complexes

Recall that products and coproducts of \( R{\hbox{-}} \)modules coincide when the indexing set is finite.

::: {.definition title="?"}
Given a double complex \( C_{{\,\cdot\,}, {\,\cdot\,}} \), there are two ordinary chain complexes associated to it referred to as **total complexes**:
\[
(\mathrm{\operatorname{Tot}}^{\prod_{}} C)_n \coloneqq\prod_{p+q = n} C_{p, q}
(\mathrm{\operatorname{Tot}}^{\oplus_{}} C)_n \coloneqq\bigoplus_{p+q = n} C_{p, q}
.\]
Writing \( \mathrm{\operatorname{Tot}}(C) \) usually refers to the former. The differentials are given by
\[
d_{p, q} = d^h + d^v: C_{p, q} \to C_{p-1, q} \oplus C_{p, q-1}
,\]
where \( C_{p, q} \subseteq \mathrm{\operatorname{Tot}}^\oplus (C)_n \) and \( C_{p-1, q} \oplus C_{p, q-1} \subseteq \mathrm{\operatorname{Tot}}^\oplus(C)_{n-1} \). Then you extend this to a differential on the entire diagonal by defining \( d = \bigoplus d_{p, q} \).
:::

::: {.exercise title="?"}
Check that \( d^2 = 0 \), using \( d^v d^h + d^h d^v = 0 \).
:::

::: {.remark}
Some notes:

-   \( \mathrm{\operatorname{Tot}}^{\oplus}(C) = \mathrm{\operatorname{Tot}}^{\prod}(C) \) when \( C \) is bounded.

-   The total complexes need not exist if \( C \) is unbounded: one needs infinite direct products and infinite coproducts to exist in \( \mathcal{C} \). A category admitting these is called **complete** or **cocomplete**.[^2]
:::

### More Operations

::: {.definition title="Truncation below"}
Fix \( n\in {\mathbb{Z}} \), and define the **\( n \)th truncation** \( \tau_{\geq n}(C) \) by
\[
\tau_{\geq n}(C) = 
\begin{cases}
0 & i < n  
\\
Z_n & i= n
\\
C_i & i > n .
\end{cases}
.\]

Pictorially:

```{=tex}
\begin{tikzcd}
    \cdots & 0 & {Z_n} & {C_{n+1}} & {C_{n+2}} & \cdots
    \arrow[from=1-2, to=1-1]
    \arrow["{d_n}"', from=1-3, to=1-2]
    \arrow["{d_{n+1}}"', from=1-4, to=1-3]
    \arrow["{d_{n+2}}"', from=1-5, to=1-4]
    \arrow[from=1-6, to=1-5]
\end{tikzcd}
```
> [Link to diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJcXGNkb3RzIl0sWzEsMCwiMCJdLFsyLDAsIlpfbiJdLFszLDAsIkNfe24rMX0iXSxbNCwwLCJDX3tuKzJ9Il0sWzUsMCwiXFxjZG90cyJdLFsxLDBdLFsyLDEsImRfbiIsMl0sWzMsMiwiZF97bisxfSIsMl0sWzQsMywiZF97bisyfSIsMl0sWzUsNF1d)

This is sometimes call the **good truncation of \( C \) below \( n \)**.
:::

::: {.remark}
Note that
\[
H_i(\tau_{\geq n} C) = 
\begin{cases}
0 & i < n  
\\
H_i(C) & i\geq n.
\end{cases}
.\]
:::

::: {.definition title="Truncation above"}
We define the quotient complex
\[
\tau_{<n} C \coloneqq C / \tau_{\geq n} C
.\]
which is \( C_i \) below \( n \), \( C_n/Z_n \) at \( n \). Thus is has homology
\[
\begin{cases}
H_i(C) & i< n.
\\
0 & i \geq n
\end{cases}
.\]
:::

::: {.definition title="Translation"}
If \( C \) is a chain complex and \( p\in {\mathbb{Z}} \), define a new complex \( C[p] \) by
\[
C[p]_n \coloneqq C_{n+p}
.\]

```{=tex}
\begin{tikzcd}
    {\text{Degrees}} & {-p} && 0 && p \\
    \\
    C & {C_{-p}} & \cdots & {C_0} & \cdots & {C_{p}} \\
    {C[p]} & {C_0} & \cdots & {C_p} & \cdots & {C_{2p}}
    \arrow[dashed, from=3-4, to=4-2]
    \arrow[dashed, from=3-6, to=4-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTYsWzAsMiwiQyJdLFswLDMsIkNbcF0iXSxbMywyLCJDXzAiXSxbMywwLCIwIl0sWzAsMCwiXFx0ZXh0e0RlZ3JlZXN9Il0sWzEsMCwiLXAiXSxbMSwyLCJDX3stcH0iXSxbMywzLCJDX3AiXSxbMSwzLCJDXzAiXSxbMiwyLCJcXGNkb3RzIl0sWzIsMywiXFxjZG90cyJdLFs0LDMsIlxcY2RvdHMiXSxbNCwyLCJcXGNkb3RzIl0sWzUsMiwiQ197cH0iXSxbNSwzLCJDX3sycH0iXSxbNSwwLCJwIl0sWzIsOCwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEzLDcsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)

Similarly, if \( C \) is a *cochain* complex, we set \( C[p]^n \coloneqq C^{n-p} \):

```{=tex}
\begin{tikzcd}
    {\text{Degrees}} & {-p} && 0 && p \\
    \\
    C & {C^{-p}} & \cdots & {C^0} & \cdots & {C^p} \\
    {C[p]} & {C^0} & \cdots & {C^{-p}} & \cdots & {C^0}
    \arrow[from=3-2, to=3-3]
    \arrow[from=3-3, to=3-4]
    \arrow[from=3-4, to=3-5]
    \arrow[from=3-5, to=3-6]
    \arrow[from=4-2, to=4-3]
    \arrow[from=4-3, to=4-4]
    \arrow[from=4-4, to=4-5]
    \arrow[from=4-5, to=4-6]
    \arrow[dashed, from=3-2, to=4-4]
    \arrow[dashed, from=3-4, to=4-6]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTYsWzAsMiwiQyJdLFswLDMsIkNbcF0iXSxbMywyLCJDXjAiXSxbMywwLCIwIl0sWzAsMCwiXFx0ZXh0e0RlZ3JlZXN9Il0sWzEsMCwiLXAiXSxbMSwyLCJDXnstcH0iXSxbMywzLCJDXnstcH0iXSxbMSwzLCJDXjAiXSxbMiwyLCJcXGNkb3RzIl0sWzIsMywiXFxjZG90cyJdLFs0LDMsIlxcY2RvdHMiXSxbNCwyLCJcXGNkb3RzIl0sWzUsMiwiQ15wIl0sWzUsMywiQ14wIl0sWzUsMCwicCJdLFs2LDldLFs5LDJdLFsyLDEyXSxbMTIsMTNdLFs4LDEwXSxbMTAsN10sWzcsMTFdLFsxMSwxNF0sWzYsNywiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsMTQsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)

> Mnemonic: Shift \( p \) positions in the same direction as the arrows.

In both cases, the differentials are given by the shifted differential \( d[p] \coloneqq(-1)^p d \). Note that these are not alternating: \( p \) is the fixed translation, so this is a constant that changes the signs of all differentials. Thus \( H_n(C[p]) = H_{n+p}(C) \) and \( H^n(C[p]) = H^{n-p} \).
:::

::: {.exercise}
Check that if \( C^n \coloneqq C_{-n} \), then \( C[p]^n = C[p]_{-n} \).
:::

::: {.remark}
We can make translation into a functor \( [p]: \operatorname{Ch}\to \operatorname{Ch} \): given \( f: C\to D \), define \( f[p]: C[p] \to D[p] \) by \( f[p]_n \coloneqq f_{n+p} \), and a similar definition for cochain complexes changing \( p \) to \( -p \).
:::

# Lecture 4 (Friday, January 22)

## Long Exact Sequences

Some terminology: in an abelian category \( \mathcal{A} \) an example of an **exact complex** in \( \operatorname{Ch}(\mathcal{A}) \) is
\[
\cdots \to 0 \to A \xrightarrow{f} B \xrightarrow{g} C \to 0 \to \cdots
.\]

where *exactness* means \( \ker = \operatorname{im} \) at each position, i.e. \( \ker f = 0, \operatorname{im}f = \ker g, \operatorname{im}g = C \). We say \( f \) is monic and \( g \) epic.

As a special case, if \( 0\to A\to 0 \) is exact then \( A \) must be zero, since the image of the incoming map must be 0. This also happens when every other term is zero. If \( 0\to A \xrightarrow{f} B \to 0 \), then \( A \cong B \) since \( f \) is both injective and surjective (say for \( R{\hbox{-}} \)modules).

::: {.theorem title="Long Exact Sequences"}
Suppose \( 0\to A\to B \to C \to 0 \) is a SES in \( \operatorname{Ch}(\mathcal{A}) \) (note: this is a sequence of *complexes*), then there are natural maps
\[
\delta: H_n(C) \to H_{n-1}(A)
\]
called **connecting morphisms** which decrease degree such that the following sequence is exact:

```{=tex}
\begin{tikzcd}
    & \cdots & {H_{n+1}(C)} \\
    \\
    {H_n(A)} & {H_n(B)} & {H_n(C)} \\
    \\
    {H_{n-1}(A)} & \cdots
    \arrow["{f_* = H_n(f)}", from=3-1, to=3-2]
    \arrow["{g_* = H_n(g)}", from=3-2, to=3-3]
    \arrow["\delta", from=1-3, to=3-1, in=180, out=360]
    \arrow["\delta", from=3-3, to=5-1, in=180, out=360]
    \arrow[from=5-1, to=5-2]
    \arrow[from=1-2, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbMCwyLCJIX24oQSkiXSxbMSwyLCJIX24oQikiXSxbMiwyLCJIX24oQykiXSxbMiwwLCJIX3tuKzF9KEMpIl0sWzAsNCwiSF97bi0xfShBKSJdLFsxLDQsIlxcY2RvdHMiXSxbMSwwLCJcXGNkb3RzIl0sWzAsMSwiZl8qID0gSF9uKGYpIl0sWzEsMiwiZ18qID0gSF9uKGcpIl0sWzMsMCwiXFxkZWwiXSxbMiw0LCJcXGRlbCJdLFs0LDVdLFs2LDNdXQ==)

This is referred to as the **long exact sequence in homology**. Similarly, replacing chain complexes by cochain complexes yields a similar connecting morphism that increases degree.

> Note on notation: some books use \( {{\partial}} \) for homology and \( \delta \) for cohomology.
:::

The proof that this sequence exists is a consequence of the *snake lemma*.

::: {.lemma title="The Snake Lemma"}
The sequence highlighted in red in the following diagram is exact:

```{=tex}
\begin{tikzcd}[column sep=tiny]
    0 && {{\color{red}\ker(f)}} && {{\color{red}\ker(\alpha)}} && {{\color{red}\ker(\beta)}} && {{\color{red}\ker(\gamma)}} \\
    \\
    && 0 && A && B && C && 0 \\
    &&&&&&& {} \\
    && 0 && {A'} && {B'} && {C'} && 0 \\
    \\
    &&&& {{\color{red}\operatorname{coker}(\alpha)}} && {{\color{red}\operatorname{coker}(\beta)}} && {{\color{red}\operatorname{coker}(\gamma)}} && {{\color{red}\operatorname{coker}(g')}} && 0
    \arrow[from=5-3, to=5-5]
    \arrow["{f'}"', from=5-5, to=5-7]
    \arrow["{g'}"', from=5-7, to=5-9]
    \arrow["f", from=3-5, to=3-7]
    \arrow["g", from=3-7, to=3-9]
    \arrow[from=3-3, to=3-5]
    \arrow["\beta"', from=3-7, to=5-7]
    \arrow["\gamma"', from=3-9, to=5-9]
    \arrow["\alpha"', from=3-5, to=5-5]
    \arrow[from=7-5, to=7-7]
    \arrow[from=7-7, to=7-9]
    \arrow[from=7-9, to=7-11]
    \arrow[from=7-11, to=7-13]
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow[from=1-9, to=7-5, in=180, out=360, "\exists \delta", color=red, dotted]
    \arrow[from=5-9, to=5-11]
    \arrow[from=3-9, to=3-11]
    \arrow[from=1-5, to=3-5]
    \arrow[from=1-7, to=3-7]
    \arrow[from=1-9, to=3-9]
    \arrow[from=5-5, to=7-5]
    \arrow[from=5-7, to=7-7]
    \arrow[from=5-9, to=7-9]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMjEsWzQsMiwiQSJdLFs2LDIsIkIiXSxbOCwyLCJDIl0sWzQsNCwiQSciXSxbNiw0LCJCJyJdLFs4LDQsIkMnIl0sWzIsNCwiMCJdLFsyLDIsIjAiXSxbNCwwLCJ7XFxjb2xvcntyZWR9XFxrZXIoXFxhbHBoYSl9Il0sWzIsMCwie1xcY29sb3J7cmVkfVxca2VyKGYpfSJdLFs2LDAsIntcXGNvbG9ye3JlZH1cXGtlcihcXGJldGEpfSJdLFs4LDAsIntcXGNvbG9ye3JlZH1cXGtlcihcXGdhbW1hKX0iXSxbNCw2LCJ7XFxjb2xvcntyZWR9XFxjb2tlcihcXGFscGhhKX0iXSxbNiw2LCJ7XFxjb2xvcntyZWR9XFxjb2tlcihcXGJldGEpfSJdLFs4LDYsIntcXGNvbG9ye3JlZH1cXGNva2VyKFxcZ2FtbWEpfSJdLFsxMCw2LCJ7XFxjb2xvcntyZWR9XFxjb2tlcihnJyl9Il0sWzAsMCwiMCJdLFsxMiw2LCIwIl0sWzcsM10sWzEwLDIsIjAiXSxbMTAsNCwiMCJdLFs2LDNdLFszLDQsImYnIl0sWzQsNSwiZyciXSxbMCwxLCJmIl0sWzEsMiwiZyJdLFs3LDBdLFsxLDQsIlxcYmV0YSIsMV0sWzIsNSwiXFxnYW1tYSIsMV0sWzAsMywiXFxhbHBoYSIsMV0sWzEyLDEzXSxbMTMsMTRdLFsxNCwxNV0sWzE1LDE3XSxbMTYsOV0sWzksOF0sWzgsMTBdLFsxMCwxMV0sWzExLDEyXSxbNSwyMF0sWzIsMTldXQ==)

Existence:

-   Start with \( c\in \ker(\gamma) \leq C \), so \( \gamma(c) = 0 \in C' \)
-   **Choose** \( b\in B \) by surjectivity
    -   We'll show it's independent of this choice.
-   Then \( b'\in B' \) goes to \( 0\in C' \), so \( b' \in \ker (B' \to C') \)
-   By exactness, \( b' \in \ker (B' \to C') = \operatorname{im}(A'\to B') \), and now produce a unique \( a'\in A' \) by injectivity
-   Take the image \( [a']\in \operatorname{coker}\alpha \)
-   Define \( {{\partial}}(c) \coloneqq[a'] \).

Uniqueness:

-   We chose \( b \), suppose we chose a different \( \tilde b \).
-   Then \( \tilde b - b \mapsto c-c = 0 \), so the difference is in \( \ker g = \operatorname{im}f \).
-   Produce an \( \tilde a\in A \) such that \( \tilde a\mapsto \tilde b - b \)
-   Then \( \mkern 1.5mu\overline{\mkern-1.5mua\mkern-1.5mu}\mkern 1.5mu \coloneqq\alpha(\tilde a) \), so apply \( f' \).
-   Define \( \beta(\tilde b) = \tilde b ' \in B \).
-   Commutativity of the LHS square forces \( \tilde a'\mapsto \tilde b' - b' \).
-   Then \( \mkern 1.5mu\overline{\mkern-1.5mua\mkern-1.5mu}\mkern 1.5mu + a' \mapsto \tilde b' -b' + b' = \tilde b' \).
-   So \( \tilde a' + a' \) is the desired pullback of \( \tilde b' \)
-   Then take \( [\tilde a'] \in \operatorname{coker}\alpha \); are \( a', \tilde a' \) in the same equivalence class?
-   Use that fact that \( \tilde a = a' + \mkern 1.5mu\overline{\mkern-1.5mua\mkern-1.5mu}\mkern 1.5mu \), where \( \mkern 1.5mu\overline{\mkern-1.5mua\mkern-1.5mu}\mkern 1.5mu \in \operatorname{im}\alpha \), so \( [\tilde a] = [a' + \mkern 1.5mu\overline{\mkern-1.5mua\mkern-1.5mu}\mkern 1.5mu] = [a'] \in \operatorname{coker}\alpha \coloneqq A'/\operatorname{im}\alpha \).

```{=tex}
\todo[inline]{A few changes in the middle, redo!}
```
Exactness:

-   Let's show \( g: \ker \beta\to \ker \gamma \).

    -   Let \( b \in \ker \beta \), then consider \( \gamma(g(\beta)) = g'(\beta(b)) = g'(0) = 0 \) and so \( g(b) \in \ker \gamma \).

-   Now we'll show \( \operatorname{im}({ \left.{{g}} \right|_{{\ker \beta}} }) \subseteq \ker \delta \)

    -   Let \( b \in \ker \beta, c = g(b) \), then how is \( \delta(c) \) defined?
    -   Use this \( b \), then apply \( \beta \) to get \( b' = \beta(b) = 0 \) since \( b \in \ker \beta \).
    -   So the unique thing mapping to it \( a' \) is zero, and thus \( [a'] = 0 = \delta(c) \).

-   \( \ker \delta \subseteq \operatorname{im}( { \left.{{g}} \right|_{{ \ker \beta}} } ) \)

    -   Let \( c\in \ker \delta \), then \( \delta(c) = 0 = [a'] \in \operatorname{coker}\alpha \) which implies that \( a' \in \operatorname{im}\alpha \).
    -   Write \( a' = \alpha(a) \), then \( \beta(b) = b' = f'(a') = f'( \alpha(a)) \) by going one way around the LHS square, and is equal to \( \beta(f(a)) \) going the other way.
    -   So \( \tilde b \coloneqq b - f(a) \in \ker \beta \), since \( \beta(b) = \beta(f(a)) \) implies their difference is zero.
    -   Then \( g(\tilde b) = g(b) - g(f(a)) = g(b) = c \), which puts \( c\in g(\ker \beta) \) as desired.
:::

::: {.exercise title="?"}
Show exactness at the remaining places -- the most interesting place is at \( \operatorname{coker}\alpha \). Also check that all of these maps make sense.
:::

::: {.remark}
We assumed that \( \mathcal{A}= {R{\hbox{-}}\operatorname{mod}} \) here, so we could chase elements, but this happens to also be true in any abelian category \( \mathcal{A} \) but by a different proof. The idea is to embed \( \mathcal{A} \to {R{\hbox{-}}\operatorname{mod}} \) for some ring \( R \), do the construction there, and pull the results back -- but this doesn't quite work! \( \mathcal{A} \) can be too big. Instead, do this for the smallest subcategory \( \mathcal{A}_0 \) containing all of the modules and maps involved in the snake lemma. Then \( \mathcal{A}_0 \) is small enough to embed into \( {R{\hbox{-}}\operatorname{mod}} \) by the **Freyd-Mitchell Embedding Theorem**.
:::

# Lecture 5 (Monday, January 25)

## LES Associated to a SES

::: {.theorem title="?"}
For every SES of chain complexes, there is a long exact sequence in homology.
:::

::: {.proof title="?"}
Suppose we have a SES of chain complexes
\[
0 \to A \xrightarrow{f} B \xrightarrow{g} C \to 0
,\]
which means that for every \( n \) there is a SES of \( R{\hbox{-}} \)modules. Recall the diagram for the snake lemma, involving kernels across the top and cokernels across the bottom. Applying the snake lemma, by hypothesis \( \operatorname{coker}g = 0 \) and \( \ker f = 0 \). There is a SES

\[
A_n / d A_{n+1} 
\to 
B_n / d B_{n+1} 
\to 
C_n / d C_{n+1} 
\to 
0
\]

Using the fact that \( B_n \subseteq Z_n \), we can use the 1st and 2nd isomorphism theorems to produce

```{=tex}
\begin{tikzcd}
    & {H_n(A)} & {H_n(B)} & {H_n(C)} \\
    \\
    & {A_n/d A_{n+1}} & {B / d B_{n+1}} & {C/d C_{n+1}} && 0 \\
    \\
    0 & {Z_{n-1}(A)} & {Z_{n-1}(B)} & {Z_{n-1}(C)} \\
    \\
    & {\operatorname{coker}d_n = Z_{n-1}(A)/d A_n = H_{n-1}(A)} & {H_{n-1}(B)} & {H_{n-1}(C)}
    \arrow[from=3-4, to=3-6]
    \arrow["f", from=3-2, to=3-3]
    \arrow["g", from=3-3, to=3-4]
    \arrow["{d_n}"', from=3-2, to=5-2]
    \arrow["{d_n}"', from=3-3, to=5-3]
    \arrow["{d_n}"', from=3-4, to=5-4]
    \arrow[from=5-2, to=7-2]
    \arrow["{f_*}"', from=7-2, to=7-3]
    \arrow["{g_*}"', from=7-3, to=7-4]
    \arrow[from=5-3, to=7-3]
    \arrow[from=5-4, to=7-4]
    \arrow["{f_*}"{description}, from=1-2, to=1-3]
    \arrow["{g_*}"{description}, from=1-3, to=1-4]
    \arrow[from=1-2, to=3-2]
    \arrow[from=1-3, to=3-3]
    \arrow[from=1-4, to=3-4]
    \arrow[from=5-1, to=5-2]
    \arrow[from=5-2, to=5-3]
    \arrow[from=5-3, to=5-4]
    \arrow[dotted, from=1-4, to=7-2, in=180, out=360, "{\exists \delta}"]
\end{tikzcd}
```
> [Link to diagram](https://q.uiver.app/?q=WzAsMTQsWzEsMiwiQV9uL2QgQV97bisxfSJdLFsyLDIsIkIgLyBkIEJfe24rMX0iXSxbMywyLCJDL2QgQ197bisxfSJdLFswLDQsIjAiXSxbMSw0LCJaX3tuLTF9KEEpIl0sWzIsNCwiWl97bi0xfShCKSJdLFszLDQsIlpfe24tMX0oQykiXSxbNSwyLCIwIl0sWzEsNiwiXFxjb2tlciBkX24gPSBaX3tuLTF9KEEpL2QgQV9uID0gSF97bi0xfShBKSJdLFsyLDYsIkhfe24tMX0oQikiXSxbMyw2LCJIX3tuLTF9KEMpIl0sWzEsMCwiSF9uKEEpIl0sWzIsMCwiSF9uKEIpIl0sWzMsMCwiSF9uKEMpIl0sWzIsN10sWzAsMSwiZiJdLFsxLDIsImciXSxbMCw0LCJkX24iLDJdLFsxLDUsImRfbiIsMl0sWzIsNiwiZF9uIiwyXSxbNCw4XSxbOCw5LCJmXyoiLDJdLFs5LDEwLCJnXyoiLDJdLFs1LDldLFs2LDEwXSxbMTEsMTIsImZfKiIsMV0sWzEyLDEzLCJnXyoiLDFdLFsxMSwwXSxbMTIsMV0sWzEzLDJdLFszLDRdLFs0LDVdLFs1LDZdLFsxMyw4LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XV0=)

This yields an exact sequence relating \( H_n \) to \( H_{n-1} \), and these can all be spliced together.

-   \( \ker(A_n / d A_{n-1} \to Z_{n-1}(A) = Z_n(A) / d A_{n+1} \coloneqq H_n(A) \) using the 2nd isomorphism theorem
:::

::: {.remark}
Note that \( d \) is *natural*, which means the following: there is a category \( \mathcal{S} \) whose objects are SESs of chain complexes and whose maps are chain maps:

```{=tex}
\begin{tikzcd}
    0 & A & B & C & 0 \\
    \\
    0 & {A'} & {B'} & {C'} & 0
    \arrow[from=1-2, to=3-2]
    \arrow[from=1-3, to=3-3]
    \arrow[from=1-4, to=3-4]
    \arrow[from=1-1, to=1-2]
    \arrow[from=1-2, to=1-3]
    \arrow[from=1-3, to=1-4]
    \arrow[from=1-4, to=1-5]
    \arrow[from=3-1, to=3-2]
    \arrow[from=3-2, to=3-3]
    \arrow[from=3-3, to=3-4]
    \arrow[from=3-4, to=3-5]
\end{tikzcd}
```
There is another full subcategory \( \mathcal{L} \) of \( \operatorname{Ch} \) whose objects are LESs of objects in the original abelian category, i.e. exact chain complexes. The claim is that the LES construction in the theorem defines a functor \( \mathcal{S}\to \mathcal{L} \). We've seen how this maps objects, so what is the map on morphisms? Given a morphism as in the above diagram, there is an induced morphism:

```{=tex}
\begin{tikzcd}
    \cdots & {H_n (A)} & {H_n(B)} & {H_n(C)} & {H_{n-1}(A)} & \cdots \\
    \\
    \cdots & {H_n(A')} & {H_n(B')} & {H_n(C')} & {H_{n-1}(A)} & \cdots
    \arrow["{{\partial}}", from=1-4, to=1-5]
    \arrow[from=1-1, to=1-2]
    \arrow[from=1-2, to=1-3]
    \arrow[from=1-3, to=1-4]
    \arrow[from=3-1, to=3-2]
    \arrow[from=3-2, to=3-3]
    \arrow[from=3-3, to=3-4]
    \arrow["{{\partial}}", from=3-4, to=3-5]
    \arrow["{H_n(u_A)}"{description}, from=1-2, to=3-2]
    \arrow["{H_n(u_B)}"{description}, from=1-3, to=3-3]
    \arrow["{H_n(u_C)}"{description}, from=1-4, to=3-4]
    \arrow["{H_{n-1}(u_A)}"{description}, from=1-5, to=3-5]
    \arrow[from=3-5, to=3-6]
    \arrow[from=1-5, to=1-6]
\end{tikzcd}
```
The first two squares commute, and *naturality* means that the third square commutes as well.
:::

::: {.exercise title="?"}
Check the details!
:::

::: {.remark}
It is sometimes useful to explicitly know how to compute snake lemma boundary elements. See the book for a recipe for computing \( {{\partial}}(\xi) \):

-   Lift \( \xi \) to a cycle \( c\in Z_n(C) \subseteq C_n \).
-   Pull \( c \) back to a preimage \( b\in B_n \) by surjectivity.
-   Apply the differential to get \( d(b)\in Z_{n-1}(B) \), using that images are contained in kernels.
-   Since this is in kernel of the outgoing map, it's in the kernel of the incoming map and thus there exists an \( a\in Z_{n-1}(A) \) such that \( f(a) = db \)
-   So set \( \delta(\xi) \coloneqq[a] \in H_{n-1}(A) \).
:::

::: {.remark}
Why is naturality useful? Suppose \( H_n(B) = 0 \), you get isomorphisms, and this allows inductive arguments up the LES. The LES in homology is sometimes abbreviated as an **exact triangle**:

```{=tex}
\begin{tikzcd}
    & {H_*(A)} \\
    \\
    {H_*(C)} && {H_*(B)}
    \arrow["f", from=1-2, to=3-3]
    \arrow["g", from=3-3, to=3-1]
    \arrow["{{\partial}}", squiggly, from=3-1, to=1-2]
\end{tikzcd}
```
Here \( {{\partial}}:H_*(C) \to H_*(A)[1] \) shifts degrees. Note that this motivates the idea of **triangulated categories**, which is important in modern research. See Weibel Ch.10, and exercise 1.4.5 for how to construct these as quotients of \( \operatorname{Ch} \).
:::

## 1.4: Chain Homotopies

Assume for now that we're in the situation of \( R{\hbox{-}} \)modules where \( R \) is a field, i.e. vector spaces. The main fact/advantage here that is not generally true for \( R{\hbox{-}} \)modules: every subspace has a complement. Since \( B_n \subseteq Z_n \subseteq C_n \), we can write \( C_n = Z_n \oplus B_n' \) for every \( n \), and \( Z_n = B_n \oplus H_n \). This notation is suggestive, since \( H_n \cong Z_n/B_n \) as a quotient of vector spaces. Substituting, we get \( C_n = B_n \oplus H_n \oplus B_n' \). Consider the projection \( C_n \to B_n \) by projecting onto the first factor. Identifying \( B_n \coloneqq\operatorname{im}(C_{n+1} \to C_n) \cong C_{n+1}/Z_{n+1} \) by the 1st isomorphism theorem in the reverse direction. But this image is equal to \( B_{n+1}' \), and we can embed this in \( C_{n+1} \), so define \( s_n: C_n \to C_{n+1} \) as the composition
\[
s_n \coloneqq( C_n \xrightarrow{\mathop{\mathrm{Proj}}} B_n = \operatorname{im}(C_{n+1} \to C_n) \xrightarrow{d_{n+1}^{-1}} C_{n+1}/Z_{n+1} \xrightarrow{\cong} B_{n+1}' \hookrightarrow C_{n+1}
.\]

::: {.claim title="1"}
\( d_{n+1} s_n d_{n+1} = d_{n+1} \) are equal as maps.
:::

::: {.proof title="?"}
```{=tex}
\envlist
```
-   Check on the first factor \( B_{n+1}' \subseteq C_{n+1} \) directly to get \( s_n d_{n+1}(x) = d_{n+1}(x) \) for \( x\in B_{n+1}' \), and then applying \( d_{n+1} \) to both sides is the desired equality.
-   On the second factor \( Z_{n+1} \), both sides give zero since this is exactly the kernel.
:::

::: {.claim title="2"}
\( d_{n+1} s_n + s_{n-1}d_n = \operatorname{id}_{C_n} \) if and only if \( H_n = 0 \), i.e. the complex \( C \) is exact at \( C_n \). This map is the sum of taking the two triangle paths in this diagram:

```{=tex}
\begin{tikzcd}
    && {C_n} && {C_{n-1}} \\
    \\
    {C_{n+1}} && {C_n}
    \arrow["{s_{n-1}}", from=1-5, to=3-3]
    \arrow["\operatorname{id}"', from=1-3, to=3-3]
    \arrow["{d_n}", from=1-3, to=1-5]
    \arrow["{d_{n+1}}", from=3-1, to=3-3]
    \arrow["{s_n}", from=1-3, to=3-1]
\end{tikzcd}
```
:::

::: {.proof title="?"}
We again check this on both factors:

-   Using the first claim, \( s_n = 0 \) on \( B_n' \) and thus \( s_{n-1} d_n = \operatorname{id}_{B_n'} \).

-   On \( H_n \), \( s_n = 0 \) and \( d_n = 0 \), and so the LHS is \( 0 = \operatorname{id}_{H_n} \) *if and only if* \( H_n = 0 \).

-   On \( B_n \), and tracing through the definition of \( s_n \) yields \( d_{n+1} s_n(x) = x \) and this yields \( \operatorname{id}_{B_n} \).
:::

Next time: summary of decompositions, start general section on chain homotopies.

[^1]: See appendix A 1.6 for initial and terminal objects. Note that \( \emptyset \) is an initial but non-terminal object in \( {\operatorname{Set}} \), whereas zero objects are both.

[^2]: Recall that abelian categories are additive and only require *finite* products/coproducts. A counterexample: categories of *finite* abelian groups, where e.g. you can't take infinite sums and stay within the category.

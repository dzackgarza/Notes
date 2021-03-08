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
where \( M_i \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) and \( d_i \circ d_{i-1} = 0 \), which happens if and only if \( \operatorname{im}d_{i-1} \subseteq \ker d_i \). If \( \operatorname{im}d_{i-1} = \ker d_i \), this complex is **exact**.
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
In the examples, we had \( \ker d_i \subseteq M_i \), but this need not be true since the objects in the category may not be sets. Such an example is the category of complexes of \( R{\hbox{-}} \)modules: \( \operatorname{Cx}({\mathsf{R}{\hbox{-}}\mathsf{Mod}}) \). In this setting, kernels will be subcomplexes but not subsets.
:::

::: {.definition title="Functors"}
Recall that **functors** are "functions" between categories \( F: \mathcal{C}\to \mathcal{D} \) such that

-   Objects are sent to objects,

-   Morphisms are sent to morphisms, so \( A \xrightarrow{f} B \leadsto F(A) \xrightarrow{F(f)} F(B) \),

-   \( F \) respects composition and identities
:::

::: {.example title="Hom"}
\( {\operatorname{Hom}}_R(N, {\,\cdot\,}): {\mathsf{R}{\hbox{-}}\mathsf{Mod}}\to {\mathsf{Ab}} \), noting that the hom set may not have an \( R{\hbox{-}} \)module structure.
:::

::: {.remark}
Taking cohomology yields the \( i \)th derived functors of \( F \), for example \( \operatorname{Ext}^i, \operatorname{Tor}_i \). Recall that functors can be *covariant* or contravariant. See section 1 for formulating simplicial and singular homology (from topology) in this language.
:::

## Chapter 1: Chain Complexes

### Complexes of \( R{\hbox{-}} \)modules {#complexes-of-rhbox-modules}

::: {.definition title="Exactness"}
Let \( R \) be a ring with 1 and define \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) to be the category of *right* \( R{\hbox{-}} \)modules. \( A \xrightarrow{f} B \xrightarrow{g} C \) is **exact** if and only if \( \ker g = \operatorname{im}f \), and in particular \( g\circ f = 0 \).
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
We can thus define a category \( \mathrm{Ch}({\mathsf{R}{\hbox{-}}\mathsf{Mod}}) \) where

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
Each \( H_n \) thus becomes a functor \( \mathrm{Ch}({\mathsf{R}{\hbox{-}}\mathsf{Mod}}) \to {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) where \( H_n(u) \coloneqq u_{*. n} \).
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
> [Link to diagram](https://q.uiver.app/?q=WzAsMTEsWzEsMCwiQ197bi0xfSJdLFsyLDAsIkNfe259Il0sWzMsMCwiQ197bisxfSJdLFsyLDIsIkRfbiJdLFszLDIsIkRfe24rMX0iXSxbMSwyLCJEX3tuLTF9Il0sWzQsMCwiXFxidWxsZXQiXSxbNCwyLCJcXGJ1bGxldCJdLFswLDIsIlxcYnVsbGV0Il0sWzAsMCwiXFxidWxsZXQiXSxbMiwxXSxbMCw1LCJ1Il0sWzEsMywidV9uIl0sWzIsNCwidSJdLFswLDFdLFsxLDIsImRfbiJdLFs1LDNdLFszLDQsImRfbiIsMl0sWzIsNl0sWzQsN10sWzgsNV0sWzksMF1d)

Recall that \( u_n: Z_n(C) \to Z_n(D) \) and \( u_n: B_n(C) \to B_n(D) \) preserves these submodules, so there are induced maps \( u_{{\,\cdot\,}, n}: H_n(D) \to H_n(D) \) where \( H_n(C) \coloneqq Z_n(C) / B_nn-1(C) \). Moreover, taking \( H_n({\,\cdot\,}) \) is a functor from \( \mathsf{Ch}({\mathsf{R}{\hbox{-}}\mathsf{Mod}}) \to {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) for any fixed \( n \) and on objects \( C\mapsto H_n(C) \) and chain maps \( u_{n} \to H_n(u) \coloneqq u_{*, n} \). Note the lower indices denote maps going down in degree.
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
Write \( \mathsf{Ch} \) for \( \mathsf{Ch}({\mathsf{R}{\hbox{-}}\mathsf{Mod}}) \), then if \( f,g: C\to D \) are chain maps then \( f+g:C\to D \) can be defined as \( (f+g)(x) = f(x) + g(x) \), since \( D \) has an addition coming from its \( R{\hbox{-}} \)module structure. Thus the hom sets \( {\operatorname{Hom}}_{\mathsf{Ch}}(C, D) \) becomes an abelian group. There is a distinguished **zero object**[^1] \( 0 \), defined as the chain complex with all zero objects and all zero maps. Note that we also have a zero map given by the composition \( (C \to 0) \circ (0\to D) \).
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

These structures make \( \mathsf{Ch} \) into an **additive category**. See appendix for definition: the homs are abelian groups where composition distributes over addition, existence of a zero object, and existence of finite products. Note that here we have arbitrary products.
:::

::: {.definition title="Subcomplexes"}
We say \( B \) is a **subcomplex** of \( C \) if and only if

-   \( B_n \leq C_n \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) for all \( n \),
-   The differentials of \( B_n \) are the restrictions of the differentials of \( C_n \).
:::

::: {.remark}
This can be alternatively stated as saying the inclusion \( i: B\to C \) given by \( i_n: B_n \to C_n \) is a morphism of chain complexes. Recall that some squares need to commute, and this forces the condition on restrictions.
:::

::: {.definition title="Quotient Complexes"}
When \( B \leq C \), we can form the quotient complex \( C/B \) where
\[
C_n/B_n \xrightarrow{\mkern 1.5mu\overline{\mkern-1.5mud_n\mkern-1.5mu}\mkern 1.5mu} C _{n-1} / B _{n-1}
.\]
Moreover there is a natural projection \( \pi: C\to C/B \) which is a chain map.
:::

::: {.remark}
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

Here \( \ker f \leq B \) is a subcomplex, and \( \operatorname{coker}f \) is a quotient complex of \( C \). The chain map \( i: \ker f\to B \) is a categorical kernel of \( f \) in \( \mathsf{Ch} \), and \( \pi \) is similarly a cokernel. See appendix A 1.6. These constructions make \( \mathsf{Ch} \) into an **abelian category**: roughly an additive category where every morphism has a kernel and a cokernel.
:::

# 1.2 (Wednesday, January 20)

## Taking Chain Complexes of Chain Complexes

> See phone pic for missed first 10m

### Double Complexes

::: {.remark}
Consider a double complex:

```{=tex}
\begin{tikzcd}
    &&&&&& {C_{p, \cdot}:} \\
    &&&& \vdots && \vdots && \vdots \\
    \\
    && \cdots && {C_{p-1, q+1}} && {C_{p, q+1}} && {C_{p+1, q+1}} && \cdots \\
    \\
    {C_{\cdot, q}:} && \cdots && {C_{p-1, q}} && {C_{p, q}} && {C_{p+1, q}} && \cdots \\
    \\
    && \cdots && {C_{p-1, q+1}} && {C_{p, q+1}} && {C_{p+1, q+1}} && \cdots \\
    \\
    &&&& \vdots && \vdots && \vdots
    \arrow["{d_{p, q}^h}", from=6-7, to=6-5]
    \arrow["{d_{p, q}^v}", from=6-7, to=8-7]
    \arrow["{d_{p, q+1}^v}", from=4-7, to=6-7]
    \arrow["{d_{p+1, q+1}^v}", from=4-9, to=6-9]
    \arrow["{d_{p+1, q}^v}", from=6-9, to=8-9]
    \arrow["{d_{p-1, q}^v}", from=6-5, to=8-5]
    \arrow["{d_{p-1, q+1}^v}", from=4-5, to=6-5]
    \arrow[from=8-5, to=10-5]
    \arrow[from=8-7, to=10-7]
    \arrow[from=8-9, to=10-9]
    \arrow["{d_{p+1, q+1}^h}", from=8-9, to=8-7]
    \arrow["{d_{p+1, q}^h}", from=6-9, to=6-7]
    \arrow["{d_{p, q+1}^h}", from=8-7, to=8-5]
    \arrow["{d_{p+1, q+1}^h}"{description}, from=4-9, to=4-7]
    \arrow["{d_{p, q+1}^h}"{description}, from=4-7, to=4-5]
    \arrow[from=2-5, to=4-5]
    \arrow[from=2-7, to=4-7]
    \arrow[from=2-9, to=4-9]
    \arrow[from=4-5, to=4-3]
    \arrow[from=6-5, to=6-3]
    \arrow[from=8-5, to=8-3]
    \arrow[from=8-11, to=8-9]
    \arrow[from=6-11, to=6-9]
    \arrow[from=4-11, to=4-9]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMjMsWzQsMywiQ197cC0xLCBxKzF9Il0sWzYsMywiQ197cCwgcSsxfSJdLFs4LDMsIkNfe3ArMSwgcSsxfSJdLFs0LDUsIkNfe3AtMSwgcX0iXSxbNiw1LCJDX3twLCBxfSJdLFs4LDUsIkNfe3ArMSwgcX0iXSxbNCw3LCJDX3twLTEsIHErMX0iXSxbNiw3LCJDX3twLCBxKzF9Il0sWzgsNywiQ197cCsxLCBxKzF9Il0sWzYsMSwiXFx2ZG90cyJdLFsyLDUsIlxcY2RvdHMiXSxbNCw5LCJcXHZkb3RzIl0sWzYsOSwiXFx2ZG90cyJdLFs4LDksIlxcdmRvdHMiXSxbMCw1LCJDX3tcXGNkb3QsIHF9OiJdLFsyLDcsIlxcY2RvdHMiXSxbMTAsNywiXFxjZG90cyJdLFsxMCw1LCJcXGNkb3RzIl0sWzEwLDMsIlxcY2RvdHMiXSxbMiwzLCJcXGNkb3RzIl0sWzYsMCwiQ197cCwgXFxjZG90fToiXSxbNCwxLCJcXHZkb3RzIl0sWzgsMSwiXFx2ZG90cyJdLFs0LDMsImRfe3AsIHF9XmgiXSxbNCw3LCJkX3twLCBxfV52Il0sWzEsNCwiZF97cCwgcSsxfV52Il0sWzIsNSwiZF97cCsxLCBxKzF9XnYiXSxbNSw4LCJkX3twKzEsIHF9XnYiXSxbMyw2LCJkX3twLTEsIHF9XnYiXSxbMCwzLCJkX3twLTEsIHErMX1ediJdLFs2LDExXSxbNywxMl0sWzgsMTNdLFs4LDcsImRfe3ArMSwgcSsxfV5oIl0sWzUsNCwiZF97cCsxLCBxfV5oIl0sWzcsNiwiZF97cCwgcSsxfV5oIl0sWzIsMSwiZF97cCsxLCBxKzF9XmgiLDFdLFsxLDAsImRfe3AsIHErMX1eaCIsMV0sWzIxLDBdLFs5LDFdLFsyMiwyXSxbMCwxOV0sWzMsMTBdLFs2LDE1XSxbMTYsOF0sWzE3LDVdLFsxOCwyXV0=)

All of the individual rows and columns are chain complexes, where \( (d^h)^2 = 0 \) and \( (d^v)^2 = 0 \), and the square anticommute: \( d^v d^h + d^h d^v - 0 \), so \( d^v d^h = -d^h d^v \). This is almost a chain complex of chain complexes, i.e. an element of \( \mathsf{Ch}(\mathsf{Ch}{\mathsf{R}{\hbox{-}}\mathsf{Mod}})) \). It's useful here to consider lines parallel to the line \( y=x \).
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
Now the squares commute and \( f_{{\,\cdot\,}, q} \) are chain maps, so this object is an element of \( \mathsf{Ch}(\mathsf{Ch}{\mathsf{R}{\hbox{-}}\mathsf{Mod}}) \).
:::

### Total Complexes

Recall that products and coproducts of \( R{\hbox{-}} \)modules coincide when the indexing set is finite.

::: {.definition title="Total Complexes"}
Given a double complex \( C_{{\,\cdot\,}, {\,\cdot\,}} \), there are two ordinary chain complexes associated to it referred to as **total complexes**:
\[
(\operatorname{Tot}^{\prod_{}} C)_n \coloneqq\prod_{p+q = n} C_{p, q}
(\operatorname{Tot}^{\oplus_{}} C)_n \coloneqq\bigoplus_{p+q = n} C_{p, q}
.\]
Writing \( \operatorname{Tot}(C) \) usually refers to the former. The differentials are given by
\[
d_{p, q} = d^h + d^v: C_{p, q} \to C_{p-1, q} \oplus C_{p, q-1}
,\]
where \( C_{p, q} \subseteq \operatorname{Tot}^\oplus (C)_n \) and \( C_{p-1, q} \oplus C_{p, q-1} \subseteq \operatorname{Tot}^\oplus(C)_{n-1} \). Then you extend this to a differential on the entire diagonal by defining \( d = \bigoplus_{p, q} d_{p, q} \).
:::

::: {.exercise title="?"}
Check that \( d^2 = 0 \), using \( d^v d^h + d^h d^v = 0 \).
:::

::: {.remark}
Some notes:

-   \( \operatorname{Tot}^{\oplus}(C) = \operatorname{Tot}^{\prod}(C) \) when \( C \) is bounded.

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
We can make translation into a functor \( [p]: \mathsf{Ch}\to \mathsf{Ch} \): given \( f: C\to D \), define \( f[p]: C[p] \to D[p] \) by \( f[p]_n \coloneqq f_{n+p} \), and a similar definition for cochain complexes changing \( p \) to \( -p \).
:::

# Lecture 4 (Friday, January 22)

## Long Exact Sequences

::: {.remark}
Some terminology: in an abelian category \( \mathcal{A} \) an example of an **exact complex** in \( \mathsf{Ch}(\mathcal{A}) \) is
\[
\cdots \to 0 \to A \xrightarrow{f} B \xrightarrow{g} C \to 0 \to \cdots
.\]

where *exactness* means \( \ker = \operatorname{im} \) at each position, i.e. \( \ker f = 0, \operatorname{im}f = \ker g, \operatorname{im}g = C \). We say \( f \) is monic and \( g \) epic.

As a special case, if \( 0\to A\to 0 \) is exact then \( A \) must be zero, since the image of the incoming map must be 0. This also happens when every other term is zero. If \( 0\to A \xrightarrow{f} B \to 0 \), then \( A \cong B \) since \( f \) is both injective and surjective (say for \( R{\hbox{-}} \)modules).
:::

::: {.theorem title="Long Exact Sequences"}
Suppose \( 0\to A\to B \to C \to 0 \) is a SES in \( \mathsf{Ch}(\mathcal{A}) \) (note: this is a sequence of *complexes*), then there are natural maps
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
:::

::: {.proof title="of the Snake Lemma: Existence"}
```{=tex}
\envlist
```
-   Start with \( c\in \ker(\gamma) \leq C \), so \( \gamma(c) = 0 \in C' \)
-   **Choose** \( b\in B \) by surjectivity
    -   We'll show it's independent of this choice.
-   Then \( b'\in B' \) goes to \( 0\in C' \), so \( b' \in \ker (B' \to C') \)
-   By exactness, \( b' \in \ker (B' \to C') = \operatorname{im}(A'\to B') \), and now produce a unique \( a'\in A' \) by injectivity
-   Take the image \( [a']\in \operatorname{coker}\alpha \)
-   Define \( {{\partial}}(c) \coloneqq[a'] \).
:::

::: {.proof title="of the Snake Lemma: Uniqueness"}
```{=tex}
\envlist
```
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
:::

```{=tex}
\todo[inline]{A few changes in the middle, redo!}
```
::: {.proof title="of the Snake Lemma: Exactness"}
```{=tex}
\envlist
```
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
We assumed that \( \mathcal{A}= {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) here, so we could chase elements, but this happens to also be true in any abelian category \( \mathcal{A} \) but by a different proof. The idea is to embed \( \mathcal{A} \to {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) for some ring \( R \), do the construction there, and pull the results back -- but this doesn't quite work! \( \mathcal{A} \) can be too big. Instead, do this for the smallest subcategory \( \mathcal{A}_0 \) containing all of the modules and maps involved in the snake lemma. Then \( \mathcal{A}_0 \) is small enough to embed into \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) by the **Freyd-Mitchell Embedding Theorem**.
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
    & {\substack{\operatorname{coker}d_n \\ = Z_{n-1}(A)/d A_n \\ = H_{n-1}(A)} } & {H_{n-1}(B)} & {H_{n-1}(C)}
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
There is another full subcategory \( \mathcal{L} \) of \( \mathsf{Ch} \) whose objects are LESs of objects in the original abelian category, i.e. exact chain complexes. The claim is that the LES construction in the theorem defines a functor \( \mathcal{S}\to \mathcal{L} \). We've seen how this maps objects, so what is the map on morphisms? Given a morphism as in the above diagram, there is an induced morphism:

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
Here \( {{\partial}}:H_*(C) \to H_*(A)[1] \) shifts degrees. Note that this motivates the idea of **triangulated categories**, which is important in modern research. See Weibel Ch.10, and exercise 1.4.5 for how to construct these as quotients of \( \mathsf{Ch} \).
:::

## 1.4: Chain Homotopies

::: {.remark}
Assume for now that we're in the situation of \( R{\hbox{-}} \)modules where \( R \) is a field, i.e. vector spaces. The main fact/advantage here that is not generally true for \( R{\hbox{-}} \)modules: every subspace has a complement. Since \( B_n \subseteq Z_n \subseteq C_n \), we can write \( C_n = Z_n \oplus B_n' \) for every \( n \), and \( Z_n = B_n \oplus H_n \). This notation is suggestive, since \( H_n \cong Z_n/B_n \) as a quotient of vector spaces. Substituting, we get \( C_n = B_n \oplus H_n \oplus B_n' \). Consider the projection \( C_n \to B_n \) by projecting onto the first factor. Identifying \( B_n \coloneqq\operatorname{im}(C_{n+1} \to C_n) \cong C_{n+1}/Z_{n+1} \) by the 1st isomorphism theorem in the reverse direction. But this image is equal to \( B_{n+1}' \), and we can embed this in \( C_{n+1} \), so define \( s_n: C_n \to C_{n+1} \) as the composition
\[
s_n \coloneqq( C_n \xrightarrow{\mathop{\mathrm{Proj}}} B_n = \operatorname{im}(C_{n+1} \to C_n) \xrightarrow{d_{n+1}^{-1}} C_{n+1}/Z_{n+1} \xrightarrow{\cong} B_{n+1}' \hookrightarrow C_{n+1}
.\]
:::

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

# Wednesday, January 27

See phone pic for missed first 10m.

## 1.4: Chain Homotopies

::: {.definition title="Split Exact"}
A complex is called **split** if there are maps \( s_n: C_n \to C_{n+1} \) such that \( d =dsd \). In this case, the maps \( s_n \) are referred to as the **splitting maps**, and if \( C \) is additionally acyclic, we say \( C \) is **split exact**.
:::

::: {.remark}
Note that when \( C \) is split exact, we have

```{=tex}
\begin{tikzcd}
    && {C_n} && {C_{n-1}} \\
    \\
    {C_{n+1}} && {C_n}
    \arrow["d", from=3-1, to=3-3]
    \arrow["d", from=1-3, to=1-5]
    \arrow["{s_n}"{description}, from=1-3, to=3-1]
    \arrow["{s_{n-1}}"{description}, from=1-5, to=3-3]
    \arrow["\operatorname{id}"{description}, from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMiwwLCJDX24iXSxbNCwwLCJDX3tuLTF9Il0sWzIsMiwiQ19uIl0sWzAsMiwiQ197bisxfSJdLFszLDIsImQiXSxbMCwxLCJkIl0sWzAsMywic19uIiwxXSxbMSwyLCJzX3tuLTF9IiwxXSxbMCwyLCJcXGlkIiwxXV0=)
:::

::: {.example title="Not all complexes split"}
Take
\[
C = \qty{ 0 \to {\mathbb{Z}}/2{\mathbb{Z}}\xrightarrow{d} {\mathbb{Z}}/4{\mathbb{Z}}\to {\mathbb{Z}}/2{\mathbb{Z}}\to 0 }
.\]
Then \( \operatorname{im}d = \left\{{0, 2}\right\} = \ker d \), but this does not split since \( {\mathbb{Z}}/2{\mathbb{Z}}^2 \not\cong {\mathbb{Z}}/4{\mathbb{Z}} \): one has an element of order 4 in the underlying additive group. Equivalently, there is no complement to the image. What might be familiar from algebra is \( ds = \operatorname{id} \), but the more general notion is \( dsd = d \).
:::

::: {.example title="?"}
The following complex is not split exact for the same reason:
\[
\cdots \xrightarrow{\cdot 2} {\mathbb{Z}}/4{\mathbb{Z}}\xrightarrow{\cdot 2} {\mathbb{Z}}/4{\mathbb{Z}}\to \cdots
.\]
:::

::: {.question}
Given \( f,g: C\to D \), when do we get equality \( f_* = g_*: H_*(C) \to H_*(D) \)?
:::

::: {.definition title="Homotopy Terminology for Chains"}
A chain map \( f:C\to D \) is **nullhomotopic** if and only if there exist maps \( s_n: C_n\to D_{n+1} \) such that \( f = ds + sd \):

```{=tex}
\begin{tikzcd}
    && {C_n} && {C_{n-1}} \\
    \\
    {D_{n+1}} && {D_n}
    \arrow["d", from=3-1, to=3-3]
    \arrow["d", from=1-3, to=1-5]
    \arrow["{s_n}"{description}, from=1-3, to=3-1]
    \arrow["{s_{n-1}}"{description}, from=1-5, to=3-3]
    \arrow["\operatorname{id}"{description}, from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMiwwLCJDX24iXSxbNCwwLCJDX3tuLTF9Il0sWzIsMiwiRF9uIl0sWzAsMiwiRF97bisxfSJdLFszLDIsImQiXSxbMCwxLCJkIl0sWzAsMywic19uIiwxXSxbMSwyLCJzX3tuLTF9IiwxXSxbMCwyLCJcXGlkIiwxXV0=)

The map \( s \) is called a **chain contraction**. Two maps are **chain homotopic** (or initially: \( f \) is chain homotopic to \( g \), since we don't yet know if this relation is symmetric) if and only if \( f-g \) is nullhomotopic, i.e. \( f-g = ds + sd \). The map \( s \) is called a **chain homotopy** from \( f \) to \( g \). A map \( f \) is a **chain homotopy equivalence** if both \( fg \) and \( gf \) are chain homotopic to the identities on \( C \) and \( D \) respectively.
:::

::: {.lemma title="?"}
If map \( f:C\to D \) is nullhomotopic then \( f_*: H_*(C) \to H_*(D) \) is the zero map. Thus if \( f,g \) are chain homotopic, then they induce equal maps.
:::

::: {.proof title="?"}
An element in the quotient \( H_n(C) \) is represented by an \( n{\hbox{-}} \)cycle \( x\in Z_n(C) \). By a previous exercise, \( f(x) \) is a well-defined element of \( H_n(D) \), and using that \( d(x) = 0 \) we have
\[
f(x) = (ds + sd)(x) = d(s(x))
,\]
and so \( f[x] = [f(x)] = [0] \).

```{=tex}
\begin{tikzcd}
    && x && {d(x) = 0} \\
    && {C_n} && {C_{n-1}} \\
    \\
    {D_{n+1}} && {D_n} \\
    && {d(s(x))}
    \arrow["d", from=4-1, to=4-3]
    \arrow["d", from=2-3, to=2-5]
    \arrow["{s_n}"{description}, from=2-3, to=4-1]
    \arrow["{s_{n-1}}"{description}, from=2-5, to=4-3]
    \arrow["\operatorname{id}"{description}, from=2-3, to=4-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbMiwxLCJDX24iXSxbNCwxLCJDX3tuLTF9Il0sWzIsMywiRF9uIl0sWzAsMywiRF97bisxfSJdLFsyLDAsIngiXSxbNCwwLCJkKHgpID0gMCJdLFsyLDQsImQocyh4KSkiXSxbMywyLCJkIl0sWzAsMSwiZCJdLFswLDMsInNfbiIsMV0sWzEsMiwic197bi0xfSIsMV0sWzAsMiwiXFxpZCIsMV1d)

Now applying the first part to \( f-g \) to get the second part.
:::

> See Weibel for topological motivations.

## 1.5 Mapping Cones

::: {.remark}
Note that we'll skip *mapping cylinders*, since they don't come up until the section on triangulated categories. The goal is to see how any two maps between homologies can be fit into a LES. This helps reduce questions about *quasi-isomorphisms* to questions about split exact complexes.
:::

::: {.definition title="Mapping Cones"}
Suppose we have a chain map \( f:B\to C \), then there is a chain complex \( \operatorname{cone}(f) \), the **mapping cone of \( f \)**, defined by
\[
\operatorname{cone}(f)_n = B_{n-1} \oplus C_n
.\]

The maps are given by the following:

```{=tex}
\begin{tikzcd}
    {B_{n-1}} && {B_{n-2}} \\
    \oplus && \oplus \\
    {C_n} && {C_{n-1}}
    \arrow["{-d^B}", from=1-1, to=1-3]
    \arrow["{-f}"', from=1-1, to=3-3]
    \arrow["{d^C}", from=3-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJCX3tuLTF9Il0sWzAsMSwiXFxvcGx1cyJdLFswLDIsIkNfbiJdLFsyLDAsIkJfe24tMn0iXSxbMiwyLCJDX3tuLTF9Il0sWzIsMSwiXFxvcGx1cyJdLFswLDMsIi1kXkIiXSxbMCw0LCItZiIsMl0sWzIsNCwiZF5DIl1d)

We can write this down: \( d(b, c) = (-d(b), -f(b) + d(c)) \), or as a matrix
\[
\begin{bmatrix}
-d^B &  0
\\
-f & d^C
\end{bmatrix}
.\]
:::

::: {.exercise title="?"}
Check that the differential on \( \operatorname{cone}(f) \) squares to zero.
:::

::: {.exercise title="Weibel 1.5.1"}
When \( f = \operatorname{id}:C\to C \), we write \( \operatorname{cone}(C) \) instead of \( \operatorname{cone}(\operatorname{id}) \). Show that \( \operatorname{cone}(C) \) is split exact, with splitting map \( s(b, c) = (-c, 0) \) for \( b\in C_{n-1}, c\in C_n \).
:::

::: {.proposition title="?"}
Suppose \( f:B\to C \) is a chain map, then the induced maps \( f_*: H(B) \to H(C) \) fit into a LES. There is a SES of chain complexes:

```{=tex}
\begin{tikzcd}
    0 && C && {\operatorname{cone}(f)} && {B[-1]} && 0 \\
    && c && {(0, c)} \\
    &&&& {(b, c)} && {-b}
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow[from=2-3, to=2-5]
    \arrow[from=3-5, to=3-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOSxbMCwwLCIwIl0sWzIsMCwiQyJdLFs0LDAsIlxcY29uZShmKSJdLFs2LDAsIkJbLTFdIl0sWzgsMCwiMCJdLFsyLDEsImMiXSxbNCwxLCIoMCwgYykiXSxbNCwyLCIoYiwgYykiXSxbNiwyLCItYiJdLFswLDFdLFsxLDJdLFsyLDNdLFszLDRdLFs1LDZdLFs3LDhdXQ==)

::: {.exercise title="?"}
Check that these are chain maps, i.e. they commute with the respective differentials \( d \).
:::

The corresponding LES is given by the following:

```{=tex}
\begin{tikzcd}
    && \cdots && {H_{n+1}\operatorname{cone}(f)} && {H_{n+1}(B[-1]) = H_n(B)} \\
    \\
    {} & {} & {H_n(C)} && {H_n \operatorname{cone}(f)} && {H_{n}(B[-1]) = H_{n-1}(B)} \\
    \\
    && \cdots
    \arrow[from=1-3, to=1-5]
    \arrow["{\delta_*}", from=1-5, to=1-7]
    \arrow["{{\partial}}", from=1-7, to=3-3, in=180, out=360]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow[from=3-7, to=5-3, in=180, out=360]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOSxbNCwwLCJIX3tuKzF9XFxjb25lKGYpIl0sWzAsMl0sWzYsMCwiSF97bisxfShCWy0xXSkgPSBIX24oQikiXSxbMSwyXSxbMiwyLCJIX24oQykiXSxbNCwyLCJIX24gXFxjb25lKGYpIl0sWzYsMiwiSF97bn0oQlstMV0pID0gSF97bi0xfShCKSJdLFsyLDAsIlxcY2RvdHMiXSxbMiw0LCJcXGNkb3RzIl0sWzcsMF0sWzAsMiwiXFxkZWx0YV8qIl0sWzIsNCwiXFxiZCJdLFs0LDVdLFs1LDZdLFs2LDhdXQ==)

```{=tex}
\todo[inline]{Overflowing :(}
```
::: {.lemma title="?"}
The map \( {{\partial}}= f_* \)
:::

::: {.proof title="?"}
Letting \( b\in B_n \) is an \( n{\hbox{-}} \)cycle.

1.  Lift \( b \) to anything via \( \delta \), say \( (-b, 0) \).
2.  Apply the differential \( d \) to get \( (db, fb) = (0, fb) \) since \( b \) was a cycle.
3.  Pull back to \( C_n \) by the map \( C\to \operatorname{cone}(f) \) to get \( fb \).
4.  Then the connecting morphism is given by \( {{\partial}}[b] = [fb] \). But by definition of \( f_* \), we have \( [fb] = f_* [b] \).
:::
:::

# Friday, January 29

## Mapping Cones

::: {.remark}
Given \( f:B\to C \) we defined \( \operatorname{cone}(f)_n \coloneqq B_{n-1} \oplus C_n \), which fits into a SES
\[
0 \to C \to \operatorname{cone}(f) \xrightarrow{\delta} B[-1] \to 0
\]
and thus yields a LES in cohomology.

```{=tex}
\begin{tikzcd}
    \cdots && {H_{n+1}(\operatorname{cone}(f))} && {H_n(B)} \\
    \\
    {H_n(C)} && {H_n(\operatorname{cone}(f))} && {H_{n-1}(B)} \\
    \\
    \cdots
    \arrow["\delta = f_*", from=1-5, to=3-1, in=180, out=360]
    \arrow["\delta", from=3-5, to=5-1, in=180, out=360]
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbMiwwLCJIX3tuKzF9KFxcY29uZShmKSkiXSxbNCwwLCJIX24oQikiXSxbMCwyLCJIX24oQykiXSxbMiwyLCJIX24oXFxjb25lKGYpKSJdLFs0LDIsIkhfe24tMX0oQikiXSxbMCwwLCJcXGNkb3RzIl0sWzAsNCwiXFxjZG90cyJdLFsxLDIsIlxcZGVsdGEiXSxbMiwzXSxbMyw0XSxbMCwxXSxbNSwwXV0=)
:::

::: {.corollary title="?"}
\( f:B\to C \) is a quasi-isomorphism if and only if \( \operatorname{cone}(f) \) is exact.
:::

::: {.proof title="?"}
In the LES, all of the maps \( f_* \) are isomorphisms, which forces \( H_n(\operatorname{cone}(f)) = 0 \) for all \( n \).
:::

::: {.remark}
So we can convert statements about quasi-isomorphisms of complexes into exactness of a single complex.
:::

> We'll skip the rest, e.g. mapping cylinders which aren't used until the section on triangulated categories. We'll also skip the section on \( \delta{\hbox{-}} \)functors, which is a slightly abstract language.

## Ch. 2: Derived Functors

::: {.remark}
Setup: fix \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \), where \( R \) is a ring with unit. Note that by an upcoming exercise, \( {\operatorname{Hom}}_{R}(M, {\,\cdot\,}): {\mathsf{Mod}{\hbox{-}}R}\to {\mathsf{Ab}} \) is a *left-exact* functor, but not in general right-exact: given a SES
\[
0\to A \xrightarrow{f}  B \xrightarrow{g}  C\to 0 && \in \mathsf{Ch}({\mathsf{Mod}{\hbox{-}}R})
,\]
there is an exact sequence:

```{=tex}
\begin{tikzcd}
    0 && {{\operatorname{Hom}}_R(M, A)} && {{\operatorname{Hom}}_R(M, B)} && {{\operatorname{Hom}}_R(M, C)}
    \arrow["{f_* = f\circ({\,\cdot\,})}", from=1-3, to=1-5]
    \arrow["{g_* = g\circ({\,\cdot\,})}", from=1-5, to=1-7]
    \arrow[from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMiwwLCJcXEhvbV9SKE0sIEEpIl0sWzQsMCwiXFxIb21fUihNLCBBKSJdLFs2LDAsIlxcSG9tX1IoTSwgQSkiXSxbMCwwLCIwIl0sWzAsMSwiZl8qID0gZlxcY2lyYyhcXHdhaXQpIl0sWzEsMiwiZ18qID0gZ1xcY2lyYyhcXHdhaXQpIl0sWzMsMF1d)

However, this is not generally surjective: not every \( M\to C \) is given by composition with a morphism \( M\to B \) (*lifting*). To create a LES here, one could use the cokernel construction, but we'd like to do this functorially by defining a sequence functors \( F^n \) that extend this on on the right to form a LES:

```{=tex}
\begin{tikzcd}
    0 && {{\operatorname{Hom}}_R(M, A)} && {{\operatorname{Hom}}_R(M, B)} && {{\operatorname{Hom}}_R(M, C)} \\
    \\
    && {F^1(A)} && {F^1(B)} && {F^1(C)} \\
    \\
    && {F^2(A)} && \cdots
    \arrow["{f_* = f\circ({\,\cdot\,})}", from=1-3, to=1-5]
    \arrow["{g_* = g\circ({\,\cdot\,})}", from=1-5, to=1-7]
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-7, to=3-3, out=360, in=180]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow[from=3-7, to=5-3, in=180, out=360]
    \arrow[from=5-3, to=5-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOSxbMiwwLCJcXEhvbV9SKE0sIEEpIl0sWzQsMCwiXFxIb21fUihNLCBBKSJdLFs2LDAsIlxcSG9tX1IoTSwgQSkiXSxbMCwwLCIwIl0sWzIsMiwiRl4xKEEpIl0sWzQsMiwiRl4xKEIpIl0sWzYsMiwiRl4xKEMpIl0sWzIsNCwiRl4yKEEpIl0sWzQsNCwiXFxjZG90cyJdLFswLDEsImZfKiA9IGZcXGNpcmMoXFx3YWl0KSJdLFsxLDIsImdfKiA9IGdcXGNpcmMoXFx3YWl0KSJdLFszLDBdLFsyLDRdLFs0LDVdLFs1LDZdLFs2LDddLFs3LDhdXQ==)

It turns out such functors exist and are denoted \( F^n({\,\cdot\,}) \coloneqq\operatorname{Ext}_R^n(M, {\,\cdot\,}) \):

```{=tex}
\begin{tikzcd}
    0 && {{\operatorname{Hom}}_R(M, A)} && {{\operatorname{Hom}}_R(M, B)} && {{\operatorname{Hom}}_R(M, C)} \\
    \\
    && {\operatorname{Ext}_R^1(A)} && {\operatorname{Ext}_R^1(B)} && {\operatorname{Ext}_R^1(C)} \\
    \\
    && {\operatorname{Ext}_R^2(A)} && \cdots
    \arrow["{f_* = f\circ({\,\cdot\,})}", from=1-3, to=1-5]
    \arrow["{g_* = g\circ({\,\cdot\,})}", from=1-5, to=1-7]
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-7, to=3-3, in=180, out=360]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow[from=3-7, to=5-3, in=180, out=360]
    \arrow[from=5-3, to=5-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOSxbMiwwLCJcXEhvbV9SKE0sIEEpIl0sWzQsMCwiXFxIb21fUihNLCBBKSJdLFs2LDAsIlxcSG9tX1IoTSwgQSkiXSxbMCwwLCIwIl0sWzIsMiwiXFxFeHRfUl4xKEEpIl0sWzQsMiwiXFxFeHRfUl4xKEIpIl0sWzYsMiwiXFxFeHRfUl4xKEMpIl0sWzIsNCwiXFxFeHRfUl4yKEEpIl0sWzQsNCwiXFxjZG90cyJdLFswLDEsImZfKiA9IGZcXGNpcmMoXFx3YWl0KSJdLFsxLDIsImdfKiA9IGdcXGNpcmMoXFx3YWl0KSJdLFszLDBdLFsyLDRdLFs0LDVdLFs1LDZdLFs2LDddLFs3LDhdXQ==)

By convention, we set \( \operatorname{Ext}_R^0({\,\cdot\,}) \coloneqq{\operatorname{Hom}}_R(M, {\,\cdot\,}) \). This is an example of a general construction: **right-derived functors** of \( {\operatorname{Hom}}_R(M, {\,\cdot\,}) \). More generally, if \( \mathcal{A} \) is an abelian category (with a certain additional property) and \( F: \mathcal{A} \to \mathcal{B} \) is a left-exact functor (where \( \mathcal{B} \) is another abelian category) then we can define right-derived functors \( R^n F: \mathcal{A} \to \mathcal{B} \). These send SESs in \( \mathcal{A} \) to LESs in \( \mathcal{B} \):

```{=tex}
\begin{tikzcd}
    0 && A && B && C && 0 \\
    \\
    0 && FA && FB && FC \\
    \\
    && {R^1FA} && {R^1 FB} && {R^1 FC} \\
    \\
    && \cdots
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow[from=3-7, to=5-3, in=180, out=360]
    \arrow[from=5-3, to=5-5]
    \arrow[from=5-5, to=5-7]
    \arrow[from=5-7, to=7-3, in=180, out=360]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTMsWzAsMCwiMCJdLFsyLDAsIkEiXSxbNCwwLCJCIl0sWzYsMCwiQyJdLFs4LDAsIjAiXSxbMCwyLCIwIl0sWzIsMiwiRkEiXSxbNCwyLCJGQiJdLFs2LDIsIkZDIl0sWzIsNCwiUl4xRkEiXSxbNCw0LCJSXjEgRkIiXSxbNiw0LCJSXjEgRkMiXSxbMiw2LCJcXGNkb3RzIl0sWzAsMV0sWzEsMl0sWzIsM10sWzMsNF0sWzUsNl0sWzYsN10sWzcsOF0sWzgsOV0sWzksMTBdLFsxMCwxMV0sWzExLDEyXV0=)

Similarly, if \( F \) is *right-exact* instead, there are left-derived functors \( L^n F \) which form a LES ending with 0 at the right:

```{=tex}
\begin{tikzcd}
    0 && A && B && C && 0 \\
    &&&&&& \cdots \\
    && LFA && LFB && LFC \\
    \\
    && FA && FB && FC && 0
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow[from=5-3, to=3-7, in=360, out=180]
    \arrow[from=5-3, to=5-5]
    \arrow[from=5-5, to=5-7]
    \arrow[from=5-7, to=5-9]
    \arrow[from=3-3, to=2-7, in=360, out=180]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTMsWzAsMCwiMCJdLFsyLDAsIkEiXSxbNCwwLCJCIl0sWzYsMCwiQyJdLFs4LDAsIjAiXSxbMiwyLCJMRkEiXSxbNCwyLCJMRkIiXSxbNiwyLCJMRkMiXSxbMiw0LCJGQSJdLFs0LDQsIkZCIl0sWzYsNCwiRkMiXSxbOCw0LCIwIl0sWzYsMSwiXFxjZG90cyJdLFswLDFdLFsxLDJdLFsyLDNdLFszLDRdLFs1LDZdLFs2LDddLFs3LDhdLFs4LDldLFs5LDEwXSxbMTAsMTFdLFs1LDEyXV0=)
:::

## 2.2: Projective Resolutions

::: {.definition title="Projective Modules"}
Let \( \mathcal{A} = {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \), then \( P \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) satisfies the following universal property:

```{=tex}
\begin{tikzcd}
    && P \\
    \\
    B && C && 0
    \arrow["g", from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow["{\exists \beta}"', dashed, from=1-3, to=3-1]
    \arrow["\gamma", from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwyLCJCIl0sWzIsMiwiQyJdLFs0LDIsIjAiXSxbMiwwLCJQIl0sWzAsMSwiZyJdLFsxLDJdLFszLDAsIlxcZXhpc3RzIFxcYmV0YSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDEsIlxcZ2FtbWEiXV0=)
:::

::: {.remark}
Free modules are projective. Let \( F = R^X \) be the free module on the set \( X \). Then consider \( \gamma(x)\in C \), by surjectivity these can be pulled back to some elements in \( B \):

```{=tex}
\begin{tikzcd}
    && X \\
    \\
    && F \\
    \\
    B && C && 0 \\
    {\exists b\in g^{-1}(\gamma(x)) \coloneqq\beta(x)} && {\gamma(x)}
    \arrow["g", from=5-1, to=5-3]
    \arrow[from=5-3, to=5-5]
    \arrow["{\exists \beta}"', dashed, from=3-3, to=5-1]
    \arrow["\gamma", from=3-3, to=5-3]
    \arrow["{\iota_X}", hook, from=1-3, to=3-3]
    \arrow["{\exists \tilde \beta}"', dotted, from=1-3, to=5-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbMCw0LCJCIl0sWzIsNCwiQyJdLFs0LDQsIjAiXSxbMiwyLCJGIl0sWzIsNSwiXFxnYW1tYSh4KSJdLFswLDUsIlxcZXhpc3RzIGJcXGluIGdeey0xfShcXGdhbW1hKHgpKSBcXGRhIFxcYmV0YSh4KSJdLFsyLDAsIlgiXSxbMCwxLCJnIl0sWzEsMl0sWzMsMCwiXFxleGlzdHMgXFxiZXRhIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsMSwiXFxnYW1tYSJdLFs2LDMsIlxcaW90YV9YIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbNiwwLCJcXGV4aXN0cyBcXHRpbGRlIFxcYmV0YSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dXQ==)

This follows from the universal property of free modules:

```{=tex}
\begin{tikzcd}
    &&&& {\exists F(X)} \\
    \\
    \\
    X &&&& M & {\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}}
    \arrow["{f\in {\operatorname{Hom}}_{\mathsf{Set}}(X, M)}", from=4-1, to=4-5]
    \arrow["{\exists g\in {\operatorname{Hom}}_{\mathsf{Set}}(X, F(X))}", from=4-1, to=1-5]
    \arrow["{\exists ! f' \in {\operatorname{Hom}}_R(F(X), X)}", dashed, from=1-5, to=4-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwzLCJYIl0sWzQsMywiTSJdLFs0LDAsIlxcZXhpc3RzIEYoWCkiXSxbNSwzLCJcXGluIFxccm1vZCJdLFswLDEsImZcXGluIFxcSG9tX1xcU2V0KFgsIE0pIl0sWzAsMiwiXFxleGlzdHMgZ1xcaW4gXFxIb21fXFxTZXQoWCwgRihYKSkiXSxbMiwxLCJcXGV4aXN0cyAhIGYnIFxcaW4gXFxIb21fUihGKFgpLCBYKSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)
:::

::: {.proposition title="?"}
An \( R{\hbox{-}} \)module is projective if and only if it is a direct summand of a free module.
:::

::: {.exercise title="?"}
Prove the \( \impliedby \) direction!
:::

::: {.proof title="?"}
\( \implies \): Assume \( P \) is projective, and let \( F(P) \) be the free \( R{\hbox{-}} \)module on the underlying set of \( P \). We can start with this diagram:

```{=tex}
\begin{tikzcd}
    &&&& {F(P)} \\
    \\
    \\
    P &&&& P
    \arrow["{\operatorname{id}_P}", from=4-1, to=4-5]
    \arrow[from=4-1, to=1-5]
    \arrow[dashed, from=1-5, to=4-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwzLCJQIl0sWzQsMywiUCJdLFs0LDAsIkYoUCkiXSxbMCwxLCJcXGlkX1AiXSxbMCwyXSxbMiwxLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=)

And rearranging, we get

```{=tex}
\begin{tikzcd}
    &&&&&& P \\
    \\
    0 && {\ker \pi} && {F(P)} && P && 0
    \arrow["\pi", two heads, from=3-5, to=3-7]
    \arrow[from=3-7, to=3-9]
    \arrow["\operatorname{id}", from=1-7, to=3-7]
    \arrow["{\exists \iota}"{description}, from=1-7, to=3-5]
    \arrow[from=3-1, to=3-3]
    \arrow[hook, from=3-3, to=3-5]
    \arrow["\iota", curve={height=-18pt}, dashed, from=3-7, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbNCwyLCJGKFApIl0sWzYsMiwiUCJdLFs4LDIsIjAiXSxbNiwwLCJQIl0sWzIsMiwiXFxrZXIgXFxwaSJdLFswLDIsIjAiXSxbMCwxLCJcXHBpIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzEsMl0sWzMsMSwiXFxpZCJdLFszLDAsIlxcZXhpc3RzIFxcaW90YSIsMV0sWzUsNF0sWzQsMCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMSwwLCJcXGlvdGEiLDAseyJjdXJ2ZSI6LTMsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)

Since \( \pi \circ \iota \), the SES splits and this \( F(P) \cong P \oplus \ker \pi \), making \( P \) a direct summand of a free module.
:::

::: {.example title="?"}
Not every projective module is free. Let \( R = R_1 \times R_2 \) a direct product of unital rings. Then \( P \coloneqq R_1 \times\left\{{0}\right\} \) and \( P' \coloneqq\left\{{0}\right\} \times R_2 \) are \( R{\hbox{-}} \)modules that are submodules of \( R \). They're projective since \( R \) is free over itself as an \( R{\hbox{-}} \)module, and their direct sum is \( R \). However they can not be free, since e.g. \( P \) has a nonzero annihilator: taking \( (0, 1)\in R \), we have \( (0, 1) \cdot P = \left\{{(0, 0)}\right\} = 0_R \). No free module has a nonzero annihilator, since ix \( 0\neq r\in R \) then \( rR \neq 0 \) since \( r 1_R\in r R \), which implies that \( r \qty{ \bigoplus R } \neq 0 \).
:::

::: {.example title="?"}
Taking \( R = {\mathbb{Z}}/6{\mathbb{Z}}= {\mathbb{Z}}/2{\mathbb{Z}}\oplus {\mathbb{Z}}/3{\mathbb{Z}} \) admits projective \( R{\hbox{-}} \)modules which are not free.
:::

::: {.example title="?"}
Let \( F \) be a field, define the ring \( R \coloneqq\operatorname{Mat}(n \times n, F) \) with \( n\geq 2 \), and set \( V = F^n \) thought of as column vectors. This is left \( R{\hbox{-}} \)module, and decomposes as \( R = \bigoplus _{i=1}^n V \) corresponding to the columns of \( R \), using that \( AB = [Ab_1, \cdots, Ab_n] \). Then \( V \) is a projective \( R{\hbox{-}} \)module as a direct summand of a free module, but it is not free. We have vector spaces, so we can consider dimensions: \( \dim_F R = n^2 \) and \( \dim_F V = n \), so \( V \) can't be a free \( R{\hbox{-}} \)module since this would force \( \dim_F V = kn^2 \) for some \( k \).
:::

::: {.example title="?"}
How many projective modules are there in a given category? Let \( \mathcal{C}\coloneqq{\mathsf{Ab}}^{\operatorname{fin}} \) be the category of *finite* abelian groups, where we take the full subcategory of the category of all abelian groups. This is an abelian category, although it is not closed under *infinite* direct sums or products, which has no projective objects.

::: {.proof title="?"}
Over a PID, every submodule of a free module is free, and so we have free \( \iff \) projective in this case. So equivalently, we can show there are no free \( {\mathbb{Z}}{\hbox{-}} \)modules, which is true because \( {\mathbb{Z}} \) is infinite, and any such module would have to contain a copy of \( {\mathbb{Z}} \).
:::
:::

::: {.remark}
The definition of projective objects extends to any abelian category, not just \( R{\hbox{-}} \)modules.
:::

# Monday, February 01

Recall the universal of projective modules.

```{=tex}
\begin{tikzcd}
    && P \\
    \\
    B && C && 0
    \arrow["g", from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow["{\exists \beta}"', dashed, from=1-3, to=3-1]
    \arrow["\gamma", from=1-3, to=3-3]
\end{tikzcd}
```
::: {.definition title="Enough Projective"}
If \( \mathcal{A} \) is an abelian category, then \( \mathcal{A} \) has **enough projectives** if and only if for all \( a\in \mathcal{A} \) there exists a projective object \( P \in \mathcal{A} \) and a surjective morphism \( P \twoheadrightarrow A \).
:::

::: {.example title="?"}
\( {\mathsf{Mod}{\hbox{-}}R} \) has enough projectives: for all \( A \in {\mathsf{Mod}{\hbox{-}}R} \), one can take \( F(A) \twoheadrightarrow A \).
:::

::: {.example title="?"}
The category of finite abelian groups does *not* have enough projectives.

```{=tex}
\todo[inline]{Why?}
```
:::

::: {.lemma title="?"}
\( P \) is projective if and only if \( {\operatorname{Hom}}_{\mathcal{A}}(P, {\,\cdot\,}) \) is an exact functor.
:::

::: {.exercise title="?"}
Prove this!
:::

::: {.definition title="(Key)"}
Let \( M\in {\mathsf{Mod}{\hbox{-}}R} \), then a **projective resolution** of \( M \) is an exact complex
\[
\cdots
    \xrightarrow{d_2} 
P_1 \xrightarrow{d_1}  
P_1 \overset{\varepsilon}{\twoheadrightarrow} 
M \to 
0
.\]

We write \( P_{\,\cdot\,}\overset{\epsilon}{\twoheadrightarrow} M \).
:::

::: {.lemma title="(Key)"}
Every object \( M\in {\mathsf{Mod}{\hbox{-}}R} \) has a projective resolution. This is true in any abelian category with enough projectives.
:::

::: {.proof title="?"}
```{=tex}
\envlist
```
-   Since there are enough projectives, choose \( P_0 \xrightarrow{\epsilon_0} M \to 0 \).
-   To extend this, set \( M_0 \coloneqq\ker \epsilon_0 \), then find a projective cover \( P_1 \xrightarrow{\epsilon_1} M_0 \)
-   Use that \( d_1 \coloneqq\iota_0 \circ \epsilon_1 \) and \( \operatorname{im}d_1 = M_0 = \ker \epsilon_0 \)
-   Then \( d_2 \coloneqq\iota_1 \circ \epsilon_2 \) with \( \operatorname{im}d_2 = M_1 \), and \( \ker d_1 = \ker \epsilon_1 = M_1 \).
-   Continuing in this fashion makes the complex exact at every stage.

```{=tex}
\begin{tikzcd}
    && 0 && 0 \\
    &&& {M_1} \\
    \cdots && {P_2} && {P_1} && {P_0} & M & 0 \\
    & {M_2} &&&& {M_0} \\
    0 &&&& 0 && 0
    \arrow["{\varepsilon_0}", two heads, from=3-7, to=3-8]
    \arrow["{\iota_0}", from=4-6, to=3-7]
    \arrow["{\exists d_1}", dashed, from=3-5, to=3-7]
    \arrow["{\varepsilon_0}"{description}, two heads, from=3-5, to=4-6]
    \arrow[hook, from=5-5, to=4-6]
    \arrow[from=4-6, to=5-7]
    \arrow[hook, from=2-4, to=3-5]
    \arrow[two heads, from=3-3, to=2-4]
    \arrow["{\exists d_2}", dashed, from=3-3, to=3-5]
    \arrow[hook, from=1-3, to=2-4]
    \arrow[hook, from=5-1, to=4-2]
    \arrow[hook, from=4-2, to=3-3]
    \arrow[two heads, from=2-4, to=1-5]
    \arrow[dashed, from=3-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTQsWzQsNCwiMCJdLFs1LDMsIk1fMCJdLFs2LDIsIlBfMCJdLFs3LDIsIk0iXSxbOCwyLCIwIl0sWzQsMiwiUF8xIl0sWzYsNCwiMCJdLFszLDEsIk1fMSJdLFsyLDIsIlBfMiJdLFsyLDAsIjAiXSxbMSwzLCJNXzIiXSxbMCw0LCIwIl0sWzQsMCwiMCJdLFswLDIsIlxcY2RvdHMiXSxbMiwzLCJcXHZhcmVwc2lsb25fMCIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxLDIsIlxcaW90YV8wIl0sWzUsMiwiXFxleGlzdHMgZF8xIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzUsMSwiXFx2YXJlcHNpbG9uXzAiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMCwxLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsxLDZdLFs3LDUsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzgsNywiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzgsNSwiXFxleGlzdHMgZF8yIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzksNywiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMTEsMTAsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzEwLDgsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzcsMTIsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxMyw4LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=)
:::

## Comparison Theorem

::: {.theorem title="Comparison Theorem"}
Suppose \( P_{\,\cdot\,}\xrightarrow{\epsilon} M \) is a projective resolution of an object in \( \mathcal{A} \) and \( (M \xrightarrow{f} N \in \operatorname{Mor}( \mathcal{A}) \) and \( Q_{\,\cdot\,}\xrightarrow{\eta} N \) a resolution of \( N \). Then there exists a chain map \( P \xrightarrow{f} Q \) lifting \( f \) which is unique up to chain homotopy:

```{=tex}
\begin{tikzcd}
    \cdots & {P_2} & {P_1} & {P_0} & M & 0 \\
    \\
    \cdots & {Q_2} & {Q_1} & {Q_0} & N & 0
    \arrow["f_{-1} \coloneqq f", from=1-5, to=3-5]
    \arrow["{\exists f_0}", dashed, from=1-4, to=3-4]
    \arrow["{\exists f_1}", dashed, from=1-3, to=3-3]
    \arrow["{\exists f_2}", dashed, from=1-2, to=3-2]
    \arrow[from=1-1, to=1-2]
    \arrow["{d_2^P}", from=1-2, to=1-3]
    \arrow["{\varepsilon = d_0^P}", from=1-4, to=1-5]
    \arrow[from=1-5, to=1-6]
    \arrow[from=3-1, to=3-2]
    \arrow["{d_2^Q}"', from=3-2, to=3-3]
    \arrow["{d_1^Q}"', from=3-3, to=3-4]
    \arrow["{\eta = d_0^Q}"', from=3-4, to=3-5]
    \arrow[from=3-5, to=3-6]
    \arrow["{d_1^P}", from=1-3, to=1-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTIsWzAsMCwiXFxjZG90cyJdLFsxLDAsIlBfMiJdLFsyLDAsIlBfMSJdLFszLDAsIlBfMCJdLFs0LDAsIk0iXSxbNSwwLCIwIl0sWzAsMiwiXFxjZG90cyJdLFsxLDIsIlFfMiJdLFsyLDIsIlFfMSJdLFszLDIsIlFfMCJdLFs0LDIsIk4iXSxbNSwyLCIwIl0sWzQsMTAsImYiXSxbMyw5LCJcXGV4aXN0cyBmXzAiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiw4LCJcXGV4aXN0cyBmXzEiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMSw3LCJcXGV4aXN0cyBmXzIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCwxXSxbMSwyLCJkXzJeUCJdLFszLDQsIlxcdmFyZXBzaWxvbiA9IGRfMF5QIl0sWzQsNV0sWzYsN10sWzcsOCwiZF8yXlEiLDJdLFs4LDksImRfMV5RIiwyXSxbOSwxMCwiXFxldGEgPSBkXzBeUSIsMl0sWzEwLDExXSxbMiwzLCJkXzFeUCJdXQ==)
:::

::: {.remark}
The proof will only use that \( P \xrightarrow{\epsilon} M \) is a chain complex of projective objects, i.e. \( d^2 = 0 \), and that \( \epsilon \circ d_1^p = 0 \). To make the notation more consistent, we'll write \( Z_{-1}(P) \coloneqq M \) and \( Z_{-1}(Q) \coloneqq N \). Toward an induction, suppose that the \( f_i \) have been constructed for \( i\leq n \), so \( f_{i-1} \circ d = d \circ f_i \).
:::

::: {.proof title="Existence"}
A fact about chain maps is that they induce maps on the kernels of the outgoing maps, so there is a map \( f_n': Z_n(P) \to Z_n(Q) \). We get a diagram where the top row is not necessarily exact:

```{=tex}
\begin{tikzcd}
    {P_{n+1}} & {} & {Z_n(P)} \\
    \\
    {Q_{n+1}} && {Z_n(Q)} && 0
    \arrow["d", from=1-1, to=1-3]
    \arrow["d", from=3-1, to=3-3]
    \arrow["d", from=3-3, to=3-5]
    \arrow["{f_{n'}}", from=1-3, to=3-3]
    \arrow["{\exists f_{n+1}}"{description}, dashed, from=1-1, to=3-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMSwwXSxbMiwwLCJaX24oUCkiXSxbMCwwLCJQX3tuKzF9Il0sWzAsMiwiUV97bisxfSJdLFsyLDIsIlpfbihRKSJdLFs0LDIsIjAiXSxbMiwxLCJkIl0sWzMsNCwiZCJdLFs0LDUsImQiXSxbMSw0LCJmX3tuJ30iXSxbMiwzLCJcXGV4aXN0cyBmX3tuKzF9JyIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)

Using the definition of projective, since \( P_{n+1} \) is projective, the map \( f_{n+1}: P_{n+1} \to Q_{n+1} \) exists where \( d \circ f_{n+1} = f_n' \circ d = f_n \circ d \), since \( f_n = f_n' \) on \( \operatorname{im}d \subseteq Z_n(P) \). This yields commutativity of the above square.
:::

::: {.proof title="Uniqueness"}
Suppose \( g: P\to Q \) is another lift of \( f' \), the consider \( h\coloneqq f-g \). This is a chain map \( P\to Q \) lifting of \( f' - f' = 0 \). We'll construct a chain contraction \( \left\{{ s_n:; P_n \to Q_{n+1} }\right\} \) by induction on \( n \):

We have the following diagram:

```{=tex}
\begin{tikzcd}
    && {P_0} && M \\
    \\
    {Q_1} && {Q_0} && N
    \arrow["{f-f'=0}", from=1-5, to=3-5]
    \arrow["\varepsilon", from=1-3, to=1-5]
    \arrow["{h_0 \coloneqq f_0 - f_0'}"', from=1-3, to=3-3]
    \arrow["\eta"', from=3-3, to=3-5]
    \arrow["d"', from=3-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbNCwwLCJNIl0sWzIsMCwiUF8wIl0sWzIsMiwiUV8wIl0sWzQsMiwiTiJdLFswLDIsIlFfMSJdLFswLDMsImYtZic9MCJdLFsxLDAsIlxcdmFyZXBzaWxvbiJdLFsxLDIsImhfMCBcXGRhIGZfMCAtIGZfMCciLDJdLFsyLDMsIlxcZXRhIiwyXSxbNCwyLCJkIiwyXV0=)

Setting \( P_{-1}\coloneqq 0 \) and \( s_{-1}: P_{-1} \to Q_0 \) to be the zero map, we have \( \eta \circ h_0 = \varepsilon(f' - f') = 0 \). Using projectivity of \( P_0 \), there exists an \( s_0 \) as shown below which satisfies \( h_0 = d \circ s_0 = ds_0 + s_{-1} d \) where \( s_{-1} d= 0 \):

```{=tex}
\begin{tikzcd}
    && {P_0} && {P_{-1} = 0} \\
    \\
    {Q_1} && {d(Q_1)} && 0
    \arrow["{d_0 = 0}", from=1-3, to=1-5]
    \arrow["{s_{-1} = 0}", from=1-5, to=3-3]
    \arrow["{h_0}"', from=1-3, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[two heads, from=3-1, to=3-3]
    \arrow["{\exists s_1}"', dashed, from=1-3, to=3-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMiwwLCJQXzAiXSxbNCwwLCJQX3stMX0gPSAwIl0sWzIsMiwiZChRXzEpIl0sWzQsMiwiMCJdLFswLDIsIlFfMSJdLFswLDEsImRfMCA9IDAiXSxbMSwyLCJzX3stMX0gPSAwIl0sWzAsMiwia18wIiwyXSxbMiwzXSxbNCwyLCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMCw0LCJcXGV4aXN0cyBzXzEiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=)

Proceeding inductively, assume we have maps \( s_i: P_i \to Q_{i+1} \) such that \( h_{n-1} = d s_{n-1} + s_{n-2} d \), or equivalently \( ds_{n-1} = h_{n-1} - s_{n-2} d \). We want to construct \( s_n \) in the following diagram:

```{=tex}
\begin{tikzcd}
    && {P_n} && {P_{n-1}} && {P_{n-2}} \\
    \\
    {Q_{n+1}} && {Q_n} && {Q_{n-1}}
    \arrow["d", from=1-3, to=1-5]
    \arrow["d", from=1-5, to=1-7]
    \arrow["{h_{n-1}}", from=1-5, to=3-5]
    \arrow["{s_{n-2}}"{description}, from=1-7, to=3-5]
    \arrow["{s_{n-1}}"{description}, from=1-5, to=3-3]
    \arrow["d"{description}, from=3-3, to=3-5]
    \arrow["d"{description}, from=3-1, to=3-3]
    \arrow["{h_{n}}"{description}, from=1-3, to=3-3]
    \arrow["{\exists s_n}"{description}, dashed, from=1-3, to=3-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMiwwLCJQX24iXSxbNCwwLCJQX3tuLTF9Il0sWzYsMCwiUF97bi0yfSJdLFsyLDIsIlFfbiJdLFs0LDIsIlFfe24tMX0iXSxbMCwyLCJRX3tuKzF9Il0sWzAsMSwiZCJdLFsxLDIsImQiXSxbMSw0LCJoX3tuLTF9Il0sWzIsNCwic197bi0yfSIsMV0sWzEsMywic197bi0xfSIsMV0sWzMsNCwiZCIsMV0sWzUsMywiZCIsMV0sWzAsMywiaF97bn0iLDFdLFswLDUsIlxcZXhpc3RzIHNfbiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)

So consider \( h_n - s_{n-1} d: P_n \to Q_n \), which we want to equal \( d(s_n) \). We want exactness, so we need better control of the image! We have \( d(h_n - s_{n-1} d) = d h_n - (h_{n-1} - s_{n-2} d)d \). But this is equal to \( d h_n - h_{n-1}d = 0 \) since \( h \) is a chain map. Thus we get \( h_n - s_{n-1}d: P_n \to Z_n(Q) \), and thus using projectivity one last time, we obtain the following:

```{=tex}
\begin{tikzcd}
    && {P_n} \\
    \\
    {Q_{n+1}} && {Z_n(Q)} && 0
    \arrow["{\exists s_n}", dashed, from=1-3, to=3-1]
    \arrow["d", from=3-1, to=3-3]
    \arrow["{h_n - s_{n-1}d}", from=1-3, to=3-3]
    \arrow["d", from=3-3, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwyLCJRX3tuKzF9Il0sWzIsMiwiWl9uKFEpIl0sWzIsMCwiUF9uIl0sWzQsMiwiMCJdLFsyLDAsIlxcZXhpc3RzIHNfbiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFswLDEsImQiXSxbMiwxLCJoX24gLSBzX3tuLTF9ZCJdLFsxLDMsImQiXV0=)

Since \( P_n \) is projective, there exists an \( s_n: P_n \to Q_{n+1} \) such that \( ds_n = h_n - s_{n-1} d \).
:::

# Tuesday, February 02

# Tuesday, February 02

# Tuesday, February 02

# Wednesday, February 03

::: {.remark}
All rings have 1 in this course!
:::

## Horseshoe Lemma

::: {.proposition title="Horseshoe Lemma"}
Suppose we have a diagram like the following, where the columns are exact and the rows are projective resolutions:

```{=tex}
\begin{tikzcd}
    &&&&&&&& 0 \\
    \\
    \cdots && {P_2'} && {P_1'} && {P_0'} && {A'} && 0 \\
    \\
    &&&&&&&& A \\
    \\
    \cdots && {P_2''} && {P_1''} && {P_0''} && {A''} && 0 \\
    &&&&&&&& {} \\
    &&&&&&&& 0
    \arrow["{\iota_A}", from=3-9, to=5-9]
    \arrow["{\varepsilon'}", from=3-7, to=3-9]
    \arrow["{\varepsilon''}", from=7-7, to=7-9]
    \arrow[from=7-9, to=9-9]
    \arrow["{\pi_A}", from=5-9, to=7-9]
    \arrow[from=3-5, to=3-7]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-1, to=3-3]
    \arrow[from=7-1, to=7-3]
    \arrow[from=7-3, to=7-5]
    \arrow[from=7-5, to=7-7]
    \arrow[from=3-9, to=3-11]
    \arrow[from=7-9, to=7-11]
    \arrow[from=1-9, to=3-9]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTYsWzgsMiwiQSciXSxbOCw0LCJBIl0sWzgsNiwiQScnIl0sWzgsOCwiMCJdLFsxMCwyLCIwIl0sWzYsMiwiUF8wJyJdLFs0LDIsIlBfMSciXSxbMiwyLCJQXzInIl0sWzAsMiwiXFxjZG90cyJdLFs2LDYsIlBfMCcnIl0sWzQsNiwiUF8xJyciXSxbMiw2LCJQXzInJyJdLFsxMCw2LCIwIl0sWzAsNiwiXFxjZG90cyJdLFs4LDddLFs4LDAsIjAiXSxbMCwxLCJcXGlvdGFfQSJdLFs1LDAsIlxcZXBzJyJdLFs5LDIsIlxcZXBzJyciXSxbMiwzXSxbMSwyLCJcXHBpX0EiXSxbNiw1XSxbNyw2XSxbOCw3XSxbMTMsMTFdLFsxMSwxMF0sWzEwLDldLFswLDRdLFsyLDEyXSxbMTUsMF1d)

Note that if the vertical sequence were split, one could sum together to two resolutions to get a resolution of the middle. This still works: there is a projective resolution of \( P \) of \( A \) given by
\[
P_n \coloneqq P_n' \oplus P_n''
\]
which lifts the vertical column in the above diagram to an exact sequence of complexes
\[
0 \to P' \xrightarrow{\iota} P \xrightarrow{\pi}  P'' \to 0
,\]
where \( \iota_n: P_n' \hookrightarrow P_n \) is the natural inclusion and \( \pi_i: P_n \twoheadrightarrow P_n'' \) the natural projection.
:::

### Proof of the Horseshoe Lemma

We can construct this inductively:

```{=tex}
\begin{tikzcd}
    && 0 && 0 \\
    \\
    {\ker(\varepsilon')} && {P_0'} && {A'} && 0 \\
    \\
    {\ker(\varepsilon)} && \textcolor{rgb,255:red,92;green,92;blue,214}{P_0} && \textcolor{rgb,255:red,92;green,92;blue,214}{A} && {\operatorname{coker}(\varepsilon)} \\
    \\
    {\ker(\varepsilon'')} && {P_0''} && {A''} && 0 \\
    \\
    && 0 && 0
    \arrow["{\varepsilon''}", from=7-3, to=7-5]
    \arrow["{\eta''}"', dashed, from=7-3, to=5-5]
    \arrow["\iota"', from=3-3, to=5-3]
    \arrow["\pi"', from=5-3, to=7-3]
    \arrow["{\iota_A}", from=3-5, to=5-5]
    \arrow["{\pi_A}", from=5-5, to=7-5]
    \arrow["{\varepsilon'}", from=3-3, to=3-5]
    \arrow["{\eta'}", from=3-3, to=5-5]
    \arrow[from=1-5, to=3-5]
    \arrow[from=1-3, to=3-3]
    \arrow[from=7-5, to=7-7]
    \arrow[from=3-5, to=3-7]
    \arrow[from=5-1, to=5-3]
    \arrow[from=7-1, to=7-3]
    \arrow[from=3-1, to=3-3]
    \arrow[from=7-3, to=9-3]
    \arrow[from=7-5, to=9-5]
    \arrow["\eta", color={rgb,255:red,92;green,92;blue,214}, from=5-3, to=5-5]
    \arrow[from=5-5, to=5-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTYsWzIsMCwiMCJdLFs0LDAsIjAiXSxbMiwyLCJQXzAnIl0sWzQsMiwiQSciXSxbMiw0LCJQXzAiLFsyNDAsNjAsNjAsMV1dLFs0LDQsIkEiLFsyNDAsNjAsNjAsMV1dLFsyLDYsIlBfMCcnIl0sWzQsNiwiQScnIl0sWzYsNiwiMCJdLFs2LDIsIjAiXSxbMCwyLCJcXGtlcihcXGVwcycpIl0sWzAsNCwiXFxrZXIoXFxlcHMpIl0sWzAsNiwiXFxrZXIoXFxlcHMnJykiXSxbMiw4LCIwIl0sWzQsOCwiMCJdLFs2LDQsIlxcY29rZXIoXFxlcHMpIl0sWzYsNywiXFx2YXJlcHNpbG9uJyciXSxbNiw1LCJcXGV0YScnIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsNCwiXFxpb3RhIiwyXSxbNCw2LCJcXHBpIiwyXSxbMyw1LCJcXGlvdGFfQSJdLFs1LDcsIlxccGlfQSJdLFsyLDMsIlxcdmFyZXBzaWxvbiciXSxbMiw1LCJcXGV0YSciXSxbMSwzXSxbMCwyXSxbNyw4XSxbMyw5XSxbMTEsNF0sWzEyLDZdLFsxMCwyXSxbNiwxM10sWzcsMTRdLFs0LDUsIlxcZXRhIiwwLHsiY29sb3VyIjpbMjQwLDYwLDYwXX0sWzI0MCw2MCw2MCwxXV0sWzUsMTVdXQ==)

-   \( P_0'' \) projective and \( \pi_A \) surjective implies \( \varepsilon'' \) lifts to \( \eta'': P_0'' \to A \)
-   Composing yields \( \eta' \coloneqq\iota_A \circ \eta': P_0' \to A \)
-   Get \( \varepsilon\coloneqq\eta' \oplus \eta'':P_0 \coloneqq P_0' \oplus P_0'' \to A \).

Flipping the diagram, we can apply the snake lemma to the two columns:

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,214;green,92;blue,92}{0} && 0 && 0 \\
    \\
    \textcolor{rgb,255:red,214;green,92;blue,92}{\ker(\varepsilon')} && {P_0'} && {A'} && \textcolor{rgb,255:red,214;green,92;blue,92}{0} \\
    \\
    \textcolor{rgb,255:red,214;green,92;blue,92}{\ker(\varepsilon)} && \textcolor{rgb,255:red,92;green,92;blue,214}{P_0} && \textcolor{rgb,255:red,92;green,92;blue,214}{A} && \textcolor{rgb,255:red,214;green,92;blue,92}{\operatorname{coker}(\varepsilon)} \\
    \\
    \textcolor{rgb,255:red,214;green,92;blue,92}{\ker(\varepsilon'')} && {P_0''} && {A''} && \textcolor{rgb,255:red,214;green,92;blue,92}{0} \\
    \\
    && 0 && 0
    \arrow["{\varepsilon''}", from=7-3, to=7-5]
    \arrow["{\eta''}"', dashed, from=7-3, to=5-5]
    \arrow["\iota"', from=3-3, to=5-3]
    \arrow["\pi"', from=5-3, to=7-3]
    \arrow["{\iota_A}", from=3-5, to=5-5]
    \arrow["{\pi_A}", from=5-5, to=7-5]
    \arrow["{\varepsilon'}", from=3-3, to=3-5]
    \arrow["{\eta'}", from=3-3, to=5-5]
    \arrow[from=1-5, to=3-5]
    \arrow[from=1-3, to=3-3]
    \arrow[from=7-5, to=7-7]
    \arrow[from=3-5, to=3-7]
    \arrow[from=5-1, to=5-3]
    \arrow[from=7-1, to=7-3]
    \arrow[from=3-1, to=3-3]
    \arrow[from=7-3, to=9-3]
    \arrow[from=7-5, to=9-5]
    \arrow["\eta", color={rgb,255:red,92;green,92;blue,214}, from=5-3, to=5-5]
    \arrow[from=5-5, to=5-7]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=1-1, to=3-1]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=3-1, to=5-1]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=5-1, to=7-1]
    \arrow["{{\partial}}", color={rgb,255:red,214;green,92;blue,92}, squiggly, from=7-1, to=3-7, out=65, in=90]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=3-7, to=5-7]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=5-7, to=7-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTcsWzIsMCwiMCJdLFs0LDAsIjAiXSxbMiwyLCJQXzAnIl0sWzQsMiwiQSciXSxbMiw0LCJQXzAiLFsyNDAsNjAsNjAsMV1dLFs0LDQsIkEiLFsyNDAsNjAsNjAsMV1dLFsyLDYsIlBfMCcnIl0sWzQsNiwiQScnIl0sWzYsNiwiMCIsWzAsNjAsNjAsMV1dLFs2LDIsIjAiLFswLDYwLDYwLDFdXSxbMCwyLCJcXGtlcihcXGVwcycpIixbMCw2MCw2MCwxXV0sWzAsNCwiXFxrZXIoXFxlcHMpIixbMCw2MCw2MCwxXV0sWzAsNiwiXFxrZXIoXFxlcHMnJykiLFswLDYwLDYwLDFdXSxbMiw4LCIwIl0sWzQsOCwiMCJdLFs2LDQsIlxcY29rZXIoXFxlcHMpIixbMCw2MCw2MCwxXV0sWzAsMCwiMCIsWzAsNjAsNjAsMV1dLFs2LDcsIlxcdmFyZXBzaWxvbicnIl0sWzYsNSwiXFxldGEnJyIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDQsIlxcaW90YSIsMl0sWzQsNiwiXFxwaSIsMl0sWzMsNSwiXFxpb3RhX0EiXSxbNSw3LCJcXHBpX0EiXSxbMiwzLCJcXHZhcmVwc2lsb24nIl0sWzIsNSwiXFxldGEnIl0sWzEsM10sWzAsMl0sWzcsOF0sWzMsOV0sWzExLDRdLFsxMiw2XSxbMTAsMl0sWzYsMTNdLFs3LDE0XSxbNCw1LCJcXGV0YSIsMCx7ImNvbG91ciI6WzI0MCw2MCw2MF19LFsyNDAsNjAsNjAsMV1dLFs1LDE1XSxbMTYsMTAsIiIsMCx7ImNvbG91ciI6WzAsNjAsNjBdfV0sWzEwLDExLCIiLDAseyJjb2xvdXIiOlswLDYwLDYwXX1dLFsxMSwxMiwiIiwwLHsiY29sb3VyIjpbMCw2MCw2MF19XSxbMTIsOSwiXFxiZCIsMCx7ImNvbG91ciI6WzAsNjAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJzcXVpZ2dseSJ9fX0sWzAsNjAsNjAsMV1dLFs5LDE1LCIiLDAseyJjb2xvdXIiOlswLDYwLDYwXX1dLFsxNSw4LCIiLDAseyJjb2xvdXIiOlswLDYwLDYwXX1dXQ==)

We can now conclude that

-   \( \operatorname{coker}\varepsilon= 0 \)
-   \( {{\partial}}= 0 \) since it lands on the zero moduli

So append a zero onto the far left column:

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,214;green,92;blue,92}{0} && 0 && 0 \\
    \\
    \textcolor{rgb,255:red,214;green,92;blue,92}{\ker(\varepsilon')} && {P_0'} && {A'} && \textcolor{rgb,255:red,214;green,92;blue,92}{0} \\
    \\
    \textcolor{rgb,255:red,214;green,92;blue,92}{\ker(\varepsilon)} && \textcolor{rgb,255:red,92;green,92;blue,214}{P_0} && \textcolor{rgb,255:red,92;green,92;blue,214}{A} && \textcolor{rgb,255:red,214;green,92;blue,92}{\operatorname{coker}(\varepsilon)} \\
    \\
    \textcolor{rgb,255:red,214;green,92;blue,92}{\ker(\varepsilon'')} && {P_0''} && {A''} && \textcolor{rgb,255:red,214;green,92;blue,92}{0} \\
    \\
    0 && 0 && 0
    \arrow["{\varepsilon''}", from=7-3, to=7-5]
    \arrow["{\eta''}"', dashed, from=7-3, to=5-5]
    \arrow["\iota"', from=3-3, to=5-3]
    \arrow["\pi"', from=5-3, to=7-3]
    \arrow["{\iota_A}", from=3-5, to=5-5]
    \arrow["{\pi_A}", from=5-5, to=7-5]
    \arrow["{\varepsilon'}", from=3-3, to=3-5]
    \arrow["{\eta'}", from=3-3, to=5-5]
    \arrow[from=1-5, to=3-5]
    \arrow[from=1-3, to=3-3]
    \arrow[from=7-5, to=7-7]
    \arrow[from=3-5, to=3-7]
    \arrow[from=5-1, to=5-3]
    \arrow[from=7-1, to=7-3]
    \arrow[from=3-1, to=3-3]
    \arrow[from=7-3, to=9-3]
    \arrow[from=7-5, to=9-5]
    \arrow["\eta", color={rgb,255:red,92;green,92;blue,214}, from=5-3, to=5-5]
    \arrow[from=5-5, to=5-7]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=1-1, to=3-1]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=3-1, to=5-1]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=5-1, to=7-1]
    \arrow[from=7-1, to=9-1]
    \arrow["{{\partial}}", color={rgb,255:red,214;green,92;blue,92}, squiggly, from=7-1, to=3-7, out=65, in=90]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=3-7, to=5-7]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=5-7, to=7-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTgsWzIsMCwiMCJdLFs0LDAsIjAiXSxbMiwyLCJQXzAnIl0sWzQsMiwiQSciXSxbMiw0LCJQXzAiLFsyNDAsNjAsNjAsMV1dLFs0LDQsIkEiLFsyNDAsNjAsNjAsMV1dLFsyLDYsIlBfMCcnIl0sWzQsNiwiQScnIl0sWzYsNiwiMCIsWzAsNjAsNjAsMV1dLFs2LDIsIjAiLFswLDYwLDYwLDFdXSxbMCwyLCJcXGtlcihcXGVwcycpIixbMCw2MCw2MCwxXV0sWzAsNCwiXFxrZXIoXFxlcHMpIixbMCw2MCw2MCwxXV0sWzAsNiwiXFxrZXIoXFxlcHMnJykiLFswLDYwLDYwLDFdXSxbMiw4LCIwIl0sWzQsOCwiMCJdLFs2LDQsIlxcY29rZXIoXFxlcHMpIixbMCw2MCw2MCwxXV0sWzAsMCwiMCIsWzAsNjAsNjAsMV1dLFswLDgsIjAiXSxbNiw3LCJcXHZhcmVwc2lsb24nJyJdLFs2LDUsIlxcZXRhJyciLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiw0LCJcXGlvdGEiLDJdLFs0LDYsIlxccGkiLDJdLFszLDUsIlxcaW90YV9BIl0sWzUsNywiXFxwaV9BIl0sWzIsMywiXFx2YXJlcHNpbG9uJyJdLFsyLDUsIlxcZXRhJyJdLFsxLDNdLFswLDJdLFs3LDhdLFszLDldLFsxMSw0XSxbMTIsNl0sWzEwLDJdLFs2LDEzXSxbNywxNF0sWzQsNSwiXFxldGEiLDAseyJjb2xvdXIiOlsyNDAsNjAsNjBdfSxbMjQwLDYwLDYwLDFdXSxbNSwxNV0sWzE2LDEwLCIiLDAseyJjb2xvdXIiOlswLDYwLDYwXX1dLFsxMCwxMSwiIiwwLHsiY29sb3VyIjpbMCw2MCw2MF19XSxbMTEsMTIsIiIsMCx7ImNvbG91ciI6WzAsNjAsNjBdfV0sWzEyLDE3XSxbMTIsOSwiXFxiZCIsMCx7ImNvbG91ciI6WzAsNjAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJzcXVpZ2dseSJ9fX0sWzAsNjAsNjAsMV1dLFs5LDE1LCIiLDAseyJjb2xvdXIiOlswLDYwLDYwXX1dLFsxNSw4LCIiLDAseyJjb2xvdXIiOlswLDYwLDYwXX1dXQ==)

Thus the LHS column is a SES, and we have the first step of a resolution. Proceeding inductively, at the next step we have

```{=tex}
\begin{tikzcd}
    &&&& 0 \\
    \\
    \cdots && {P_1'} && {\ker(\varepsilon')} && 0 \\
    \\
    &&&& {\ker(\varepsilon)} \\
    \\
    \cdots && {P_1''} & {} & {\ker(\varepsilon'')} && 0 \\
    \\
    &&&& 0
    \arrow[from=1-5, to=3-5]
    \arrow[from=3-5, to=5-5]
    \arrow[from=5-5, to=7-5]
    \arrow[from=7-5, to=9-5]
    \arrow["{d_1'}", from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow[from=7-5, to=7-7]
    \arrow[from=7-1, to=7-3]
    \arrow[from=3-1, to=3-3]
    \arrow["{d_1''}", from=7-3, to=7-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTIsWzQsMCwiMCJdLFs0LDIsIlxca2VyKFxcZXBzJykiXSxbNCw0LCJcXGtlcihcXGVwcykiXSxbNCw2LCJcXGtlcihcXGVwcycnKSJdLFs0LDgsIjAiXSxbNiw2LCIwIl0sWzYsMiwiMCJdLFsyLDIsIlBfMSciXSxbMiw2LCJQXzEnJyJdLFszLDZdLFswLDYsIlxcY2RvdHMiXSxbMCwyLCJcXGNkb3RzIl0sWzAsMV0sWzEsMl0sWzIsM10sWzMsNF0sWzcsMSwiZF8xJyJdLFsxLDZdLFszLDVdLFsxMCw4XSxbMTEsN10sWzgsMywiZF8xJyciXV0=)

However, this is precisely the situation that appeared before, so the same procedure works.

::: {.exercise title="?"}
Check that the middle complex is exact! Follows by construction.
:::

## Injective Resolutions

::: {.definition title="Injective Objects"}
Let \( \mathcal{A} \) be an abelian category, then \( I\in \mathcal{A} \) is **injective** if and only if it satisfies the following universal property: \( A \) is projective if and only if for every monic \( \alpha :A\to I \), any map \( f:A\to B \) lifts to a map \( B\to I \):

```{=tex}
\begin{tikzcd}
    0 && A && B \\
    \\
    && I
    \arrow[from=1-1, to=1-3]
    \arrow["\alpha", from=1-3, to=3-3]
    \arrow["{\exists \beta}"', dashed, from=3-3, to=1-5]
    \arrow["f", from=1-3, to=1-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCIwIl0sWzIsMCwiQSJdLFs0LDAsIkIiXSxbMiwyLCJJIl0sWzAsMV0sWzEsMywiXFxhbHBoYSJdLFszLDIsIlxcZXhpc3RzIFxcYmV0YSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxLDIsImYiXV0=)

We say \( \mathcal{A} \) **has enough injectives** if and only if for all \( A \), there exists \( A\hookrightarrow I \) where \( I \) is injective.
:::

::: {.slogan}
Maps on subobjects extend.
:::

::: {.proposition title="Products of Injectives are Injective"}
If \( \left\{{I_ \alpha}\right\} \) is a family of injectives and \( I \coloneqq\prod_{\alpha} I_ \alpha \in A \), then \( I \) is again injective.
:::

::: {.proof title="?"}
Use the universal property of direct products.
:::

## Baer's Criterion

::: {.proposition title="Baer's Criterion"}
An object \( E \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) is injective if and only if for every right ideal \( J {~\trianglelefteq~}R \), every map \( J\to E \) extends to a map \( R\to E \). Note that \( J \) is a right \( R{\hbox{-}} \)submodule.
:::

::: {.proof title="?"}
\( \implies \): This is essentially by definition. Instead of taking arbitrary submodules, we're just taking \( R \) itself and *its* submodules:

```{=tex}
\begin{tikzcd}
    0 && J && R \\
    \\
    && E
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-3, to=3-3]
    \arrow[dashed, from=1-5, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCIwIl0sWzIsMCwiSiJdLFs0LDAsIlIiXSxbMiwyLCJFIl0sWzAsMV0sWzEsMl0sWzEsM10sWzIsMywiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d)

\( \impliedby \): Suppose we have the following:

```{=tex}
\begin{tikzcd}
    0 && A && B \\
    \\
    && E
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow["\alpha", from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCIwIl0sWzIsMCwiQSJdLFs0LDAsIkIiXSxbMiwyLCJFIl0sWzAsMV0sWzEsMl0sWzEsMywiXFxhbHBoYSJdXQ==)

Let \( \mathcal{E}\coloneqq\left\{{ \alpha': A' \to E {~\mathrel{\Big|}~}A \leq A' \leq B }\right\} \), i.e. all of the intermediate extensions:

```{=tex}
\begin{tikzcd}
    0 && A && \textcolor{rgb,255:red,214;green,92;blue,92}{A'} && B \\
    \\
    && E
    \arrow[from=1-1, to=1-3]
    \arrow["\alpha", from=1-3, to=3-3]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=1-3, to=1-5]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=1-5, to=1-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCIwIl0sWzIsMCwiQSJdLFsyLDIsIkUiXSxbNCwwLCJBJyIsWzAsNjAsNjAsMV1dLFs2LDAsIkIiXSxbMCwxXSxbMSwyLCJcXGFscGhhIl0sWzEsMywiIiwwLHsiY29sb3VyIjpbMCw2MCw2MF19XSxbMyw0LCIiLDAseyJjb2xvdXIiOlswLDYwLDYwXX1dXQ==)

Add a partial order to \( \mathcal{E} \) where \( \alpha ' \leq \alpha'' \) if and only if \( \alpha'' \) extends \( \alpha' \). Applying Zorn's lemma (and abusing notation slightly), we can produce a maximal \( \alpha': A' \to E \). The claim is that \( A' = B \). Supposing not, then \( A' \) is a proper submodule, so choose a \( b\in B \setminus A' \). Then define the set \( J \coloneqq\left\{{ r\in R {~\mathrel{\Big|}~}br \in A' }\right\} \), this is a right ideal of \( R \) since \( A' \) was a right \( R{\hbox{-}} \)module. Now applying the assumption of Baer's condition on \( E \), we can produce a map \( f:R\to E \):C

```{=tex}
\begin{tikzcd}
    0 && J && R \\
    \\
    && {A'} \\
    \\
    && E
    \arrow[from=1-1, to=1-3]
    \arrow["b\cdot{\,\cdot\,}"', from=1-3, to=3-3]
    \arrow["{\alpha'}"', from=3-3, to=5-3]
    \arrow[from=1-3, to=1-5]
    \arrow["{\exists f}", dashed, from=1-5, to=5-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCIwIl0sWzIsMCwiSiJdLFsyLDIsIkEnIl0sWzIsNCwiRSJdLFs0LDAsIlIiXSxbMCwxXSxbMSwyLCJiXFxjZG90XFx3YWl0IiwyXSxbMiwzLCJcXGFscGhhJyIsMl0sWzEsNF0sWzQsMywiXFxleGlzdHMgZiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)

Now let \( A'' \coloneqq A' + bR \leq B \), and provisionally define
\[
\alpha'': A'' &\to E \\
a + br & \mapsto \alpha'(a) + f(r)
.\]

::: {.remark}
Is this well-defined? Consider overlapping terms, it's enough to consider elements of the form \( br\in A' \). In this case, \( r\in J \) by definition, and so \( \alpha'(br) = f(r) \) by commutativity in the previous diagram, which shows that the two maps agree on anything in the intersection.
:::

Note that \( \alpha'' \) now extends \( \alpha' \), but \( A' \subsetneq A'' \) since \( b\in A''\setminus A' \). But then \( A'' \) strictly contains \( A' \), contradicting its maximality from Zorn's lemma.
:::

::: {.remark}
Big question: what *are* injective modules really? These are pretty nonintuitive objects.
:::

# Friday, February 05

> See missing first 10m Recall the definition of injectives.

::: {.remark}
Over a PID, divisible is equivalent (?) to injective as a module.
:::

::: {.example title="?"}
\( {\mathbb{Q}} \) is divisible, and thus an injective \( {\mathbb{Z}}{\hbox{-}} \)module. Similarly \( {\mathbb{Q}}/{\mathbb{Z}}\rightleftharpoons[0, 1) \cap{\mathbb{Q}} \).
:::

::: {.example title="?"}
Let \( p\in {\mathbb{Z}} \) be prime, then \( {\mathbb{Z}}[{1\over p}] \subseteq {\mathbb{Q}} \) has elements of the form \( \sum {a_i \over p^{n_i} } \), and is not divisible. On the other hand, \( {\mathbb{Z}}_{p^ \infty }\coloneqq{\mathbb{Z}}[{1\over p}]/{\mathbb{Z}}\rightleftharpoons{\mathbb{Z}}[{1\over p}] \cap[0, 1) \) is divisible since \( p^n \qty{ a\over p^n } = a \in {\mathbb{Z}} \), which equals zero in \( {\mathbb{Z}}_{p^{\infty }} \). To solve \( xr = a/p^n \) with \( r,a \in {\mathbb{Z}} \) and \( r\neq 0 \), first assume \( \gcd(r, p) = 1 \) by just dividing through by any common powers of \( p \). This amounts to solving \( 1 = sr tp^n \) where \( s, t\in {\mathbb{Z}} \):
\[
{a\over p^n} 
&= sr \qty{a \over p^n} + tp^n\qty{a \over p^n} \\
&= \qty{ sa \over p^n} r \\
&\coloneqq xr \in {\mathbb{Z}}_{p^{\infty }}
.\]
:::

::: {.fact}
Every injective abelian group is isomorphic to a direct sum of copies of \( {\mathbb{Q}} \) and \( {\mathbb{Z}}_{p^{\infty }} \) for various primes \( p \).
:::

::: {.example title="?"}
\( {\mathbb{Q}}/{\mathbb{Z}}\cong \bigoplus _{p\text{ prime}} {\mathbb{Z}}_{p^{\infty }} \). To prove this, do induction on the number of prime factors in the denominator.
:::

::: {.exercise title="2.3.2"}
\( {\mathsf{Ab}}= {{{\mathbb{Z}}}{\hbox{-}}\mathsf{Mod}} \) has enough injectives.
:::

::: {.remark}
As a consequence, \( {\mathsf{Mod}{\hbox{-}}R} \) has enough injectives for *any* ring \( R \).
:::

## Transferring Injectives Between Categories

Next we'll use our background in projectives to deduce analogous facts for injectives.

::: {.definition title="Opposite Category"}
Let \( \mathcal{A} \) be any category, then there is an opposite/dual category \( \mathcal{A}^{\operatorname{op}} \) defined in the following way:

-   \( {\operatorname{Ob}}(\mathcal{A}^{\operatorname{op}}) = {\operatorname{Ob}}(\mathcal{A}) \)
-   \( A\to B\in \operatorname{Mor}(\mathcal{A}) \implies B\to A \in \operatorname{Mor}(\mathcal{A}^{\operatorname{op}} \), so
    \[
    {\operatorname{Hom}}_{\mathcal{A}}(A, B) \cong {\operatorname{Hom}}_{ \mathcal{A}^{\operatorname{op}}}(B, A) 
    f &\rightleftharpoons f^{\operatorname{op}}
    .\]
-   We require that if \( A \xrightarrow{f} B \xrightarrow{g} C \) in \( \mathcal{A} \), then \( f^{\operatorname{op}}\circ g^{\operatorname{op}}= (g\circ f)^{\operatorname{op}} \) where \( C \xrightarrow{g^{\operatorname{op}}} B \xrightarrow{f^{\operatorname{op}}} A \).
-   \( \one_{A}^{\operatorname{op}}= \one_{A} \) in \( \mathcal{A}^{\operatorname{op}} \).
:::

::: {.warnings}
Thinking of these as functions won't quite work! For \( f:A\to B \), there may not be any map \( B\to A \) -- you'd need it to be onto to even define such a thing, and if it's not injective there are many choices. Note that initials and terminals are swapped, and since \( 0 \) is both. Counterintuitively, \( A \to 0 \to B \) is \( 0 \), which maps to \( B \to 0 \to A = 0^{\operatorname{op}} \).
:::

::: {.remark}
Note that \( ({\,\cdot\,})^{\operatorname{op}} \) switches

-   Monics and epis,
-   Initial and terminal objects,
-   Kernels and cokernels.

Moreover, \( \mathcal{A} \) is abelian if and only if \( \mathcal{A}^{\operatorname{op}} \) is abelian.
:::

::: {.definition title="Contravariant Functors"}
A **contravariant functor** \( F: \mathcal{C}\to \mathcal{D} \) is a *covariant* functor \( \mathcal{C}^{\operatorname{op}}\to \mathcal{D} \).

```{=tex}
\begin{tikzcd}
    {C_1} && {C_2} && {C_2} && {C_1} && {FC_2} && {FC_1} \\
    && {\mathcal{C}} && {\mathcal{C}^{\operatorname{op}}} && {\mathcal{C}^{\operatorname{op}}} && {\mathcal{D}}
    \arrow["f", from=1-1, to=1-3]
    \arrow["{f^{\operatorname{op}}}", from=1-5, to=1-7]
    \arrow["{F(f)}", from=1-9, to=1-11]
    \arrow[squiggly, from=2-3, to=2-5]
    \arrow[squiggly, from=2-7, to=2-9]
\end{tikzcd}
```
In particular, \( F(\one) = \one \) and \( F(gf) = F(f) F(g) \)

> [Link to Diagram](https://q.uiver.app/?q=WzAsMTAsWzIsMCwiQ18yIl0sWzAsMCwiQ18xIl0sWzQsMCwiQ18yIl0sWzYsMCwiQ18xIl0sWzgsMCwiRkNfMiJdLFsxMCwwLCJGQ18xIl0sWzIsMSwiXFxtYXRoY2Fse0N9Il0sWzQsMSwiXFxtYXRoY2Fse0N9Xlxcb3AiXSxbNiwxLCJcXG1hdGhjYWx7Q31eXFxvcCJdLFs4LDEsIlxcbWF0aGNhbHtEfSJdLFsxLDAsImYiXSxbMiwzLCJmXlxcb3AiXSxbNCw1LCJGKGYpIl0sWzYsNywiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoic3F1aWdnbHkifX19XSxbOCw5LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJzcXVpZ2dseSJ9fX1dXQ==)
:::

::: {.example title="?"}
\( {\operatorname{Hom}}_R({\,\cdot\,}, A): {\mathsf{Mod}{\hbox{-}}R}\to {\mathsf{Ab}} \) is a contravariant functor in the first slot.
:::

::: {.definition title="Left-Exact Functors"}
A contravariant functor \( F: \mathcal{A} \to \mathcal{B} \) between abelian categories is **left exact** if and only if the corresponding covariant functor \( F: \mathcal{A}^{\operatorname{op}}\to \mathcal{B} \): That is, SESs in \( \mathcal{A} \) get mapped to long left-exact sequences in \( \mathcal{B} \) :

```{=tex}
\begin{tikzcd}
    0 && A && B && C && 0 \\
    \\
    0 && FC && FB && FA && \cdots
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow[from=3-7, to=3-9]
    \arrow["{F({\,\cdot\,})}"{description}, squiggly, from=1-5, to=3-5]
\end{tikzcd}
```
:::

::: {.lemma title="?"}
If \( \mathcal{A} \) is abelian and \( A \in \mathcal{A} \), then the following are equivalent:

-   \( A \) is injective in \( \mathcal{A} \).
-   \( A \) is projective in \( \mathcal{A}^{\operatorname{op}} \).
-   The contravariant functor \( {\operatorname{Hom}}_{\mathcal{A}}({\,\cdot\,}, A) \) is exact.
:::

::: {.lemma title="?"}
If an abelian category \( \mathcal{A} \) has enough injectives, then every \( M\in \mathcal{A} \) has an injective resolution:
\[
0 \to M \to I^0 \to I^1 \to \cdots 
.\]
which is an exact cochain complex with each \( I^n \) injective. There is a version of the comparison lemma that is proved in roughly the same way as for projective resolutions.
:::

Next up: how to transport injective resolutions in \( {{{\mathbb{Z}}}{\hbox{-}}\mathsf{Mod}} \) to \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \).

::: {.observation}
If \( A\in {\mathsf{Ab}} \) and \( N \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) then \( {\operatorname{Hom}}_{{\mathsf{Ab}}}(N, A) \in {\mathsf{Mod}{\hbox{-}}R} \) in the following way: taking \( f: N\to A \) and \( r\in R \), define a right action \( (f\cdot r)(n) \coloneqq f(rn) \).
:::

::: {.exercise title="?"}
Check that this is a morphism of abelian groups, that this yields a module structure, along with other details. For noncommutative rings, it's crucial that the \( r \) is on the right in the action and on the left in the definition.
:::

::: {.lemma title="?"}
If \( M \in {\mathsf{Mod}{\hbox{-}}R} \), then the following natural map \( \tau \) is an isomorphism of abelian groups for each \( A\in {\mathsf{Ab}} \):
\[
\tau: {\operatorname{Hom}}_{{\mathsf{Ab}}}(?(M), A) &\to {\operatorname{Hom}}_{{\mathsf{Mod}{\hbox{-}}R}}(M, {\operatorname{Hom}}_{{\mathsf{Ab}}}(R, A)) \\
f &\mapsto \tau(f)(m)(r) \coloneqq f(mr)
,\]
where \( m\in M \) and \( r\in R \). Note that \( R \) is a left \( R{\hbox{-}} \)module, so the hom in the RHS is a right \( R{\hbox{-}} \)module and the hom makes sense.

::: {.exercise title="?"}
Check the details here, particularly that the module structures all make sense.
:::

There is a map \( \mu \) going the other way: \( \mu(g)(m) = g(m)(1_R) \) for \( m\in M \).
:::

::: {.remark}
A quick look at why these maps are inverses:
\[
\mu( \tau(f)) 
&= (\tau f)(m)(1_R) \\
&= f(m\cdot 1) \\
&= f(m)
.\]

Conversely,
\[
\tau(\mu(g))(m)(r)
&= (\mu g)( mr) \\
&= g(mr)(1) \\
&= g(m\cdot r) && \text{since } g \in \operatorname{Mor}_{{\mathsf{R}{\hbox{-}}\mathsf{Mod}}} \\
&= g(m)(r\cdot 1) && \text{by observation earlier} \\ 
&= g(m)(r)
.\]
:::

::: {.remark}
The \( ? \) functor in the lemma will be the forgetful functor applied to \( M \), yielding an adjoint pair.
:::

# Monday, February 08

## Transporting Injectives

::: {.remark}
Last time: we had a lemma that for any \( M\in {\mathsf{Mod}{\hbox{-}}R} \) and \( A\in {\mathsf{Ab}} \) there is an isomorphism
\[
{\operatorname{Hom}}_{{\mathsf{Ab}}}( F(M), A) \cong {\operatorname{Hom}}_{{\mathsf{Mod}{\hbox{-}}R}}(M, {\operatorname{Hom}}_{\mathsf{Ab}}(R, A) )
,\]
where \( F: {\mathsf{Mod}{\hbox{-}}R}\to {\mathsf{Ab}} \) is the forgetful functor.
:::

::: {.definition title="Adjoin"}
A pair of functors \( L: \mathcal{A} \to \mathcal{B} \) and \( R: \mathcal{B} \to \mathcal{A} \) are **adjoint** is there are natural bijections
\[
\tau_{AB}: {\operatorname{Hom}}_B(L(A), B) \xrightarrow{\sim} {\operatorname{Hom}}_A(A, R(B) ) && \forall A\in A, B\in B
,\]
where *natural* means that for all \( A \xrightarrow{f} A' \) and \( B \xrightarrow{g} B' \) there is a diagram

```{=tex}
\begin{tikzcd}
    {{\operatorname{Hom}}_B(LA', B)} && {{\operatorname{Hom}}_B(LA, B)} && {{\operatorname{Hom}}_B(LA, B')} \\
    \\
    {{\operatorname{Hom}}_A(A', RB)} && {{\operatorname{Hom}}_A(A, RB)} && {{\operatorname{Hom}}_A(A, RB')}
    \arrow["\tau", from=1-3, to=3-3]
    \arrow["\tau", from=1-1, to=3-1]
    \arrow["{(Lf)^*}"{description}, from=1-1, to=1-3]
    \arrow["{f^*}"{description}, from=3-1, to=3-3]
    \arrow["{g_*}"{description}, from=1-3, to=1-5]
    \arrow["{(Rg)_*}"{description}, from=3-3, to=3-5]
    \arrow["\tau"{description}, from=1-5, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJcXEhvbV9CKExBJywgQikiXSxbMCwyLCJcXEhvbV9BKEEnLCBSQikiXSxbMiwwLCJcXEhvbV9CKExBLCBCKSJdLFsyLDIsIlxcSG9tX0EoQSwgUkIpIl0sWzQsMCwiXFxIb21fQihMQSwgQicpIl0sWzQsMiwiXFxIb21fQShBLCBSQicpIl0sWzIsMywiXFx0YXUiXSxbMCwxLCJcXHRhdSJdLFswLDIsIihMZileKiIsMV0sWzEsMywiZl4qIiwxXSxbMiw0LCJnXyoiLDFdLFszLDUsIihSZylfKiIsMV0sWzQsNSwiXFx0YXUiLDFdXQ==)

In this case we say \( L \) is **left adjoint** to \( R \) and \( R \) is **right adjoint** to \( L \).
:::

::: {.remark}
The lemma thus says that \( {\operatorname{Hom}}_{{\mathsf{Ab}}}(R, {\,\cdot\,}): {\mathsf{Ab}}\to {\mathsf{Mod}{\hbox{-}}R} \) (using that \( R\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) is a left \( R{\hbox{-}} \)module) is right adjoint to the forgetful functor \( {\mathsf{Mod}{\hbox{-}}R}\to\ Ab \).
:::

::: {.remark}
Recall that \( F \) is **additive** if \( {\operatorname{Hom}}_{\mathcal{B}}(B', B) \to {\operatorname{Hom}}_{\mathcal{A}}(FB', FB) \) is a morphism of abelian groups for all \( B, B' \in \mathcal{B} \).
:::

::: {.proposition title="?"}
If \( R: \mathcal{B} \to \mathcal{A} \) is an additive functor and right adjoint to an exact functor \( L: \mathcal{A} \to \mathcal{B} \), then \( I\in \mathcal{B} \) injective implies \( R(I)\in \mathcal{A} \) is injective. Dually, if \( \mathcal{L}:A\to B \) is additive and left adjoint to an exact functor \( R: \mathcal{B} \to \mathcal{A} \), then \( P\in \mathcal{A} \) projective implies \( L(P) \in \mathcal{B} \) is projective.
:::

::: {.corollary title="?"}
If \( I\in {\mathsf{Ab}} \) is injective, then \( {\operatorname{Hom}}_{{\mathsf{Ab}}}(R, I) \in {\mathsf{Mod}{\hbox{-}}R} \) is injective.
:::

::: {.proof title="?"}
This follows from the previous lemma: \( {\operatorname{Hom}}_{{\mathsf{Ab}}}(R, {\,\cdot\,}) \) is right adjoint to the forgetful functor \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}}\to{\mathsf{Ab}} \) which is certainly exact. This follows from the fact that kernels and images don't change, since these are given in terms of set maps and equalities of sets.
:::

::: {.exercise title="2.3.5, 2.3.2"}
Show that \( {\mathsf{Mod}{\hbox{-}}R} \) has enough injectives, using that \( {\mathsf{Ab}} \) has enough injectives.
:::

::: {.proof title="of proposition"}
It suffices to show that the contravariant functor \( {\operatorname{Hom}}_{\mathcal{A}}({\,\cdot\,}, RI) \) is exact. We know it's left exact, so we'll show surjectivity. Suppose we have a SES \( 0 \to A \xrightarrow{f} A' \) which is exact in \( \mathcal{A} \). Then \( 0 \to LA \xrightarrow{Lf} LA' \) is exact, and we can apply hom to obtain the exact sequence
\[
{\operatorname{Hom}}_{\mathcal{B} }(LA', I) \xrightarrow{(LF)^*} {\operatorname{Hom}}_{\mathcal{B}}(LA, I) \to 0  
.\]
Applying \( \tau \) yields

```{=tex}
\begin{tikzcd}
    {{\operatorname{Hom}}_{\mathcal{B}}(LA', I)} && {{\operatorname{Hom}}_{\mathcal{B}}(LA, I)} && 0 \\
    \\
    {{\operatorname{Hom}}_{\mathcal{A}}(A', RI)} && {{\operatorname{Hom}}_{\mathcal{A}}(A, RI)} && 0
    \arrow["{(Lf)^*}", from=1-1, to=1-3]
    \arrow["{f^*}", from=3-1, to=3-3]
    \arrow["{\tau \sim}"{description}, from=1-1, to=3-1]
    \arrow["{\tau \sim}"{description}, from=1-3, to=3-3]
    \arrow[from=1-3, to=1-5]
    \arrow[dashed, from=3-3, to=3-5]
    \arrow[dashed, from=1-5, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJcXEhvbV97XFxtYXRoY2Fse0J9fShMQScsIEkpIl0sWzIsMCwiXFxIb21fe1xcbWF0aGNhbHtCfX0oTEEsIEkpIl0sWzQsMCwiMCJdLFswLDIsIlxcSG9tX3tcXG1hdGhjYWx7QX19KEEnLCBSSSkiXSxbMiwyLCJcXEhvbV97XFxtYXRoY2Fse0F9fShBLCBSSSkiXSxbNCwyLCIwIl0sWzAsMSwiKExmKV4qIl0sWzMsNCwiZl4qIl0sWzAsMywiXFx0YXUgXFxzaW0iLDFdLFsxLDQsIlxcdGF1IFxcc2ltIiwxXSxbMSwyXSxbNCw1LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiw1LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=)

-   The top sequence is exact since \( I \) is injective in \( \mathcal{B} \)
-   Therefore the bottom map is onto (diagram chase)
:::

## 2.4: Left Derived Functors

::: {.remark}
Goal: define left derived functors of a right exact functor \( F \), with applications the bifunctor \( {\,\cdot\,}\otimes_R {\,\cdot\,} \), which is right exact and covariant in each variable. We're ultimately interested in Hom functors and Ext, but this is slightly more technical since it's covariant in one slot and contravariant in the other, so focusing on this functor makes the theory slightly easier to develop. This can be fixed by switching \( \mathcal{C} \) with \( \mathcal{C}^{\operatorname{op}} \) once in a while. Everything for left derived functors will have a dual for right derived functors.
:::

::: {.remark}
Let \( \mathcal{A}, \mathcal{B} \) be abelian categories where \( \mathcal{A} \) has enough projectives and \( F: \mathcal{A} \to \mathcal{B} \) is a right exact functor (which implicitly assumes \( F \) is additive). We want to define \( L_i F: \mathcal{A} \to \mathcal{B} \) for \( i\geq 0 \).
:::

::: {.definition title="Left Derived Functors"}
For \( A \in \mathcal{A} \), fix once and for all a projective resolution \( P \xrightarrow{\varepsilon} A \), where \( P_{<0} = 0 \). Then define \( FP = (\cdots \to F(P_1) \xrightarrow{Fd_1 } F(P_0) \to 0 \), noting that \( A \) no longer appears in this complex. We can write \( H_0(FP) = FP_0 / (Fd_1)(FP_1) \), and define
\[
(L_i F)(A) \coloneqq H_i(F P)
.\]
:::

::: {.remark}
Note that \( P_2 \xrightarrow{d_2} P_1 \xrightarrow{d_1} P_0 \xrightarrow{\varepsilon} A\to 0 \) is exact, and since \( F \) is right exact, it can be shown that the following is a SES: \( FP_1 \xrightarrow{Fd_1} FP_0 \xrightarrow{F \varepsilon} FA \to 0 \). We can use this to compute the original homology, despite it not having any homology itself! From this, we can extra \( L_0(A) \coloneqq FP_0 / (Fd_1)(FP_1) = FP_0 / \ker F(\varepsilon) \) using exactness at \( FP_0 \), and by the 1st isomorphism theorem this is isomorphic to the image \( FA \) using surjectivity. So \( L_0 F \cong F \).
:::

::: {.theorem title="?"}
\( L_i F: \mathcal{A} \to \mathcal{B} \) are additive functors.
:::

::: {.proof title="?"}
First, \( \one_P: P\to P \) lifts \( \one_A: A\to A \) since it yields a commuting ladder, and \( F(\one) = \one \), so \( (L_i f)(\one) = \one \). Then in the following diagram, the outer rectangle commutes since the inner squares do:

```{=tex}
\begin{tikzcd}
    P && A \\
    \\
    {P'} && {A'} \\
    \\
    {P''} && {A''}
    \arrow["f", from=1-3, to=3-3]
    \arrow["g", from=3-3, to=5-3]
    \arrow["{\tilde f}", from=1-1, to=3-1]
    \arrow["{\tilde g}", from=3-1, to=5-1]
    \arrow[from=5-1, to=5-3]
    \arrow[from=3-1, to=3-3]
    \arrow[from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMiwwLCJBIl0sWzIsMiwiQSciXSxbMiw0LCJBJyciXSxbMCwwLCJQIl0sWzAsMiwiUCciXSxbMCw0LCJQJyciXSxbMCwxLCJmIl0sWzEsMiwiZyJdLFszLDQsIlxcdGlsZGUgZiJdLFs0LDUsIlxcdGlsZGUgZyJdLFs1LDJdLFs0LDFdLFszLDBdXQ==)

So \( \tilde g \circ \tilde f \) lifts \( g \circ f \) and therefore \( g_* f_* = (gf)_* \). Thus \( L_i F \) is a functor. That they are additive comes from checking the following diagram:

```{=tex}
\begin{tikzcd}
    P && A \\
    \\
    Q && B
    \arrow["{\tilde f}", shift left=1, from=1-1, to=3-1]
    \arrow["{\tilde g}"', shift right=2, from=1-1, to=3-1]
    \arrow["f", shift left=2, from=1-3, to=3-3]
    \arrow["g"', shift right=1, from=1-3, to=3-3]
    \arrow[from=1-1, to=1-3]
    \arrow[from=3-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJQIl0sWzIsMCwiQSJdLFswLDIsIlEiXSxbMiwyLCJCIl0sWzAsMiwiXFx0aWxkZSBmIiwwLHsib2Zmc2V0IjotMX1dLFswLDIsIlxcdGlsZGUgZyIsMix7Im9mZnNldCI6Mn1dLFsxLDMsImYiLDAseyJvZmZzZXQiOi0yfV0sWzEsMywiZyIsMix7Im9mZnNldCI6MX1dLFswLDFdLFsyLDNdXQ==)

Then \( \tilde f + \tilde g \) lifts \( f+g \), and \( H_i \) is an additive functor: \( (F \tilde f + F \tilde g)_* = (F\tilde f)_* + (F\tilde g)_* \). Thus \( L_i F \) is additive.
:::

# Wednesday, February 10

::: {.remark}
Setup: Let \( \mathcal{A}, \mathcal{B} \) and \( F: {\mathcal{A}}\to {\mathcal{B}} \) where \( {\mathcal{A}} \) has enough projectives. Let \( P \xrightarrow{\varepsilon} A\in {\mathcal{A}} \) be a projective resolution, we want to define the left derived functors \( L_i F(A) \coloneqq H_i(FP) \).
:::

::: {.lemma title="?"}
\( L_i F(A) \) is well-defined up to natural isomorphism, i.e. if \( Q\to A \) is a projective resolution, then there are canonical isomorphism \( H_i (FP) \xrightarrow{\sim} H_i(FQ) \). In particular, changing projective resolutions yields a new functor \( \widehat{L}_iF \) which are naturally isomorphic to \( F \).
:::

::: {.proof title="?"}
We can set up the following situation

```{=tex}
\begin{tikzcd}
    P && A && 0 \\
    \\
    Q && A && 0
    \arrow["{\one_A}", from=1-3, to=3-3]
    \arrow["{\exists f}", from=1-1, to=3-1]
    \arrow["{\varepsilon_P}"{description}, from=1-1, to=1-3]
    \arrow["{\varepsilon_Q}"{description}, from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[from=1-3, to=1-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJQIl0sWzIsMCwiQSJdLFs0LDAsIjAiXSxbMiwyLCJBIl0sWzAsMiwiUSJdLFs0LDIsIjAiXSxbMSwzLCJcXG9uZV9BIl0sWzAsNCwiXFxleGlzdHMgZiJdLFswLDEsIlxcZXBzX1AiLDFdLFs0LDMsIlxcZXBzX1EiLDFdLFszLDVdLFsxLDJdXQ==)

Here \( f \) exists by the comparison theorem, and thus there are induced maps \( f_*: H_*(FP) \to H_*(FQ) \) by abuse of notation -- really, this is more like \( (f_*)_i = H_u (Ff) \). We're using that both \( F \) and \( H_i \) are both additive functors. Note that the lift \( f \) of \( \one_A \) is not unique, but any other lift is chain homotopic to \( f \), i.e. \( f-f' = ds + sd \) where \( s: P \to Q[1] \). So they induce the same maps on homology, i.e. \( f_*' = f_* \). Thus the isomorphism is canonical in the sense that it doesn't depend on the choice of lift.

Similarly there exists a \( g:Q\to P \) lifting \( \one_A \), and so \( gf \) and \( \one_P \) are both chain maps lifting \( \one_A \), since it's the composition of two maps lifting \( \one_A \). So they induce the same map on homology by the same reasoning above. We can write
\[
g_* f_* = (gf)_* = (\one_{FP})_* = \one_{H_*(FP)}
,\]
and similarly \( f_* g_* = \one_{H_*(FQ)} \), making \( f_* \) an isomorphism.
:::

::: {.corollary title="?"}
If \( A \) is projective, then \( L^{>0} FA = 0 \).
:::

::: {.proof title="?"}
Use the projective resolution \( \cdots \to 0 \to A \xrightarrow{\one_A} A \to 0 \to \cdots \). In this case \( H_{>0}(FP) = 0 \).
:::

::: {.remark}
This is an interesting result, since it doesn't depend on the functor! Short aside on \( F{\hbox{-}} \)acyclic objects -- we don't need something as strong as a *projective* resolution.
:::

::: {.definition title="$F\\dash$acyclic objects"}
An object \( Q\in {\mathcal{A}} \) is **\( F{\hbox{-}} \)acyclic** if \( L_{>0}FQ = 0 \).
:::

::: {.remark}
Note that projective implies \( F{\hbox{-}} \)acyclic for every \( F \), but not conversely. For example, flat \( R{\hbox{-}} \)modules are acyclic for \( {\,\cdot\,}\otimes_R {\,\cdot\,} \). In general, flat does not imply projective, although projective implies flat.
:::

::: {.definition title="$F\\dash$acyclic resolutions"}
An **\( F{\hbox{-}} \)acyclic resolution** of \( A \) is a left resolution \( Q\to A \) for which every \( Q_i \) is \( F{\hbox{-}} \)acyclic.
:::

::: {.remark}
One can compute \( L_iF(A) \cong H_i(FQ) \) for any \( F{\hbox{-}} \)acyclic resolution. For the \( L_i F \) to be functors, we need to define them on maps!
:::

::: {.lemma title="?"}
If \( f: A\to A' \), there is a natural associated morphism \( L_i F(f): L_iF(A) \to L_iF(A') \).
:::

::: {.proof title="?"}
Again use the comparison theorem:

```{=tex}
\begin{tikzcd}
    P && A && 0 \\
    \\
    {P'} && {A'} && 0
    \arrow["f", from=1-3, to=3-3]
    \arrow[from=3-1, to=3-3]
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=3-3, to=3-5]
    \arrow["{\exists \tilde f}"', from=1-1, to=3-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJQIl0sWzIsMCwiQSJdLFsyLDIsIkEnIl0sWzAsMiwiUCciXSxbNCwwLCIwIl0sWzQsMiwiMCJdLFsxLDIsImYiXSxbMywyXSxbMCwxXSxbMSw0XSxbMiw1XSxbMCwzLCJcXGV4aXN0cyBcXHRpbGRlIGYiLDJdXQ==)

Then there is an induced map \( \tilde f_*: H_*(FP) \to H_*(FP') \), noting that one first needs to apply \( F \) to the above diagram. As before, this is independent of the lift using the same argument as before, using the additivity of \( F \) and \( H_* \) and the chain homotopy is pushed through \( F \) appropriately. So set \( (L_i F)(f) \coloneqq(\tilde f_*)_i \).
:::

We can now pick up the theorem from the end of last time:

::: {.theorem title="?"}
\( L_iF: \mathcal{A}\to \mathcal{B} \) are additive functors.
:::

::: {.proof title="?"}
Done last time!
:::

::: {.theorem title="?"}
Using the same assumptions as before, given a SES
\[
0 \to A' \to A \to A'' \to 0
\]
there are natural connecting maps \( \delta \) yielding a LES

```{=tex}
\begin{tikzcd}
    &&&& \cdots \\
    \\
    {L_iF(A')} && {L_iF(A)} && {L_iF(A'')} \\
    \\
    {L_{i-1}F(A')} && \cdots && \cdots \\
    \\
    {FA'} && FA && {FA''} && 0
    \arrow["{\delta_i}"', from=3-5, to=5-1, out=0, in=180]
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow["{\delta_{i+1}}"', from=1-5, to=3-1, out=0, in=180]
    \arrow[dashed, from=5-1, to=5-3]
    \arrow[from=7-1, to=7-3]
    \arrow[from=7-3, to=7-5]
    \arrow[from=7-5, to=7-7]
    \arrow[dashed, from=5-3, to=5-5]
    \arrow["{\delta_1}"', from=5-5, to=7-1, out=0, in=180]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTEsWzAsMiwiTF9pRihBJykiXSxbMiwyLCJMX2lGKEEpIl0sWzQsMiwiTF9pRihBJycpIl0sWzAsNCwiTF97aS0xfUYoQScpIl0sWzQsMCwiXFxjZG90cyJdLFsyLDQsIlxcY2RvdHMiXSxbMCw2LCJGQSciXSxbMiw2LCJGQSJdLFs0LDYsIkZBJyciXSxbNiw2LCIwIl0sWzQsNCwiXFxjZG90cyJdLFsyLDMsIlxcZGVsdGFfaSIsMl0sWzAsMV0sWzEsMl0sWzQsMCwiXFxkZWx0YV97aSsxfSIsMl0sWzMsNSwiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsN10sWzcsOF0sWzgsOV0sWzUsMTAsIiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxMCw2LCJcXGRlbHRhXzEiLDJdXQ==)
:::

::: {.proof title="?"}
Using the Horseshoe lemma, we can obtain the following map:

```{=tex}
\begin{tikzcd}
    &&& 0 \\
    \\
    {P'} &&& {A'} \\
    \\
    P &&& A && 0 \\
    \\
    {P''} &&& {A''} \\
    \\
    &&& 0
    \arrow["\exists", dashed, from=5-1, to=5-4]
    \arrow[from=7-1, to=7-4]
    \arrow[from=7-4, to=9-4]
    \arrow[from=5-4, to=7-4]
    \arrow[from=5-4, to=5-6]
    \arrow[from=3-4, to=5-4]
    \arrow[from=3-1, to=3-4]
    \arrow[from=3-1, to=5-1]
    \arrow[from=5-1, to=7-1]
    \arrow[from=1-4, to=3-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOSxbMCwyLCJQJyJdLFswLDQsIlAiXSxbMCw2LCJQJyciXSxbMyw2LCJBJyciXSxbMyw0LCJBIl0sWzMsMiwiQSciXSxbMywwLCIwIl0sWzMsOCwiMCJdLFs1LDQsIjAiXSxbMSw0LCJcXGV4aXN0cyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDNdLFszLDddLFs0LDNdLFs0LDhdLFs1LDRdLFswLDVdLFswLDFdLFsxLDJdLFs2LDVdXQ==)

So we get a SES of complexes over \( \mathcal{A} \), \( 0 \to P' \to P \to P'' \to 0 \). One can use that \( P = P' \oplus P'' \), or alternatively that each \( P_n'' \) is a projective \( R{\hbox{-}} \)module, to see that there are splittings

```{=tex}
\begin{tikzcd}
    0 && {P'} && P && {P''} && 0
    \arrow[from=1-1, to=1-3]
    \arrow["f", from=1-3, to=1-5]
    \arrow["g", from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow["{g'}"{description}, curve={height=18pt}, dashed, from=1-7, to=1-5]
    \arrow["{f'}"{description}, curve={height=18pt}, dashed, from=1-5, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCIwIl0sWzIsMCwiUCciXSxbNCwwLCJQIl0sWzYsMCwiUCcnIl0sWzgsMCwiMCJdLFswLDFdLFsxLDIsImYiXSxbMiwzLCJnIl0sWzMsNF0sWzMsMiwiZyciLDEseyJjdXJ2ZSI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsMSwiZiciLDEseyJjdXJ2ZSI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d)

Note that this can be phrased in terms of \( g'g = \one, f'f = \one \), or \( g'g + f'f = \one \). Since \( F \) is additive, it preserves all of these relations, particularly the ones that define being split exact. So additive functors preserve split exact sequences. Thus \( 0 \to FP' \to FP \to FP'' \to 0 \) is still split exact, even though \( F \) is only right exact. Now take homology and use the LES in homology to get the desired LES above, and \( \delta \) is the connecting morphism that comes from the snake lemma.

Proving naturality: we start with the following setup.

```{=tex}
\begin{tikzcd}
    0 && {A'} && A && {A''} && 0 \\
    \\
    0 && {B'} && B && {B''} && 0
    \arrow["{g'}", from=1-3, to=3-3]
    \arrow["g", from=1-5, to=3-5]
    \arrow["{g''}", from=1-7, to=3-7]
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow[from=3-7, to=3-9]
\end{tikzcd}
```
Naturality of \( \delta \) will be showing that the following square commutes:

```{=tex}
\begin{tikzcd}
L_{i+1}F(A'') 
  \ar[r, "\delta"]
  \ar[d]
&
L_iF(A') 
  \ar[d]
\\
L_{i+1}F(B'') 
  \ar[r, "\delta"]
& 
L_iF(B') 
\end{tikzcd}
```
We now apply the horseshoe lemma several times:

```{=tex}
\begin{tikzcd}
    0 && {P'} && \textcolor{rgb,255:red,214;green,92;blue,92}{P} && {P''} && 0 \\
    \\
    \\
    & 0 && {A'} && A && {A''} && 0 \\
    \\
    & 0 && {B'} && B && {B''} && 0 \\
    \\
    \\
    0 && {Q'} && \textcolor{rgb,255:red,214;green,92;blue,92}{Q} && {Q''} && 0
    \arrow["{g'}", from=4-4, to=6-4]
    \arrow["g", from=4-6, to=6-6]
    \arrow["{g''}", from=4-8, to=6-8]
    \arrow[from=4-2, to=4-4]
    \arrow[from=4-4, to=4-6]
    \arrow[from=4-6, to=4-8]
    \arrow[from=4-8, to=4-10]
    \arrow[from=6-2, to=6-4]
    \arrow[from=6-4, to=6-6]
    \arrow[from=6-6, to=6-8]
    \arrow[from=6-8, to=6-10]
    \arrow[from=1-7, to=4-8]
    \arrow[from=1-3, to=4-4]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, dashed, from=1-5, to=4-6]
    \arrow[from=9-3, to=6-4]
    \arrow[from=9-7, to=6-8]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, dashed, from=9-5, to=6-6]
    \arrow[from=9-3, to=9-5]
    \arrow[from=9-5, to=9-7]
    \arrow["{\exists G'}"{description}, curve={height=-6pt}, dotted, from=1-3, to=9-3]
    \arrow["{\exists G''}"{description}, curve={height=-12pt}, dotted, from=1-7, to=9-7]
    \arrow["{\exists G}"{description}, curve={height=6pt}, dashed, from=1-5, to=9-5]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
\end{tikzcd}
```
It turns out (details omitted see Weibel p. 46) that \( G \) can be chosen such that we get a commutative diagram of chain complexes with exact rows:

```{=tex}
\begin{tikzcd}
    0 && {P'} && P && {P''} && 0 \\
    \\
    0 && {Q'} && Q && {Q''} && 0
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow[from=3-7, to=3-9]
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow["{G'}"{description}, from=1-3, to=3-3]
    \arrow["G"{description}, from=1-5, to=3-5]
    \arrow["{G''}"{description}, from=1-7, to=3-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTAsWzAsMCwiMCJdLFsyLDAsIlAnIl0sWzQsMCwiUCJdLFs2LDAsIlAnJyJdLFsyLDIsIlEnIl0sWzQsMiwiUSJdLFs2LDIsIlEnJyJdLFswLDIsIjAiXSxbOCwwLCIwIl0sWzgsMiwiMCJdLFs3LDRdLFs0LDVdLFs1LDZdLFs2LDldLFswLDFdLFsxLDJdLFsyLDNdLFszLDhdLFsxLDQsIkcnIiwxXSxbMiw1LCJHIiwxXSxbMyw2LCJHJyciLDFdXQ==)

We proved naturality of the connecting maps \( {{\partial}} \) in the corresponding LES in homology in general (see prop. 1.3.4). This translates to naturality of the maps \( \delta_i: L_{i} (A'') \to L_{i-1}(A') \).
:::

::: {.remark}
See exercise 2.4.3 for "dimension shifting". This is a useful tool for inductive arguments.
:::

# Friday, February 12

::: {.remark}
Last time: right-exact functors have left-derived functors where a SES induces a LES. The functors are *natural* with respect to the connecting morphisms in the sense that certain squares commute. Weibel refers to \( \left\{{ L_i F }\right\}_{i\geq 0} \) as a **homological \( \delta{\hbox{-}} \)functor**, i.e. anything that takes SESs to LESs which are natural with respect to connecting morphism.
:::

## Aside: Natural Transformations

::: {.definition title="Natural Transformation"}
Given functors \( F, G, \mathcal{C} \to \mathcal{D} \), a **natural transformation** \( \eta: F \implies G \) is the following data:

-   For all \( C\in \mathcal{C} \) there is a map \( F(C) \xrightarrow{\eta_C} G(C) \in \operatorname{Mor}(\mathcal{D}) \), sometimes referred to as \( \eta(C) \).

-   If \( C \xrightarrow{f} C' \in \operatorname{Mor}(\mathcal{C}) \), there is a diagram

```{=tex}
\begin{tikzcd}
    FC && {FC'} \\
    \\
    GC && {GC'}
    \arrow["Gf", from=3-1, to=3-3]
    \arrow["Ff", from=1-1, to=1-3]
    \arrow["{\eta_C}"{description}, from=1-1, to=3-1]
    \arrow["{\eta_{C'}}"{description}, from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJGQyJdLFsyLDAsIkZDJyJdLFswLDIsIkdDIl0sWzIsMiwiR0MnIl0sWzIsMywiR2YiXSxbMCwxLCJGZiJdLFswLDIsIlxcZXRhX0MiLDFdLFsxLDMsIlxcZXRhX3tDJ30iLDFdXQ==)

-   \( \eta \) is a **natural isomorphism** if all of the \( \eta_C \) are isomorphisms, and we write \( F \cong C \).
:::

::: {.definition title="Equivalence of Categories"}
A functor \( F: \mathcal{C} \to \mathcal{D} \) is an **equivalence of categories** if and only if there exists a \( G: \mathcal{D} \to \mathcal{C} \) such that \( GF \cong \one_{\mathcal{C}} \) and \( FG \cong \one_{\mathcal{D}} \).
:::

::: {.example title="?"}
A category \( \mathcal{C} \) is **small** if \( {\operatorname{Ob}}(\mathcal{C}) \) is a set, then take \( \mathcal{C} \coloneqq\mathsf{Cat} \) whose objects are categories and morphisms are functors. Note that in all categories, all collections of morphisms should be sets, and the small condition guarantees it. In this case, natural transformations \( \eta: F\to G \) is an additional structure yielding morphisms of morphisms. These are called **2-morphisms**, and in this entire structure is a **2-category**, and our previous notion is referred to as a **1-category**.
:::

::: {.theorem title="?"}
Assume \( \mathcal{A}, \mathcal{B} \) are abelian and \( F:\mathcal{A} \to \mathcal{B} \) is a right-exact additive functor where \( \mathcal{A} \) has enough projectives. Then the family \( \left\{{ L_i F }\right\} _{i\geq 0} \) is a *universal \( \delta{\hbox{-}} \)functor* where \( L_0 F \cong F \) is a natural isomorphism.
:::

::: {.remark}
Here *universal* means that if \( \left\{{ T_i }\right\} _{i\geq 0} \) is also a \( \delta{\hbox{-}} \)functor with a natural *transformation* (not necessarily an isomorphism) \( \varphi_0: T_0 \to F \), then there exist unique morphism of \( \delta{\hbox{-}} \)functors \( \left\{{ \varphi_i: T_i \to L_i F }\right\} _{i\geq 0} \), i.e. a family of natural transformations that commute with the respective \( \delta \) maps coming from both the \( T_i \) and the \( L_i F \), which extend \( \varphi_0 \). This will be important later on when we try to show Ext and Tor are functors in either slot.
:::

::: {.proof title="?"}
Assume \( \left\{{ T_i }\right\} _{i\geq 0} \) and \( \varphi_0 \) are given, and assume inductively that \( n>0 \) and we've defined \( \varphi_i: T_i \to F \) for \( 0\leq i< n \) which commute with the \( \delta \) maps. Step 1: given \( A\in \mathcal{A} \), fix a reference exact sequence: pick a projective mapping onto \( A \) and its kernel to obtain
\[
0 \to K \to P \to A \to 0
.\]
Applying the functors \( T_i \) and \( L_i F \) yields

```{=tex}
\begin{tikzcd}
    && \textcolor{rgb,255:red,214;green,92;blue,214}{x} && k && 0 \\
    && {T_nA} && {T_{n-1}K} && {T_{n-1}P} \\
    \\
    \\
    \textcolor{rgb,255:red,214;green,92;blue,214}{L_n FP = 0} && {L_nFA} && {L_{n-1}FK} && {L_{n-1}FP} \\
    && \textcolor{rgb,255:red,214;green,92;blue,214}{\exists ! y \coloneqq\phi_{n-1}(x)} && \ell && 0
    \arrow["{\phi_{n-1}(K)}", from=2-5, to=5-5]
    \arrow["{\phi_{n-1}(P)}", from=2-7, to=5-7]
    \arrow["{\exists \phi_{n-1}(A)}", dashed, from=2-3, to=5-3]
    \arrow["\delta"{description}, from=2-3, to=2-5]
    \arrow[from=2-5, to=2-7]
    \arrow[from=5-1, to=5-3]
    \arrow["\delta"', hook, from=5-3, to=5-5]
    \arrow[from=5-5, to=5-7]
    \arrow[dotted, from=1-3, to=1-5]
    \arrow[dotted, from=1-5, to=1-7]
    \arrow[curve={height=18pt}, dotted, from=1-5, to=6-5]
    \arrow[curve={height=18pt}, dotted, from=1-7, to=6-7]
    \arrow[color={rgb,255:red,214;green,92;blue,214}, dotted, from=6-3, to=6-5]
    \arrow[dotted, from=6-5, to=6-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTMsWzIsMSwiVF9uQSJdLFs0LDEsIlRfe24tMX1LIl0sWzYsMSwiVF97bi0xfVAiXSxbMiw0LCJMX25GQSJdLFs0LDQsIkxfe24tMX1GSyJdLFs2LDQsIkxfe24tMX1GUCJdLFswLDQsIkxfbiBGUCA9IDAiLFszMDAsNjAsNjAsMV1dLFsyLDAsIngiLFszMDAsNjAsNjAsMV1dLFs0LDAsImsiXSxbNCw1LCJcXGVsbCJdLFs2LDAsIjAiXSxbNiw1LCIwIl0sWzIsNSwiXFxleGlzdHMgISB5IFxcZGEgXFxwaGlfe24tMX0oeCkiLFszMDAsNjAsNjAsMV1dLFsxLDQsIlxccGhpX3tuLTF9KEspIl0sWzIsNSwiXFxwaGlfe24tMX0oUCkiXSxbMCwzLCJcXGV4aXN0cyBcXHBoaV97bi0xfShBKSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFswLDEsIlxcZGVsdGEiLDFdLFsxLDJdLFs2LDNdLFszLDQsIlxcZGVsdGEiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFs0LDVdLFs3LDgsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs4LDEwLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOCw5LCIiLDAseyJjdXJ2ZSI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzEwLDExLCIiLDAseyJjdXJ2ZSI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzEyLDksIiIsMix7ImNvbG91ciI6WzMwMCw2MCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs5LDExLCIiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XV0=)

So define \( \varphi_{n}(A)(x) \coloneqq y \), which makes the LHS square commute by construction. Note that \( L_n FP \) vanishes (as do all its higher derived functors) since \( P \) is projective.

::: {.warnings}
The map \( \varphi_n(A) \) could depend on the choice of \( P \)!
:::

We now want to show that \( \varphi_n \) is a natural transformation. Supposing \( f:A' \to A \), we need to show \( \varphi_n \) commutes with \( f \).

```{=tex}
\begin{tikzcd}
    0 & {K'} & {P'} & A & 0 \\
    \\
    0 & K & P & A & 0
    \arrow["f", from=1-4, to=3-4]
    \arrow["{\exists g}", dashed, from=1-3, to=3-3]
    \arrow[from=3-1, to=3-2]
    \arrow[from=3-2, to=3-3]
    \arrow[from=3-3, to=3-4]
    \arrow[from=3-4, to=3-5]
    \arrow[from=1-1, to=1-2]
    \arrow[from=1-2, to=1-3]
    \arrow[from=1-3, to=1-4]
    \arrow[from=1-4, to=1-5]
    \arrow["{\exists h}", dashed, from=1-2, to=3-2]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTAsWzAsMCwiMCJdLFsxLDAsIksnIl0sWzIsMCwiUCciXSxbMywwLCJBIl0sWzMsMiwiQSJdLFsyLDIsIlAiXSxbMSwyLCJLIl0sWzAsMiwiMCJdLFs0LDIsIjAiXSxbNCwwLCIwIl0sWzMsNCwiZiJdLFsyLDUsIlxcZXhpc3RzIGciLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNyw2XSxbNiw1XSxbNSw0XSxbNCw4XSxbMCwxXSxbMSwyXSxbMiwzXSxbMyw5XSxbMSw2LCJcXGV4aXN0cyBoIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d)

Since \( P' \) is projective, we can lift \( f \) to \( P'\to P \), and then define \( h \) to be the restriction of \( g \) to \( K' \to K \).

```{=tex}
\begin{tikzcd}
    {T_n A'} &&&& {T_nA} \\
    & {T_{n-1}K'} && {T_{n-1}K} \\
    \\
    & {L_{n-1}FK'} && {L_{n-1}FK} \\
    {L_n FA'} &&&& {L_nF(A)}
    \arrow["{T_nf}", from=1-1, to=1-5]
    \arrow["{L_nFf}", from=5-1, to=5-5]
    \arrow["{\phi_n(A)}", from=1-5, to=5-5]
    \arrow["{\phi_n(A')}", from=1-1, to=5-1]
    \arrow["{T_{n-1}h}", from=2-2, to=2-4]
    \arrow["{\delta'}"{description}, from=1-1, to=2-2]
    \arrow["\delta"{description}, from=1-5, to=2-4]
    \arrow["{L_{n-1}Fh}", from=4-2, to=4-4]
    \arrow["{\phi_{n-1}}", from=2-2, to=4-2]
    \arrow["{\phi_{n-1}}", from=2-4, to=4-4]
    \arrow["{\delta'}"{description}, from=5-1, to=4-2]
    \arrow["\delta"{description}, from=5-5, to=4-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMCwwLCJUX24gQSciXSxbNCwwLCJUX25BIl0sWzAsNCwiTF9uIEZBJyJdLFs0LDQsIkxfbkYoQSkiXSxbMSwxLCJUX3tuLTF9SyciXSxbMywxLCJUX3tuLTF9SyJdLFsxLDMsIkxfe24tMX1GSyciXSxbMywzLCJMX3tuLTF9RksiXSxbMCwxLCJUX25mIl0sWzIsMywiTF9uRmYiXSxbMSwzLCJcXHBoaV9uKEEpIl0sWzAsMiwiXFxwaGlfbihBJykiXSxbNCw1LCJUX3tuLTF9aCJdLFswLDQsIlxcZGVsdGEnIiwxXSxbMSw1LCJcXGRlbHRhIiwxXSxbNiw3LCJMX3tuLTF9RmgiXSxbNCw2LCJcXHBoaV97bi0xfSJdLFs1LDcsIlxccGhpX3tuLTF9Il0sWzIsNiwiXFxkZWx0YSciLDFdLFszLDcsIlxcZGVsdGEiLDFdXQ==)

Note that all of the quadrilaterals here commute. The middle top and bottom come from naturality of \( T_*, L_*F \) with respect to \( \delta \), the RHS/LHS due to the construction of the \( \varphi_n \), and \( \phi_{n-1} \) is natural by the inductive hypothesis. Now in order to traverse \( T_nA' \to T_n A \to L_n F (A) \), we can pass the path through one commuting square at a time to make it equal to \( T_nA' \to L_n FA' \to L_n FA \), so the outer square commutes. We have
\[
\delta \varphi_n(A) T_n F = \delta L_n Ff \varphi_n(A')
,\]
and since \( \delta \) is monic (using the previous vanishing due to projectivity), so we can cancel on the left and this yields the definition of naturality.

::: {.corollary title="?"}
The definition of \( \varphi_n(A) \) does not depend on the choice of \( P \). Taking \( A' = A \) in the previous argument with \( f = \one \), suppose \( P'\neq P \). Then \( T_n f = \one = L_n Ff \) and setting \( \varphi_n'(A) \) to be the map coming from \( P' \), we get \( \varphi_n'(A) = \varphi_n(A) \) using the following diagram:

```{=tex}
\begin{tikzcd}
    0 & {K'} & {P'} & A & 0 \\
    \\
    0 & K & P & A & 0
    \arrow["\one", from=1-4, to=3-4]
    \arrow["{\exists g}", dashed, from=1-3, to=3-3]
    \arrow[from=3-1, to=3-2]
    \arrow[from=3-2, to=3-3]
    \arrow[from=3-3, to=3-4]
    \arrow[from=3-4, to=3-5]
    \arrow[from=1-1, to=1-2]
    \arrow[from=1-2, to=1-3]
    \arrow[from=1-3, to=1-4]
    \arrow[from=1-4, to=1-5]
    \arrow["{\exists h}", dashed, from=1-2, to=3-2]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTAsWzAsMCwiMCJdLFsxLDAsIksnIl0sWzIsMCwiUCciXSxbMywwLCJBIl0sWzMsMiwiQSJdLFsyLDIsIlAiXSxbMSwyLCJLIl0sWzAsMiwiMCJdLFs0LDIsIjAiXSxbNCwwLCIwIl0sWzMsNCwiXFxvbmUiXSxbMiw1LCJcXGV4aXN0cyBnIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzcsNl0sWzYsNV0sWzUsNF0sWzQsOF0sWzAsMV0sWzEsMl0sWzIsM10sWzMsOV0sWzEsNiwiXFxleGlzdHMgaCIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)
:::

So the \( \varphi_n(A) \) are uniquely defined. We now want to show that \( \varphi_n \) commutes with the \( \delta_n \) coming from an *arbitrary* SES instead of a fixed reference SES.

```{=tex}
\begin{tikzcd}
    {T_n A} &&&&&&& {T_{n-1}C} \\
    &&& {T_* \text{ a } \delta \text{ functor}} \\
    {T_nA} &&&& {T_{n-1}K} \\
    &&& {\text{reference}} &&& {\phi_{n-1} \text{natural}} \\
    \\
    {L_nFA} &&&& {L_{n-1}FA} \\
    &&& {L_*F \text{ a } \delta \text{ functor}} \\
    {L_n FA} &&&&&&& {L_{n-1}FC}
    \arrow["{\phi_n}", from=3-1, to=6-1]
    \arrow["{\delta_{(2)}}", from=3-1, to=3-5]
    \arrow["{\delta_{(1)}}", from=6-1, to=6-5]
    \arrow["{\phi_{n-1}}"', from=3-5, to=6-5]
    \arrow["{=}", from=1-1, to=3-1]
    \arrow["{=}", from=8-1, to=6-1]
    \arrow["{\delta_{(1)}}"', from=8-1, to=8-8]
    \arrow["{\delta_{(2)}}"', from=1-1, to=1-8]
    \arrow["{\phi_{n-1}}"{description}, from=1-8, to=8-8]
    \arrow["{T_{n-1}h}"{description}, from=3-5, to=1-8]
    \arrow["{L_{n-1}Fh}"{description}, from=6-5, to=8-8]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTIsWzAsMiwiVF9uQSJdLFs0LDIsIlRfe24tMX1LIl0sWzAsNSwiTF9uRkEiXSxbNCw1LCJMX3tuLTF9RkEiXSxbMCwwLCJUX24gQSJdLFs3LDAsIlRfe24tMX1DIl0sWzcsNywiTF97bi0xfUZDIl0sWzAsNywiTF9uIEZBIl0sWzYsMywiXFxwaGlfe24tMX0gXFx0ZXh0e25hdHVyYWx9Il0sWzMsMSwiVF8qIFxcdGV4dHsgYSB9IFxcZGVsdGEgXFx0ZXh0eyBmdW5jdG9yfSJdLFszLDMsIlxcdGV4dHtyZWZlcmVuY2V9Il0sWzMsNiwiTF8qRiBcXHRleHR7IGEgfSBcXGRlbHRhIFxcdGV4dHsgZnVuY3Rvcn0iXSxbMCwyLCJcXHBoaV9uIl0sWzAsMSwiXFxkZWx0YV97KDIpfSJdLFsyLDMsIlxcZGVsdGFfeygxKX0iXSxbMSwzLCJcXHBoaV97bi0xfSIsMl0sWzQsMCwiPSJdLFs3LDIsIj0iXSxbNyw2LCJcXGRlbHRhX3soMSl9IiwyXSxbNCw1LCJcXGRlbHRhX3soMil9IiwyXSxbNSw2LCJcXHBoaV97bi0xfSIsMV0sWzEsNSwiVF97bi0xfWgiLDFdLFszLDYsIkxfe24tMX1GaCIsMV1d)

This diagram commutes for the reasons indicated, and commutativity of the outside square implies that \( \varphi_n \) commutes with the \( \delta \) coming from any SES.

> See section 2.4 in Weibel.
:::

# Monday, February 15

## 2.5: Right-Derived Functors

::: {.remark}
Today: right-derived functors of a left-exact functor. Luckily we can use some opposite category tricks which save us some work of re deriving everything.
:::

::: {.definition title="Right Derived Functors"}
Let \( F: \mathcal{A} \to \mathcal{B} \) be left-exact where \( \mathcal{A} \) has enough injectives. Given \( A \in \mathcal{A} \), fix an injective resolution \( 0 \to A \xrightarrow{\varepsilon} I \) and define
\[
R^i \mathcal{F} \coloneqq H^i( FA ) && i \geq 0 
.\]
:::

::: {.remark}
Then
\[
0 \to FA \xrightarrow{F\varepsilon} FI^0 \xrightarrow{Fd^0} FI^1
\]
is exact, and
\[
R^0 FA = \ker F(d^0) / \left\langle{ 0 }\right\rangle = \operatorname{im}F\varepsilon\cong FA
,\]
and so there is naturally an isomorphism \( R^0 F \cong F \). Observe that \( F \) yields a right-exact functor \( F^{\operatorname{op}}: \mathcal{A}^{\operatorname{op}}\to \mathcal{B}^{\operatorname{op}} \), where we note that \( F^{\operatorname{op}}(f^{\operatorname{op}}) = F(f)^{\operatorname{op}} \). Note that taking the opposite category sends injectives to projectives and so \( \mathcal{A}^{\operatorname{op}} \) has enough projectives. This means that \( L_i F^{\operatorname{op}} \) are defined using the projective resolution \( I \), so we have
\[
R^i F(A) = (L_i F^{\operatorname{op}})^{\operatorname{op}}
.\]
Thus all results about left-derived functors translate to right-derived functors:

-   \( R_i F \) is independent of the choice of injective resolution, up to a natural isomorphism.
-   If \( A \) is injective, then \( R^{i>0} F(A) = 0 \).
-   The collection \( \left\{{ R^i F }\right\} _{i\geq 0 } \) forms a universal cohomological \( \delta{\hbox{-}} \)functor for \( F \).
-   An object \( Q \in \mathcal{A} \) is **\( F{\hbox{-}} \)acyclic** if \( R^{>0}F(Q) = 0 \).
-   \( R^iF \) can be computed using \( F{\hbox{-}} \)acyclic objects instead of injective resolutions.
:::

::: {.definition title="?"}
Fix a right \( R{\hbox{-}} \)module \( M \in {\mathsf{Mod}{\hbox{-}}R} \), then \( F \coloneqq{\operatorname{Hom}}_{{\mathsf{Mod}{\hbox{-}}R}}(M, {\,\cdot\,}): {\mathsf{Mod}{\hbox{-}}R}\to {\mathsf{Ab}} \) is a left-exact functor. Its right-derived functors are **ext functors** and denoted \( \operatorname{Ext}_{{\mathsf{Mod}{\hbox{-}}R}}^i(M, {\,\cdot\,}) \).
:::

::: {.example title="?"}
\[ \operatorname{Ext}_{{\mathsf{Mod}{\hbox{-}}R}}^i(M, A) = (R^i F)(A) = [ R^i {\operatorname{Hom}}_{{\mathsf{Mod}{\hbox{-}}R}}(M, {\,\cdot\,}) ] (A) .\]
:::

::: {.remark}
Exercises 2.5.1, 2.5.2 are important extensions of our existing characterizations of injectives and projectives in \( {\mathsf{Mod}{\hbox{-}}R} \). These upgrade the characterization involving \( {\operatorname{Hom}} \) to one involving \( \operatorname{Ext} \). [^3]
:::

::: {.remark}
Fix \( B\in {\mathsf{Mod}{\hbox{-}}R} \) and consider \( G\coloneqq{\operatorname{Hom}}_{{\mathsf{Mod}{\hbox{-}}R}}({\,\cdot\,}, B): {\mathsf{Mod}{\hbox{-}}R}\to {\mathsf{Ab}} \). Then \( G \) is still left-exact, but is now *contravariant*. We can regard it as a covariant functor left-exact functor \( G: {\mathsf{Mod}{\hbox{-}}R}^{\operatorname{op}}\to {\mathsf{Ab}} \). So we define \( R^i G(A) \) by an injective resolution of \( A \) in \( \mathcal{A}^{\operatorname{op}} \), and this is the same as a projective resolution of \( A \) in \( \mathcal{A} \). So apply \( G \) and take cohomology. It turns out that
\[ 
R^i {\operatorname{Hom}}_{{\mathsf{Mod}{\hbox{-}}R}}({\,\cdot\,}, B) \cong R^i {\operatorname{Hom}}_{{\mathsf{Mod}{\hbox{-}}R}}(A, {\,\cdot\,})(B) \coloneqq\operatorname{Ext}^i_{{\mathsf{R}{\hbox{-}}\mathsf{Mod}}}(A, B) 
,\]
so we can use the same notation \( \operatorname{Ext}^i_R({\,\cdot\,}, B) \) for both cases.
:::

## 2.6: Adjoint Functors and Left/Right Exactness

::: {.slogan}
\( {\,\cdot\,} \) adjoints are \( {\,\cdot\,}^{\operatorname{op}} \) exact, since \( {\,\cdot\,} \) adjoints have \( {\,\cdot\,}{\hbox{-}} \)derived functors.
:::

::: {.theorem title="?"}
Let
\[
\adjunction{L}{R}{ \mathcal{A} } { \mathcal{B} }
\]
be an adjoint pair of functors. Then there exists a natural isomorphism
\[
\tau_{AB}: {\operatorname{Hom}}_{\mathcal{B}}(LA, B) \xrightarrow{\sim} {\operatorname{Hom}}_{\mathcal{A}}(A, RB) \quad  \forall A\in \mathcal{A}, B\in \mathcal{B}
.\]
Moreover,

-   \( L \) is right exact, and
-   \( B \) is left exact.
:::

::: {.proposition title="1.6: Yoneda"}
A sequence
\[
A \xrightarrow{\alpha} B \xrightarrow{\beta} C
\]
is exact in \( \mathcal{A} \) if and only if for all \( M \in {\operatorname{Ob}}( \mathcal{A} ) \), the sequence
\[
{\operatorname{Hom}}_{\mathcal{A}} (M, A)
\xrightarrow{\alpha^* \coloneqq\alpha\circ {\,\cdot\,}} 
{\operatorname{Hom}}_{\mathcal{A}} (M, B)
\xrightarrow{\beta^* \coloneqq\beta \circ {\,\cdot\,}} 
{\operatorname{Hom}}_{\mathcal{A}} (M, C)
\]
is exact.
:::

::: {.proof title="?"}
```{=tex}
\envlist
```
1.  Take \( M=A \), then \( 0 = \beta^* \alpha^*(\one_A) = \beta \alpha \one = \beta \alpha \). Thus \( \operatorname{im}\alpha \subseteq \ker \beta \).

2.  Take \( M = \ker \beta \) and consider the inclusion \( \iota: \ker M \hookrightarrow B \), then \( \beta^*(\iota) = \beta \iota = 0 \) and thus \( \iota \in \ker \beta^* = \operatorname{im}\alpha^* \). So there exists \( \sigma\in {\operatorname{Hom}}( \ker \beta, A) \) such that \( \iota = \alpha^* (\sigma) \coloneqq\alpha \sigma \), and thus \( \ker \beta = \operatorname{im}\iota \subset \operatorname{im}\alpha \).

Thus \( \ker \beta= \operatorname{im}\alpha \), yielding exactness of the bottom sequence.
:::

::: {.proof title="of theorem"}
We'll first prove that \( R \) is left-exact. Take a SES in \( B \), say
\[
0 \to B' \to B \to B'' \to 0
.\]
Apply the left-exact covariant functor \( {\operatorname{Hom}}_{\mathcal{B}}(LA, {\,\cdot\,}) \) followed by \( \tau \):

```{=tex}
\begin{tikzcd}
    0 && { {\operatorname{Hom}}_{\mathcal{B}} (LA, B') } && { {\operatorname{Hom}}_{\mathcal{B}} (LA, B) } && { {\operatorname{Hom}}_{\mathcal{B}} (LA, B'')} \\
    \\
    0 && {{\operatorname{Hom}}_{\mathcal{B}} (A, RB')} && {{\operatorname{Hom}}_{\mathcal{B} }(A, RB)} && {{\operatorname{Hom}}_{\mathcal{B}} (A, RB'')}
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow["{\tau_{AB}}"{description}, squiggly, from=1-3, to=3-3]
    \arrow["{\tau_{AB}}"{description}, squiggly, from=1-5, to=3-5]
    \arrow["{\tau_{AB}}"{description}, squiggly, from=1-7, to=3-7]
    \arrow[dashed, from=3-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMCwwLCIwIl0sWzIsMCwiXFxIb21fe1xcY2F0e0J9KShMQSwgQicpIl0sWzQsMCwiXFxIb21fe1xcY2F0e0J9KShMQSwgQikiXSxbNiwwLCJcXEhvbV97XFxjYXR7Qn0pKExBLCBCJycpIl0sWzIsMiwiXFxIb21fe1xcY2F0e0J9KShBLCBSQicpIl0sWzQsMiwiXFxIb21fe1xcY2F0e0J9KShBLCBSQikiXSxbNiwyLCJcXEhvbV97XFxjYXR7Qn0pKEEsIFJCJycpIl0sWzAsMiwiMCJdLFswLDFdLFsxLDJdLFsyLDNdLFs0LDVdLFs1LDZdLFsxLDQsIlxcdGF1X3tBQn0iLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJzcXVpZ2dseSJ9fX1dLFsyLDUsIlxcdGF1X3tBQn0iLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJzcXVpZ2dseSJ9fX1dLFszLDYsIlxcdGF1X3tBQn0iLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJzcXVpZ2dseSJ9fX1dLFs3LDQsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)

The bottom sequence is exact by naturality of \( \tau \). Now applying the Yoneda lemma, we obtain an exact sequence
\[
0 \to 
{\operatorname{Hom}}_{\mathcal{A}}(A, RB')
\to
{\operatorname{Hom}}_{\mathcal{A}}(A, RB)
\to
{\operatorname{Hom}}_{\mathcal{A}}(A, RB'')
.\]

So \( R \) is left exact. Now \( L^{\operatorname{op}}: \mathcal{A} \to \mathcal{B} \) is right adjoint to \( R^{\operatorname{op}} \), so \( L^{\operatorname{op}} \) is left exact and thus \( L \) is right exact.
:::

## Tensor Product Functors and Tor

::: {.remark}
Let

-   \( R, S \in \mathsf{Ring} \),
-   \( B\in ({R}, {S}){\hbox{-}}\mathsf{biMod} \),
-   \( C\in {{S}{\hbox{-}}\mathsf{Mod}} \).

Then \( {\operatorname{Hom}}_{S}(B, C)\in {\mathsf{Mod}{\hbox{-}}R} \) in a natural way: given \( f:B\to C \), define \( (f\cdot r)(b) = f(rb) \).
:::

::: {.exercise title="?"}
Check that this is a well-defined morphism of right \( S{\hbox{-}} \)modules.
:::

::: {.remark}
We saw this structure earlier with \( S={\mathbb{Z}} \), see p.41.
:::

::: {.proposition title="?"}
Fix \( R,S \) and \( {}_R B_S \) as above. Then for every \( A \in {\mathsf{Mod}{\hbox{-}}R} \) and \( C\in {{{\hbox{-}}}{\hbox{-}}\mathsf{Mod}}S \) there is a natural isomorphism
\[
\tau: {\operatorname{Hom}}_S( A\otimes_R B, C ) &\xrightarrow{\sim} {\operatorname{Hom}}_R(A, {\operatorname{Hom}}_S(B, C) ) \\
f &\mapsto g(a)(b) = f(a\otimes b) \\
f(a\otimes b) = g(a)(b) &\mapsfrom g
.\]

Note that the tensor product is a right \( S{\hbox{-}} \)module, and the hom on the right is a right \( R{\hbox{-}} \)module, so these expressions make sense. Here \( B \) is fixed, so \( A \) and \( C \) are variables and this is a statement about bifunctors
\[
{\,\cdot\,}\otimes_R B: {\mathsf{Mod}{\hbox{-}}R}\to \mathsf{Mod}{\hbox{-}}{S} 
,\]
which is left adjoint to
\[
{\operatorname{Hom}}_S(B, {\,\cdot\,}): \mathsf{Mod}{\hbox{-}}{S} \to {\mathsf{Mod}{\hbox{-}}R}
.\]
So the former is a left adjoint and the latter is a right adjoint, so by the theorem, \( {\,\cdot\,}\otimes_R B \) is right exact.
:::

::: {.remark}
If \( B \) is only a left \( R{\hbox{-}} \)module, we can always take \( S = {\mathbb{Z}} \), which makes this into a functor
\[
{\,\cdot\,}\otimes_R B: {\mathsf{Mod}{\hbox{-}}R}\to {\mathsf{Ab}}
.\]
Since this is a right exact functor from a category with enough injectives, we can define left-derived functors.
:::

::: {.definition title="?"}
Let \( B\in ({R}, {S}){\hbox{-}}\mathsf{biMod} \) and let
\[
T({\,\cdot\,}) \coloneqq{\,\cdot\,}\otimes_R B: {\mathsf{Mod}{\hbox{-}}R}\to \mathsf{Mod}{\hbox{-}}{S}
.\]
Then define \( \operatorname{Tor}_n^R(A, B) \coloneqq L_n T(A) \).
:::

::: {.remark}
Note that these are easier to work with, since they're covariant in both variables.
:::

# Friday, February 19

::: {.remark}
We looked at \( B\in ({R}, {S}){\hbox{-}}\mathsf{biMod} \) and showed \( {\,\cdot\,}\otimes_R B: {{R}{\hbox{-}}\mathsf{Mod}} \to {{S}{\hbox{-}}\mathsf{Mod}} \) is left adjoint to hom, and has left-derived functors \( \operatorname{Tor}_n^R({\,\cdot\,}, B) \coloneqq L_n({\,\cdot\,}\otimes_R B) \).
\[
\adjunction{{\,\cdot\,}\otimes_R B}{ {\operatorname{Hom}}_{{S}}(B, {\,\cdot\,}) }{{{R}{\hbox{-}}\mathsf{Mod}}}{{{S}{\hbox{-}}\mathsf{Mod}}}
.\]

Note that \( \operatorname{Tor}_0^R(A, B) \cong A\otimes_R B \).
:::

::: {.remark}
\( A\otimes_R {\,\cdot\,} \) is also right exact, and it turns out that
\[
L_n(A\otimes_R {\,\cdot\,})(B) \cong L_n({\,\cdot\,}\otimes_R B)(A)
.\]
So unambiguously denote either of this left derived functors as \( \operatorname{Tor}_n(A, B) \).
:::

## Limits and Colimits

::: {.definition title="Functor Category"}
Given categories \( \mathcal{I}, \mathcal{A} \), define a **functor category** \( \mathcal{A}^{\mathcal{I}} \) by

-   \( {\operatorname{Ob}}( \mathcal{A}^{\mathcal{I}} ) \): functors \( A: \mathcal{I} \to \mathcal{A} \).

-   \( \operatorname{Mor}(\mathcal{A} ^{\mathcal{I} }) \): natural transformations \( \eta:A\to B \) between functors.

\( \mathcal{I} \) is thought of as an index category, and we'll write \( A_i \coloneqq A(i) \in \mathcal{A} \) for \( i\in \mathcal{I} \). If \( \alpha:i \to j \) is a morphism in \( I \), then denote \( A(\alpha) \coloneqq\alpha_* \), which is the morphism defined by the following:

```{=tex}
\begin{tikzcd}
    {A_i} &&& {A_j} \\
    \\
    {B_i} &&& {B_j}
    \arrow["{\alpha_*}", from=1-1, to=1-4]
    \arrow["{\alpha_*}", from=3-1, to=3-4]
    \arrow["{\eta_i}"{description}, from=1-1, to=3-1]
    \arrow["{\eta_j}"{description}, from=1-4, to=3-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJBX2kiXSxbMywwLCJBX2oiXSxbMCwyLCJCX2kiXSxbMywyLCJCX2oiXSxbMCwxLCJcXGFscGhhXyoiXSxbMiwzLCJcXGJldGFfKiJdLFswLDIsIlxcZXRhX2kiLDFdLFsxLDMsIlxcZXRhX2oiLDFdXQ==)

Composition is defined by \( A \xrightarrow{\eta} B \xrightarrow{\zeta} C \) is given by \( (\zeta_\eta)_i = \zeta_i \circ \eta_i \). We need the collection of morphisms to be sets, so we'll require \( \mathcal{I} \) to be a *small category* (i.e. the class of objects forms a set).
:::

::: {.example title="Poset Category"}
Take \( (I, \leq) \) a poset (which is reflexive, antisymmetric, transitive, but not every two elements are comparable), define a category by

-   \( {\operatorname{Ob}}(\mathcal{I}) = I \)

-   \( {\left\lvert { {\operatorname{Hom}}_{\mathcal{I}}(i, j) } \right\rvert} \leq 1 \), and \( i\to j \iff i\leq j \)

Note that if \( i\not\leq j \), then \( {\operatorname{Hom}}_{\mathcal{I}}(i, j) = \emptyset \).
:::

::: {.remark}
Both \( \mathcal{A}, \mathcal{A}^{\mathcal{I}} \) are small, so we can consider functors between them.
:::

::: {.definition title="Diagonal Functor"}
The **diagonal functor** is defined as \( \Delta: \mathcal{A} \to \mathcal{A}^{\mathcal{I}} \) where for \( B \in \mathcal{A} \) the functor \( \Delta(B) \) is the constant functor, i.e. \( \Delta(B)_i = B \) for all \( i\in \mathcal{I} \). All morphism are sent to the identity, i.e. \( i \xrightarrow{\alpha} j \xrightarrow{\Delta(B)} B \xrightarrow{\one_B} B \).
:::

```{=tex}
\todo[inline]{Work out how morphisms work here with respect to natural transformations.}
```
::: {.definition title="Colimit"}
The **colimit** of a functor \( A: \mathcal{I} \to \mathcal{A} \) is an object \( C\in \mathcal{A} \) which we'll denote \( \mathop{\mathrm{colim}}\nolimits_{i\in \mathcal{I}} A_i \), along with a natural transformation \( \eta:A\to \Delta(C) \) which is universal among natural transformations of the form \( \theta: A\to \Delta(B) \) for \( B\in \mathcal{A} \). The unique map in the universal property is from \( C\to B \), and we have the following situation:

```{=tex}
\begin{tikzcd}
    {\mathcal{I}} \\
    i && {A_i} && C \\
    \\
    j && {A_j} && C \\
    \\
    && {A_i} \\
    &&&& C && B \\
    && {A_j}
    \arrow["\alpha", from=2-1, to=4-1]
    \arrow["{\alpha_*}", from=2-3, to=4-3]
    \arrow["{\eta_i}"', from=2-3, to=2-5]
    \arrow["{\eta_j}", from=4-3, to=4-5]
    \arrow[equals, from=2-5, to=4-5]
    \arrow["{\eta_i}"', from=6-3, to=7-5]
    \arrow["{\eta_j}", from=8-3, to=7-5]
    \arrow["{\alpha_*}", from=6-3, to=8-3]
    \arrow["{\theta_i}", curve={height=-12pt}, from=6-3, to=7-7]
    \arrow["{\theta_j}", curve={height=12pt}, from=8-3, to=7-7]
    \arrow["{\exists ! \gamma}", dashed, from=7-5, to=7-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTEsWzAsMSwiaSJdLFswLDMsImoiXSxbMiwxLCJBX2kiXSxbMiwzLCJBX2oiXSxbMCwwLCJcXGNhdHtJfSJdLFs0LDEsIkMiXSxbNCwzLCJDIl0sWzIsNSwiQV9pIl0sWzIsNywiQV9qIl0sWzQsNiwiQyJdLFs2LDYsIkIiXSxbMCwxLCJcXGFscGhhIl0sWzIsMywiXFxhbHBoYV8qIl0sWzIsNSwiXFxldGFfaSIsMl0sWzMsNiwiXFxldGFfaiJdLFs1LDYsIj0iLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsOSwiXFxldGFfaSIsMl0sWzgsOSwiXFxldGFfaiJdLFs3LDgsIlxcYWxwaGFfKiJdLFs3LDEwLCJcXHRoZXRhX2kiLDAseyJjdXJ2ZSI6LTJ9XSxbOCwxMCwiXFx0aGV0YV9qIiwwLHsiY3VydmUiOjJ9XSxbOSwxMCwiXFxleGlzdHMgISBcXGdhbW1hIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d)
:::

::: {.example title="?"}
Let \( (I, \leq) \) be a poset and take \( \mathcal{I} \) its poset category. Then there are morphisms \( i\to j \iff i\leq j \), and we have a diagram

```{=tex}
\begin{tikzcd}
    {A_i} \\
    && C && D \\
    {A_j} \\
    {}
    \arrow["{\eta_i}", from=1-1, to=2-3]
    \arrow["{\eta_j}"', from=3-1, to=2-3]
    \arrow["{\theta_j}", curve={height=12pt}, from=3-1, to=2-5]
    \arrow["{\theta_i}"', curve={height=-12pt}, from=1-1, to=2-5]
    \arrow["{\exists ! \gamma}"{description}, dashed, from=2-3, to=2-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCJBX2kiXSxbMCwzXSxbMCwyLCJBX2oiXSxbMiwxLCJDIl0sWzQsMSwiRCJdLFswLDMsIlxcZXRhX2kiXSxbMiwzLCJcXGV0YV9qIiwyXSxbMiw0LCJcXHRoZXRhX2oiLDAseyJjdXJ2ZSI6Mn1dLFswLDQsIlxcdGhldGFfaSIsMix7ImN1cnZlIjotMn1dLFszLDQsIlxcZXhpc3RzICEgXFxnYW1tYSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)

This is the **direct limit**. Note that for a poset of category of subsets, this ends up being the union.
:::

::: {.example title="?"}
Let \( {\operatorname{Ob}}(\mathcal{I}) = \left\{{ 1, 2 }\right\} \), and take two maps, one of which we'll label by "0":

```{=tex}
\begin{tikzcd}
    1 \\
    \\
    2
    \arrow[shift right=5, from=1-1, to=3-1]
    \arrow["0"{description}, shift left=5, from=1-1, to=3-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMixbMCwwLCIxIl0sWzAsMiwiMiJdLFswLDEsIiIsMCx7Im9mZnNldCI6NX1dLFswLDEsIjAiLDEseyJvZmZzZXQiOi01fV1d)

Suppose now that \( \mathcal{A} \) is an abelian category, and suppose we're given a morphism \( A_1 \xrightarrow{f} A_2 \) in \( \mathcal{A} \). Define \( A\in \mathcal{A}^{\mathcal{I}} \), and define a functor

```{=tex}
\begin{tikzcd}
    1 && {A_1} \\
    &&&&&& B \\
    2 && {A_2}
    \arrow[shift right=2, from=1-1, to=3-1]
    \arrow["0", shift left=2, from=1-1, to=3-1]
    \arrow["0", shift left=2, from=1-3, to=3-3]
    \arrow["f"', shift right=2, from=1-3, to=3-3]
    \arrow["{\theta_1}", curve={height=-12pt}, from=1-3, to=2-7]
    \arrow["{\theta_2}", curve={height=12pt}, from=3-3, to=2-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCIxIl0sWzAsMiwiMiJdLFsyLDAsIkFfMSJdLFsyLDIsIkFfMiJdLFs2LDEsIkIiXSxbMCwxLCIiLDAseyJvZmZzZXQiOjJ9XSxbMCwxLCIwIiwwLHsib2Zmc2V0IjotMn1dLFsyLDMsIjAiLDAseyJvZmZzZXQiOi0yfV0sWzIsMywiZiIsMix7Im9mZnNldCI6Mn1dLFsyLDQsIlxcdGhldGFfMSIsMCx7ImN1cnZlIjotMn1dLFszLDQsIlxcdGhldGFfMiIsMCx7ImN1cnZlIjoyfV1d)

By commutativity,

-   \( \theta_2 \circ 0 = \theta_1 \implies \theta_1 = 0 \)

-   \( \theta_2 \circ f = \theta_1 = 0 \).

So suppose there was a colimit \( C \), then it'd fit into this diagram as follows:

```{=tex}
\begin{tikzcd}
    1 && {A_1} \\
    &&&& C && B \\
    2 && {A_2}
    \arrow[shift right=2, from=1-1, to=3-1]
    \arrow["0", shift left=2, from=1-1, to=3-1]
    \arrow["0", shift left=2, from=1-3, to=3-3]
    \arrow["f"', shift right=2, from=1-3, to=3-3]
    \arrow["{\theta_1}", curve={height=-12pt}, from=1-3, to=2-7]
    \arrow["{\theta_2}", curve={height=12pt}, from=3-3, to=2-7]
    \arrow["0", from=1-3, to=2-5]
    \arrow["p", from=3-3, to=2-5]
    \arrow[dashed, from=2-5, to=2-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCIxIl0sWzAsMiwiMiJdLFsyLDAsIkFfMSJdLFsyLDIsIkFfMiJdLFs2LDEsIkIiXSxbNCwxLCJDIl0sWzAsMSwiIiwwLHsib2Zmc2V0IjoyfV0sWzAsMSwiMCIsMCx7Im9mZnNldCI6LTJ9XSxbMiwzLCIwIiwwLHsib2Zmc2V0IjotMn1dLFsyLDMsImYiLDIseyJvZmZzZXQiOjJ9XSxbMiw0LCJcXHRoZXRhXzEiLDAseyJjdXJ2ZSI6LTJ9XSxbMyw0LCJcXHRoZXRhXzIiLDAseyJjdXJ2ZSI6Mn1dLFsyLDUsIjAiXSxbMyw1LCJwIl0sWzUsNCwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d)

Note that \( C \) is precisely the cokernel of \( f \)!
:::

::: {.remark}
Think about this last diagram: what happens when you mod out by larger modules?
:::

::: {.exercise title="Colimits always exist"}
Suppose \( I \) is a discrete category, i.e. \( {\operatorname{Hom}}(i, j) = \emptyset \) unless \( i=j \), in which case \( {\operatorname{Hom}}(i, i) = \left\{{ \one_i }\right\} \). Supposing that \( A: I \to \mathcal{A} \), show that \( \mathop{\mathrm{colim}}\nolimits_{i\in \mathcal{I}} = \coprod_{i} A_i \).
:::

::: {.definition title="?"}
A category \( \mathcal{A} \) is **cocomplete** if every colimit \( \mathop{\mathrm{colim}}\nolimits_{i\in \mathcal{I}} A_i \) exists for every \( A\in \mathcal{A}^{\mathcal{I}} \) and all small categories \( \mathcal{I} \).
:::

::: {.exercise title="Taking colimits defines a functor for cocomplete categories"}
Show that when \( \mathcal{A} \) is cocomplete, \( \mathop{\mathrm{colim}}\nolimits: \mathcal{A}^{\mathcal{I}} \to \mathcal{A} \) defines a functor.
:::

::: {.exercise title="Weibel 2.6.4"}
Show that the functor \( \mathop{\mathrm{colim}}\nolimits \) is left-adjoint to the diagonal functor \( \Delta \), so there is an adjunction
\[
\adjunction{\mathop{\mathrm{colim}}\nolimits}{\Delta}{\mathcal{A}^{\mathcal{I}}  }{\mathcal{A} }
.\]

Thus when \( \mathcal{A} \) is abelian and \( \mathop{\mathrm{colim}}\nolimits \) exists, it is right-exact (since left-adjoints are always right-exact). Note that it's not exact in general.
:::

::: {.proposition title="Cocomplete iff all coproducts exist"}
For any abelian category \( \mathcal{A} \), the following are equivalent:

1.  \( \coprod A_i \) exists in \( \mathcal{A} \) for every set \( \left\{{ A_i }\right\} \) of objects in \( \mathcal{A} \) (*set-indexed coproducts*).

2.  \( \mathcal{A} \) is cocomplete.
:::

::: {.remark}
We'll prove this next time, note that \( 2\implies 1 \) since coproducts are special cases of limits.
:::

# Monday, February 22

## Colimits and Adjoint

::: {.proposition title="?"}
Assume \( \mathcal{A} \) is abelian so we have cokernels for maps. TFAE:

1.  \( \bigoplus A_i \) exists in \( \mathcal{A} \) for every set \( \left\{{A_i}\right\} \) of objects in \( \mathcal{A} \).

2.  \( \mathcal{A} \) is cocomplete, i.e. \( \mathop{\mathrm{colim}}\nolimits_{i\in I}A_i \) exists for every functor \( \mathcal{I} \to \mathcal{A} \) with \( \mathcal{I} \) small.
:::

::: {.proof title="?"}
Note that (1) is a special case of (2), so it suffices to show \( 1\implies 2 \). Given a functor \( A: \mathcal{I} \to \mathcal{A} \) and let \( f: \bigoplus _{\alpha i\to j} A_i \to \bigoplus_{i\in \mathcal{I}} A_i \) where \( i,j \in \mathcal{I} \).

```{=tex}
\begin{tikzcd}
    i && j && {\mathcal{I}} \\
    \\
    {A_i} && {A_j} && {\mathcal{A}}
    \arrow["\alpha", from=1-1, to=1-3]
    \arrow["{\alpha_*}", from=3-1, to=3-3]
    \arrow["A"{description}, squiggly, from=1-3, to=3-3]
    \arrow["A"{description}, squiggly, from=1-1, to=3-1]
    \arrow["A", squiggly, from=1-5, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJpIl0sWzIsMCwiaiJdLFswLDIsIkFfaSJdLFsyLDIsIkFfaiJdLFs0LDIsIlxcY2F0e0F9Il0sWzQsMCwiXFxjYXR7SX0iXSxbMCwxLCJcXGFscGhhIl0sWzIsMywiXFxhbHBoYV8qIl0sWzEsMywiQSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6InNxdWlnZ2x5In19fV0sWzAsMiwiQSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6InNxdWlnZ2x5In19fV0sWzUsNCwiQSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6InNxdWlnZ2x5In19fV1d)

Then the map \( f( a_{i, \alpha}) = \alpha_*(a_i) - a_i \in A_j - A_i \), so this is \( \alpha_* - \one \). Let \( C\coloneqq\operatorname{coker}f \coloneqq\bigoplus_{i\in I} A_i / \operatorname{im}(f) \), and we'll denote elements in this quotient with a bar.

::: {.claim}
\( C = \mathop{\mathrm{colim}}\nolimits_{i\in I} A_i \) with
\[
\eta_i: A_i &\to C \\
a_i &\mapsto \mkern 1.5mu\overline{\mkern-1.5mua_i\mkern-1.5mu}\mkern 1.5mu
,\]
where we first embed \( A_i \) into the direct sum and then take the quotient.
:::

::: {.exercise title="?"}
Use the universal property of cokernels in \( \mathcal{A} \). Check that the following diagram commutes:

```{=tex}
\begin{tikzcd}
    {A_i} \\
    && C \\
    {A_j}
    \arrow["{\eta_i}", from=1-1, to=2-3]
    \arrow["{\eta_j}"', from=3-1, to=2-3]
    \arrow["{\alpha_*}"', from=1-1, to=3-1]
\end{tikzcd}
```
This essentially follows from the fact that \( \mkern 1.5mu\overline{\mkern-1.5mu \alpha_*(a_i)\mkern-1.5mu}\mkern 1.5mu = \mkern 1.5mu\overline{\mkern-1.5mua_i\mkern-1.5mu}\mkern 1.5mu \).
:::
:::

::: {.remark}
\( {\mathsf{Mod}{\hbox{-}}R} \) satisfies (1), since direct sums of \( R{\hbox{-}} \)modules still have an \( R{\hbox{-}} \)module structure. Thus \( {\mathsf{Mod}{\hbox{-}}R} \) is cocomplete.
:::

::: {.definition title="Limits"}
The **limit** of a functor \( A:\mathcal{I} \to \mathcal{A} \) is the colimit of the dual functor \( A^{\operatorname{op}}: I^{\operatorname{op}}\to \mathcal{A}^{\operatorname{op}} \).
:::

::: {.remark}
Note that this amounts to reversing arrows in the conditions of a colimit. Many of the results for colimits go through with arrows reversed. Examples: kernels, direct products. If \( I \) is a poset, then limits are referred to as **inverse limits**, using \( \varprojlim_{i\in I} A_i \).
:::

::: {.definition title="Complete Categories"}
\( \mathcal{A} \) is **complete** if and only if \( \lim_{i\in I} A_i \) exists whenever \( \mathcal{I} \) is small and \( A: \mathcal{I} \to \mathcal{A} \).
:::

::: {.theorem title="The Adjoint-Limit Theorem"}
Let \( \adjunction{L}{R}{ \mathcal{A} }{ \mathcal{ B} } \) be an adjoint pair, where now \( \mathcal{A}, \mathcal{B} \) are now arbitrary categories (not necessarily abelian). Then

-   The **left adjoint** \( L \) preserves **colimits** (direct sums, cokernels, etc). I.e. if \( A: \mathcal{I} \to \mathcal{A} \) has a colimit, then so does \( (L \circ A ): \mathcal{I}\to \mathcal{B} \), and \( L( \mathop{\mathrm{colim}}\nolimits A_i) = \mathop{\mathrm{colim}}\nolimits(LA_i) \).

-   The **right adjoint** \( R \) preserves **limits** (direct products, kernels, etc).
:::

::: {.proof title="?"}
Not given in the book! See MacLane's *Categories for the Working Mathematician*.
:::

::: {.remark}
Recall left adjoints are right-exact and have left-derived functors.
:::

::: {.corollary title="?"}
If \( \mathcal{A} \) is a cocomplete abelian category with enough projectives and \( \adjunction{F}{G}{ \mathcal{A} } { \mathcal{B} } \). Then for every set-indexed collection of objects \( \left\{{ A_i }\right\} \),
\[
(L_* F)\qty{ \bigoplus_{i \in I } A_i } = \bigoplus _{i\in I} L_* F(A_i) )
,\]
so left-derived functors commute with direct sums.
:::

::: {.proof title="?"}
Let \( P_i \) be the projective resolution of \( A_i \), so \( P_i \to A_i \), then \( \bigoplus P_i \to \bigoplus A_i \) is a projective resolution, and by definition
\[
(L_* F) \qty{ \bigoplus A_i}
&=
H_*\qty{ F\qty{ \bigoplus P_i } } \\
&=
H_* \qty{ \bigoplus FP_i } \quad \text{by the theorem} \\
&\cong 
\bigoplus H_*( FP_i) \text{homology commutes with $\oplus \in \mathsf{Ch}(\mathcal{A})$} \\
&=
\bigoplus _i L_* F(A_i)
.\]
:::

::: {.corollary title="?"}
For \( A_i \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}, B\in {\mathsf{Mod}{\hbox{-}}R} \),
\[
\operatorname{Tor}_*^R\qty{ \bigoplus_{i\in I} A_i, B } \cong \bigoplus_{i\in I} \operatorname{Tor}_*^R(A_i, B)
.\]
:::

::: {.proof title="of corollary"}
\[
\operatorname{Tor}_*^R({\,\cdot\,}, B) = L_*F, && F \coloneqq({\,\cdot\,}\otimes_R B)
,\]
and \( F \) is a left-adjoint by the tensor-hom adjunction.
:::

::: {.remark}
One can also show directly from the definition that
\[
\operatorname{Tor}_*^R(A, \bigoplus_{i\in I} B_i) \cong \bigoplus_{i\in I} \operatorname{Tor}_*^R(A, B_i)
.\]
This uses the fact that \( P \otimes_R (\bigoplus_{i\in I} B_i) \cong \bigoplus_{i\in I} (P \otimes B_i) \).
:::

::: {.remark}
We'll skip the rest of this section, we (hopefully) won't need filtered colimits.
:::

## Balancing Tor and Ext

Idea: their derived functors with either variable fixed will essentially be the same. We'll start by showing that the two left-derived functors of \( {\,\cdot\,}\otimes_R {\,\cdot\,} \) give the same results, and similarly for the two right-derived functors \( {\operatorname{Hom}}_R({\,\cdot\,}, {\,\cdot\,}) \). We'll use double complexes!

### Tensor Product Complexes

Suppose we have two chain complexes \( (P)_R \in \mathsf{Ch}( {\mathsf{Mod}{\hbox{-}}R}), {}_R(Q) \in \mathsf{Ch}({\mathsf{R}{\hbox{-}}\mathsf{Mod}}) \). Then there is a double complex where \( i, j \) indexes rows and columns: \( P \otimes_R Q = \left\{{ P_i \otimes_R Q_j }\right\}_{i, j} \), the **tensor product double complex** of \( P \) and \( Q \). We use the sign trick from 1.2.5:

-   \( d^h \coloneqq d^P \otimes\one \)

-   \( d^v \coloneqq(-1)^i 1 \otimes d^Q \)

Taking the direct sum totalization \( \operatorname{Tor}^{ \oplus }(P \otimes_R Q ) \) is the **total tensor product chain complex** of \( P \) and \( Q \). Note that this has a single differential! The big theorem from this section:

::: {.theorem title="?"}
\[
L_n(A\otimes_R {\,\cdot\,})(B) \cong L_n({\,\cdot\,}\otimes_R B)(A) \coloneqq\operatorname{Tor}_n^R(A, B)
.\]
:::

::: {.remark}
Note that this makes the right-hand side notation unambiguous.
:::

::: {.proof title="?"}
Choose projective resolutions \( P \xrightarrow{\varepsilon} A \in {\mathsf{Mod}{\hbox{-}}R} \) and \( Q \xrightarrow{\eta} B \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \). We'll form 3 tensor product double complexes.

-   \( P\otimes Q \): A first quadrant double complex, since the projective resolutions have nonnegative indices.

-   \( A\otimes Q \), embedding \( A \hookrightarrow\mathsf{Ch}( \mathcal{A} ) \) as a complex concentrated in degree 0 (so one column)

-   \( P \otimes B \) (one row).

There are several maps of double complexes among these induced by \( \epsilon, \eta \):

```{=tex}
\begin{tikzcd}
    && {} \\
    && {} & \vdots && \vdots && \vdots \\
    & {A \otimes Q_2} && {P_0 \otimes Q_2} && {P_1\otimes Q_2} && {P_2 \otimes Q_2} && \cdots \\
    & {A \otimes Q_1} && {P_0 \otimes Q_1} && {P_1\otimes Q_1} && {P_2 \otimes Q_1} && \cdots \\
    & {A \otimes Q_0} && {P_0 \otimes Q_0} && {P_1\otimes Q_0} && {P_2 \otimes Q_0} && \cdots \\
    {} && {} &&&&&& {} \\
    &&& {P_0 \otimes B} && {P_1 \otimes B} && {P_2 \otimes B} \\
    && {}
    \arrow["{\epsilon \otimes 1}", from=3-4, to=3-2]
    \arrow["{\epsilon \otimes 1}", from=4-4, to=4-2]
    \arrow["{\epsilon \otimes 1}", from=5-4, to=5-2]
    \arrow["{1 \otimes\eta}"{description}, from=5-4, to=7-4]
    \arrow["{1 \otimes\eta}"{description}, from=5-6, to=7-6]
    \arrow["{1 \otimes\eta}"{description}, from=5-8, to=7-8]
    \arrow[from=2-4, to=3-4]
    \arrow["{d^P \otimes 1}"', from=3-6, to=3-4]
    \arrow[from=2-6, to=3-6]
    \arrow[from=2-8, to=3-8]
    \arrow["{d^P \otimes 1}"', from=3-8, to=3-6]
    \arrow["{d^P \otimes 1}", from=4-8, to=4-6]
    \arrow["{d^P \otimes 1}", from=5-8, to=5-6]
    \arrow["{d^P \otimes 1}", from=5-6, to=5-4]
    \arrow["{d^P \otimes 1}", from=4-6, to=4-4]
    \arrow["{1\otimes d^Q}", from=3-4, to=4-4]
    \arrow["{1\otimes d^Q}", from=4-4, to=5-4]
    \arrow["{1\otimes d^Q}", from=3-6, to=4-6]
    \arrow["{1\otimes d^Q}", from=4-6, to=5-6]
    \arrow["{1\otimes d^Q}", from=3-8, to=4-8]
    \arrow["{1\otimes d^Q}", from=4-8, to=5-8]
    \arrow[draw={rgb,255:red,214;green,92;blue,92}, dotted, no head, from=6-1, to=6-9]
    \arrow[draw={rgb,255:red,214;green,92;blue,92}, dotted, no head, from=1-3, to=8-3]
    \arrow[from=5-10, to=5-8]
    \arrow[from=4-10, to=4-8]
    \arrow[from=3-10, to=3-8]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMjcsWzEsMiwiQSBcXHRlbnNvciBRXzIiXSxbMSwzLCJBIFxcdGVuc29yIFFfMSJdLFsxLDQsIkEgXFx0ZW5zb3IgUV8wIl0sWzIsNV0sWzMsMiwiUF8wIFxcdGVuc29yIFFfMiJdLFszLDMsIlBfMCBcXHRlbnNvciBRXzEiXSxbMyw0LCJQXzAgXFx0ZW5zb3IgUV8wIl0sWzUsMiwiUF8xXFx0ZW5zb3IgUV8yIl0sWzcsMiwiUF8yIFxcdGVuc29yIFFfMiJdLFs3LDMsIlBfMiBcXHRlbnNvciBRXzEiXSxbNyw0LCJQXzIgXFx0ZW5zb3IgUV8wIl0sWzgsNV0sWzMsNiwiUF8wIFxcdGVuc29yIEIiXSxbNSw2LCJQXzEgXFx0ZW5zb3IgQiJdLFs3LDYsIlBfMiBcXHRlbnNvciBCIl0sWzUsNCwiUF8xXFx0ZW5zb3IgUV8wIl0sWzUsMywiUF8xXFx0ZW5zb3IgUV8xIl0sWzMsMSwiXFx2ZG90cyJdLFs1LDEsIlxcdmRvdHMiXSxbNywxLCJcXHZkb3RzIl0sWzIsMV0sWzIsN10sWzAsNV0sWzIsMF0sWzksMiwiXFxjZG90cyJdLFs5LDMsIlxcY2RvdHMiXSxbOSw0LCJcXGNkb3RzIl0sWzQsMCwiXFxlcHNpbG9uIFxcdGVuc29yIDEiXSxbNSwxLCJcXGVwc2lsb24gXFx0ZW5zb3IgMSJdLFs2LDIsIlxcZXBzaWxvbiBcXHRlbnNvciAxIl0sWzYsMTIsIjEgXFx0ZW5zb3IgXFxldGEiLDFdLFsxNSwxMywiMSBcXHRlbnNvciBcXGV0YSIsMV0sWzEwLDE0LCIxIFxcdGVuc29yIFxcZXRhIiwxXSxbMTcsNF0sWzcsNCwiZF5QIFxcdGVuc29yIDEiLDJdLFsxOCw3XSxbMTksOF0sWzgsNywiZF5QIFxcdGVuc29yIDEiLDJdLFs5LDE2LCJkXlAgXFx0ZW5zb3IgMSJdLFsxMCwxNSwiZF5QIFxcdGVuc29yIDEiXSxbMTUsNiwiZF5QIFxcdGVuc29yIDEiXSxbMTYsNSwiZF5QIFxcdGVuc29yIDEiXSxbNCw1LCIxXFx0ZW5zb3IgZF5RIl0sWzUsNiwiMVxcdGVuc29yIGReUSJdLFs3LDE2LCIxXFx0ZW5zb3IgZF5RIl0sWzE2LDE1LCIxXFx0ZW5zb3IgZF5RIl0sWzgsOSwiMVxcdGVuc29yIGReUSJdLFs5LDEwLCIxXFx0ZW5zb3IgZF5RIl0sWzIyLDExLCIiLDAseyJjb2xvdXIiOlswLDYwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMjMsMjEsIiIsMCx7ImNvbG91ciI6WzAsNjAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyNiwxMF0sWzI1LDldLFsyNCw4XV0=)

We'll show there are two maps:
\[
A \otimes Q = \operatorname{Tot}(A\otimes Q) \xleftarrow{\varepsilon\otimes\one} \operatorname{Tor}(P\otimes Q) \xrightarrow{1\otimes\eta} \operatorname{Tor}(P\otimes B) = P\otimes B
,\]
using that totalizing a one-row or one-column complex is summing along diagonals where each has one term, yielding actual equality of the first and last terms respectively above. Moreover, we'll show these are **quasi-isomorphisms**, and so
\[
L_*(A\otimes{\,\cdot\,}) \xleftarrow{\varepsilon\otimes\one} H_*( \operatorname{Tor}(P\otimes Q) ) \xrightarrow{\one \otimes\eta} L_*( {\,\cdot\,}\otimes B)(A)
.\]

We'll continue with the proof of this next time.
:::

# Wednesday, February 24

## Finishing the Proof of Balancing Tor

We were trying to prove that taking the left derived functors of the two slots in \( \operatorname{Tor} \) yield the same thing.

> See the diagram from last time!

::: {.proof title="?"}
We'll need the following:

::: {.claim}
This induces a *quasi-isomorphism*
\[
P\otimes B \xleftarrow{1\otimes\eta} \operatorname{Tor}(P\otimes Q) \xrightarrow{\varepsilon\otimes\one} \operatorname{Tot}(A\otimes Q) = A\otimes Q
,\]
i.e. it is a morphism that induces an isomorphism on homology.
:::

Recall that by Corollary 1.5, a chain complex is a quasi-isomorphism if and only if the cone complex is acyclic/exact. In degree \( n \) of the total complex, the \( n \)th piece is the \( n \)th diagonal and we have
\[
(P_n \otimes Q_0)
\oplus \cdots \oplus 
(P_0 \otimes Q_n)
.\]
where \( P_0 \xrightarrow{\varepsilon\otimes\one A \otimes Q_n} \). Recall that for a map \( B_n \xrightarrow{f} C_n \), the cone complex was given by

```{=tex}
\begin{tikzcd}
    {B_{n-1}} & \oplus & {C_n} \\
    \\
    {B_{n-2}} & \oplus & {C_{n-1}}
    \arrow["{d^C}", from=1-3, to=3-3]
    \arrow["{-d^B}", from=1-1, to=3-1]
    \arrow["{-f}"', from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJCX3tuLTF9Il0sWzAsMiwiQl97bi0yfSJdLFsyLDAsIkNfbiJdLFsyLDIsIkNfe24tMX0iXSxbMSwyLCJcXG9wbHVzIl0sWzEsMCwiXFxvcGx1cyJdLFsyLDMsImReQyJdLFswLDEsIi1kXkIiXSxbMCwzLCItZiIsMl1d)

Writing one term out explicitly, we have

```{=tex}
\begin{tikzcd}
    {(P_{n-1}\otimes Q_0) \oplus \cdots \oplus (P_0 \otimes Q_{n-1}) \oplus Q_n} & \oplus && {A \otimes Q_n} \\
    \\
    {(P_{n-1}\otimes Q_0) \oplus \cdots \oplus (P_0 \otimes Q_{n-2}) \oplus Q_{n-1}} & \oplus && {A\otimes Q_{n-1}}
    \arrow["{-d^{\oplus}}", from=1-1, to=3-1]
    \arrow["{\one\otimes d}", from=1-4, to=3-4]
    \arrow["{-(\varepsilon\otimes\one)}"', from=1-1, to=3-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCIoUF97bi0xfVxcdGVuc29yIFFfMCkgXFxvcGx1cyBcXGNkb3RzIFxcb3BsdXMgKFBfMCBcXHRlbnNvciBRX3tuLTF9KSBcXG9wbHVzIFFfbiJdLFswLDIsIihQX3tuLTF9XFx0ZW5zb3IgUV8wKSBcXG9wbHVzIFxcY2RvdHMgXFxvcGx1cyAoUF8wIFxcdGVuc29yIFFfe24tMn0pIFxcb3BsdXMgUV97bi0xfSJdLFszLDAsIkEgXFx0ZW5zb3IgUV9uIl0sWzMsMiwiQVxcdGVuc29yIFFfe24tMX0iXSxbMSwwLCJcXG9wbHVzIl0sWzEsMiwiXFxvcGx1cyJdLFswLDEsIi1kXntcXG9wbHVzfSJdLFsyLDMsIlxcb25lXFx0ZW5zb3IgZCJdLFswLDMsIi0oXFxlcHMgXFx0ZW5zb3IgXFxvbmUpIiwyXV0=)

Call this complex (2).

```{=tex}
\todo[inline]{Fix spacing}
```
On the other hand, consider the double complex obtained from \( P\otimes Q \) by adjoining the shifted complex \( (A\otimes Q)[1, 0] \)[^4] in column \( i=-1 \). This has the effect of keeping the same complex but relabeling left-most column "in degree 0" into \"degree \( -1 \). Note that this negatives the leftmost vertical differentials \( A\otimes Q_n \to A\otimes Q_{n-1} \). Now call everything above the dotted line \( C \).

Consider \( \operatorname{Tot}(C)[-1] \), which in degree \( n \) is \( (\operatorname{Tot}(C))_{n-1} \) and since this was an odd shift, negates all of the signs of differential. So in degree \( n \), this explicitly looks like
\[
n:\quad (P_{n-1} \otimes Q_0) \oplus \cdots \oplus (P_0 \otimes Q_{n-1}) \oplus (A\otimes Q_n)\\ \\
n:\quad (P_{n-1} \otimes Q_0) \oplus \cdots \oplus (P_0 \otimes Q_{n-1}) \oplus (A\otimes Q_n)\\ \\
.\]

and we have

```{=tex}
\begin{tikzcd}
    {(P_{n-1}\otimes Q_0) \oplus \cdots } & {\oplus (P_0 \otimes Q_{n-1})} & \oplus & {A \otimes Q_n} \\
    \\
    {(P_{n-1}\otimes Q_0) \oplus \cdots \oplus (P_0 \otimes Q_{n-2})} && \oplus & {A\otimes Q_{n-1}}
    \arrow["{-d^{\oplus}}", from=1-1, to=3-1]
    \arrow["{\one\otimes d}", from=1-4, to=3-4]
    \arrow["{-(\varepsilon\otimes\one)}"', from=1-2, to=3-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbMCwwLCIoUF97bi0xfVxcdGVuc29yIFFfMCkgXFxvcGx1cyBcXGNkb3RzICJdLFswLDIsIihQX3tuLTF9XFx0ZW5zb3IgUV8wKSBcXG9wbHVzIFxcY2RvdHMgXFxvcGx1cyAoUF8wIFxcdGVuc29yIFFfe24tMn0pIl0sWzMsMCwiQSBcXHRlbnNvciBRX24iXSxbMywyLCJBXFx0ZW5zb3IgUV97bi0xfSJdLFsxLDAsIlxcb3BsdXMgKFBfMCBcXHRlbnNvciBRX3tuLTF9KSJdLFsyLDAsIlxcb3BsdXMiXSxbMiwyLCJcXG9wbHVzIl0sWzAsMSwiLWRee1xcb3BsdXN9Il0sWzIsMywiXFxvbmVcXHRlbnNvciBkIl0sWzQsMywiLShcXGVwcyBcXHRlbnNvciBcXG9uZSkiLDJdXQ==)

Calling this complex (3), we have (3) = (2), so it suffices to show (2) is exact, i.e. \( \operatorname{Tot}(C) \) is acyclic. This follow from the next result we'll prove, the *acyclic assembly lemma*. Note that if \( Q_j \) is projective, then it's an algebra fact that \( {\,\cdot\,}\otimes_R Q_j \) is exact (not just right exact) since projective implies flat. This implies that the rows of \( C \) are exact, since this is taking a project resolution (which is exact) and tensoring with a flat module. Using that \( C \) is supported on the upper half-plane and has exact rows, by this part (3) of the acyclic assembly lemma, \( \operatorname{Tot}^{\oplus}(C) \) will be acyclic. A similar argument will go through to show that \( \one\otimes\eta \) is also a quasi-isomorphism by adjoining \( (P\otimes B) \) as the \( -1 \)st row and applying a version of the lemma for right half-plane complexes with exact columns.
:::

## Acyclic Assembly Lemma

::: {.proposition title="Acyclic Assembly Lemma"}
Let \( C \) be a double complex in \( {\mathsf{Mod}{\hbox{-}}R} \), then

-   \( \operatorname{Tot}^{\prod}(C) \) is acyclic if either

    1.  \( C \) is upper half-plane with exact columns, or
    2.  \( C \) is right half-plane with exact rows.

-   \( \operatorname{Tot}^{\oplus }(C) \) is acyclic if either

    3.  \( C \) is upper half-plane with exact rows[^5], or
    4.  \( C \) is right half-plane with exact columns.
:::

::: {.remark}
It suffices to prove (1). Interchanging rows and columns by reflecting along the line \( i=j \) interchanges the types showing up in (1) and (2), and doesn't change the total complex. This similarly switches (3) and (4), so we have \( 1\implies 2 \) and \( 4\implies 3 \), so we'll show that \( 1\implies 4 \). Let \( \tau_n C \) be the double complex obtained taking a *good truncation* of \( C \) at level \( n \):
\[
(\tau_n C)_{ij} \coloneqq
\begin{cases}
C_{ij} &  j > n
\\
\ker( d^v: C_{i, n} \to C_{i, n-1} & j=n.
\end{cases}
.\]
Up to translation \( \tau_n C \) is a 1st quadrant complex, and since we're in case (4), we're assuming the columns are exact. Now using (1), \( \operatorname{Tot}^{\oplus }(\tau_n C)= \operatorname{Tot}^{\prod}(\tau_n C) \) since we now have a first quadrant complex and all diagonals are finite, and we can conclude both are exact. This implies that \( \operatorname{Tot}^{\oplus }C \) is acyclic since every cycle in \( \operatorname{Tot}^{\oplus }(C) \) is nonzero in only finitely many terms. Thus each such cycle is a cycle in \( \operatorname{Tot}(\tau_n C) \) for some \( n\ll 0 \), and hence a boundary by the previous argument.
:::

::: {.remark}
Note that this argument does not go through for the direct product, since then there may be infinitely many nonzero terms on any diagonal, and not every cycle would be represented after some finite truncation and shift.
:::

::: {.proof title="of proposition"}
By translating \( C \) left or right, it's enough to prove that \( H_0 \operatorname{Tot}^{\prod }C = 0 \). We can write
\[
(\operatorname{Tot}^{\prod}C)_0 = \prod_{j \geq 0} C_{-j, j}
\ni
c\coloneqq
(\cdots, c_{-j, j}, \cdots, c_{-2, 2}, c_{-1, 1}, c_{0, 0} )
,\]
letting the latter element by a 0-cycle. By inducting on \( j \), we'll construct an element \( b \) such that \( b_{-j, j+1} \in C_{-j, j+1} \subseteq (\operatorname{Tot}^{\prod} C)_1 \) such that
\[
d^v( b_{-j, j+1}) + d^h( b_{-j+1, j}) = c_{-j, j}
,\]
which will make \( c \) a boundary.
:::

# Friday, February 26

Today: trying to prove acyclic assembly lemma

::: {.proof title="Of acyclic assembly lemma"}
We reduced to proving one case, where \( C \) is a double complex upper half-plane with exact columns \( \implies \operatorname{Tot}^{\prod}(C) \) is acyclic. It's enough to check in degree 0 by shifting. Fix a 0-cycle \( \mathbf{c} = (\cdots, c_{-j, j}, \cdots, c_{-2, 2}, c_{-1, 1}, c_{0, 0}) \). Find \( b \in \prod_{j\leq 0}C_{-j, j+1} \)\$ such that \( d(b) = c \), so \( c_{-j, j} = d^v(b_{-j, j+1}) + d^h(b_{-j+1, j}) \).

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,214;green,92;blue,92}{b_{-j, j+1}} \\
    {c_{-j, j}} & {b_{-j+1, j}} \\
    0 && {c_{-j+1, j-1}} & {b_{-j+2, j-1}} \\
    &&&& \ddots \\
    &&&&& {c_{-2, 2}} & {b_{-1, 2}} \\
    &&&&&& {c_{-1, 1}} & {b_{0, 1}} \\
    &&&&&&& {c_{0, 0}} & \textcolor{rgb,255:red,92;green,214;blue,92}{b_{1,0} = 0} \\
    \bullet &&&&&&&&&& \bullet \\
    &&&&&&& 0
    \arrow[dashed, equals, from=8-1, to=8-11]
    \arrow[from=7-8, to=9-8]
    \arrow["{d^v}", from=2-1, to=3-1]
    \arrow["{d^h}"', from=3-3, to=3-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTYsWzAsMCwiYl97LWosIGorMX0iLFswLDYwLDYwLDFdXSxbMCwxLCJjX3staiwgan0iXSxbMSwxLCJiX3staisxLCBqfSJdLFsyLDIsImNfey1qKzEsIGotMX0iXSxbMywyLCJiX3staisyLCBqLTF9Il0sWzQsMywiXFxkZG90cyJdLFs1LDQsImNfey0yLCAyfSJdLFs2LDQsImJfey0xLCAyfSJdLFs2LDUsImNfey0xLCAxfSJdLFs3LDUsImJfezAsIDF9Il0sWzcsNiwiY197MCwgMH0iXSxbOCw2LCJiX3sxLDB9ID0gMCIsWzEyMCw2MCw2MCwxXV0sWzAsNywiXFxidWxsZXQiXSxbMTAsNywiXFxidWxsZXQiXSxbNyw4LCIwIl0sWzAsMiwiMCJdLFsxMiwxMywiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTAsMTRdLFsxLDE1LCJkXnYiXSxbMywxNSwiZF5oIiwyXV0=)

Construct by induction on \( j \): set \( b_{1, 0} = 0 \) and need \( c_{0, 0} = d^v(b_{0, 1}) \). Since \( d^vc_{0, 0} =0 \) and the columns are exact, we can lift this to some \( b_{0, 1} \) such that \( d^v b_{0, 1} = c_{0, 0} \). Inductively, we want \( d^v(b_{-j, j+1}) = c_{j, -j} - d^h(b_{-j+1, j}) \). Then
\[
d^v( c_{j, -j} - d^h b_{-j+1, j} ) 
&= d^v c_{j, -j} + d^h d^v b_{-j+1, j} \\
&= d^v c_{j, -j} + d^h\qty{ c_{-j+1, j-1} - d^h b_{-j+2, j-1} } \\
&= d^v c_{j. -j} + d^h c_{-j+1, j-1} \\
&= 0 \text{ since } d^{\prod} = 0
.\]
By exactness of column \( j \), we can lift to \( b_{-j, j+1} \), making \( c \) a boundary.
:::

::: {.remark}
This proves that \( {\,\cdot\,}\otimes_R{\,\cdot\,} \) is balanced, i.e. taking the derived functors in either variable with the same pair \( (A, B) \) results in the same thing. To prove a similar result for hom and ext, we want to consider \( {\operatorname{Hom}}_R(A, {\,\cdot\,}) \) which requires injective resolutions, and \( {\operatorname{Hom}}_R({\,\cdot\,}, B) \) is contravariant and left-exact, so we take an injective resolution in \( \mathcal{C}^{\operatorname{op}} \), i.e. a projective resolution in \( \mathcal{C} \). So take a projective resolution \( P\to A \) and an injective resolution \( B\to I \) and make a first quadrant double complex \( C_{i, j} \coloneqq{\operatorname{Hom}}(P_i, I^j) \) for \( i, j\geq 0 \). Define the differentials using the following sign convention:

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,92;green,92;blue,214}{(-1)^{i+j+1} d_I f(p)} & {{\operatorname{Hom}}(P_i, I^{j+1})} \\
    & {{\operatorname{Hom}}(P_i, I^{j})} && {{\operatorname{Hom}}(P_{i+1}, I^{j})} \\
    \textcolor{rgb,255:red,92;green,92;blue,214}{f(p)} &&& \textcolor{rgb,255:red,92;green,92;blue,214}{f(d^P p)}
    \arrow["{d^v}", from=2-2, to=1-2]
    \arrow["{d^h}"', from=2-2, to=2-4]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, maps to, from=3-1, to=3-4]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, maps to, from=3-1, to=1-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMSwwLCJcXEhvbShQX2ksIElee2orMX0pIl0sWzEsMSwiXFxIb20oUF9pLCBJXntqfSkiXSxbMywxLCJcXEhvbShQX3tpKzF9LCBJXntqfSkiXSxbMywyLCJmKGReUCBwKSIsWzI0MCw2MCw2MCwxXV0sWzAsMiwiZihwKSIsWzI0MCw2MCw2MCwxXV0sWzAsMCwiKC0xKV57aStqKzF9IGRfSSBmKHApIixbMjQwLDYwLDYwLDFdXSxbMSwwLCJkXnYiXSxbMSwyLCJkXmgiLDJdLFs0LDMsIiIsMix7ImNvbG91ciI6WzI0MCw2MCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbNCw1LCIiLDAseyJjb2xvdXIiOlsyNDAsNjAsNjBdLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV1d)

Now applying a dual argument as the one for tor yields a "dual acyclic assembly lemma".
:::

::: {.remark}
We'll skip the first 3 sections of chapter 3. It's worth looking at 3.2 on tor and flatness. There's a slightly circular statement that projective implies flat in the book, since we used this to show that certain rows were exact, so refer to a good algebra book for alternative proofs.
:::

## \( \operatorname{Ext}^1 \) and Extensions {#operatornameext1-and-extensions}

::: {.definition title="Module Extensions"}
Let \( A, B\in {\mathsf{Mod}{\hbox{-}}R} \), then an **extension of \( A \) by \( B \)** is a SES
\[
\xi: 0 \to B\to X\to A\to 0
.\]

![image_2021-02-26-09-41-27](figures/image_2021-02-26-09-41-27.png)

We say two extensions \( \xi, \xi' \) are equivalent and write \( \xi \sim \xi' \) iff

```{=tex}
\begin{tikzcd}
    0 & B & X & A & 0 \\
    \\
    0 & B & {X'} & A & 0
    \arrow["\exists", dashed, from=1-3, to=3-3]
    \arrow[equals, from=1-4, to=3-4]
    \arrow[equals, from=1-2, to=3-2]
    \arrow[from=1-1, to=1-2]
    \arrow[from=1-2, to=1-3]
    \arrow[from=1-3, to=1-4]
    \arrow[from=1-4, to=1-5]
    \arrow[from=3-1, to=3-2]
    \arrow[from=3-3, to=3-4]
    \arrow[from=3-2, to=3-3]
    \arrow[from=3-4, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTAsWzAsMCwiMCJdLFsxLDAsIkIiXSxbMiwwLCJYIl0sWzMsMCwiQSJdLFs0LDAsIjAiXSxbMCwyLCIwIl0sWzIsMiwiWCciXSxbMSwyLCJCIl0sWzMsMiwiQSJdLFs0LDIsIjAiXSxbMiw2LCJcXGV4aXN0cyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDgsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSw3LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMV0sWzEsMl0sWzIsM10sWzMsNF0sWzUsN10sWzYsOF0sWzcsNl0sWzgsOV1d)

An extension is **split** if and only if it is equivalent to
\[
0 \to B \overset{\iota}\hookrightarrow A \oplus B \to A 
  \xrightarrow[]{\pi}\mathrel{\mkern-14mu}\rightarrow
 A \to 0
.\]
:::

::: {.warnings}
Note that a SES as above is related to \( \operatorname{Ext}(A, B) \), which reverses the order!
:::

::: {.lemma title="?"}
If \( \operatorname{Ext}^1(A, B) = 0 \) then every extension of \( A \) by \( B \) is split.
:::

::: {.warnings}
There are lots of corrections needed to this proof in Weibel!
:::

::: {.proof title="of lemma"}
Given an extension \( \xi \), look at the LES associated to \( {\operatorname{Hom}}^*({\,\cdot\,}, B) \):

```{=tex}
\begin{tikzcd}
    && \cdots && {\operatorname{Ext}^1(A, B)} \\
    \\
    {{\operatorname{Hom}}(B, B)} && {{\operatorname{Hom}}(X, B)} && {{\operatorname{Hom}}(A, B)} \\
    \textcolor{rgb,255:red,92;green,214;blue,92}{\one_B} && \textcolor{rgb,255:red,92;green,214;blue,92}{\sigma}
    \arrow[from=3-5, to=3-3]
    \arrow[from=3-3, to=3-1]
    \arrow[from=3-1, to=1-5, out=180, in=0]
    \arrow[from=1-5, to=1-3]
    \arrow[color={rgb,255:red,92;green,214;blue,92}, maps to, from=4-3, to=4-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbMiwwLCJcXGNkb3RzIl0sWzQsMCwiXFxFeHReMShBLCBCKSJdLFswLDIsIlxcSG9tKEIsIEIpIl0sWzIsMiwiXFxIb20oWCwgQikiXSxbNCwyLCJcXEhvbShBLCBCKSJdLFsyLDMsIlxcc2lnbWEiLFsxMjAsNjAsNjAsMV1dLFswLDMsIlxcb25lX0IiLFsxMjAsNjAsNjAsMV1dLFs0LDNdLFszLDJdLFsyLDFdLFsxLDBdLFs1LDYsIiIsMCx7ImNvbG91ciI6WzEyMCw2MCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XV0=)

However, this gives a splitting:

```{=tex}
\begin{tikzcd}
    & \textcolor{rgb,255:red,92;green,214;blue,92}{B} \\
    \\
    0 & B & X & A & 0 \\
    \\
    0 & B & {X'} & A & 0
    \arrow["\exists", dashed, from=3-3, to=5-3]
    \arrow[equals, from=3-4, to=5-4]
    \arrow[equals, from=3-2, to=5-2]
    \arrow[from=3-1, to=3-2]
    \arrow[from=3-2, to=3-3]
    \arrow[from=3-3, to=3-4]
    \arrow[from=3-4, to=3-5]
    \arrow[from=5-1, to=5-2]
    \arrow[from=5-3, to=5-4]
    \arrow[from=5-2, to=5-3]
    \arrow[from=5-4, to=5-5]
    \arrow["{\one_B}", color={rgb,255:red,92;green,214;blue,92}, from=3-2, to=1-2]
    \arrow["{\exists \sigma}", color={rgb,255:red,92;green,214;blue,92}, dashed, from=3-3, to=1-2]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTEsWzAsMiwiMCJdLFsxLDIsIkIiXSxbMiwyLCJYIl0sWzMsMiwiQSJdLFs0LDIsIjAiXSxbMCw0LCIwIl0sWzIsNCwiWCciXSxbMSw0LCJCIl0sWzMsNCwiQSJdLFs0LDQsIjAiXSxbMSwwLCJCIixbMTIwLDYwLDYwLDFdXSxbMiw2LCJcXGV4aXN0cyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDgsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSw3LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMV0sWzEsMl0sWzIsM10sWzMsNF0sWzUsN10sWzYsOF0sWzcsNl0sWzgsOV0sWzEsMTAsIlxcb25lX0IiLDAseyJjb2xvdXIiOlsxMjAsNjAsNjBdfSxbMTIwLDYwLDYwLDFdXSxbMiwxMCwiXFxleGlzdHMgXFxzaWdtYSIsMCx7ImNvbG91ciI6WzEyMCw2MCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX0sWzEyMCw2MCw2MCwxXV1d)

Todo: label \( (X, B) \to (B, B) \) as \( f_* \).

This is one of the many equivalent criteria for a SES of modules to be split.
:::

::: {.remark}
More generally, given \( \xi \), let \( \Theta(\xi) \coloneqq{{\partial}}(\one_B) \in \operatorname{Ext}^1(A, B) \). Thus TFAE:

-   \( \xi \) is split
-   \( \one-B \) lifts to some \( \sigma\in {\operatorname{Hom}}(X, B) \)
-   \( \one_B \in \operatorname{im}f_* = \ker {{\partial}} \)
-   \( \Theta(\xi) = 0 \), even if \( \operatorname{Ext}^1(A, B) \neq 0 \).

Then \( \Theta(\xi) \) is an *obstruction* to \( \xi \) being split.
:::

::: {.remark}
If \( \xi'\sim \xi \) then \( {{\partial}}'(\one_B) = {{\partial}}(\one_B)\in \operatorname{Ext}^1(A, B) \) by naturality of the connecting morphisms. So equivalent extensions have the same obstruction, i.e. \( \Theta \) only depends only on the equivalence class \( [\xi] \) of the SES.
:::

::: {.theorem title="?"}
Given \( A, B\in {\mathsf{Mod}{\hbox{-}}R} \) (or an abelian category with enough projectives and injectives), there is a correspondence
\[
\left\{{\substack{
  0 \to B \to X\to A \to 0
}}\right\}_{/\sim}
\mathrel{\operatorname*{\rightleftharpoons}_{\Theta}^{\Psi}}
\operatorname{Ext}^1(A, B)
\]
Note that this is a bijection of sets, but we'll upgrade it to a bijection of abelian groups.
:::

# Monday, March 01

Last time: we looked at group extensions. Given \( \xi: 0\to B\to X \to A\to 0 \), we had a canonical element in \( \operatorname{Ext}^1(A, B) \), namely \( \Theta(\xi) = \delta(\one_B) \). This only depends on the equivalence class of \( \xi \).

::: {.theorem title="?"}
Given \( A, B\in {\mathsf{Mod}{\hbox{-}}R} \), there is a bijection
\[
\left\{{\substack{
  \text{Extensions of $A$ by $B$}
}}\right\}
\mathrel{\operatorname*{\rightleftharpoons}_{\Theta}^{\Phi}}
\operatorname{Ext}_R^1(A, B)
\]
:::

::: {.proof title="?"}
```{=tex}
\envlist
```
::: {.claim}
\( \Theta \) is surjective.
:::

Fix a SES
\[
0 \to M \xrightarrow{j} P \xrightarrow{\pi} A \to 0 
\]
with \( P \) projective, and take the LES resulting from applying \( {\operatorname{Hom}}({\,\cdot\,}, B) \):

```{=tex}
\begin{tikzcd}
    0 \\
    {{\operatorname{Hom}}(A, B)} & {{\operatorname{Hom}}(P, B)} & {{\operatorname{Hom}}(M, B)} \\
    \\
    {\operatorname{Ext}^1(A, B)} & {\operatorname{Ext}^1(P, B) = 0} \\
    x
    \arrow[from=2-1, to=2-2]
    \arrow[from=2-2, to=2-3]
    \arrow["{{\partial}}", from=2-3, to=4-1, out=0, in=180]
    \arrow[from=4-1, to=4-2]
    \arrow[from=1-1, to=2-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbMCwxLCJcXEhvbShBLCBCKSJdLFsxLDEsIlxcSG9tKFAsIEIpIl0sWzIsMSwiXFxIb20oTSwgQikiXSxbMCwzLCJcXEV4dF4xKEEsIEIpIl0sWzEsMywiXFxFeHReMShQLCBCKSA9IDAiXSxbMCw0LCJ4Il0sWzAsMCwiMCJdLFswLDFdLFsxLDJdLFsyLDMsIlxcYmQiXSxbMyw0XSxbNiwwXV0=)

Letting \( x \in \operatorname{Ext}^1(A, B) \) and choose \( \beta\in {\operatorname{Hom}}(M, B) \) with \( {{\partial}}\beta = x \) using that \( P \) is projective and thus \( \operatorname{Ext}^1(P, B) \) vanishes. Now let \( X \) be the **pushout** of \( j: M\to P \) and \( \beta: M\to B \). Note that we can apply the universal property of cokernels to get a map of the following form:

```{=tex}
\begin{tikzcd}
    M && {P\oplus B} && {X = \operatorname{coker}g} && 0 \\
    \\
    && A
    \arrow["{g = (j, -\beta)}", from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow["{\pi \oplus 0}", from=1-3, to=3-3]
    \arrow[from=1-5, to=1-7]
    \arrow["{\therefore 0}"', dotted, from=1-1, to=3-3]
    \arrow["{\exists ! \mu}", dashed, from=1-5, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCJNIl0sWzIsMCwiUFxcb3BsdXMgQiJdLFs0LDAsIlggPSBcXGNva2VyIGciXSxbMiwyLCJBIl0sWzYsMCwiMCJdLFswLDEsImcgPSAoaiwgLVxcYmV0YSkiXSxbMSwyXSxbMSwzLCJcXHBpIFxcb3BsdXMgMCJdLFsyLDRdLFswLDMsIlxcdGhlcmVmb3JlIDAiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMiwzLCJcXGV4aXN0cyAhIFxcbXUiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=)

Taking the pushout yields a diagram:

```{=tex}
\begin{tikzcd}
    0 && M && P && A && 0 \\
    \\
    0 && B && X && A && 0
    \arrow[from=1-1, to=1-3]
    \arrow["j"', from=1-3, to=1-5]
    \arrow["\pi"', from=1-5, to=1-7]
    \arrow[from=3-1, to=3-3]
    \arrow["\iota"', from=3-3, to=3-5]
    \arrow["\mu"', from=3-5, to=3-7]
    \arrow[from=1-1, to=3-1]
    \arrow["\beta"', from=1-3, to=3-3]
    \arrow["\sigma"{description}, from=1-5, to=3-5]
    \arrow[equals, from=1-7, to=3-7]
    \arrow[from=1-7, to=1-9]
    \arrow[from=3-7, to=3-9]
    \arrow[from=1-9, to=3-9]
    \arrow["\lrcorner"{anchor=center, pos=0.125, rotate=180}, draw=none, from=3-5, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTAsWzAsMCwiMCJdLFswLDIsIjAiXSxbMiwwLCJNIl0sWzIsMiwiQiJdLFs0LDIsIlgiXSxbNCwwLCJQIl0sWzYsMCwiQSJdLFs2LDIsIkEiXSxbOCwwLCIwIl0sWzgsMiwiMCJdLFswLDJdLFsyLDUsImoiLDJdLFs1LDYsIlxccGkiLDJdLFsxLDNdLFszLDQsIlxcaW90YSIsMl0sWzQsNywiXFxtdSIsMl0sWzAsMV0sWzIsMywiXFxiZXRhIiwyXSxbNSw0LCJcXHNpZ21hIiwxXSxbNiw3LCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsOF0sWzcsOV0sWzgsOV0sWzQsMiwiIiwyLHsic3R5bGUiOnsibmFtZSI6ImNvcm5lciJ9fV1d)

::: {.exercise title="?"}
Check that this diagram commutes and that the new row is exact.
:::

Taking the LES for \( {\operatorname{Hom}}({\,\cdot\,}, B) \) yields

```{=tex}
\begin{tikzcd}
    &&&& \textcolor{rgb,255:red,92;green,92;blue,214}{\beta} && \textcolor{rgb,255:red,92;green,92;blue,214}{x} \\
    \cdots && {{\operatorname{Hom}}(P, B)} && {{\operatorname{Hom}}(P, B)} && {\operatorname{Ext}^1(A, B)} \\
    \\
    \cdots && {{\operatorname{Hom}}(X, B)} && {{\operatorname{Hom}}(B, B)} && {\operatorname{Ext}^1(A, B)} \\
    &&&& \textcolor{rgb,255:red,92;green,92;blue,214}{\one_B} && \textcolor{rgb,255:red,92;green,92;blue,214}{\Theta(\xi)}
    \arrow[from=2-1, to=2-3]
    \arrow[from=2-3, to=2-5]
    \arrow[from=4-1, to=4-3]
    \arrow[from=4-3, to=4-5]
    \arrow[from=2-5, to=2-7]
    \arrow[from=4-5, to=4-7]
    \arrow[no head, from=2-7, to=4-7]
    \arrow["{\beta_*}"{description}, from=4-5, to=2-5]
    \arrow["{\sigma_*}"', from=4-3, to=2-3]
    \arrow["{{\partial}}", color={rgb,255:red,92;green,92;blue,214}, maps to, from=5-5, to=5-7]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, curve={height=-30pt}, maps to, from=1-5, to=5-5]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, maps to, from=1-5, to=1-7]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, curve={height=-30pt}, dashed, maps to, from=1-7, to=5-7]
\end{tikzcd}
```
> \( (*) \) [Link to Diagram](https://q.uiver.app/?q=WzAsMTIsWzIsMSwiXFxIb20oUCwgQikiXSxbNCwxLCJcXEhvbShQLCBCKSJdLFswLDEsIlxcY2RvdHMiXSxbNiwxLCJcXEV4dF4xKEEsIEIpIl0sWzIsMywiXFxIb20oWCwgQikiXSxbNCwzLCJcXEhvbShCLCBCKSJdLFs2LDMsIlxcRXh0XjEoQSwgQikiXSxbMCwzLCJcXGNkb3RzIl0sWzQsMCwiXFxiZXRhIixbMjQwLDYwLDYwLDFdXSxbNiwwLCJ4IixbMjQwLDYwLDYwLDFdXSxbNCw0LCJcXG9uZV9CIixbMjQwLDYwLDYwLDFdXSxbNiw0LCJcXFRoZXRhKFxceGkpIixbMjQwLDYwLDYwLDFdXSxbMiwwXSxbMCwxXSxbNyw0XSxbNCw1XSxbMSwzXSxbNSw2XSxbMyw2LCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsMSwiXFxiZXRhXyoiLDFdLFs0LDAsIlxcc2lnbWFfKiIsMl0sWzEwLDExLCJcXGJkIiwwLHsiY29sb3VyIjpbMjQwLDYwLDYwXSwic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX0sWzI0MCw2MCw2MCwxXV0sWzgsMTAsIiIsMSx7ImN1cnZlIjotNSwiY29sb3VyIjpbMjQwLDYwLDYwXSwic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFs4LDksIiIsMSx7ImNvbG91ciI6WzI0MCw2MCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbOSwxMSwiIiwxLHsiY3VydmUiOi01LCJjb2xvdXIiOlsyNDAsNjAsNjBdLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)

So we

-   Started with \( x \)
-   Took a reference SES
-   Produce the cokernel
-   Took a pushout and found \( \beta \).
-   Showed that \( \beta\mapsto x \).

```{=tex}
\todo[inline]{Review video: 9:28 AM!}
```
This shows surjectivity, but depended on choice of \( \beta \).

::: {.claim}
\( \Theta \) is injective.
:::

Note that the previous construction there is a way to associate to \( x\in \operatorname{Ext}^1(A, B) \) an extension of \( A \) by \( B \). To see that this gives a well-defined map \( \Psi \), so \( \Psi(x) = [ \xi ] \) as well, suppose \( \beta'\in {\operatorname{Hom}}(M, B) \) is another lift of \( x \). Note that although \( \operatorname{Ext}^1(P, B) =0 \), the fact that \( \ker {{\partial}}= {\operatorname{Hom}}(M, B) \neq 0 \), there are many such choices of lifts. Using exactness of diagram \( (*) \), there exists an \( f\in {\operatorname{Hom}}(P, B) \) such that \( \beta' = \beta + fj \), recalling that \( j: M\to P \). Now taking the pushout \( X' \) of \( j \) and \( \beta' \), the maps \( i: B\to X \) and \( \sigma + if: P\to X \) induce an isomorphism \( X' \xrightarrow{\sim} X \) and thus an equivalence \( \xi \xrightarrow{\sim} \xi' \).

::: {.exercise title="?"}
Check this isomorphism.
:::

Moreover, given any extension \( \xi \), we can fit it into a diagram of the following form:

```{=tex}
\begin{tikzcd}
    && 0 & M & P & A & 0 \\
    \\
    {\xi:} && 0 & B & X & A & 0
    \arrow[equals, from=1-6, to=3-6]
    \arrow[from=1-3, to=1-4]
    \arrow[from=1-4, to=1-5]
    \arrow[from=1-5, to=1-6]
    \arrow[from=1-6, to=1-7]
    \arrow[from=3-3, to=3-4]
    \arrow[from=3-4, to=3-5]
    \arrow[from=3-5, to=3-6]
    \arrow[from=3-6, to=3-7]
    \arrow["{\exists \beta}"{description}, dashed, from=1-4, to=3-4]
    \arrow["{\exists \sigma}"{description}, dashed, from=1-5, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTEsWzIsMCwiMCJdLFszLDAsIk0iXSxbNCwwLCJQIl0sWzUsMCwiQSJdLFs2LDAsIjAiXSxbMiwyLCIwIl0sWzYsMiwiMCJdLFszLDIsIkIiXSxbNCwyLCJYIl0sWzUsMiwiQSJdLFswLDIsIlxceGk6Il0sWzMsOSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFswLDFdLFsxLDJdLFsyLDNdLFszLDRdLFs1LDddLFs3LDhdLFs4LDldLFs5LDZdLFsxLDcsIlxcZXhpc3RzIFxcYmV0YSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDgsIlxcZXhpc3RzIFxcc2lnbWEiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=)

First we use projectivity of \( P \) to get \( \sigma: P\to X \). Then restricting \( \sigma \) to the kernels of \( \pi, \mu \) respectively makes \( \beta: M\to B \), so this diagram commutes

::: {.exercise title="?"}
Check that \( X \) is the pushout of \( j \) and \( \beta \).
:::

It follows that \( \Psi (\Theta(\xi)) = \xi \) and thus \( \Theta \) is injective, making it a bijection.
:::

::: {.remark}
Note the importance of the reversed directions after taking the Hom!
:::

::: {.remark}
How can we upgrade this to a group homomorphism? One way is to pull back the group structure from the right-hand side to the left-hand side, but it turns out that Baer worked out an intrinsic group structure around 1934. We can construct the "smallest" extension such that \( A \) is a quotient and \( B \) is a submodule.
:::

::: {.definition title="Baer Sum (1934)"}
Suppose we have two extensions of \( A \) by \( B \):
\[
\xi: & 0\to B \xrightarrow{i} X \xrightarrow{\pi} A \to 0 \\
\xi': & 0\to B \xrightarrow{i'} X' \xrightarrow{\pi'} A \to 0 \\
.\]
Let \( X'' \) be the **pullback** of \( \pi, \pi' \), defined by
\[
X'' \coloneqq\left\{{ (x, x') \in X \times X' {~\mathrel{\Big|}~}\pi(x) = \pi'(x') \in A }\right\} 
,\]
which identifies the two copies of \( A \). This fits into a cartesian square

```{=tex}
\begin{tikzcd}
    {X''} && {X'} \\
    \\
    X && A
    \arrow["{\pi_1}"', from=1-1, to=3-1]
    \arrow["{\pi_2}", from=1-1, to=1-3]
    \arrow["{\pi'}"', from=1-3, to=3-3]
    \arrow["\pi", from=3-1, to=3-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJYJyciXSxbMiwwLCJYJyJdLFsyLDIsIkEiXSxbMCwyLCJYIl0sWzAsMywiXFxwaV8xIiwyXSxbMCwxLCJcXHBpXzIiXSxbMSwyLCJcXHBpJyIsMl0sWzMsMiwiXFxwaSJdLFswLDIsIiIsMSx7InN0eWxlIjp7Im5hbWUiOiJjb3JuZXIifX1dXQ==)

Note that \( X'' \) contains 3 copies of \( B \):

-   \( B \times 0 \), or really \( i(B) \times\left\{{ 0 }\right\} \subset X'' \) (using exactness).
-   \( 0\times B \), i.e. \( \left\{{ 0 }\right\} \times i'(B) \subseteq X'' \) (using exactness).
-   \( \tilde\Delta= \left\{{ (-b, b) {~\mathrel{\Big|}~}b\in B }\right\} \), the **skew diagonal**. One can check that \( \pi i (-b) = 0 = \pi' i' (b) \).

Note that we're identifying \( B \) with \( i(B), i'(B) \). Set \( Y \coloneqq X'' / \tilde\Delta \), then \( (b, 0) + (-b, b) = (0, b) \) where \( (-b, b) \in \tilde \Delta \), so \( B \times 0 \) and \( 0 \times B \) have the same image in \( Y \), since
\[
(B \times 0) \cap\tilde\Delta= \left\{{ (0, 0) }\right\} = (0 \times B) \cap\tilde\Delta
.\]
In fact this image in \( Y \) is isomorphic to \( B \), by construction of what we're quotienting out by. Denoting this subgroup of \( Y \) by \( B \), we get a SES
\[
\phi: 0\to B \to Y \to Y/B \to 0
.\]
What is \( Y/B \)? We can write this as
\[
Y/B = { X'' / \tilde \Delta\over (0 \times B ) / \tilde\Delta}
\cong {X'' \over (0 \times B) + \tilde\Delta}
\cong {X'' / 0 \times B \over (\tilde\Delta+ (0 \times B) ) / (0 \times B)}
.\]
But the numerator is isomorphic to \( X \) by \( \pi_1 \), and the denominator is isomorphic to \( B \) by \( \pi_1 \). So \( \phi \) is an extension of \( A \) by \( B \) called the **Baer sum** of \( \xi, \xi' \).
:::

::: {.corollary title="?"}
The equivalence classes of extensions of \( A \) by \( B \) is an abelian group under Baer sums, where zero is the class of split extensions. Moreover, the map \( \Theta \) from the previous theorem is an isomorphism of abelian groups.
:::

::: {.remark}
Next time we'll check this by showing \( \Theta(\phi) = \Theta(\xi) + \Theta(\xi') \).
:::

# Wednesday, March 03

## Baer Sum and Higher Exts

Last time: Baer sum.

::: {.remark}
```{=tex}
\begin{tikzcd}
    {\xi':} && 0 && B && {X'} && A && 0 \\
    \\
    {\text{Ref}:} && 0 && M && P && A && 0
    \arrow[from=1-3, to=1-5]
    \arrow["{\iota'}", from=1-5, to=1-7]
    \arrow["{\sigma'}"', from=3-7, to=1-7]
    \arrow["\pi", from=3-7, to=3-9]
    \arrow["{\pi'}", from=1-7, to=1-9]
    \arrow[from=1-9, to=1-11]
    \arrow[from=3-9, to=3-11]
    \arrow["{\beta'}", from=3-5, to=1-5]
    \arrow["j", from=3-5, to=3-7]
    \arrow[from=3-3, to=3-5]
    \arrow[equals, from=3-9, to=1-9]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTIsWzQsMCwiQiJdLFs2LDAsIlgnIl0sWzgsMCwiQSJdLFsyLDAsIjAiXSxbNCwyLCJNIl0sWzYsMiwiUCJdLFs4LDIsIkEiXSxbMTAsMCwiMCJdLFsxMCwyLCIwIl0sWzIsMiwiMCJdLFswLDAsIlxceGknOiJdLFswLDIsIlxcdGV4dHtSZWZ9OiJdLFszLDBdLFswLDEsIlxcaW90YSciXSxbNSwxLCJcXHNpZ21hJyIsMl0sWzUsNiwiXFxwaSJdLFsxLDIsIlxccGknIl0sWzIsN10sWzYsOF0sWzQsMCwiXFxiZXRhJyJdLFs0LDUsImoiXSxbOSw0XSxbNiwyLCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d)

```{=tex}
\begin{tikzcd}
    &&&& \textcolor{rgb,255:red,92;green,92;blue,214}{\one_B} && \textcolor{rgb,255:red,92;green,92;blue,214}{\Theta(\xi')} \\
    \cdots && {{\operatorname{Hom}}(X', B)} && {{\operatorname{Hom}}(B, B)} && {\operatorname{Ext}^1_R(A, B)} \\
    \\
    \cdots && {{\operatorname{Hom}}(P, B)} && {{\operatorname{Hom}}(M, B)} && {\operatorname{Ext}^1_R(A, B)} \\
    &&&& \textcolor{rgb,255:red,92;green,92;blue,214}{\beta'} && \textcolor{rgb,255:red,92;green,92;blue,214}{{{\partial}}(\beta') = \Theta(\xi')}
    \arrow["{\sigma'_*}", from=2-3, to=4-3]
    \arrow["{\beta'_*}", from=2-5, to=4-5]
    \arrow[from=4-1, to=4-3]
    \arrow[from=2-1, to=2-3]
    \arrow[from=2-3, to=2-5]
    \arrow[from=2-5, to=2-7]
    \arrow[from=4-3, to=4-5]
    \arrow[from=4-5, to=4-7]
    \arrow[equals, from=2-7, to=4-7]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, maps to, from=5-5, to=5-7]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, maps to, from=1-5, to=1-7]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, curve={height=-30pt}, maps to, from=1-5, to=5-5]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, curve={height=-30pt}, maps to, from=1-7, to=5-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTIsWzIsMSwiXFxIb20oWCcsIEIpIl0sWzQsMSwiXFxIb20oQiwgQikiXSxbNiwxLCJcXEV4dF4xX1IoQSwgQikiXSxbNiwzLCJcXEV4dF4xX1IoQSwgQikiXSxbNCwzLCJcXEhvbShNLCBCKSJdLFsyLDMsIlxcSG9tKFAsIEIpIl0sWzAsMywiXFxjZG90cyJdLFswLDEsIlxcY2RvdHMiXSxbNCwwLCJcXG9uZV9CIixbMjQwLDYwLDYwLDFdXSxbNiwwLCJcXFRoZXRhKFxceGknKSIsWzI0MCw2MCw2MCwxXV0sWzQsNCwiXFxiZXRhJyIsWzI0MCw2MCw2MCwxXV0sWzYsNCwiXFxiZChcXGJldGEnKSA9IFxcVGhldGEoXFx4aScpIixbMjQwLDYwLDYwLDFdXSxbMCw1LCJcXHNpZ21hJ18qIl0sWzEsNCwiXFxiZXRhJ18qIl0sWzYsNV0sWzcsMF0sWzAsMV0sWzEsMl0sWzUsNF0sWzQsM10sWzIsMywiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMCwxMSwiIiwwLHsiY29sb3VyIjpbMjQwLDYwLDYwXSwic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFs4LDksIiIsMCx7ImNvbG91ciI6WzI0MCw2MCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbOCwxMCwiIiwxLHsiY3VydmUiOi01LCJjb2xvdXIiOlsyNDAsNjAsNjBdLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV0sWzksMTEsIiIsMSx7ImN1cnZlIjotNSwiY29sb3VyIjpbMjQwLDYwLDYwXSwic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dXQ==)

We want to define \( \xi' \oplus \xi'' \), An important takeaway is that \( \Theta \) can alternatively be defined as a map induced by the original boundary map coming from the SES, i.e. \( {{\partial}}(\beta') = \Theta(\xi') \). This fits into the diagram as follows:

```{=tex}
\begin{tikzcd}
    {\xi':} && 0 && B && {X'} && A && 0 \\
    \\
    {\text{Ref}:} && 0 && M && P && A && 0 \\
    \\
    {\xi'':} && 0 && B && {X''} && A && 0
    \arrow[from=1-3, to=1-5]
    \arrow["{\iota'}", from=1-5, to=1-7]
    \arrow["{\sigma'}", from=3-7, to=1-7]
    \arrow["\pi", from=3-7, to=3-9]
    \arrow["{\pi'}", from=1-7, to=1-9]
    \arrow[from=1-9, to=1-11]
    \arrow[from=3-9, to=3-11]
    \arrow["{\beta'}", from=3-5, to=1-5]
    \arrow["j", from=3-5, to=3-7]
    \arrow[from=3-3, to=3-5]
    \arrow[equals, from=3-9, to=1-9]
    \arrow[from=5-3, to=5-5]
    \arrow["{\iota''}", from=5-5, to=5-7]
    \arrow["{\pi''}", from=5-7, to=5-9]
    \arrow[from=5-9, to=5-11]
    \arrow["{\beta''}"', from=3-5, to=5-5]
    \arrow["{\sigma''}"', from=3-7, to=5-7]
    \arrow[equals, from=3-9, to=5-9]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTgsWzQsMCwiQiJdLFs2LDAsIlgnIl0sWzgsMCwiQSJdLFsyLDAsIjAiXSxbNCwyLCJNIl0sWzYsMiwiUCJdLFs4LDIsIkEiXSxbMTAsMCwiMCJdLFsxMCwyLCIwIl0sWzIsMiwiMCJdLFswLDAsIlxceGknOiJdLFswLDIsIlxcdGV4dHtSZWZ9OiJdLFsyLDQsIjAiXSxbNCw0LCJCIl0sWzYsNCwiWCcnIl0sWzgsNCwiQSJdLFsxMCw0LCIwIl0sWzAsNCwiXFx4aScnOiJdLFszLDBdLFswLDEsIlxcaW90YSciXSxbNSwxLCJcXHNpZ21hJyJdLFs1LDYsIlxccGkiXSxbMSwyLCJcXHBpJyJdLFsyLDddLFs2LDhdLFs0LDAsIlxcYmV0YSciXSxbNCw1LCJqIl0sWzksNF0sWzYsMiwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMiwxM10sWzEzLDE0LCJcXGlvdGEnJyJdLFsxNCwxNSwiXFxwaScnIl0sWzE1LDE2XSxbNCwxMywiXFxiZXRhJyciLDJdLFs1LDE0LCJcXHNpZ21hJyciLDJdLFs2LDE1LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d)

We define
\[
\tilde X \coloneqq\left\{{ (x', x'') \in X' \times X'' {~\mathrel{\Big|}~}\pi'(x') = \pi''(x'') }\right\} \twoheadrightarrow Y
,\]
and note that we had a skew diagonal \( \tilde\Delta\subseteq \tilde X \). This yields a YES
\[
\phi: 0 \to B \to Y \to Y/B \cong A \to 0
.\]
:::

::: {.corollary title="?"}
The set of equivalence classes of extensions of \( A \) by \( B \) is an abelian group under the Baer sum, where
\[
[\xi] \oplus [\xi'] \coloneqq[\varphi]
,\]
where the identity element \( 0 \) is the class of split extensions. The map \( \Theta \) is an isomorphism of abelian groups.
:::

::: {.remark}
One should check that this is well-defined since we're using equivalence classes. There is a fast way to do both at once, i.e. showing \( \Theta \) is well-defined and also a group morphism.
:::

::: {.proof title="?"}
We'll show that
\[
\Theta(\varphi) = \Theta(\xi) + \Theta(\xi'') \in \operatorname{Ext}^1_R(A, B)
,\]
which will make it a group isomorphism since \( \Theta \) was already a set bijection. Considering commutativity in the 3-row diagram, we can get a well-defined map
\[
\sigma\coloneqq\sigma' \oplus \sigma'': P \to \tilde{X}
.\]
So let \( \mkern 1.5mu\overline{\mkern-1.5mu \sigma\mkern-1.5mu}\mkern 1.5mu: P\to Y \) be the induced map. The restriction of \( \mkern 1.5mu\overline{\mkern-1.5mu \sigma\mkern-1.5mu}\mkern 1.5mu \) to \( M \) is induced by the map
\[
\beta' + \beta'': M\to (B \times 0) + (0 \times B) \subseteq \tilde X
.\]
These both map to \( B \) in \( Y \) under the SES \( 0\to B\to Y\to Y/B\to 0 \). This gives a commutative diagram

```{=tex}
\begin{tikzcd}
    0 && M && P && A && 0 \\
    \\
    0 && B && Y && A && 0
    \arrow[equals, from=1-7, to=3-7]
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow[from=3-7, to=3-9]
    \arrow[from=1-7, to=1-9]
    \arrow["{\beta'+\beta''}"', from=1-3, to=3-3]
    \arrow["{\mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu}"', from=1-5, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTAsWzAsMCwiMCJdLFsyLDAsIk0iXSxbNCwwLCJQIl0sWzYsMCwiQSJdLFswLDIsIjAiXSxbMiwyLCJCIl0sWzQsMiwiWSJdLFs2LDIsIkEiXSxbOCwyLCIwIl0sWzgsMCwiMCJdLFszLDcsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCwxXSxbMSwyXSxbMiwzXSxbNCw1XSxbNSw2XSxbNiw3XSxbNyw4XSxbMyw5XSxbMSw1LCJcXGJldGEnK1xcYmV0YScnIiwyXSxbMiw2LCJcXGJhcntcXHNpZ21hfSIsMl1d)

We then have \( \Theta(\varphi) = {{\partial}}( \beta' + \beta'') = {{\partial}}(\beta') + {{\partial}}(\beta'') \) using that \( {{\partial}}\in \operatorname{Mor}({\mathsf{R}{\hbox{-}}\mathsf{Mod}}) \). But this is equal to \( \Theta(\xi') + \Theta(\xi'') \), which is what we wanted to show.
:::

::: {.remark}
What about the 0 element for split SESs? Recall that additive functors preserve split exact sequences, since these are just in terms of sums of maps composing to the identity. Then applying the hom functor to the original SES produces another SES, which in particular has no Ext correction term.
:::

::: {.remark}
Similarly, \( \operatorname{Ext}^n(A, B) \) is identified with equivalence classes of longer sequences with \( n+2 \) terms, and an equivalence is a sequence of maps that result in commuting squares:

```{=tex}
\begin{tikzcd}
    {\xi:} && 0 & B & {X_n} & \cdots & {X_1} & A & 0 \\
    \\
    {\xi':} && 0 & B & {X_n'} & \cdots & {X_1'} & A & 0
    \arrow[from=1-3, to=1-4]
    \arrow[from=1-4, to=1-5]
    \arrow[from=1-5, to=1-6]
    \arrow[from=1-6, to=1-7]
    \arrow[from=1-7, to=1-8]
    \arrow[from=1-8, to=1-9]
    \arrow[equals, from=1-4, to=3-4]
    \arrow[equals, from=1-8, to=3-8]
    \arrow[dashed, from=1-5, to=3-5]
    \arrow[dashed, from=1-7, to=3-7]
    \arrow[dashed, from=1-6, to=3-6]
    \arrow[from=3-3, to=3-4]
    \arrow[from=3-4, to=3-5]
    \arrow[from=3-5, to=3-6]
    \arrow[from=3-6, to=3-7]
    \arrow[from=3-7, to=3-8]
    \arrow[from=3-8, to=3-9]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTYsWzIsMCwiMCJdLFszLDAsIkIiXSxbNCwwLCJYX24iXSxbNSwwLCJcXGNkb3RzIl0sWzYsMCwiWF8xIl0sWzcsMCwiQSJdLFs4LDAsIjAiXSxbMCwwLCJcXHhpOiJdLFswLDIsIlxceGknOiJdLFsyLDIsIjAiXSxbMywyLCJCIl0sWzQsMiwiWF9uJyJdLFs1LDIsIlxcY2RvdHMiXSxbNiwyLCJYXzEnIl0sWzcsMiwiQSJdLFs4LDIsIjAiXSxbMCwxXSxbMSwyXSxbMiwzXSxbMyw0XSxbNCw1XSxbNSw2XSxbMSwxMCwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDE0LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMTEsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs0LDEzLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMywxMiwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzksMTBdLFsxMCwxMV0sWzExLDEyXSxbMTIsMTNdLFsxMywxNF0sWzE0LDE1XV0=)

Note that if \( {P}^{{\,\cdot\,}} \to A\to 0 \) is a projective resolution, then the comparison theorem yields maps and a commutative diagram

```{=tex}
\begin{tikzcd}
    {\phi:} && 0 & M & {P_{n-1}} & \cdots & {P_0} & A & 0 \\
    \\
    {\xi':} && 0 & B & {X_n'} & \cdots & {X_1'} & A & 0
    \arrow[from=1-3, to=1-4]
    \arrow[from=1-4, to=1-5]
    \arrow[from=1-5, to=1-6]
    \arrow[from=1-6, to=1-7]
    \arrow[from=1-7, to=1-8]
    \arrow[from=1-8, to=1-9]
    \arrow["{\exists \beta}", dashed, from=1-4, to=3-4]
    \arrow["{\one_A}", equals, from=1-8, to=3-8]
    \arrow["\exists", dashed, from=1-5, to=3-5]
    \arrow["\exists", dashed, from=1-7, to=3-7]
    \arrow[dashed, from=1-6, to=3-6]
    \arrow[from=3-3, to=3-4]
    \arrow[from=3-4, to=3-5]
    \arrow[from=3-5, to=3-6]
    \arrow[from=3-6, to=3-7]
    \arrow[from=3-7, to=3-8]
    \arrow[from=3-8, to=3-9]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTYsWzIsMCwiMCJdLFszLDAsIk0iXSxbNCwwLCJQX3tuLTF9Il0sWzUsMCwiXFxjZG90cyJdLFs2LDAsIlBfMCJdLFs3LDAsIkEiXSxbOCwwLCIwIl0sWzAsMCwiXFxwaGk6Il0sWzAsMiwiXFx4aSc6Il0sWzIsMiwiMCJdLFszLDIsIkIiXSxbNCwyLCJYX24nIl0sWzUsMiwiXFxjZG90cyJdLFs2LDIsIlhfMSciXSxbNywyLCJBIl0sWzgsMiwiMCJdLFswLDFdLFsxLDJdLFsyLDNdLFszLDRdLFs0LDVdLFs1LDZdLFsxLDEwLCJcXGV4aXN0cyBcXGJldGEiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSwxNCwiXFxvbmVfQSIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiwxMSwiXFxleGlzdHMiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCwxMywiXFxleGlzdHMiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMywxMiwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzksMTBdLFsxMCwxMV0sWzExLDEyXSxbMTIsMTNdLFsxMywxNF0sWzE0LDE1XV0=)

Then the dimension shifting theorem (Exc. 2.4.3) and its proof yields an exact sequence
\[
{\operatorname{Hom}}(P_{n-1}, B) \to {\operatorname{Hom}}(M, B) \xrightarrow{{{\partial}}} \operatorname{Ext}^n(A, B) \to 0
,\]
and the asserted bijection is then given by \( \Theta(\xi) \coloneqq{{\partial}}(\beta) \).
:::

## 3.6: Kunneth and Universal Coefficient Theorems

::: {.observation}
If \( R \) is a field \( F \) then \( \operatorname{Tor}_n^F(A, B) = 0 \) for all \( n>0 \), i.e. every module over a field is a complex space, hence free, hence projective, hence flat, and so \( A\otimes_F {\,\cdot\,} \) is exact.
:::

::: {.question}
If \( {P}^{{\,\cdot\,}} \in \mathsf{Ch}({\mathsf{Mod}{\hbox{-}}R}) \) is a complex of of right \( R{\hbox{-}} \)modules and \( M \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) is a left \( R{\hbox{-}} \)module, how is the homology of \( {P}^{{\,\cdot\,}} \) and that of \( {P}^{{\,\cdot\,}} \otimes_R M \) related?
:::

::: {.lemma title="?"}
Given a 5-term exact sequence
\[
A_1 \xrightarrow{\alpha} A_2 \xrightarrow{f} B \xrightarrow{g} C_1 \xrightarrow{\gamma} C_2
,\]
there is a corresponding SES

```{=tex}
\begin{tikzcd}
    0 & A & B & C & 0 \\
    & {\substack{ A_2/\ker f = A_2/\operatorname{im}\alpha \\ = \operatorname{coker}\alpha} } && {\operatorname{im}g = \ker f}
    \arrow[from=1-1, to=1-2]
    \arrow["{\mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu}", from=1-2, to=1-3]
    \arrow["g", from=1-3, to=1-4]
    \arrow[from=1-4, to=1-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbMCwwLCIwIl0sWzEsMCwiQSJdLFsyLDAsIkIiXSxbMywwLCJDIl0sWzQsMCwiMCJdLFszLDEsIlxcaW0gZyA9IFxca2VyIGYiXSxbMSwxLCJBXzIvXFxrZXIgZiA9IEFfMi9cXGltXFxhbHBoYSA9IFxcY29rZXIgXFxhbHBoYSJdLFswLDFdLFsxLDIsIlxcYmFyIGYiXSxbMiwzLCJnIl0sWzMsNF1d)

In particular, we can always take \( A = \operatorname{coker}\alpha \) and \( C = \ker \gamma \) in any abelian category.
:::

::: {.theorem title="The Kunneth Formula"}
Let \( {P}^{{\,\cdot\,}}\in \mathsf{Ch}({\mathsf{Mod}{\hbox{-}}R}) \) be a chain complex of flat right \( R{\hbox{-}} \)modules such that each boundary module \( dP_n \) is again flat. Then for every \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) and all \( N \), there is an exact sequence

```{=tex}
\begin{tikzcd}
    0 && {H_n({P}^{{\,\cdot\,}})\otimes_R M} && {H_n({P}^{{\,\cdot\,}} \otimes_R M)} && {\operatorname{Tor}^1_R(H_{n-1}({P}^{{\,\cdot\,}}), M)} && 0
    \arrow[from=1-7, to=1-9]
    \arrow[from=1-5, to=1-7]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCIwIl0sWzIsMCwiSF9uKFxcdmVjdG9yIFApXFx0ZW5zb3JfUiBNIl0sWzQsMCwiSF9uKFxcdmVjdG9yIFAgXFx0ZW5zb3JfUiBNKSJdLFs2LDAsIlxcVG9yXjFfUihIX3tuLTF9KFxcdmVjdG9yIFApLCBNKSJdLFs4LDAsIjAiXSxbMyw0XSxbMiwzXSxbMSwyXSxbMCwxXV0=)
:::

::: {.remark}
Note that the correction term vanishes if \( R \) is a field.
:::

::: {.proof title="?"}
Let \( Z_n \coloneqq Z_n({P}^{{\,\cdot\,}}) \), there there is a SES
\[
0 \to Z_n \to P_n \xrightarrow{d} dP_n \to 0
.\]
Since \( P_n, dP_n \) are flat by assumption, by Exc. 3.2.2, \( Z_n \) is also flat. Taking the LES from applying \( {\,\cdot\,}\otimes_R M \), noting that \( M \) is arbitrary yields

```{=tex}
\begin{tikzcd}
    &&&& 0 \\
    {Z_n\otimes_R M} && {P_n\otimes_R M} && {dP_n\otimes_R M} \\
    \\
    && \cdots && {\operatorname{Tor}_1(dP_n, M)}
    \arrow[from=4-5, to=2-1, out=0, in=180]
    \arrow[from=2-1, to=2-3]
    \arrow[from=2-3, to=2-5]
    \arrow[from=4-3, to=4-5]
    \arrow[from=2-5, to=1-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbNCwxLCJkUF9uXFx0ZW5zb3JfUiBNIl0sWzIsMSwiUF9uXFx0ZW5zb3JfUiBNIl0sWzAsMSwiWl9uXFx0ZW5zb3JfUiBNIl0sWzQsMywiXFxUb3JfMShkUF9uLCBNKSJdLFsyLDMsIlxcY2RvdHMiXSxbNCwwLCIwIl0sWzMsMl0sWzIsMV0sWzEsMF0sWzQsM10sWzAsNV1d)

Here \( \operatorname{Tor}_1(dP_n, M)=0 \) since \( dP_n \) is flat, noting that one could also apply \( \operatorname{Tor}(dP_n, {\,\cdot\,}) \) to get a similar LES. So this lifts to a SES of complexes
\[
0 \to {Z}^{{\,\cdot\,}}\otimes M \to {P}^{{\,\cdot\,}}\otimes M \to {dP}^{{\,\cdot\,}}\otimes M \to 0
,\]
where we can consider \( d\otimes\one \) in the middle. We'll pick this up next time!
:::

# Friday, March 05

> See first 10m

::: {.observation}
For a SES
\[
A_1 \xrightarrow{\alpha} A_2 \xrightarrow{f} B \xrightarrow{g} C_1 \xrightarrow{\gamma} C_2
,\]
one can obtain an exact sequence
\[
0\to \operatorname{coker}\alpha \xrightarrow{\mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu} B \xrightarrow{g} \ker \gamma \to 0
.\]
:::

::: {.observation}
For a SES
\[
0 \to Y \xrightarrow{i} Z \xrightarrow{\pi} {Z\over Y} \to 0
\]
there is an induced exact sequence
:::

Some missed stuff here.

::: {.proof title="of Kunneth Formula (continued)"}
Note that
\[
0\to {Z}^{{\,\cdot\,}} \otimes M \to {P}^{{\,\cdot\,}}\otimes M \to d{P}^{{\,\cdot\,}}\otimes M\to 0
,\]
where the differentials for the end terms are zero, and the homology will recover the original complex.

```{=tex}
\begin{tikzcd}
    &&&& {} && {H_{n+1}(dP \otimes M)= dP \otimes M} \\
    \\
    {} && {H_{n}(Z \otimes M) = Z\otimes M} && {H_{n}(P \otimes M)} && {H_{n}(dP \otimes M) = dP \otimes M} \\
    \\
    && {H_{n-1}(Z \otimes M) = Z_{n-1}\otimes M}
    \arrow[from=1-7, to=3-3, in=180, out=0]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow[from=3-7, to=5-3, in=180, out=0]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbMCwyXSxbMiwyLCJIX3tufShaIFxcdGVuc29yIE0pID0gWlxcdGVuc29yIE0iXSxbNCwyLCJIX3tufShQIFxcdGVuc29yIE0pIl0sWzQsMF0sWzYsMCwiSF97bisxfShkUCBcXHRlbnNvciBNKT0gZFAgXFx0ZW5zb3IgTSJdLFs2LDIsIkhfe259KGRQIFxcdGVuc29yIE0pID0gZFAgXFx0ZW5zb3IgTSJdLFsyLDQsIkhfe24tMX0oWiBcXHRlbnNvciBNKSA9IFpfe24tMX1cXHRlbnNvciBNIl0sWzQsMV0sWzEsMl0sWzIsNV0sWzUsNl1d)

By using the explicit formula for \( {{\partial}} \), it turns out that \( {{\partial}}= (dP_{i+1} \overset{i}\hookrightarrow Z) \otimes\one M \). By observation one, we get a SES
\[
0 \to {Z_n\otimes M \over dP_{n+1} \otimes M } \to H_n(P\otimes M) \to \ker i( \otimes\one_M) \to 0
.\]

By observation 1, the first term equals \( H_n({P}^{{\,\cdot\,}})\otimes M \). From this, we get a flat resolution of \( H_{n-1}(P) \):

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,214;green,92;blue,92}{\deg:} & \textcolor{rgb,255:red,214;green,92;blue,92}{2} & \textcolor{rgb,255:red,214;green,92;blue,92}{1} & \textcolor{rgb,255:red,214;green,92;blue,92}{0} \\
    0 & 0 & {dP_n} & {Z_{n-1}} & {H_{n-1}(P)} & 0
    \arrow[from=2-2, to=2-3]
    \arrow[from=2-3, to=2-4]
    \arrow[from=2-4, to=2-5]
    \arrow[from=2-5, to=2-6]
    \arrow[from=2-1, to=2-2]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTAsWzAsMSwiMCJdLFsxLDEsIjAiXSxbMSwwLCIyIixbMCw2MCw2MCwxXV0sWzIsMCwiMSIsWzAsNjAsNjAsMV1dLFszLDAsIjAiLFswLDYwLDYwLDFdXSxbMiwxLCJkUF9uIl0sWzMsMSwiWl97bi0xfSJdLFs0LDEsIkhfe24tMX0oUCkiXSxbNSwxLCIwIl0sWzAsMCwiXFxkZWc6IixbMCw2MCw2MCwxXV0sWzEsNV0sWzUsNl0sWzYsN10sWzcsOF0sWzAsMV1d)

So we can use this to compute \( \operatorname{Tor}(H_{n-1}(P), M) \) by taking homology:

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,214;green,92;blue,92}{\deg} & \textcolor{rgb,255:red,214;green,92;blue,92}{2} & \textcolor{rgb,255:red,214;green,92;blue,92}{1} & \textcolor{rgb,255:red,214;green,92;blue,92}{0} \\
    0 & 0 & {dP_n \otimes M} & {Z_{n-1}\otimes M} & 0
    \arrow[from=2-1, to=2-2]
    \arrow[from=2-2, to=2-3]
    \arrow["{i\otimes\one}", from=2-3, to=2-4]
    \arrow[from=2-4, to=2-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOSxbMCwxLCIwIl0sWzEsMSwiMCJdLFsyLDEsImRQX24gXFx0ZW5zb3IgTSJdLFszLDEsIlpfe24tMX1cXHRlbnNvciBNIl0sWzQsMSwiMCJdLFszLDAsIjAiLFswLDYwLDYwLDFdXSxbMiwwLCIxIixbMCw2MCw2MCwxXV0sWzEsMCwiMiIsWzAsNjAsNjAsMV1dLFswLDAsIlxcZGVnIixbMCw2MCw2MCwxXV0sWzAsMV0sWzEsMl0sWzIsMywiaVxcdGVuc29yIFxcMSJdLFszLDRdXQ==)

Thus
\[
\ker(i\otimes\one_M) = \operatorname{Tor}_1( H_{n-1}(P), M) \cong \ker (dP_m \xrightarrow{{{\partial}}} Z_{n-1} \otimes M)
.\]
:::

::: {.theorem title="Universal Coefficient Theorem"}
Let \( {P}^{{\,\cdot\,}} \) be a chain complex of free abelian groups. For every abelian groups \( M \) and every \( n \), the Kunneth sequence splits non-canonically as
\[
H_n({P}^{{\,\cdot\,}} \otimes M) \cong \qty{ H_n( {P}^{{\,\cdot\,}} )\otimes M } \oplus \operatorname{Tor}_1^{{\mathbb{Z}}}(H_{n-1}(P), M)
.\]
:::

::: {.remark}
In optimal situations the tor term vanishes, e.g. if either term is torsionfree (so no elements of finite order).
:::

::: {.fact}
Every subgroup of a free abelian group is free (hence projective, hence flat).
:::

::: {.proof title="?"}
Since \( dP_n \leq dP_{n-1} \), we can conclude \( dP_n \) is free. Thus the following SES splits:
\[
0\to Z_n \to P_n \xrightarrow{d} dP_n \to 0
.\]
So any lift of the identity map on \( dP_n \) gives an isomorphic copy of the last term in the middle term, yielding \( P_n \cong Z_n \oplus dP_n \). Now tensoring with \( M \) and using that it distributes over direct sums yields
\[
P_n \otimes M \cong (Z_n \otimes M) \oplus (dP_n \otimes M)
.\]
The left-hand side contains a copy of \( \ker(d_n \otimes\one: P_n \otimes M \to P_{n-1} \otimes M) \), which itself contains a copy of \( Z_n\otimes M \). So by a linear algebra exercise, we have \( \ker(d_n \otimes\one) \cong (Z_n \otimes M) \oplus A \) for some unknown \( A \), and since \( dP_{n+1} \otimes M = \operatorname{im}(d_{n+1}\otimes\one) \) is contained in the first term, we can use the partial exactness of tensoring to preserve quotients and obtain
\[
H_n(P\otimes M) = \qty{ H_n(P) \otimes M}  \oplus C'
\]
for some \( C' \). Now applying the Kunneth formula we find that \( C' = \operatorname{Tor}^{\mathbb{Z}}_1( H_{n-1}(P), M) \), yielding the claimed direct sum.
:::

::: {.remark}
The following is a generalization for both.
:::

::: {.theorem title="Kunneth formula for complexes"}
Let \( P, Q \in \mathsf{Ch}({\mathsf{R}{\hbox{-}}\mathsf{Mod}}) \) be complexes, then
\[
P\otimes Q \coloneqq\operatorname{Tot}^{\oplus}(P\otimes Q)_n \coloneqq\bigoplus_{p+q = n} P_p \otimes Q_q
\]
with differential[^6]
\[
d(a\otimes b) = (da)\otimes b + (-1)^pa \otimes(db)
.\]
If \( P_n, dP_n \) are flat for all \( n \), then there exists a SES
\[
0 
\to \bigoplus_{p+q=n} H_p(P)\otimes H_q(Q) 
\to H_n(P\otimes Q) 
\to \bigoplus_{p+q=n-1} \operatorname{Tor}^R_1(H_p(P), H_q(Q) ) 
\to 0
.\]
:::

::: {.proof title="?"}
Omitted here, but uses same ideas as the previous proofs. Hint: take \( Q \) to have \( M \) in degree 0.
:::

## Applications to Topology

::: {.definition title="Simplicial Homology"}
See some applications in section 1 of Weibel, e.g. simplicial and singular homology. The setup: \( X\in {\mathsf{Top}}, R\in \mathsf{Ring} \) unital, and for \( k\geq 0 \) let \( S_k = S_k(X) \) be the free \( R{\hbox{-}} \)module on \( {\operatorname{Hom}}_{\mathsf{Top}}( \Delta_k, X) \) where \( \Delta_k \) is the standard simplex By ordering the vertices, this induces an ordering on the faces by taking lexicographic ordering. Then the restriction of a map \( \Delta_k \to X \) to the \( i \)th face of \( \Delta_k \) gives a map \( \Delta_{k-1} \to X \), which induces an \( R{\hbox{-}} \)module morphism \( {{\partial}}_i: S_k \to S_{k-1} \) By summing these we can define \( d \coloneqq\sum_{i=0}^k (-1)^i {{\partial}}_i: S_k\to S_{k-1} \) and it turns out that \( d^2 = 0 \). So we can define a complex
\[
\cdots \to S_2 \xrightarrow{d} \to S_1\to S_0 \to 0 \in \mathsf{Ch}({\mathsf{R}{\hbox{-}}\mathsf{Mod}})
.\]
Taking it homology yields the **simplicial homology** of the complex \( H_n(X; R) \coloneqq H_n({S}^{{\,\cdot\,}}(X) ) \).
:::

::: {.remark}
Taking \( R={\mathbb{Z}} \) makes \( S_k(X) \) a free abelian group. If \( M \) is any abelian group, we can define \( H_n(X; M) \coloneqq H_n( {S}^{{\,\cdot\,}}(X) \otimes_{\mathbb{Z}}M) \), the homology with **coefficients** in \( M \). If no coefficients are specified, we write \( H_n(X) \coloneqq H_n(X; {\mathbb{Z}}) \). There is then a universal coefficient theorem in topology:
\[
H_n(X; M) 
\cong 
\qty{ H_n(X) \otimes_{\mathbb{Z}}M} \oplus \operatorname{Tor}_1^{\mathbb{Z}}( H_{n-1}(X), M)
.\]
:::

::: {.remark}
Next week: group cohomology, spectral sequences next week. This will give us some objects to apply spectral sequences.
:::

# Monday, March 08

## 3.6: Universal Coefficients Theorem

::: {.remark}
Let \( X \in {\mathsf{Top}} \) and \( S_k(X) \) be the free \( {\mathbb{Z}}{\hbox{-}} \)module on \( {\operatorname{Hom}}_{\mathsf{Top}}( \Delta_k, X) \), which assemble into a chain complex \( S(X) \). For \( M\in {\mathsf{Ab}} \), we defined \( H^n(X; M) \coloneqq H^n( {\operatorname{Hom}}(S(X), M)) \) and write \( H^n(X) \coloneqq H^n(X; {\mathbb{Z}}) \). The universal coefficient theorem states
\[
H^n(X; M) \cong {\operatorname{Hom}}_{\mathbb{Z}}(H_n(X), M) \oplus \operatorname{Ext}^1_{\mathbb{Z}}( H_{n-1}(X), M)
.\]
:::

::: {.warnings}
Note that this is homology on the RHS, not cohomology!
:::

::: {.theorem title="Universal Coefficients Theorem for Cohomology"}
Let \( {P}^{{\,\cdot\,}} \) be a chain complex of projective \( R{\hbox{-}} \)modules. Assume \( dP_n \) is also projective for all \( n \). For \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \), there is a split SES
\[
0 \to \operatorname{Ext}_R^1(H_{n-1}(P), M) \to H^n( {\operatorname{Hom}}_R( {P}^{{\,\cdot\,}}, M)) \to {\operatorname{Hom}}_R (H_n(P), M) \to 0
.\]
:::

```{=tex}
\todo[inline]{Ask about naturality!}
```
::: {.proof title="Sketch"}
As in the last lecture with free abelian groups, since the \( dP_n \) are projective we can split \( P_n \cong Z_n \oplus dP_n \) since \( Z_n = \ker d \). Applying homs, since it's an additive functor this yields a new split exact sequence
\[
0 \to {\operatorname{Hom}}(dP_n, M) \to {\operatorname{Hom}}(P_n, M) \to {\operatorname{Hom}}(Z_n, M) \to 0
.\]
Now running the proof for the original Kunneth formula and replacing tensor products to homs, these assemble into a split exact sequence of complexes and this yields the desired SES. Using the strategy of the proof of the UCF for free abelian groups to see that the sequence splits (although non-canonically).
:::

::: {.remark}
Note that flat is weaker than projective for tensor products, but in an asymmetric situation, there's nothing weaker than projective for the hom functors to be exact (since this is an iff).
:::

## Ch. 6: Group Homology and Cohomology

### Definitions and Properties

::: {.definition title="Modules of Groups"}
Let \( G\in {\mathsf{Grp}} \) be any group, finite or infinite, and let \( A\in {G}{\hbox{-}}\mathsf{Mod} \) be a left \( G{\hbox{-}} \)module, i.e. an abelian group on which \( G \) acts by additive maps on the left, written \( g.a \) or \( ga \) for \( g\in G, a\in A \). Here *additive* means that \( g.(a_1 + a_2) = g.a_1 + g.a_2 \). Note that this implies \( g.0 = 0, -g.a = -(g.a), g_1 (g_2 . a) = (g_1 g_2).a, 1_G.a = a \). Writing \( \mathop{\mathrm{End}}_R(A) \coloneqq{\operatorname{Hom}}_R(A, A) \), we have a group morphism
\[
G &\to \mathop{\mathrm{End}}_{\mathbb{Z}}(A) \\
g &\mapsto g.({\,\cdot\,})
.\]
:::

::: {.definition title="Equivariant Maps"}
If \( B \in {G}{\hbox{-}}\mathsf{Mod} \) is another left \( G{\hbox{-}} \)module, then
\[
{\operatorname{Hom}}_G(A, B) = \left\{{ f\in {\operatorname{Hom}}_{\mathbb{Z}}(A, B) {~\mathrel{\Big|}~}f(g.a) = g(f(a)) \quad \forall a\in A, \forall g\in G }\right\} 
,\]
which are **\( G{\hbox{-}} \)equivariant maps**.
:::

::: {.definition title="Integral Group Ring"}
We define
\[
{\mathbb{Z}}G\coloneqq\left\{{ \sum_{i=1}^N m_i g_i {~\mathrel{\Big|}~}m_i\in {\mathbb{Z}}, g_i\in G, n\in {\mathbb{N}}}\right\} 
.\]
We can equip this with a ring structure using \( (mg)(m' g') = mm' gg' \) and extending \( {\mathbb{Z}}{\hbox{-}} \)linearly.
:::

::: {.remark}
There is an equality of categories \( {{G}{\hbox{-}}\mathsf{Mod}} = {{\mathbb{Z}}G}{\hbox{-}}\mathsf{Mod} \). This is also the same as the functor category \( {\mathsf{Ab}}^\mathcal{G} \) (a category of the form \( \mathcal{A}^{\mathcal{I}} \)) where \( \mathcal{G} \) is the category with one object whose morphisms are the elements of \( G \). In other words, \( {\operatorname{Ob}}(\mathcal{G}) \coloneqq\left\{{ 1 }\right\} \) and \( {\operatorname{Hom}}_{\mathcal{G}}(1, 1) = G \). Note that every morphism is invertible since \( G \) is a group.

![image_2021-03-08-09-36-58](figures/image_2021-03-08-09-36-58.png)

The right-hand side yields a \( G{\hbox{-}} \)module since \( F(g)(a) = g.a \).
:::

::: {.definition title="Trivial modules"}
An object \( A\in {G}{\hbox{-}}\mathsf{Mod} \) is a **trivial** module if and only if \( g.a = a \) for all \( g\in G \).
:::

::: {.remark}
Any \( G\in {\mathsf{Ab}} \) can be viewed as a trivial \( G{\hbox{-}} \)module in this way. This yields a functor \( \operatorname{Triv}:{\mathsf{Ab}}\to {G}{\hbox{-}}\mathsf{Mod} \). There is a distinguished trivial \( G{\hbox{-}} \)module, namely \( A \coloneqq{\mathbb{Z}} \) with the trivial \( G{\hbox{-}} \)action. There are two natural functors \( {G}{\hbox{-}}\mathsf{Mod}\to {\mathsf{Ab}} \):

-   \( A^G \coloneqq\left\{{ a\in A {~\mathrel{\Big|}~}g.a = a \forall g\in G }\right\} \), the **invariant subgroup** of \( A \).
-   \( A_G \coloneqq A / \left\langle{ ga-a {~\mathrel{\Big|}~}g\in G, a\in A }\right\rangle \), where we take the \( G{\hbox{-}} \)module generated by the relation in the denominator, which are the **coinvariants** of \( A \).
:::

::: {.exercise title="6.1.1"}
```{=tex}
\envlist
```
1.  \( A^G \) is the maximal trivial submodule of \( A \), so the functor \( ({\,\cdot\,})^G \) is right-adjoint to \( \operatorname{Triv} \). These should both be easy checks! So this is left-exact and has right-derived functors (similar to ext).

2.  \( A_G \) is the largest \( G{\hbox{-}} \)trivial quotient of \( A \), and \( ({\,\cdot\,})_G \) is left-adjoint to \( \operatorname{Triv} \). Thus it is right-exact and has left-derived functors (similar to tor).
:::

::: {.lemma title="?"}
Let \( A\in {G}{\hbox{-}}\mathsf{Mod} \) and \( {\mathbb{Z}} \) be the trivial \( G{\hbox{-}} \)module. Then

1.  \( A_G \cong {\mathbb{Z}}\otimes_{{\mathbb{Z}}G} A \), and
2.  \( A^G \cong {\operatorname{Hom}}_G({\mathbb{Z}}, A) \) (**important!!**)
:::

::: {.warnings}
Number 2 above is important to remember!
:::

::: {.proof title="of 1"}
Viewing \( {\mathbb{Z}}= _{{\mathbb{Z}}} {\mathbb{Z}}_{{\mathbb{Z}}G} \in ({{\mathbb{Z}}}, {{\mathbb{Z}}G}){\hbox{-}}\mathsf{biMod} \) with the trivial structure, recall[^7] that we have a functor
\[
{\operatorname{Hom}}_({\mathbb{Z}}, {\,\cdot\,}): {{\mathbb{Z}}}{\hbox{-}}\mathsf{Mod} &\to {{\mathbb{Z}}G}{\hbox{-}}\mathsf{Mod}\\
\]
where \( {\operatorname{Hom}}_{\mathbb{Z}}({\mathbb{Z}}, A) \) has an action \( (g.f)(x) \coloneqq f(x. g) \) for \( x\in {\mathbb{Z}}g\in G \). Since \( x.g = x \) for all \( x, g \), we have \( g.f = f \) and thus \( {\operatorname{Hom}}_{\mathbb{Z}}({\mathbb{Z}}, A) \) is a trivial \( G{\hbox{-}} \)module, and there is an isomorphism in \( {\mathsf{Ab}} \):
\[
{\operatorname{Hom}}_{\mathbb{Z}}({\mathbb{Z}}, A) &\underset{{\mathsf{Ab}}}{\xrightarrow{\sim}} A \\
f &\mapsto f(a)
.\]
Thus \( {\operatorname{Hom}}_{\mathbb{Z}}({\mathbb{Z}}, {\,\cdot\,}) \cong \operatorname{Triv}({\,\cdot\,}) \). By prop 2.6.3, the functor \( {\mathbb{Z}}\otimes_{{\mathbb{Z}}G} ({\,\cdot\,}) \) is left-adjoint to \( {\operatorname{Hom}}_{\mathbb{Z}}( _{{\mathbb{Z}}} {\mathbb{Z}}_{{\mathbb{Z}}G}, {\,\cdot\,}) \). Now applying exercise 6.1.1 part 2, \( ({\,\cdot\,})_G \cong \operatorname{Triv}({\,\cdot\,}) \). Since left-derived functors are universal \( \delta{\hbox{-}} \)functors, we have a natural isomorphism \( ({\,\cdot\,})_G \cong {\mathbb{Z}}\otimes_{{\mathbb{Z}}G} ({\,\cdot\,}) \) since they're both left-adjoint to the same functor.
:::

::: {.proof title="of 2 "}
Taking \( f(1) \), we have \( A^G \cong {\operatorname{Hom}}_{\mathbb{Z}}({\mathbb{Z}}, A^G) \). Using the adjoint property from exercise 6.1.1 part 1, this is isomorphic to \( {\operatorname{Hom}}_G( \operatorname{Triv}({\mathbb{Z}}), A) \). Thus \( ({\,\cdot\,})^G \cong {\operatorname{Hom}}_G({\mathbb{Z}}, {\,\cdot\,}) \).
:::

::: {.remark}
The exts here will classify extensions in the category of left \( {\mathbb{Z}}{\hbox{-}} \)modules. Note the switched order on the hom functor however!
:::

# Appendix: Extra Definitions

::: {.definition title="Acyclic"}
A chain complex \( C \) is **acyclic** if and only if \( H_*(C) = 0 \).
:::

# Extra References

-   <https://www.math.wisc.edu/~csimpson6/notes/2020_spring_homological_algebra/notes.pdf>

# Useful Facts

::: {.remark}
Notational conventions:

-   Finite direct products: \( \bigoplus \)
-   Cohomological indexing: \( C^i, {{\partial}}^i \)
-   Homological indexing: \( C_i, {{\partial}}_i \)
-   Right-derived functors \( R^iF \).
    -   Come from left-exact functors
    -   Require *injective* resolutions
    -   Extend to the right: \( 0 \to F(A) \to F(B) \to F(C) \to L_1 F(A) \cdots \)
-   Left-derived functors \( L_i F \).
    -   Come from right-exact functors
    -   Require *projective* resolutions
    -   Extend to the left: \( \cdots L_1F(C) \to F(A) \to F(B) \to F(C) \to 0 \)
-   Colimits:
    -   Examples: coproducts, direct limits, cokernels, initial objects, pushouts
    -   Commute with left adjoints, i.e. \( L(\mathop{\mathrm{colim}}\nolimits F_i) = \mathop{\mathrm{colim}}\nolimits LF_i \).
-   Examples of limits:
    -   Products, inverse limits, kernels, terminal objects, pullbacks
    -   Commute with right adjoints. i.e. \( R(\mathop{\mathrm{colim}}\nolimits F_i) = \mathop{\mathrm{colim}}\nolimits RF_i \).
:::

::: {.proposition title="Kernels as pullbacks and cokernels as pushouts"}
The kernel \( \ker f \) of a morphism \( f \) can be characterized as a cartesian square, and the cokernel \( \operatorname{coker}f \) as a cocartesian square:

```{=tex}
\begin{tikzcd}
    K \\
    & {\ker f} && \textcolor{rgb,255:red,92;green,92;blue,214}{A} && 0 \\
    \\
    & 0 && \textcolor{rgb,255:red,92;green,92;blue,214}{B} && {\operatorname{coker}f} \\
    &&&&&& C
    \arrow[dotted, from=2-6, to=4-6]
    \arrow[from=2-4, to=2-6]
    \arrow["f"', color={rgb,255:red,92;green,92;blue,214}, from=2-4, to=4-4]
    \arrow["0"', dotted, from=4-4, to=4-6]
    \arrow["\lrcorner"{anchor=center, pos=0.125, rotate=180}, draw=none, from=4-6, to=2-4]
    \arrow["{\exists !}"', dashed, from=4-6, to=5-7]
    \arrow[curve={height=12pt}, from=4-4, to=5-7]
    \arrow[curve={height=-12pt}, from=2-6, to=5-7]
    \arrow[dotted, from=2-2, to=2-4]
    \arrow[from=4-2, to=4-4]
    \arrow[dotted, from=2-2, to=4-2]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=2-2, to=4-4]
    \arrow[curve={height=-12pt}, from=1-1, to=2-4]
    \arrow[curve={height=12pt}, from=1-1, to=4-2]
    \arrow["{\exists !}"', dashed, from=1-1, to=2-2]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMywxLCJBIixbMjQwLDYwLDYwLDFdXSxbNSwxLCIwIl0sWzMsMywiQiIsWzI0MCw2MCw2MCwxXV0sWzUsMywiXFxjb2tlciBmIl0sWzYsNCwiQyJdLFsxLDEsIlxca2VyIGYiXSxbMSwzLCIwIl0sWzAsMCwiSyJdLFsxLDMsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFswLDFdLFswLDIsImYiLDIseyJjb2xvdXIiOlsyNDAsNjAsNjBdfSxbMjQwLDYwLDYwLDFdXSxbMiwzLCIwIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzMsMCwiIiwwLHsic3R5bGUiOnsibmFtZSI6ImNvcm5lciJ9fV0sWzMsNCwiXFxleGlzdHMgISIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDQsIiIsMCx7ImN1cnZlIjoyfV0sWzEsNCwiIiwwLHsiY3VydmUiOi0yfV0sWzUsMCwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzYsMl0sWzUsNiwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzUsMiwiIiwxLHsic3R5bGUiOnsibmFtZSI6ImNvcm5lciJ9fV0sWzcsMCwiIiwxLHsiY3VydmUiOi0yfV0sWzcsNiwiIiwxLHsiY3VydmUiOjJ9XSxbNyw1LCJcXGV4aXN0cyAhIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d)
:::

::: {.proposition title="Basic properties of Hom"}
```{=tex}
\envlist
```
-   \( {\operatorname{Hom}}_R(A, {\,\cdot\,}) \) is:
    -   Covariant
    -   Left-exact
    -   Has right-derived functors \( \operatorname{Ext}^i_R(A, B) \coloneqq R^i {\operatorname{Hom}}_R(A, {\,\cdot\,})(B) \) computed using *injective* resolutions.
-   \( {\operatorname{Hom}}_R({\,\cdot\,}, B) \) is:
    -   Contravariant
    -   Right-exact
    -   Has left-derived functors \( \operatorname{Ext}^i_R(A, B) \coloneqq L_i {\operatorname{Hom}}_R({\,\cdot\,}, B)(A) \) computed using *projective* resolutions.
:::

::: {.proposition title="Basic Properties of Ext"}
```{=tex}
\envlist
```
-   \( \operatorname{Ext}^{>1}(A, B) = 0 \) for any \( A \) projective or \( B \) injective.
:::

::: {.fact}
A maps \( A \xrightarrow{f} B \) in \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) is injective if and only if \( f(a) = 0_B \implies a = 0_A \). Monomorphisms are injective maps in \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \).
:::

::: {.proposition title="Recipe for computing $\\Ext_R^i$"}
Write \( F({\,\cdot\,}) \coloneqq{\operatorname{Hom}}_R(A, {\,\cdot\,}) \). This is left-exact and thus has right-derived functors \( \operatorname{Ext}^i_R(A, B) \coloneqq R^iF(B) \). To compute this:

-   Take an *injective* resolution:
    \[
    1 \to B \xrightarrow{\varepsilon} I^0 \xrightarrow{d^0} I^1 \xrightarrow{d^1} \cdots
    .\]

-   Remove the augmentation \( \varepsilon \) and just keep the complex
    \[
    I^{\,\cdot\,}\coloneqq\qty{ 1 \xrightarrow{d^{-1}} I^0 \xrightarrow{d^0} I^1 \xrightarrow{d^1} \cdots }
    .\]

-   Apply \( F({\,\cdot\,}) \) to get a new (and usually **not exact**) complex
    \[
    F(I)^{\,\cdot\,}\coloneqq\qty{ 1 \xrightarrow{{{\partial}}^{-1}} F(I^0) \xrightarrow{{{\partial}}^0} F(I^1) \xrightarrow{{{\partial}}^1} \cdots }
    ,\]
    where \( {{\partial}}^i \coloneqq F(d^i) \).

-   Take homology, i.e. kernels mod images:
    \[
    R^iF(B) \coloneqq{ \ker d^i \over \operatorname{im}d^{i-1}}
    .\]

Note that \( R^0 F(B) \cong F(B) \) canonically:

-   This is defined as \( \ker {{\partial}}^0 / \operatorname{im}{{\partial}}^{-1} = \ker {{\partial}}^0 / 1 = \ker {{\partial}}^0 \).

-   Use the fact that \( F({\,\cdot\,}) \) is left exact and apply it to the *augmented* complex to obtain
    \[
    1 \to F(B) \xrightarrow{F(\varepsilon)} F(I^0) \xrightarrow{{{\partial}}^0} F(I^1) \xrightarrow{{{\partial}}^1} \cdots 
    .\]

-   By exactness, there is an isomorphism \( \ker {{\partial}}^0 \cong F(B) \).
:::

::: {.proposition title="Computing $\\Hom_\\ZZ(\\ZZ, \\ZZ/n)$"}
\( \phi: {\operatorname{Hom}}_{{\mathbb{Z}}}({\mathbb{Z}}, {\mathbb{Z}}/n) \xrightarrow{\sim} {\mathbb{Z}}/n \), where \( \phi(g) \coloneqq g(1) \).

-   That this is an isomorphism follows from

-   Surjectivity: for each \( \ell \in {\mathbb{Z}}/n \) define a map
    \[
    \psi_y: {\mathbb{Z}}&\to {\mathbb{Z}}/n \\
    1 &\mapsto [\ell]_n
    .\]

-   Injectivity: if \( g(1) = [0]_n \), then
    \[
    g(x) = xg(1) = x[0]_n = [0]_n
    .\]

-   \( {\mathbb{Z}}{\hbox{-}} \)module morphism:
    \[
    \phi(gf) \coloneqq\phi(g\circ f) \coloneqq(g\circ f)(1) = g(f(1)) = f(1)g(1) = \phi(g)\phi(f)
    ,\]
    where we've used the fact that \( {\mathbb{Z}}/n \) is commutative.
:::

::: {.proposition title="Common Hom Groups"}
-   \( {\operatorname{Hom}}_{\mathbb{Z}}({\mathbb{Z}}/m, {\mathbb{Z}}) = 0 \).
-   \( {\operatorname{Hom}}_{\mathbb{Z}}({\mathbb{Z}}/m, {\mathbb{Z}}/n) = {\mathbb{Z}}/d \).
-   \( {\operatorname{Hom}}_{\mathbb{Z}}({\mathbb{Q}}, {\mathbb{Q}}) = {\mathbb{Q}} \).
:::

::: {.proposition title="Common Ext Groups"}
-   \( \operatorname{Ext}_{\mathbb{Z}}({\mathbb{Z}}/m, G) \cong G/mG \)

    -   Use \( 1 \to {\mathbb{Z}}\xrightarrow{\times m} {\mathbb{Z}}\xrightarrow{} {\mathbb{Z}}/m \to 1 \) and apply \( {\operatorname{Hom}}_{\mathbb{Z}}({\,\cdot\,}, {\mathbb{Z}}) \).

-   \( \operatorname{Ext}_{\mathbb{Z}}({\mathbb{Z}}/m, {\mathbb{Z}}/n) = {\mathbb{Z}}/d \).

-   
:::

::: {.slogan}
```{=tex}
\envlist
```
-   In \( {\mathsf{Ab}} \), direct colimits commute with finite limits. Inverse limits do not generally commute with finite colimits.

-   Left adjoints are right-exact with left-derived functors. Right adjoints are left-exact with right-derived functors.

-   Left adjoints commute with colimits: \( L( \mathop{\mathrm{colim}}\nolimits F) = \mathop{\mathrm{colim}}\nolimits(L\circ F) \)
:::

::: {.proposition title="Characterizations of Splittings"}
TFAE in \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \):

-   A SES \( 0\to A\to B \to C\to 0 \) is split.
-   ?
:::

[^1]: See appendix A 1.6 for initial and terminal objects. Note that \( \emptyset \) is an initial but non-terminal object in \( {\mathsf{Set}} \), whereas zero objects are both.

[^2]: Recall that abelian categories are additive and only require *finite* products/coproducts. A counterexample: categories of *finite* abelian groups, where e.g. you can't take infinite sums and stay within the category.

[^3]: Note the typo in 2.5.1.3, it should say the following: "\( B \) is \( {\operatorname{Hom}}_{R}(A, {\,\cdot\,}) \) is acyclic for all \( A \)."

[^4]: The book may have the sign incorrect here.

[^5]: This is the part we used previously, and (4) is the one used for the other half of the argument.

[^6]: Recall that the squares would commute if we took the usual differentials, so we use a sign trick to get \( d^2=0 \).

[^7]: See Weibel p. 41.

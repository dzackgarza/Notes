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

-   The course text is Charles A. Weibel, An introduction to homological algebra, Cambridge Studies in Advanced Mathematics 38, Cambridge University Press, 1994.

-   See corrections: Many corrections to Weibel's book: <http://www.math.rutgers.edu/~weibel/Hbook-corrections.html>

-   1.1-1.5, 2.2-2.7, 3.4 3.6, 6.1, 5.1-5.2, 5.4-5.8, 6.8, 6.7, 6.3, 7.1-7.5, 7.7-7.8, along with most of Appendix A when needed.

-   Course Website: <https://uga.view.usg.edu/d2l/le/content/2218619/viewContent/33763436/View>

## Overview

::: {.definition title="Exact complexes"}
A complex is given by
\[
\cdots \xrightarrow{d_{i-1}} M_{i-1} \xrightarrow{d_i} M_i M_{i+1} \xrightarrow{d_{i+1}} \cdots
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
Applying \( {\operatorname{Hom}}(N, {\,\cdot\,}) \) similarly yields \( {\operatorname{Hom}}_R(N, M_{i}) \xrightarrow{d_{i-1}^*} {\operatorname{Hom}}_R(N, M_{i+1}) \), where \( d_i^* = d_i \circ ({\,\cdot\,}) \) is given by composition.
:::

::: {.example title="?"}
Applying \( {\operatorname{Hom}}({\,\cdot\,}, N) \) yields \( {\operatorname{Hom}}_R(M_i, N) \xrightarrow{d_{i}^*} {\operatorname{Hom}}_R(M_{i+1}, N) \) where \( d_i^* = ({\,\cdot\,}) \circ d_i \).
:::

::: {.remark}
Note that we can also take complexes with arrows in the other direction. For \( F \) a functor, we can rewrite these examples as \( d_i^* \circ d_{i-1}^* = F(d_i) \circ F(d_{i-1}) = F(d_i \circ d_{i-1}) = F(0) = 0 \), provided \( F \) is nice enough and sends zero to zero. This follows from the fact that functors preserve composition. Even if the original complex is exact, the new one may not be, so we can define the following:
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
In the examples, we had \( \ker d_i \subseteq M_i \), but this need not be true since the objects in the category may not be sets. Such an example is the category of complexes of \( R{\hbox{-}} \)modules: \( \mathcal{Cx}({R{\hbox{-}}\operatorname{mod}}) \). In this setting, kernels will be subcomplexes but not subsets.
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
    {\bullet} & {C_{n+1}} & {C_n} & {C_{n-1}} & {\bullet} \\
    \\
    {\bullet} & {D_{n+1}} & {D_n} & {D_{n-1}} & {\bullet}
    \arrow[from=1-1, to=1-2]
    \arrow[from=1-2, to=1-3]
    \arrow[from=1-3, to=1-4]
    \arrow[from=3-1, to=3-2]
    \arrow[from=3-2, to=3-3]
    \arrow[from=3-3, to=3-4]
    \arrow[from=3-4, to=3-5]
    \arrow[from=1-4, to=1-5]
    \arrow["{u_{n+1}}" description, from=1-2, to=3-2]
    \arrow["{u_n}" description, from=1-3, to=3-3]
    \arrow["{u_{n-1}}" description, from=1-4, to=3-4]
\end{tikzcd}
```
:::

::: {.remark}
We can thus define a category \( \mathrm{Ch}({R{\hbox{-}}\operatorname{mod}}) \) where

-   The objects are chain complexes,
-   The morphisms are chain maps.
:::

::: {.exercise title="Weibel 1.1.2"}
A chain complex map \( u: C_{\,\cdot\,}\to D_{\,\cdot\,} \) restricts to \[ u_n: Z_n(C\_`{\,\cdot\,}`{=tex}) `\to `{=tex}Z_n(D\_`{\,\cdot\,}`{=tex}) \\ u_n: B_n(D\_`{\,\cdot\,}`{=tex}) `\to `{=tex}B_n(D\_`{\,\cdot\,}`{=tex})

\] and thus induces a well-defined map \( u_{n, *}: H_n(C_{\,\cdot\,}) \to H_n(D_{\,\cdot\,}) \).
:::

::: {.remark}
Each \( H_n \) thus becomes a functor \( \mathrm{Ch}({R{\hbox{-}}\operatorname{mod}}) \to {R{\hbox{-}}\operatorname{mod}} \) where \( H_n(u) \coloneqq u_{*. n} \).
:::

# Friday, January 15

## Review

> See assignment posted on ELC, due Wed Jan 27

::: {.remark}
Recall that a chain complex is \( C_{\,\cdot\,} \) where \( d^2 = 0 \), and a map of chain complex is a ladder of commuting squares

> [Link to diagram](https://q.uiver.app/?q=WzAsMTEsWzEsMCwiQ197bi0xfSJdLFsyLDAsIkNfe259Il0sWzMsMCwiQ197bisxfSJdLFsyLDIsIkRfbiJdLFszLDIsIkRfe24rMX0iXSxbMSwyLCJEX3tuLTF9Il0sWzQsMCwiXFxidWxsZXQiXSxbNCwyLCJcXGJ1bGxldCJdLFswLDIsIlxcYnVsbGV0Il0sWzAsMCwiXFxidWxsZXQiXSxbMiwxXSxbMCw1LCJ1Il0sWzEsMywidV9uIl0sWzIsNCwidSJdLFswLDFdLFsxLDIsImRfbiJdLFs1LDNdLFszLDQsImRfbiIsMl0sWzIsNl0sWzQsN10sWzgsNV0sWzksMF1d)
> ```{=tex}
> \begin{tikzcd}
> \bullet & {C_{n-1}} & {C_{n}} & {C_{n+1}} & \bullet \\
> && {} \\
> \bullet & {D_{n-1}} & {D_n} & {D_{n+1}} & \bullet
> \arrow["u", from=1-2, to=3-2]
> \arrow["{u_n}", from=1-3, to=3-3]
> \arrow["u", from=1-4, to=3-4]
> \arrow[from=1-2, to=1-3]
> \arrow["{d_n}", from=1-3, to=1-4]
> \arrow[from=3-2, to=3-3]
> \arrow["{d_n}"', from=3-3, to=3-4]
> \arrow[from=1-4, to=1-5]
> \arrow[from=3-4, to=3-5]
> \arrow[from=3-1, to=3-2]
> \arrow[from=1-1, to=1-2]
> \end{tikzcd}
> ```

Recall that \( u_n: Z_n(C) \to Z_n(D) \) and \( u_n: B_n(C) \to B_n(D) \) preserves these submodules, so there are induced maps \( u_{{\,\cdot\,}, n}: H_n(D) \to H_n(D) \) where \( H_n(C) \coloneqq Z_n(C) / B_n(C) \). Moreover, taking \( H_n({\,\cdot\,}) \) is a functor from \( \operatorname{Ch}({R{\hbox{-}}\operatorname{mod}}) \to {R{\hbox{-}}\operatorname{mod}} \) for any fixed \( n \) and on objects \( C\mapsto H_n(C) \) and chain maps \( u_{n} \to H_n(u) \coloneqq u_{*, n} \). Note the lower indices denote maps going down in degree.
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
```{=tex}
\envlist
```
-   If \( \left\{{A_ \alpha}\right\} \) is a family of complexes, we can form two new complexes:
    -   The product \( \qty{ \prod_ \alpha A_ \alpha}_n \coloneqq\prod_ \alpha A _{\alpha, n} \) with the differential \( \qty{ \prod d_ \alpha}_n: \prod A _{\alpha, n} \xrightarrow{d _{\alpha, n}} \prod A _{\alpha, n-1} \).
    -   The coproduct \( \qty{ \coprod _{\alpha} A _{\alpha}}_n \coloneqq\bigoplus _{\alpha} A _{\alpha, n} \), i.e. there are only finitely many nonzero entries, with exactly the same definition as above for the differential.
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

> [Link to Diagram](https://q.uiver.app/?q=WzAsMTgsWzIsNCwiQ19uIl0sWzQsNCwiQ197bi0xfSJdLFsyLDIsIkJfbiJdLFs0LDIsIkJfe24tMX0iXSxbMiwwLCJcXGtlciBmX24iXSxbNCwwLCJcXGtlciBmX3tuLTF9Il0sWzIsNiwiXFxjb2sgZl9uIl0sWzQsNiwiXFxjb2sgZl97bi0xfSJdLFszLDVdLFs0LDVdLFs2LDAsIlxcY2RvdHMiXSxbNiwyLCJcXGNkb3RzIl0sWzYsNCwiXFxjZG90cyJdLFs2LDYsIlxcY2RvdHMiXSxbMCw2LCJcXGNkb3RzIl0sWzAsNCwiXFxjZG90cyJdLFswLDIsIlxcY2RvdHMiXSxbMCwwLCJcXGNkb3RzIl0sWzAsMSwiZF9uIl0sWzIsMywiZF9uIl0sWzQsNSwiXFxleGlzdHMgZF9uIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsNywiXFxleGlzdHMgZF9uIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzQsMiwiaV97bn0iLDFdLFsyLDAsImZfbiIsMV0sWzAsNiwiXFxwaV9uIiwxXSxbMywxLCJmX3tuLTF9IiwxXSxbMSw3LCJcXHBpX3tuLTF9IiwxXSxbNSwzLCJpX3tuLTF9IiwxXSxbMTcsNF0sWzE2LDJdLFsxNSwwXSxbMTQsNl0sWzcsMTNdLFsxLDEyXSxbMywxMV0sWzUsMTBdXQ==)

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
Here \( \ker f \leq B \) is a subcomplex, and \( \operatorname{coker}f \) is a quotient complex of \( C \). The chain map \( i: \ker f\to B \) is a categorical kernel of \( f \) in \( \operatorname{Ch} \), and \( \pi \) is similarly a cokernel. See appendix A 1.6. These constructions make \( \operatorname{Ch} \) into an **abelian category**: roughly an additive category where every morphism has a kernel and a cokernel.

[^1]: See appendix A 1.6 for initial and terminal objects. Note that \( \emptyset \) is an initial but non-terminal object in \( {\operatorname{Set}} \), whereas zero objects are both.

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

# Lecture 1

Goals:

-   Describe Hochschild and cyclic homology using a classical approach
-   Describe the "Topological" counterparts
-   Relate these to Algebraic and Arithmetic Geometry

## Classical Theory

This only depends on basic homological algebra, but becomes a bit more interesting when objects with a "perfectoid" flavor are input.

::: {.definition title="Hochschild Complex and Homology"}
Fix a commutative ring \( k \), then for any \( k{\hbox{-}} \) algebra \( A \) we can form the **Hochschild complex**
\[
{\operatorname{HH}}(A_{/k}) &\coloneqq A \xleftarrow{{\partial}_1} A^{\otimes_k 2} \xleftarrow{{\partial}_2} A^{\otimes_k 3}\to \cdots \\  
~ \\
{\partial}_1(a_0 \otimes a_1)~ &= a_0a_1 - a_1a_0 \\
{\partial}_2(a_0\otimes a_1\otimes a_2) &= a_0a_1 \otimes a_2 -a_0a_1\otimes a_2 + a_2a_0\otimes a_1 \\
& \vdots
\]
The Hochschild homology groups \( {\operatorname{HH}}_n(A_{/k}) \) are defined by taking the homology of this complex.
:::

::: {.example title="?"}
\[
{\operatorname{HH}}_0(A_{/k}) &= { A \over \left\langle{ab-ba}\right\rangle } = {A \over [A, A]}  = A && \text{if $A$ is commutative} \\
{\operatorname{HH}}_1(A_{/k})  &= { A\otimes_k A \over  \left\langle{ab\otimes c - a\otimes bc + ac\otimes b}\right\rangle } = \Omega^1_{A_{/k}} \\
\\
\vdots &
\\
{\operatorname{HH}}_*(A_{/k}) &\text{ in general is a commutative graded $k{\hbox{-}}$algebra}
.\]

Note that the ideal appearing in the second example is the Leibniz rule from differential forms, and so the last object is the module of **Kahler differential forms** via the identification \( adb \mapsto a\otimes b \)
:::

::: {.theorem title="Hochschild-Kostent-Rosenburg, 60s"}
Using these facts, we get maps
\[
\varepsilon_n: \Omega^n_{A_{/k}} \to {\operatorname{HH}}_n
\]
by the universal property of the differential forms
\[
\Omega^*_{A_{/k}} \coloneqq\Lambda_A^* \Omega^1_{A_{/k}}
\]
Then the theorem is that if \( A \) is smooth over \( k \), then \( \varepsilon_n \) are all isomorphisms.
:::

So the philosophy here is that \( {\operatorname{HH}}_* \) works as a generalization of differential forms, even if \( A \) is not smooth or even not commutative (Connes, Feigen-Tsygen, Loday-Quillen).

## Toward Proving HKR: A Lemma

::: {.remark}
We use \( ({\,\cdot\,}\widehat{\otimes}{\,\cdot\,}) \) to denote the *derived tensor product.*
:::

::: {.lemma title="?"}
Let \( E = A\otimes_k A^\text{op} \) be the enveloping algebra of \( A \), then for any flat \( k{\hbox{-}} \) algebra \( A \), up to quasi-isomorphism we have
\[
{\operatorname{HH}}(A_{/k}) \simeq A\widehat{\otimes}_E A.
\]
:::

::: {.remark}
This works because \( E \) is an \( A \) bimodule, and so the derived tensor product appearing on the RHS is represented by the Hochschild complex on the left. Note that we can do this for non-flat \( A \) by replacing the tensor product appearing in \( E \) with a derived tensor product, which puts you in the world of simplicial rings.
:::

::: {.proof title="of lemma"}
To prove this lemma, we explicitly calculate the RHS as
\[
A\widehat{\otimes}_E A = A\widehat{\otimes}_E \left[ A^{\otimes 2} \xleftarrow{{\partial}'_3}  A^{\otimes 3} \xleftarrow{{\partial}'_4} \cdots \right]
\]

where the complex appearing on the RHS is the bar complex, i.e. a resolution of \( A \) by flat \( E{\hbox{-}} \)modules. This is essentially the Hochschild complex, truncating the first term, with a different differential \( {\partial}' \) given by
\[
{\partial}'_n(a_1 \otimes a_2 \otimes\cdots a_n) = \sum_{i=1}^n (-1)^{i+1} a_i \otimes\qty{ \prod_{j\neq i}a_j} 
\]

> (DZG) This may not be quite correct, just a guess, I think I was filling in some missing details.

Because \( A \) is a unital algebra, this complex is exact (except at degree zero), which is a purely algebraic result. It also resolves \( A \). This can be seen because if you use the multiplication map \( m: A\otimes A \to A \) and then \( \ker m = \operatorname{im}{\partial}'_3 \). Under the flatness assumption, all of the terms in this resolution are flat \( A{\hbox{-}} \)modules. Finally, when you base change along \( E \) down to \( A \), this introduces the "cyclic" part of the multiplication defined in \( {\operatorname{HH}} \) earlier, and so this is an on-the-nose identification where the RHS is computing the derived tensor product. This is because in \( E \), \( A \) acts on the left and \( A^\text{op} \) acts on the right, and so taking \( A\widehat{\otimes}_E \) mods out by the multiplication and thus identifies these two actions and introduces the cyclic part of the boundary maps in \( {\operatorname{HH}} \).

From this we obtain the corollary
\[
H_*(A_{/k}) = \operatorname{Tor}_*^E(A,A).
\]
:::

## Proving HKR

Again take \( A \) a smooth \( k{\hbox{-}} \)algebra, we need to show that the graded algebra \( {\operatorname{HH}}_*(A_{/k}) \) is the exterior algebra on its degree 1 element. This is well-known for the graded algebra \( \operatorname{Tor}_*^B(C, C) \) when \( \ker(B \twoheadrightarrow C) \) is locally generated by a regular sequence. In this case, there is an explicit Koszul complex from which you can read off the fact that these tor groups are just the wedge algebra generated by \( \operatorname{Tor}_1^B \).

An example of this is the multiplication map \( A \otimes_k A \to A \), since \( k\to A \) is smooth. This works because locally (after localizing and perhaps some etale extension), this looks like a polynomial algebra and this map looks like \( k[t] \otimes_k k[t] \to k[t] \), which has kernel \( \left\langle{t\otimes 1 - 1\otimes t}\right\rangle \), which is a regular sequence. This exactly applies to the corollary above, so we're done.

> Note: something interesting happens here, because we usually look at differential forms arising from the de Rham cochain complex, while here's we've written down a chain complex whose homology gives the terms in this cochain complex. This is what makes \( {\operatorname{HH}} \) an enrichment of the de Rham complex.

### Cyclic Homology

We have group actions on the Hochschild complex:
\[
{\operatorname{HH}}(A_{/k}) \coloneqq&A  \xleftarrow{{\partial}_1} &&A^{\otimes_k 2} \xleftarrow{{\partial}_2} &&A^{\otimes_k 3} \xleftarrow{} \cdots \\
&{\mathbb{Z}}/1{\mathbb{Z}}\curvearrowright&&{\mathbb{Z}}/2{\mathbb{Z}}\curvearrowright&&{\mathbb{Z}}/3{\mathbb{Z}}\curvearrowright
\]

In general, we have
\[
\left\langle{t_n}\right\rangle \coloneqq{\mathbb{Z}}/(n+1){\mathbb{Z}}\curvearrowright A^{\otimes_k (n+1)}.
\]

Note that the label on the generator here is slightly weird, but the reason is that \( {\mathbb{Z}}/n{\mathbb{Z}} \) is actually acting on terms of homological degree \( n-1 \). This action is given by a "cyclic right shift",
\[
t_n: A^{\otimes_k(n+1)} &\to A^{\otimes_k (n+1) } \\
a_0 \otimes\cdots \otimes a_{n-1} \otimes a_n 
&\mapsto 
a_{n} \otimes a_0 \otimes\cdots \otimes a_{n-1}
\]

We then define a norm
\[
\mathrm{N}&: A^{\otimes_k (n+1)} {\circlearrowleft}\\
\mathrm{N}& \coloneqq\sum_{i=1}^n \left((-1)^n t_n\right)^i
\]

where we think of \( (-1)^nt_n \) as a "twisted action", and an "extra degeneracy" map
\[
s: A^{\otimes_k n} &\to A^{\otimes_k (n+1)} \\
\bigotimes_i a_i &\mapsto 1\otimes\bigotimes_i a_i.
\]

These come about because the Hochschild complex is actually the complex associated to some simplicial \( k{\hbox{-}} \)module, which has face maps (going down) and degeneracy maps (going up). The boundary maps are the alternating sums of the face maps here, and the degeneracy maps just involve inserting a 1 somewhere in the tensor product -- except this particular map doesn't appear, which is why it's an "extra" degeneracy.

::: {.definition title="Connes Operator and Algebraic $S^1$ Complexes"}
Perhaps the most important map is **Connes operator**,
\[
B: A^{\otimes_k n} \xrightarrow{N} A^{\otimes_k n} \xrightarrow{s} A^{\otimes_k (n+1)}
\xrightarrow{\operatorname{id}- (-1)^nt_n} A^{\otimes_k (n+1)}
\]
One can check that \( B^2=0 \) and \( B{\partial}+ {\partial}B = 0 \) for \( {\partial} \) the boundary map in the Hochschild complex \( {\operatorname{HH}} \). Thus \( B \) gives \( {\operatorname{HH}} \) the structure of a cochain complex, in addition to it being a chain complex, which are both compatible. This is called a **mixed complex** or an **algebraic \( S^1{\hbox{-}} \)complex**.
:::

::: {.remark}
We can also think of \( B:H(A_{/k}) \to {\operatorname{HH}}(A_{/k})[-1] \), and \( B \) can be said to "refine the de Rham differential", characterized by the commutativity of the following diagram:

```{=tex}
\begin{tikzcd}
    {{\operatorname{HH}}_n(A_{/k})} && {{\operatorname{HH}}_{n+1}(A_{/k})} \\
    \\
    {\Omega^n_{A_{/k}}} && {\Omega^{n+1}_{A_{/k}}}
    \arrow["{\varepsilon_{n+1}}", from=3-3, to=1-3]
    \arrow["{\varepsilon_n}", from=3-1, to=1-1]
    \arrow["{{{\partial}}_{dR}}"{description}, from=3-1, to=3-3]
    \arrow["B"{description}, from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXEhIX24oQV97L2t9KSJdLFsyLDAsIlxcSEhfe24rMX0oQV97L2t9KSJdLFswLDIsIlxcT21lZ2Febl97QV97L2t9fSJdLFsyLDIsIlxcT21lZ2Fee24rMX1fe0Ffey9rfX0iXSxbMywxLCJcXGVwc197bisxfSJdLFsyLDAsIlxcZXBzX24iXSxbMiwzLCJcXGJkX3tkUn0iLDFdLFswLDEsIkIiLDFdXQ==)
:::

::: {.slogan}
\( {\operatorname{HH}} \) is a "lift" of the entire structure of the de Rham complex. We can now proceed as if we were constructing de Rham cohomology, but we'll do it with \( {\operatorname{HH}} \) instead.
:::

### Definitions of Cyclic Homology (and its variants)

First, we'll assemble a bunch of copies of \( {\operatorname{HH}} \) into a double complex, rewriting \( {\partial} \) as \( b \):

```{=tex}
\begin{tikzcd}
    \ddots & \ddots & \vdots & \vdots & \udots & \udots \\
    \ddots & \textcolor{rgb,255:red,214;green,153;blue,92}{A^{\otimes_k 4}} & \textcolor{rgb,255:red,92;green,214;blue,214}{A^{\otimes_k 3}} & \textcolor{rgb,255:red,92;green,92;blue,214}{A^{\otimes_k 2}} & \textcolor{rgb,255:red,153;green,92;blue,214}{A} & \udots \\
    \cdots & \textcolor{rgb,255:red,92;green,214;blue,214}{A^{\otimes_k 3}} & \textcolor{rgb,255:red,92;green,92;blue,214}{A^{\otimes_k 2}} & \textcolor{rgb,255:red,153;green,92;blue,214}{A} & \bullet & \cdots \\
    \cdots & \textcolor{rgb,255:red,92;green,92;blue,214}{A^{\otimes_k 2}} & \textcolor{rgb,255:red,153;green,92;blue,214}{A} & \bullet & \bullet & \cdots \\
    \udots & \textcolor{rgb,255:red,153;green,92;blue,214}{A} & \bullet & \bullet & \bullet & \ddots \\
    \udots & \udots & \vdots & \vdots & \ddots & \ddots
    \arrow["B"', from=2-5, to=2-4]
    \arrow["B"', from=2-4, to=2-3]
    \arrow["B"', from=2-3, to=2-2]
    \arrow["B"', from=3-3, to=3-2]
    \arrow["B"', from=4-3, to=4-2]
    \arrow["B"', from=3-4, to=3-3]
    \arrow["b", from=2-2, to=3-2]
    \arrow["b", from=3-2, to=4-2]
    \arrow["b", from=4-2, to=5-2]
    \arrow["b", from=2-3, to=3-3]
    \arrow["b", from=3-3, to=4-3]
    \arrow["b", from=2-4, to=3-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMzYsWzEsMSwiQV57XFx0ZW5zb3JfayA0fSIsWzMwLDYwLDYwLDFdXSxbMiwxLCJBXntcXHRlbnNvcl9rIDN9IixbMTgwLDYwLDYwLDFdXSxbMSwyLCJBXntcXHRlbnNvcl9rIDN9IixbMTgwLDYwLDYwLDFdXSxbMSwzLCJBXntcXHRlbnNvcl9rIDJ9IixbMjQwLDYwLDYwLDFdXSxbMiwyLCJBXntcXHRlbnNvcl9rIDJ9IixbMjQwLDYwLDYwLDFdXSxbMywxLCJBXntcXHRlbnNvcl9rIDJ9IixbMjQwLDYwLDYwLDFdXSxbNCwxLCJBIixbMjcwLDYwLDYwLDFdXSxbMywyLCJBIixbMjcwLDYwLDYwLDFdXSxbMiwzLCJBIixbMjcwLDYwLDYwLDFdXSxbMSw0LCJBIixbMjcwLDYwLDYwLDFdXSxbNCwyLCJcXGJ1bGxldCJdLFs0LDMsIlxcYnVsbGV0Il0sWzMsMywiXFxidWxsZXQiXSxbMiw0LCJcXGJ1bGxldCJdLFszLDQsIlxcYnVsbGV0Il0sWzQsNCwiXFxidWxsZXQiXSxbMCwwLCJcXGRkb3RzIl0sWzEsMCwiXFxkZG90cyJdLFswLDEsIlxcZGRvdHMiXSxbMCwyLCJcXGNkb3RzIl0sWzIsMCwiXFx2ZG90cyJdLFszLDAsIlxcdmRvdHMiXSxbMCwzLCJcXGNkb3RzIl0sWzAsNSwiXFx1ZG90cyJdLFs1LDAsIlxcdWRvdHMiXSxbNCwwLCJcXHVkb3RzIl0sWzAsNCwiXFx1ZG90cyJdLFsyLDUsIlxcdmRvdHMiXSxbMyw1LCJcXHZkb3RzIl0sWzUsNCwiXFxkZG90cyJdLFs0LDUsIlxcZGRvdHMiXSxbNSw1LCJcXGRkb3RzIl0sWzEsNSwiXFx1ZG90cyJdLFs1LDMsIlxcY2RvdHMiXSxbNSwyLCJcXGNkb3RzIl0sWzUsMSwiXFx1ZG90cyJdLFs2LDUsIkIiLDJdLFs1LDEsIkIiLDJdLFsxLDAsIkIiLDJdLFs0LDIsIkIiLDJdLFs4LDMsIkIiLDJdLFs3LDQsIkIiLDJdLFswLDIsImIiXSxbMiwzLCJiIl0sWzMsOSwiYiJdLFsxLDQsImIiXSxbNCw4LCJiIl0sWzUsNywiYiJdXQ==)

Here the condition \( Bd = -dB \) from earlier makes this anti-commute. Note that this extends to infinity in both homological and cohomological degree, so this complex is supported in quadrants 1,2 and 3.

::: {.definition title="Periodic Cyclic Homology"}
The **periodic cyclic homology** \( {\operatorname{HP}}(A_{/k}) \) is given by the totalization of this complex, obtained by taking the *direct product* along diagonals. The **classical cyclic homology** \( {\operatorname{HC}}(A_{/k}) \) is obtained by taking the totalization of just the 1st quadrant, where the origin is taken wherever the bidegree is set to \( (0,0) \) (i.e. take the \( x\geq 0 \) part). Finally, we can totalize what's left to define the **negative cyclic homology** \( {\operatorname{HC}}^-(A_{/k}) \), given by the totalization of the 2nd and 3rd quadrants (i.e. take the \( x\leq 0 \) part).
:::

::: {.remark}
Since this complex has infinite support, we have to distinguish between taking the direct sum and product here. There is also a differential graded algebra structure here which we won't address for now. Note that \( {\operatorname{HP}} \) and \( {\operatorname{HC}}^- \) will have degrees extending in both directions, while \( {\operatorname{HC}} \) sits in positive degree only.
:::

We can read off some structural properties. Consider the map given by shifting the entire complex one column to the left (thus excluding one column from positive part):
\[
\mathrm{Sh}: {\operatorname{HP}}\to {\operatorname{HP}}[2]
\]

> Note: \( \mathrm{Sh} \) is referred to as a "periodicity map". The original lectures use \( S \) to denote this map.

Considering the \( {\operatorname{HC}} \) part, we obtain another copy of \( {\operatorname{HC}} \), shifted by bidegree \( (1,1) \), while what we lost was a column -- i.e. a copy of \( {\operatorname{HH}} \). So there as an exact sequence of complexes
\[
0 \to {\operatorname{HH}}\to {\operatorname{HC}}\xrightarrow{{\operatorname{Sh}}}  {\operatorname{HC}}[-2] \to 0
\]

Considering the \( {\operatorname{HC}}^- \) part, an exactly analogous dual thing happens -- this one is easier to think of as restricting \( {\operatorname{HC}}^- \) to a single column. What you obtain is a column (of course) corresponding to \( {\operatorname{HH}} \), which kills a copy of \( {\operatorname{HC}}^- \) shifted by bidegree \( (1,1) \). So this yields another exact sequence
\[
0 \to {\operatorname{HC}}^-[-2] \xrightarrow{{\operatorname{Sh}}} {\operatorname{HC}}^- \to {\operatorname{HH}}\to
\]

::: {.definition title="Norm Sequence"}
The most important sequence here is the **norm sequence**
\[
0 \to {\operatorname{HC}}^- \to {\operatorname{HP}}\to {\operatorname{HC}}[2] \to 0
\]
which states an obvious fact: the totalization of the entire complex sits between the totalizations of the left and right pieces respectively.
:::

::: {.remark}
We can alternatively obtain \( {\operatorname{HP}} \) in the following way:
\[
{\operatorname{HP}}= \varprojlim(\cdots {\operatorname{HC}}[-4] \xrightarrow{{\operatorname{Sh}}} {\operatorname{HC}}[-2] \xrightarrow{{\operatorname{Sh}}} {\operatorname{HC}})
\]

which says that we can totalize the entire complex by first chopping a column off and totalizing, then chopping off a second column to the left and totalizing, and so on taking the inverse limit.

> Note that for this formula to hold, we had to take direct products instead of direct sums when totalizing.

Looking back at the periodicity maps, we find that this induces 2-periodicity in homology, and so
\[
{\operatorname{HP}}_n(A_{/k}) \cong {\operatorname{HP}}_{n+2}(A_{/k})
\]
:::

::: {.slogan}
Coarse information about \( {\operatorname{HH}} \) yields coarse information about all of \( {\operatorname{HP}}, {\operatorname{HC}}, {\operatorname{HC}}^- \).
:::

### Example Usage

Suppose \( {\operatorname{HH}}_\text{odd}(A_{/k}) = 0 \), which happens when \( A \) is "perfectoid" in flavor. Then \( {\operatorname{HP}}_0(A_{/k}) \) is a complete filtered ring which encodes some useful data.

> Note: The graded direct sum \( {\operatorname{HP}}_* \) is actually a graded algebra, so we know that \( {\operatorname{HP}}_0 \) will be some ring/\( k{\hbox{-}} \)algebra.

It is filtered by ideals given by
\[
F^i  {\operatorname{HP}}_0 (A_{/k}) \coloneqq{\operatorname{Sh}}^n({\operatorname{HC}}^-_{2i}(A_{/k}))
\]
for some \( n\geq 0 \), where
\[
\frac{{\operatorname{HP}}_0(A_{/k})} {F^i({\operatorname{HP}}_0(A_{/k}))} \cong {\operatorname{HC}}_{2i-2}(A_{/k})
\]
and the graded pieces are given by
\[
G^i \cong {\operatorname{HH}}_{2i}(A_{/k}).
\]

This essentially falls out of looking at the spectral sequence for \( {\operatorname{HP}} \), where page \( E_2 \) will only contain elements sitting in even degree, and so this will be true for \( {\operatorname{HP}}, {\operatorname{HC}}, {\operatorname{HC}}^- \). We could also find this by looking at the short exact sequences from earlier, writing the associated long exact sequence, and chasing it backwards noting that \( {\operatorname{HC}} \) is only supported in odd degrees.

> DZG: Lecture said supported in odd degrees, but maybe even..? Possibly not, due to shift, I don't know.

Then the map from \( {\operatorname{HC}}^- \) to \( {\operatorname{HP}} \) theories is in fact injective -- we can just apply these periodicity map a number of times and land in some ideal in \( {\operatorname{HP}}_0 \), and the quotient by this ideal will be some copy of the cyclic homology \( {\operatorname{HC}} \). The graded pieces will be the difference between two cyclic homologies, which is exactly Hochschild homology.

::: {.slogan}
\( {\operatorname{HP}}_0 \) contains a great deal of data about \( {\operatorname{HP}}, {\operatorname{HC}}, {\operatorname{HC}}^- \) as long as we equip it with this filtration and keep track of it.
:::

::: {.remark}
Later, we'll feed in perfectoid-ish things, and the result will be some filtered ring which encodes a lot of data about \( {\operatorname{HH}} \). This resulting ring may be identifiable or something completely new!
:::

::: {.remark}
We can take \( A = k[G] \), the group algebra of a group, to recover group homology (provided \( G \) is abelian perhaps). In this case, the map \( B \) is homotopically trivial, and so \( {\operatorname{HP}} \) decomposes into a product of the group homologies -- then the periodicity map just shifts these in a periodic way. (?)
:::

# Lecture 2

Todo

# Lecture 3

Todo

# Lecture 4

## Last Time

We saw some general tools that are required to perform constructions like Hochschild homology in greater generality when one can't write down explicit complexes. We had a cyclic object, which leads to \( S^1 \) acting on something like a complex, and how you can pass from this action to homology, cohomology, and a Tate construction. When we fed Hochschild homology into this, the output was what we saw in earlier lectures: cyclic homology, negative cyclic homology, and periodic cyclic homology.

Why do we want to perform this construction in greater generality, and what information can we expect to extract from it?

## Motivation

Let \( A \) be a \( k{\hbox{-}} \)algebra, and \( D(k) \) be a complex of \( k{\hbox{-}} \)modules. So far we've been looking at these and tensoring things together over \( k \), and in this world we built Hochschild homology: \( {\operatorname{HH}}(A_{/k}) \in (D(k), \otimes_k) \).

We also have \( (D(k), \otimes_k) "\subseteq" (D({\mathbb{Z}}), \otimes_{\mathbb{Z}}) \) , where this "inclusion" appears because any complex of \( k{\hbox{-}} \)modules is also a complex of abelian groups. It is also the case that the \( k{\hbox{-}} \)algebra \( A \) is also a \( {\mathbb{Z}}{\hbox{-}} \)algebra, i.e. a ring, by forgetting the \( k{\hbox{-}} \)linear structure. So in this world, we can take \( {\operatorname{HH}}(A_{/{\mathbb{Z}}}) \), which is in some sense richer in the sense that it can recover \( {\operatorname{HH}}(A_{/k}) \). In particular, we have
\[
{\operatorname{HH}}(A_{/k}) = {\operatorname{HH}}(A_{/{\mathbb{Z}}}) \underset{{\operatorname{HH}}(k_{/{\mathbb{Z}}} )}\otimes k,
\]

where we can form this tensor product because \( k \) itself is a \( {\mathbb{Z}}{\hbox{-}} \)algebra.

In order to make sense of the object on the RHS, it is perhaps easiest to view everything as a simplicial ring, which can be tensored together by tensoring what happens term-wise. This will be an on-the-nose equality when some extra flatness conditions are applied; otherwise it will be some equivalence.

To check this equality, the objects on each side have the following forms
\[
A^{n\otimes_k} \leftrightarrow A^{n\otimes_{\mathbb{Z}}} \underset{m^{\otimes_{\mathbb{Z}}}}{\otimes} k
\]

where tensoring with \( k \) is just by the multiplication map. The claim is that these two are the same.

The \( \leftarrow \) map is given by just replacing \( \otimes_{\mathbb{Z}} \) with \( \otimes_k \) everywhere. For the \( \to \) map, if we map some symbol \( A_0 \times \cdots \times A_n \) to the RHS, the fact that \( {\,\cdot\,}\underset{m^{\otimes_{\mathbb{Z}}}}{\otimes} k \) is modding out by the kernel of the multiplication map exactly imposes \( k{\hbox{-}} \)bilinearity between the tensor symbols. This yields a \( k{\hbox{-}} \)bilinear map, which produces an actual map on the tensor product over \( k \).

## How far can we go?

The question then becomes: how far can we carry out this process? Is there an even richer setting in which we can carry out these constructions, something of the form \( ({\,\cdot\,}, \otimes)? \) The structures we would need are:

-   The structure must be symmetric monoidal
    -   This essentially says that there is some operation that behaves like tensoring and satisfies the properties we know and love.
-   Limits and colimits should exist
    -   So we can form cyclic/periodic-cyclic homology and so on, which as we saw earlier involved taking limits over diagrams involving \( BS^1 \).
-   \( \cdots \), some other technical assumptions
-   A differential-graded category
    -   Need some homotopically rich framework, since in the original derived categories we produced complexes, and we were interested in quasi-isomorphisms and equivalences between these complexes, so not just any category will do.

Can such a thing exist? The answer is no! In some sense, \( D({\mathbb{Z}}) \) is the best we can do -- in the world of d.g. categories, \( D({\mathbb{Z}}) \) is characterized as an initial object. If any other such category \( C \) is produced, then tensoring a map \( C \to D({\mathbb{Z}}) \) yields a restriction/inclusion in the other direction.

So we need to relax some of the conditions, i.e. by replacing d.g. categories with a simplicial or \( \infty{\hbox{-}} \)category, which have less strong linearity conditions on the hom-sets. Then there is something better, and the best we can do is the category of spectra \( D({\operatorname{Sp}}) \), which we're supposed to think of as some kind of derived category over the sphere spectrum. This has a similar initial property as \( D({\mathbb{Z}}) \).

This was an idea of Goodwillie and Voudhousen(?) in the 80s/90s that one should try to transport the construction of \( {\operatorname{HH}} \) beyond the algebraic case and into the world of spectra and ring spectra, where we expect that repeating the construction would yield better information.

What is better information? Here are a few pathologies.

Consider \( {\mathbb{F}}_p \), then
\[
{\operatorname{HP}}_0({\mathbb{F}}_p) = {\mathbb{F}}_p  \underset{{\mathbb{F}}_p}\otimes\cdots \underset{{\mathbb{F}}_p }\otimes{\mathbb{F}}_p = {\mathbb{F}}_p \\
{\operatorname{HP}}_0({{\mathbb{F}}_p}_{/{\mathbb{Z}}}) = \mathbb{Z}_{(p)}\oplus \text{ junk}
\]
where in the second line, tensoring copies of \( {\mathbb{F}}_p \) together naively over \( {\mathbb{Z}} \) would again collapse, but instead taking **derived tensor product** yields something more interesting. The "junk" appearing is in fact quite bad -- period cyclic homology was built out of piling up copies of cyclic homology shifted by different degrees. You get \( (\mathbb{Z}/p)^n \) at different stages, which build up to \( \mathbb{Z}_{(p)} \), but at each finite stage there is already some junk, and an inverse limit of junk is also junk. In fact, the limiting junk is bad -- at each stage, you may differ from \( (\mathbb{Z}/p)^n \) by something controllable, but the limiting junk is not killed by a power of \( p \) -- and thus come in the form of junky \( \mathbb{Z}_{(p)}{\hbox{-}} \)modules.

However, when we repeat our constructions in the world of spectra, this junk term goes away.

## \( {\operatorname{THH}}= {\operatorname{HH}}({\,\cdot\,}, {\operatorname{Sp}}) \) of \( {\mathbb{F}}_p{\hbox{-}} \)algebras {#operatornamethh-operatornamehhcdot-operatornamesp-of-mathbbf_phbox-algebras}

Although the objects we're dealing with are unfamiliar, the following theorem lets you manipulate these objects using algebraic techniques.

::: {.theorem title="Bokstedt"}
\[
{\operatorname{THH}}_\text{odd}({\mathbb{F}}_p) &= 0\\
{\operatorname{THH}}_\text{even}({\mathbb{F}}_p) &= {\mathbb{F}}_p[u] && \text{where } u\in {\operatorname{THH}}_2(FF_p)
.\]
:::

The first part comes from computing the homotopy groups of the spectrum (and the result is something we also saw for \( {\operatorname{HH}} \)), while the second part is due to the fact that \( {\operatorname{THH}}_2 \) is a one-dimensional \( {\mathbb{F}}_p{\hbox{-}} \)vector space, so we can just pick a generator and then multiplication is given in a polynomial fashion.

::: {.corollary title="?"}
For any \( {\mathbb{F}}_p{\hbox{-}} \) algebra \( A \), we get a fiber sequence (or distinguished triangle)
\[
{\operatorname{THH}}(A)[2] \xrightarrow{x\mapsto xu} {\operatorname{THH}}(A) \to {\operatorname{HH}}(A_{/{\mathbb{F}}_p})
\]
:::

::: {.remark}
The first term is \( {\operatorname{THH}}(A) \) shifted by a bit, while what's left on the RHS is the usual \( {\operatorname{HH}} \) we saw in earlier lectures. If we're convinced that the same sort of algebraic manipulations as earlier continues to work in the world of spectra, we get
\[
{\operatorname{HH}}(A_{/{\mathbb{F}}_p}) = {\operatorname{THH}}(A) \underset{{\operatorname{THH}}({\mathbb{F}}_p)} \otimes{\mathbb{F}}_p
\]

which witnesses the fact that \( {\operatorname{THH}}(A) \) is strictly richer than \( {\operatorname{HH}}(A_{/{\mathbb{F}}_p}) \); we can recover the former from the latter. But reading off the previous theorem, in order to kill all of \( {\operatorname{THH}}({\mathbb{F}}_p) \), apart from the initial \( {\mathbb{F}}_p \) in degree zero, we just have to kill \( u \), and so by abuse of notation,
\[
{\operatorname{THH}}(A) \underset{{\operatorname{THH}}({\mathbb{F}}_p)} \otimes{\mathbb{F}}_p = { {\operatorname{THH}}(A) \over  \left\langle{u}\right\rangle}
,\]
where this abuse is (to some extent) allowed in this game. This allows us to study \( {\operatorname{HH}}(A_{/{\mathbb{F}}_p}) \), which we addressed in earlier lectures, in terms of \( {\operatorname{THH}}(A) \) and this class \( u \). If go take homotopy groups, we get a long exact sequence, so we can see what this buys us in the world of abelian groups:
\[
{\operatorname{THH}}_0(A) &\cong {\operatorname{HH}}_0(A_{/{\mathbb{F}}_p}) = A \\
{\operatorname{THH}}_1(A) &\cong {\operatorname{HH}}_1(A_{/{\mathbb{F}}_p}) = \Omega_{A_{/{\mathbb{F}}_p}}^1 \\
\]
we explicitly get the long exact sequence
\[
\cdots {\operatorname{THH}}_1(A) \to {\operatorname{THH}}_3(A) \to {\operatorname{HH}}_3(A_{/{\mathbb{F}}_p})
\to {\operatorname{THH}}_0(A) \to {\operatorname{THH}}_2(A) \to {\operatorname{HH}}_2(A_{/{\mathbb{F}}_p}) \to 0
\]

where we can identify \( {\operatorname{THH}}_0, {\operatorname{THH}}_1 \) as before and in some sense, the \( {\operatorname{THH}} \) are built up out of multiple copies of \( {\operatorname{HH}} \). For example, \( {\operatorname{THH}}_2 \) gets a contribution from \( {\operatorname{HH}}_2 \) and \( {\operatorname{THH}}_0 = {\operatorname{HH}}_0 \). Similarly, \( {\operatorname{THH}}_3 \) has a contribution from \( {\operatorname{HH}}_3 \) and \( {\operatorname{THH}}_1 = {\operatorname{HH}}_1 \). So continuing upwards, each \( {\operatorname{THH}} \) encodes some data about all of the lower \( {\operatorname{HH}} \) and building them together.
:::

The case in which one can most clearly see the way this builds up is when \( A \) is a smooth \( k{\hbox{-}} \)algebra, where we computed how \( {\operatorname{HH}} \) of these looked in the first talk. We have an analogous result:

::: {.theorem title="Hesselholt's Hochschild-Kostent-Rosenburg"}
If \( A \) is a smooth \( {\mathbb{F}}_p{\hbox{-}} \)algebra then
\[
{\operatorname{THH}}_*(A) \cong \Omega^*_{A_{/{\mathbb{F}}_p}} \underset{{\mathbb{F}}_p[u]}\otimes{\mathbb{F}}_p[u]
\]

where the LHS is a graded algebra of \( {\operatorname{THH}} \) groups and the RHS contains the differential forms seen in previous HKR theorems, along with a contribution arising from functoriality and the fact that \( {\mathbb{F}}_p \to A \) yielding a map \( {\operatorname{THH}}({\mathbb{F}}_p)\to {\operatorname{THH}}(A) \), and looks like a polynomial algebra. More precisely, we have
\[
{\operatorname{THH}}_n(A) = \bigoplus_{i=1}^{\left \lfloor{n\over 2}\right \rfloor } \Omega_{A_{/{\mathbb{F}}_p}}^{n-2i}.
\]
:::

::: {.proof title="?"}
Using the long exact sequence we have
\[
\cdots \to {\operatorname{THH}}_{n-2}(A) \to {\operatorname{THH}}_n(A) \to {\operatorname{HH}}_n(A_{/{\mathbb{F}}_p}) \to \cdots
\]
We also have the classical HKR isomorphism
\[
{\operatorname{HH}}_n(A_{/{\mathbb{F}}_p}) \cong \Omega^n_{A_{/{\mathbb{F}}_p}}
.\]
But since \( \Omega \) is appearing in \( {\operatorname{THH}}_1 \), the multiplicative structure produces for us a map
\[
\Omega^n_{A_{/{\mathbb{F}}_p}} \to {\operatorname{THH}}_n(A)
\]
by multiplying together \( n \) times the map \( \Omega^1 \to {\operatorname{THH}}_1 \). But then \( {\operatorname{THH}}_n \twoheadrightarrow{\operatorname{HH}}_n \), which means that the LES breaks into SESs by using the surjectivity at the \( n \) and \( n+1 \) levels and adding zeros at the sides of level \( n \). The result will then follow by induction, since we already have the result in degrees 0 and 1. As we run up the sequence, we'll find that as long as \( {\operatorname{THH}}_{n-2} \) is described by the sum above, then in order to pass to \( {\operatorname{THH}}_n \), we just need to add a copy of \( \Omega_n \).
:::

::: {.remark}
This may initially look bizarre -- it was very attractive in \( {\operatorname{HH}} \) that each group was just given by a bunch of differential forms in the expected degree, while here we have them shifted in different degrees. This actually works out perfectly. We'll look at topological periodic cyclic homology in a moment, which is built by taking the limit of multiple copies of cyclic homology piled on top of one another, and what will happen is that all of these different differential forms will exactly align to sit on top of one another and produce (in the limit) crystalline cohomology. If you view this as represented by the deRham-Witt complex, then you have a canonical \( p{\hbox{-}} \)adic filtration on this complex and all of the pieces look like copies of the deRham complex of your original algebra. So we need all of these copies of the deRham complex at the starting point in order for things to build up correctly and yield something interesting.
:::

## The Periodic Theory \( {\operatorname{TP}}({\mathbb{F}}_p) \) {#the-periodic-theory-operatornametpmathbbf_p}

Recall that this was obtained as \( {\operatorname{TP}}({\mathbb{F}}_p) = {\operatorname{THH}}({\mathbb{F}}_p)^{tS^1} \), where we can think of this as equal to \( {\operatorname{HP}}({{\mathbb{F}}_p}_{/{\operatorname{Sp}}} ) \) where \( tS^1 \) denotes taking the Tate construction. In the algebraic setup, we defined \( {\operatorname{HP}} \) in terms of an explicit double complex which produces a spectral sequence. This sequence converges from the homology of the columns (\( {\operatorname{HH}} \)) to \( {\operatorname{HP}} \). There is similarly a spectral sequence associated to this Tate construction, which can be reindexed to look exactly the same (to the horror of many topologists):

```{=tex}
\begin{tikzcd}
    \ddots && \ddots & \vdots & {} && \udots \\
    {} & \textcolor{rgb,255:red,92;green,92;blue,214}{{{\mathbb{F}}_p}[u]^2} & \bullet & {{{\mathbb{F}}_p}[u]} & \bullet & {{\mathbb{F}}_p}\\
    \ddots & \bullet & \textcolor{rgb,255:red,92;green,92;blue,214}{{{\mathbb{F}}_p}[u]} & \bullet & {{\mathbb{F}}_p}& \bullet \\
    \cdots & {{{\mathbb{F}}_p}[u]} & \bullet & \textcolor{rgb,255:red,92;green,92;blue,214}{{{\mathbb{F}}_p}} & \bullet & \bullet & \cdots \\
    {} & \bullet & {{\mathbb{F}}_p}& \bullet & \bullet & \bullet \\
    & {{\mathbb{F}}_p}& \bullet & \bullet & \bullet & \bullet \\
    \udots &&& \vdots &&& \ddots
    \arrow[from=2-2, to=3-2]
    \arrow[from=3-2, to=4-2]
    \arrow[from=4-2, to=5-2]
    \arrow[from=5-2, to=6-2]
    \arrow[from=5-3, to=5-2]
    \arrow[from=4-4, to=4-3]
    \arrow[from=3-5, to=3-4]
    \arrow[from=3-3, to=3-2]
    \arrow[from=2-4, to=2-3]
    \arrow[from=2-5, to=2-4]
    \arrow[from=3-4, to=3-3]
    \arrow[from=2-3, to=2-2]
    \arrow[from=4-3, to=4-2]
    \arrow[from=2-6, to=2-5]
    \arrow[from=2-3, to=3-3]
    \arrow[from=3-3, to=4-3]
    \arrow[from=4-3, to=5-3]
    \arrow[from=2-4, to=3-4]
    \arrow[from=3-4, to=4-4]
    \arrow[from=2-5, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMzgsWzEsMSwiXFxGcFt1XV4yIixbMjQwLDYwLDYwLDFdXSxbMiwyLCJcXEZwW3VdIixbMjQwLDYwLDYwLDFdXSxbMywzLCJcXEZwIixbMjQwLDYwLDYwLDFdXSxbNCw0LCJcXGJ1bGxldCJdLFszLDQsIlxcYnVsbGV0Il0sWzQsMywiXFxidWxsZXQiXSxbNCwyLCJcXEZwIl0sWzMsMiwiXFxidWxsZXQiXSxbMywxLCJcXEZwW3VdIl0sWzEsMywiXFxGcFt1XSJdLFsxLDIsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbMiwzLCJcXGJ1bGxldCJdLFsyLDQsIlxcRnAiXSxbMSw0LCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzEsNSwiXFxGcCJdLFs1LDEsIlxcRnAiXSxbNSwyLCJcXGJ1bGxldCJdLFs1LDMsIlxcYnVsbGV0Il0sWzUsNCwiXFxidWxsZXQiXSxbNSw1LCJcXGJ1bGxldCJdLFs0LDUsIlxcYnVsbGV0Il0sWzMsNSwiXFxidWxsZXQiXSxbMiw1LCJcXGJ1bGxldCJdLFszLDAsIlxcdmRvdHMiXSxbMyw2LCJcXHZkb3RzIl0sWzYsMywiXFxjZG90cyJdLFswLDMsIlxcY2RvdHMiXSxbMCw2LCJcXHVkb3RzIl0sWzQsMF0sWzYsMCwiXFx1ZG90cyJdLFswLDAsIlxcZGRvdHMiXSxbMCwxXSxbNiw2LCJcXGRkb3RzIl0sWzAsMiwiXFxkZG90cyJdLFsyLDAsIlxcZGRvdHMiXSxbMCw0XSxbMCwxMF0sWzEwLDldLFs5LDE0XSxbMTQsMTZdLFsxMywxNF0sWzIsMTJdLFs2LDddLFsxLDEwXSxbOCwxMV0sWzE1LDhdLFs3LDFdLFsxMSwwXSxbMTIsOV0sWzE3LDE1XSxbMTEsMV0sWzEsMTJdLFsxMiwxM10sWzgsN10sWzcsMl0sWzE1LDZdXQ==)

Here we just put \( {\operatorname{THH}}({\mathbb{F}}_p) \) in each of the columns, where we use the Bokstedt theorem that shows that these vanish in odd degree. We also know that there's a copy of \( {\mathbb{F}}_p[u] \) in each even degree, and we just use the powers to keep track of the multiplicative structure. This converges to \( {\operatorname{TP}}({\mathbb{F}}_p) \), where we repeat the classical theory and "sum" along the diagonals, although we need to solve some extension problems. In particular, the blue terms yield \( {\operatorname{TP}}_0({\mathbb{F}}_p) \). This is because there are no nontrivial differentials -- since it's only supported in even bidegree, every differential either comes from something zero or targets a zero.

So \( {\operatorname{TP}}_0 \) again contains most of the information, which is a completed filtered ring with associated graded pieces given by \( {\mathbb{F}}_p[u] \). So the question is how we can add up copies of \( {\mathbb{F}}_p \) in various degrees and end up with a ring. There are two possibilities:

-   We failed, and we just get \( {\mathbb{F}}_p[[u]] \), or
-   We get \( \mathbb{Z}_{(p)} \).

Fortunately, life is good, and the latter case happens! We thus get a theorem,
\[
{\operatorname{TP}}_0({\mathbb{F}}_p) = \mathbb{Z}_{(p)}
.\]
Checking this isn't terribly difficult.

In particular, we have a class \( u\in {\mathbb{F}}_p[u] \), which is going to give us some element in the first step of the filtration of \( {\operatorname{TP}}_0 \). Either it is getting sent to an element of \( {\operatorname{TP}}_0 \) which is killed by \( p \), according to the first case, or it's getting sent to some multiple of \( p \) (note that \( {\operatorname{TP}}_0 \) is in fact a ring, so it could get sent to \( p \)). So we only need to look at where \( u \) goes in this very low degree part of the spectral sequence. As it turns out, \( {\operatorname{THH}} \) is surprisingly close to classical \( {\operatorname{HH}} \) in very low degrees, and so in the degrees that control this extension problem, you can work with and resolve this at the level of classical \( {\operatorname{HH}} \). This gives you exactly the amount of information needed to determine which way \( u \) acts.

But in fact, the spectral sequence is period, and so what happens along this diagonal happens along every diagonal, and we thus obtain the theorem \( {\operatorname{TP}}_*({\mathbb{F}}_p) = \mathbb{Z}_{(p)}[\sigma^{\pm 1}] \) where \( \sigma \) is any generator of the free \( \mathbb{Z}_{(p)}{\hbox{-}} \)module \( {\operatorname{TP}}_2({\mathbb{F}}_p) \). So it's a nice, 2-periodic cohomology theory.

Now similarly, as from Bokstedt's theorem we got a consequence for arbitrary \( {\mathbb{F}}_p{\hbox{-}} \)algebras, we will similarly find some consequence for \( {\operatorname{TP}}(A) \) for \( A \) and arbitrary \( {\mathbb{F}}_p{\hbox{-}} \)algebra just by knowing what happens in \( {\operatorname{TP}}({\mathbb{F}}_p) \). We now look at the consequences for such an \( A \).

::: {.theorem title="?"}
\[
{\operatorname{TP}}(A)\pmod p \cong {\operatorname{HP}}(A_{/{\mathbb{F}}_p})
.\]
:::

::: {.remark}
This is perhaps the big payoff the justifies that we haven't messed up too badly. In particular, if \( A \) is a smooth algebra, \( {\operatorname{HP}} \) is related to the deRham cohomology. This says that \( {\operatorname{TP}}(A) \) is a mixed characteristic lift of \( {\operatorname{HP}}(A_{/{\mathbb{F}}_p}) \). We know that \( {\operatorname{TP}}(A) \) lives over \( {\operatorname{TP}}({\mathbb{F}}_p) \), which has \( \pi_0 = \mathbb{Z}_{(p)} \), and so \( {\operatorname{TP}}(A) \) lives of \( \mathbb{Z}_{(p)} \), so this produces some sort of functorial lift which will turn out to be crystalline cohomology.
:::

> Major! This holds for an arbitrary \( {\mathbb{F}}_p{\hbox{-}} \)algebra, so you could plug in some singular ring to get a canonical mixed-characteristic lift of \( {\operatorname{TP}} \) in the case. Or as per the original view of \( {\operatorname{TP}} \), even for noncommutative rings, it is some replacement of deRham cohomology. Even if you take some noncommutative \( {\mathbb{F}}_p{\hbox{-}} \)algebra, even that has some nice functorial mixed-characteristic lift to \( \mathbb{Z}_{(p)} \).

> Note: as far as Morrow is aware, this point of view of the existence of noncommutative crystalline cohomology has not been explored.

::: {.proof title="?"}
From Bokstedt's theorem, we had an exact sequence
\[
{\operatorname{THH}}(A)[-2] \xrightarrow{u} {\operatorname{THH}}(A) \to {\operatorname{HH}}(A_{/{\mathbb{F}}_p})
\]

and if we carefully choose how we multiply by \( u \), this will be compatible with the \( S^1 \) action manifesting in the cyclic structures everywhere. We can this apply \( tS^1 \) everywhere, which is an exact functor, yielding
\[
{\operatorname{TP}}(A)[-2] \xrightarrow{u} {\operatorname{TP}}(A) \to {\operatorname{HP}}(A_{/{\mathbb{F}}_p}).
\]

We should emphasize at this point that it is not automatic that \( {\operatorname{TP}} \) is in fact periodic, as this will not hold for an arbitrary ring. In this case, however, since we have \( {\mathbb{F}}_p{\hbox{-}} \)algebras, we read 2-periodicity off of the spectral sequence for \( {\mathbb{F}}_p \), which lifts to a result for \( {\mathbb{F}}_p \) algebras \( A \). We in fact have \( {\operatorname{TP}}(A)[-2] \xrightarrow{\cong }{\operatorname{TP}}(A) \), and the map \( u \) becomes
\[
{\operatorname{TP}}(A) \xrightarrow{\times p} {\operatorname{TP}}(A)
.\]
This was more or less the extension problem we needed to solve earlier, where we have to check that \( u\mapsto p \in {\operatorname{TP}}_0 \). Thus if you mod out \( p \) from \( {\operatorname{TP}}(A) \), then you collapse an \( {\operatorname{HP}} \), yielding the original statement.

For example, if \( A \) is smooth over \( {\mathbb{F}}_p \), then \( {\operatorname{TP}}(A) \) will look like crystalline cohomology
\[
R\Gamma_\text{crys}(A_{/\mathbb{Z}_{(p)}} ) \coloneqq\Omega^{\,\cdot\,}_{\widetilde{A}_{/{\mathbb{F}}_p} }
\]
where \( \widetilde A \) is any smooth algebra over \( \mathbb{Z}_{(p)} \) lifting \( A \). A priori, this may depend on choice of lift, so we can't necessarily take this as a definition of crystalline cohomology. It turns out not to depend on choice, and one way to see that is by comparing to what happens in \( {\operatorname{TP}} \), although this is perhaps overkill.
:::

Next time, we'll explain more closely the comparison between \( {\operatorname{TP}} \) and crystalline cohomology, and we'll see some analogous statements that arise when we plug in \( \mathbb{Z}_{(p)}{\hbox{-}} \)algebras instead of \( {\mathbb{F}}_p{\hbox{-}} \)algebras.

::: {.question}
Does there always exist a smooth lift of \( A \)?
:::

::: {.answer}
When you plug in a ring, it's not clear, but it does always exist. This is only an affine statement, and so it will certainly not hold for the case of a projective variety over \( {\mathbb{F}}_p \). But this is precisely the point of crystalline cohomology -- it tells you that in the affine case, you can lift your algebra to some smooth \( \mathbb{Z}_{(p)}{\hbox{-}} \)algebra, and define this cohomology theory in terms of the lift. But how can you possible glue this construction when your variety is non-liftable? Crystalline cohomology says that in fact, it can be done.
:::

::: {.question}
If \( A \) is a perfect algebra over \( {\mathbb{F}}_p \), what are \( {\operatorname{TP}} \) and \( TH \)?
:::

::: {.answer}
Replacing \( {\mathbb{F}}_p \) by any perfect \( {\mathbb{F}}_p{\hbox{-}} \)algebra \( A \) still yields true statement if you replace \( \mathbb{Z}_{(p)} \) by \( W(A) \), the ring of Witt vectors over \( A \).
:::

::: {.question}
Does forming \( {\operatorname{TP}}(A) \) commute with base change, like modding out by \( p \)? Is \( {\operatorname{TP}} \) of a lift equal to a lift of \( {\operatorname{TP}} \)?
:::

::: {.answer}
No, no. More interesting things happen!
:::

::: {.question}
Are you making any claims about whether \( {\operatorname{TP}}(A) \) has any \( p{\hbox{-}} \)torsion, like the homotopy groups, when you say it's a mixed-characteristic lift?
:::

::: {.answer}
It doesn't seem like such a claim was made, so what do we mean by "a mixed-characteristic lift"? This means that when you take it derived mod \( p \), you recover the RHS, but a priori there's no reason there couldn't also be some \( p{\hbox{-}} \)torsion in \( {\operatorname{TP}} \). In fact, even in the theory of crystalline cohomology, given a smooth projective variety over \( {\mathbb{F}}_p \), you can see some torsion phenomena happening in \( R\Gamma_\text{crys} \) over \( \mathbb{Z}_{(p)} \). You'll see that \( {\operatorname{TP}} \) is in fact built out of copies of \( R\Gamma_\text{crys} \), which could contain torsion -- in some sense, this is not well-understood.
:::

::: {.question}
Do \( {\operatorname{TP}} \) and \( {\operatorname{THH}} \) always have etale descent?
:::

::: {.answer}
Yes, even flat descent.
:::

::: {.question}
When looking at \( {\operatorname{HP}}(A_{/{\mathbb{F}}_p}) \), does this use the derived tensor product or the usual one?
:::

::: {.answer}
Every algebra over a field is flat, so they coincide. When taking \( {\operatorname{HP}}({{\mathbb{F}}_p}_{/{\mathbb{Z}}} ) \), then they have to be derived -- in general, everything should involve derived tensor products. If you replace \( {\mathbb{F}}_p \) with some perfect ring, for example, then you need derived tensor products.
:::

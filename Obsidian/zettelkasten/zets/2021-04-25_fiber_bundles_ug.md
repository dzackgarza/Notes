---
date: 2021-04-25T02:33
---

#homotopy #bundles #fibration #algebraic_topology

# Fiber Bundles

What is a fiber bundle? Generally speaking, it is similar to a fibration - we require the homotopy lifting property to hold, although it is not necessary that path lifting is unique.

![lifting - todo tikz](https://upload.wikimedia.org/wikipedia/en/b/b9/Homotopy_lifting_property.png)

However, it also satisfies more conditions - in particular, the condition of _local triviality_. This requires that the total space looks like a product locally, although there may some type of global monodromy. Thus with some mild conditions^[A fiber bundle $E \to B$ is a fibration when $B$ is paracompact.], fiber bundles will be instances of fibrations (or alternatively, fibrations are a generalization of fiber bundles, whichever you prefer!)

As with fibrations, we can interpret a fiber bundle as "a family of $B$s indexed/parameterized by $F$s", and the general shape data of a fiber bundle is similarly given by

\begin{tikzcd}
F \arrow[rr, hook] &  & E \arrow[dd, "\pi", two heads] \\
 &  &  \\
 &  & B \arrow[uu, "s", dotted, bend left]
\end{tikzcd}


where $B$ is the base space, $E$ is the total space, $\pi: E \to B$ is the projection map, and $F$ is "the" fiber (in this case, unique up to homeomorphism). Fiber bundles are often described in shorthand by the data $E \mapsvia{\pi}B$, or occasionally by tuples such as $(E, \pi, B)$.

The local triviality condition is a requirement that the projection $\pi$ locally factors through the product; that is, for each open set $U\in B$, there is a homeomorphism $\varphi$ making this diagram commute:

\begin{tikzcd}
\pi^{-1}(U) \arrow[dd, "\pi", two heads] \arrow[rr, "\varphi", dashed] &  & U\times F \arrow[lldd, "{(a,b) \mapsto a}"] \\
 &  &  \\
U &  &
\end{tikzcd}

Fiber bundles may admit right-inverses to the projection map $s: B\to E$ satisfying $\pi \circ s = \id_B$, denoted _sections_. Equivalently, for each $b\in B$, a section is a choice of an element $e$ in the preimage $\pi^{-1}(b) \homotopic F$ (i.e. the fiber over $b$). Sections are sometimes referred to as _cross-sections_ in older literature, due to the fact that a choice of section yields might be schematically represented as such:

![foliation diagram](figures/foliation-diagram.png)

Here, we imagine each fiber as a cross-section or "level set" of the total space, giving rise to a "foliation" of $E$ by the fibers.^[When $E$ is in fact a product $F\cross B$, this actually is a foliation in the technical sense.]

For a given bundle, it is generally possible to choose sections locally, but there may or may not exist globally defined sections. Thus one key question is **when does a fiber bunde admit a global section?**

A bundle is said to be _trivial_ if $E = F \cross B$, and so another important question is **when is a fiber bundle trivial?**

**Definition**: A fiber bundle in which $F$ is a $k\dash$vector space for some field $k$ is referred to as a _rank $n$ vector bundle._ When $k=\RR, \CC$, they are denoted real/complex vector bundles respectively. A vector bundle of rank $1$ is often referred to as a _line bundle_.


**Example**: There are in fact non-trivial fiber bundles. Consider the space $E$ that can appear as the total space in a line bundle over the circle

$$ \RR^1 \to E \to S^1$$

That is, the total spaces that occur when a one-dimensional real vector space (i.e. a real line) is chosen at each point of $S^1$. One possibility is the trivial bundle $E \cong S^1 \cross \RR \cong S^1 \cross I^\circ \in \text{DiffTop}$, which is an "open cylinder":

But another possibility is $E \cong M^\circ \in\text{DiffTop}$, an open Mobius band:

![mobius band](figures/mobius-band.png)

Here we can take the base space $B$ to be the circle through the center of the band; then every open neighborhood $U$ of a point $b\in B$ contains an arc of the center circle crossed with a vertical line segment that misses $\del M$. Thus the local picture looks like $S^1 \cross I^\circ$, while globally $M\not\cong S^1 \cross I^\circ \in \text{Top}$.^[Due to the fact that, for example, $M$ is nonorientable and orientability distinguishes topological spaces up to homeomorphism.]

So in terms of fiber bundles, we have the following situation

% https://q.uiver.app/?q=WzAsMyxbMCwwLCJcXFJSIl0sWzIsMCwiTSJdLFsyLDIsIlNeMSJdLFsxLDJdLFswLDFdXQ==
\begin{tikzcd}
	\RR && M \\
	\\
	&& {S^1}
	\arrow[from=1-3, to=3-3]
	\arrow[from=1-1, to=1-3]
\end{tikzcd}

and thus $M$ is associated to a nontrivial line bundle over the circle.

---

**Remark:** In fact, these are the only two line bundles over $S^1$. This leads us to a natural question, similar to the group extension question: **given a base $B$ and fiber $F$, what are the isomorphism classes of fiber bundles over $B$ with fiber $F$?** In general, we will find that these classes manifest themselves in homology or homotopy. As an example, we have the following result:

**Notation**: Let $I(F, B)$ denote isomorphism classes of fiber bundles of the form $F \to \wait \to B$.

## Proposition:

The set of isomorphism classes of smooth line bundles over a space $B$ satisfies the following isomorphism of abelian groups:

$$I(\RR^1, B) \cong H^1(B; \ZZ_2) \in \text{Ab}$$

in which the RHS is generated by the first Stiefel-Whitney class $w_1(B)$.

_Proof:_

_Lemma:_ The structure group of a vector bundle is a general linear group. (Or orthogonal group, by Gram-Schmidt)

_Lemma:_ The classifying space of $\GL(n, \RR)$ is $\Gr(n, \RR^\infty)$

_Lemma_: $\Gr(n, \RR^\infty) = \RP^\infty \homotopic K(\ZZ_2, 1)$

_Lemma:_ For $G$ an abelian group and $X$ a CW complex, $[X, K(G, n)] \cong H^n(X; G)$

The structure group of a vector bundle can be taken to be either the general linear group or the orthogonal group, and the classifying space of both groups are homotopy-equivalent to an infinite real Grassmanian.

$$
I(\RR^1, B) &= [B, \B\Aut_{\Vect}(\RR)]\\
&= [B, \B\GL(1, \RR)]\\
&= [B, \Gr_1(\RR^\infty)] \\
&= [B, \RP^\infty] \\
&= [B, K(\ZZ/2, 1)] \\
&= H^1(B; \ZZ/2)
$$


This is the general sort of pattern we will find - isomorphism classes of bundles will be represented by homotopy classes of maps into classifying spaces, and for nice enough classifying spaces, these will represent elements in cohomology.

**Corollary**: 
There are two isomorphism classes of line bundles over $S^1$, generated by the Mobius strip, since $H^1(S^1, \ZZ_2) = \ZZ_2$ (Note: this computation follows from the fact that $H_1(S^1) = \ZZ$ and an application of both universal coefficient theorems.)

**Note:** 
The Stiefel-Whitney class is only a complete invariant of _line_ bundles over a space. It is generally an incomplete invariant; for higher dimensions or different types of fibers, other invariants (so-called _characteristic classes_) will be necessary.

Another important piece of data corresponding to a fiber bundle is the _structure group_, which is a subgroup of $\text{Sym}(F) \in \text{Set}$ and arises from imposing conditions on the structure of the transition functions between local trivial patches. A fiber bundle with structure group $G$ is referred to as a _$G\dash$bundle_.

> See next: [2021-04-25_vector_bundles_ug](2021-04-25_vector_bundles_ug.md)

What is a fiber bundle? Generally speaking, it is similar to a fibration - we require the homotopy lifting property to hold, although it is not necessary that path lifting is unique.
![lifting - todo tikz](https://upload.wikimedia.org/wikipedia/en/b/b9/Homotopy_lifting_property.png)

However, it also satisfies more conditions - in particular, the condition of _local triviality_. This requires that the total space looks like a product locally, although there may some type of global monodromy. Thus with some mild conditions^[A fiber bundle $E \to B$ is a fibration when $B$ is paracompact.], fiber bundles will be instances of fibrations (or alternatively, fibrations are a generalization of fiber bundles, whichever you prefer!)

As with fibrations, we can interpret a fiber bundle as "a family of $B$s indexed/parameterized by $F$s", and the general shape data of a fiber bundle is similarly given by

```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{standalone}
\usepackage{tikz-cd}
\usepackage{adjustbox}
\begin{document}
\adjustbox{scale=2,center}{%
	\begin{tikzcd}
	F \arrow[rr, hook] &  & E \arrow[dd, "\pi", two heads] \\
	 &  &  \\
	 &  & B \arrow[uu, "s", dotted, bend left]
	\end{tikzcd}
}
\end{document}
```

where $B$ is the base space, $E$ is the total space, $\pi: E \to B$ is the projection map, and $F$ is "the" fiber (in this case, unique up to homeomorphism). Fiber bundles are often described in shorthand by the data $E \mapsvia{\pi}B$, or occasionally by tuples such as $(E, \pi, B)$.

The local triviality condition is a requirement that the projection $\pi$ locally factors through the product; that is, for each open set $U\in B$, there is a homeomorphism $\varphi$ making this diagram commute:

```latex {cmd=true, hide=true}
\documentclass{standalone}
\usepackage{tikz-cd}
\usepackage{adjustbox}
\begin{document}
\adjustbox{scale=2,center}{%
	\begin{tikzcd}
	\pi^{-1}(U) \arrow[dd, "\pi", two heads] \arrow[rr, "\varphi", dashed] &  & U\times F \arrow[lldd, "{(a,b) \mapsto a}"] \\
	 &  &  \\
	U &  &
	\end{tikzcd}
}
\end{document}
```

Fiber bundles may admit right-inverses to the projection map $s: B\to E$ satisfying $\pi \circ s = \id_B$, denoted *sections*. Equivalently, for each $b\in B$, a section is a choice of an element $e$ in the preimage $\pi^{-1}(b) \homotopic F$ (i.e. the fiber over $b$). Sections are sometimes referred to as _cross-sections_ in older literature, due to the fact that a choice of section yields might be schematically represented as such:

![foliation diagram](figures/foliation-diagram.png)

Here, we imagine each fiber as a cross-section or "level set" of the total space, giving rise to a "foliation" of $E$ by the fibers.^[When $E$ is in fact a product $F\cross B$, this actually is a foliation in the technical sense.]

For a given bundle, it is generally possible to choose sections locally, but there may or may not exist globally defined sections. Thus one key question is **when does a fiber bundle admit a global section?**

A bundle is said to be *trivial* if $E = F \cross B$, and so another important question is **when is a fiber bundle trivial?**

**Definition**: A fiber bundle in which $F$ is a $k\dash$vector space for some field $k$ is referred to as a _rank $n$ vector bundle._ When $k=\RR, \CC$, they are denoted real/complex vector bundles respectively. A vector bundle of rank $1$ is often referred to as a _line bundle_.


**Example**: There are in fact non-trivial fiber bundles. Consider the space $E$ that can appear as the total space in a line bundle over the circle

$$ \RR^1 \to E \to S^1$$

That is, the total spaces that occur when a one-dimensional real vector space (i.e. a real line) is chosen at each point of $S^1$. One possibility is the trivial bundle $E \cong S^1 \cross \RR \cong S^1 \cross I^\circ \in \text{DiffTop}$, which is an "open cylinder":

But another possibility is $E \cong M^\circ \in\text{DiffTop}$, an open Möbius band:

![Möbius band](figures/mobius-band.png)

Here we can take the base space $B$ to be the circle through the center of the band; then every open neighborhood $U$ of a point $b\in B$ contains an arc of the center circle crossed with a vertical line segment that misses $\del M$. Thus the local picture looks like $S^1 \cross I^\circ$, while globally $M\not\cong S^1 \cross I^\circ \in \text{Top}$.^[Due to the fact that, for example, $M$ is nonorientable and orientability distinguishes topological spaces up to homeomorphism.]

So in terms of fiber bundles, we have the following situation
$$
\begin{array}
&\RR &\to &~~~M &\to &S^1\\
\require{HTML} \style{display: inline-block; transform: rotate(90deg)}{=} &&~~~\require{HTML} \style{display: inline-block; transform: rotate(90deg)}{\neq} &&\require{HTML} \style{display: inline-block; transform: rotate(90deg)}{=}\\
\RR &\to &S^1 \cross I^\circ &\to &S^1
\end{array}
$$

and thus $M$ is associated to a nontrivial line bundle over the circle.

---

**Remark:** In fact, these are the only two line bundles over $S^1$. This leads us to a natural question, similar to the group extension question: **given a base $B$ and fiber $F$, what are the isomorphism classes of fiber bundles over $B$ with fiber $F$?** In general, we will find that these classes manifest themselves in homology or homotopy. As an example, we have the following result:

**Notation**: Let $I(F, B)$ denote isomorphism classes of fiber bundles of the form $F \to \wait \to B$.

## Proposition:

The set of isomorphism classes of smooth line bundles over a space $B$ satisfies the following isomorphism of abelian groups:

$$I(\RR^1, B) \cong H^1(B; \ZZ_2) \in \text{Ab}$$

in which the RHS is generated by the first Stiefel-Whitney class $w_1(B)$.

_Proof:_

_Lemma:_ The structure group of a vector bundle is a general linear group. (Or orthogonal group, by Gram-Schmidt)

_Lemma:_ The classifying space of $\GL(n, \RR)$ is $\Gr(n, \RR^\infty)$

*Lemma*: $\Gr(n, \RR^\infty) = \RP^\infty \homotopic K(\ZZ_2, 1)$

_Lemma:_ For $G$ an abelian group and $X$ a CW complex, $[X, K(G, n)] \cong H^n(X; G)$

The structure group of a vector bundle can be taken to be either the general linear group or the orthogonal group, and the classifying space of both groups are homotopy-equivalent to an infinite real Grassmanian.
$$\begin{align}
I(\RR^1, B) &= [B, B(\restrictionof{\text{(Sym$~\RR$)}}{\text{Vect}})]\\
&= [B, B(\GL(1, \RR))]\\
&= [B, \Gr(1, \RR^\infty)] \\
&= [B, \RP^\infty] \\
&= [B, K(\ZZ_2, 1)] \\
&= H^1(B; \ZZ_2)
\end{align}
$$
$\qed$

This is the general sort of pattern we will find - isomorphism classes of bundles will be represented by homotopy classes of maps into classifying spaces, and for nice enough classifying spaces, these will represent elements in cohomology.

**Corollary**: There are two isomorphism classes of line bundles over $S^1$, generated by the Möbius strip, since $H^1(S^1, \ZZ_2) = \ZZ_2$ (Note: this computation follows from the fact that $H_1(S^1) = \ZZ$ and an application of both universal coefficient theorems.)

**Note:** The Stiefel-Whitney class is only a complete invariant of *line* bundles over a space. It is generally an incomplete invariant; for higher dimensions or different types of fibers, other invariants (so-called _characteristic classes_) will be necessary.

Another important piece of data corresponding to a fiber bundle is the _structure group_, which is a subgroup of $\text{Sym}(F) \in \text{Set}$ and arises from imposing conditions on the structure of the transition functions between local trivial patches. A fiber bundle with structure group $G$ is referred to as a _$G\dash$bundle_.
# Fiber Bundles

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

![foliation diagram](/home/zack/notes/images/2018/05/foliation-diagram.png)

Here, we imagine each fiber as a cross-section or "level set" of the total space, giving rise to a "foliation" of $E$ by the fibers.^[When $E$ is in fact a product $F\cross B$, this actually is a foliation in the technical sense.]

For a given bundle, it is generally possible to choose sections locally, but there may or may not exist globally defined sections. Thus one key question is **when does a fiber bundle admit a global section?**

A bundle is said to be *trivial* if $E = F \cross B$, and so another important question is **when is a fiber bundle trivial?**

**Definition**: A fiber bundle in which $F$ is a $k\dash$vector space for some field $k$ is referred to as a _rank $n$ vector bundle._ When $k=\RR, \CC$, they are denoted real/complex vector bundles respectively. A vector bundle of rank $1$ is often referred to as a _line bundle_.


**Example**: There are in fact non-trivial fiber bundles. Consider the space $E$ that can appear as the total space in a line bundle over the circle

$$ \RR^1 \to E \to S^1$$

That is, the total spaces that occur when a one-dimensional real vector space (i.e. a real line) is chosen at each point of $S^1$. One possibility is the trivial bundle $E \cong S^1 \cross \RR \cong S^1 \cross I^\circ \in \text{DiffTop}$, which is an "open cylinder":

![cylinder](/home/zack/notes/images/2018/05/cylinder.png)

But another possibility is $E \cong M^\circ \in\text{DiffTop}$, an open Möbius band:

![Möbius band](/home/zack/notes/images/2018/05/mobius-band.png)

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

# Vector Bundles

**Definition:** A _rank $n$ vector bundle_ is a fiber bundle in which the fibers $F$ have the structure of a vector space $k^n$ for some field $k$; the structure group of such a bundle is a subset of $\GL(n, k)$.

Note that a vector bundle always has one global section: namely, since every fiber is a vector space, you can canonically choose the 0 element to obtain a global zero section.

**Proposition**: A rank $n$ vector bundle is trivial iff it admits $k$ linearly independent global sections.

**Example:** The tangent bundle of a manifold is an $\RR$-vector bundle. Let $M^n$ be an $n\dash$dimensional manifold. For any point $x\in M$, the tangent space $T_xM$ exists, and so we can define
$$
TM = \coprod_{x\in M} T_xM = \theset{(x, t) \mid x\in M, t \in T_xM}
$$

Then $TM$ is a manifold of dimension $2n$ and there is a corresponding fiber bundle
$$
\RR^n \to TM \mapsvia{\pi} M
$$

given by a natural projection $\pi:(x, t) \mapsto x$

**Example** A circle bundle is a fiber bundle in which the fiber is isomorphic to $S^1$ as a topological group. Consider circle bundles over a circle, which are of the form
$$
S^1 \to E \mapsvia{\pi} S^1
$$

There is a trivial bundle, when $E = S^1 \cross S^1 = T^2$, the torus:
![torus bundle](/home/zack/notes/images/2018/05/torus-bundle.png)

There is also a nontrivial bundle, $E = K$, the Klein bottle:
![Klein bottle](/home/zack/notes/images/2018/05/klein-bottle.png)

As in the earlier example involving the Möbius strip, since $K$ is nonorientable, $T^2 \not\cong K$ and there are thus at least two distinct bundles of this type.

---

*Remark*: A section of the tangent bundle $TM$ is equivalent to a _vector field_ on $M$.

**Definition**: If the tangent bundle of a manifold is trivial, the manifold is said to be *parallelizable*.

**Proposition:** The circle $S^1$ is parallelizable.

*Proof* Let $M = S^1$, then there is a rank 1 vector bundle\
$$\RR \to TM \to M$$
and since $TM = S^1 \cross \RR$ (why?), we find that $S^1$ is parallelizable. $\qed$

**Proposition:** The sphere $S^2$ is not parallelizable.

*Proof*: Let $M = S^2$, which is associated to the rank 2 vector bundle
$$\RR^2 \to TM \to M$$

Then $TM$ is trivial iff there are 2 independent global sections. Since there is a zero section, a second independent section must be everywhere-nonzero - however, this would be a nowhere vanishing vector field on $S^2$, which by the Hairy Ball theorem does not exist.

Alternate proof: such a vector field would allow a homotopy between the identity and the antipodal map on $S^2$, contradiction by basic homotopy theory.$\qed$

---

# Classifying Spaces

**Definition:** A _principal $G\dash$bundle_ is a fiber bundle $F \to E \to B$ in which for each fiber $\pi^{-1}(b)\definedas F_b$, satisfying the condition that $G$ acts freely and transitively on $F_b$. In other words, there is a continuous group action $\actson: E\cross G \to E$ such that for every $f \in F_b$ and $g\in G$, we have $g\actson f \in F_b$ and $g\actson f \neq f$.

**Example:** A covering space $\hat X \mapsvia{p} X$ yields a principal $\pi_1(X)\dash$bundle.



*Remark*: A consequence of this is that each $F_b \cong G \in \text{TopGrp}$ (which may also be taken as the definition). Furthermore, each $F_b$ is then a _homogeneous space_, i.e. a space with a transitive group action $G\actson F_b$ making $F_b \cong G/G_x$.

*Remark*: Although each fiber $F_b$ is isomorphic to $G$, there is no preferred identity element in $F_b$. Locally, one can form a local section by choosing some $e\in F_b$ to serve as the identity, but the fibers can only be given a global group structure iff the bundle is trivial. This property is expressed by saying $F_b$ is a _$G\dash$torsor_.

*Remark*: Every fiber bundle $F\to E\to B$ is a principal $\Aut(F)\dash$fiber bundle. Also, in local trivializations, the transition functions are elements of $G$.

**Proposition**: A principal bundle is trivial iff it admits a global section. Thus all principal vector bundles are trivial, since the zero section always exists.

**Definition:** A principal bundle $F \to E \mapsvia{\pi} B$ is *universal* iff $E$ is weakly contractible, i.e. if $E$ has the homotopy type of a point.

**Definition:** Given a topological group $G$, a _classifying space_, denoted $BG$, is the base space of a universal principal $G\dash$bundle
$$
G \to EG \mapsvia{\pi} BG
$$
making $BG$ a quotient of the contractible space $EG$ by a $G\dash$action. We shall refer to this as _the classifying bundle_.

Classifying spaces satisfy the property that any other principal $G\dash$bundle over a space $X$ is isomorphic to a pullback of the classifying bundle along a map $X \to BG$.


Let $I(G, X)$ denote the set of isomorphism classes of principal $G\dash$bundles over a base space $X$, then
$$
I(G, X) \cong [X, BG]_{\text{hoTop}}
$$

So in other words, isomorphism classes of principal $G\dash$bundles over a base $X$ are equivalent to homotopy classes of maps from $X$ into the classifying space of $G$.


**Proposition**: Grassmannians are classifying spaces for vector bundles. That is, there is a bijective correspondence:

$$
[X, \Gr(n, \RR)] \cong \theset{\text{isomorphism classes of rank $n$ $\RR\dash$vector bundles over $X$}}
$$

It is also the case that every such vector bundle is a pullback of the principal bundle
$$
\GL(n, \RR) \to V_n(\RR^\infty) \to \Gr(n, \RR)
$$

# Lecture 3 

## Defining Sites

Today: we'll discuss sites, which generalizes the category of open sets over a topological space.
The goal is to generalize spaces and sheaves to categories, and to define a sheaf we need

1. A notion of a *cover*, and

2. A notion of intersections/fiber products of open sets.

:::{.definition title="Grothendieck Topology / Sites"}
A **Grothendieck topology** on $\mathcal{C}$ or a **site** on $\mathcal{C}$ is the data of for each $X\in \mathrm{Ob}(\mathcal{C})$ a collection of sets of morphism $\ts{X_\alpha \to X}$ (*covering families*) satisfying

- Intersections exist: If $X_\alpha\to X$ appears in a covering family and $Y\to X$ is arbitrary, the fiber product $X_\alpha\cross_X Y$ exists.

- Intersecting with a cover again yields a cover: 
If $\ts{X_\alpha\to X}$ is a covering family and $Y\to X$ is arbitrary, then the covering family can be pulled back: $\ts{Y\cross_X X_\alpha\to Y}$ is again a covering family.[^explain_covering_family_pullback]

- Compositions of coverings are again coverings: 
  If $\ts{X_\alpha\to X}_{\alpha}$ and $\ts{X_{\alpha\beta} \to X_\alpha}_{\alpha,\beta}$ are covering families, then you can compose, i.e. taking the set of all possible ways of composing $\ts{X_{\alpha\beta} \to X_\alpha \to X}$ is again a covering family.[^Explaining_compositions_of_coverings]

- Isomorphisms are covers:
  If $X\mapsvia{\sim_f} Y$ is an isomorphism, then the singleton family $\ts{X\mapsvia{f} Y}$ is a covering family.

[^Explaining_compositions_of_coverings]: For spaces, this says if you have a cover of an open set by subsets and a cover of each of those subsets, the entire set has been covered.


[^explain_covering_family_pullback]: When $\mathcal{C}$ was the category of open sets of a space $X$, the existence of this morphism $Y\to X$ says $Y \subseteq X$ is an open subset, and thus intersecting $Y$ with any open cover of $X$ yields an open cover of $Y$.

:::

### Examples of Sites

:::{.example title="The motivating example"}
If $X$ is a topological space, define $\mathcal{C}$ whose objects are open subsets of $X$ where there is a unique morphism $U\to V$ iff $U\subseteq V$.
Then $\ts{U_\alpha \to U}$ is a covering family if $\Union_\alpha U_\alpha = U$.
:::

:::{.example title="The small étale site"}
Let $X$ be a scheme, and define
the small étale site $X_{\et}$: the category whose objects are étale morphisms $Y\mapsvia{f} X$ where morphisms are maps over $X$:

\begin{tikzcd}
Y_1 \ar[rd, "{f_1}"]\ar[rr, "g"] & & Y_2\ar[ld, "{f_2}"] \\
 & X & 
\end{tikzcd}
Note that $g$ is étale by the 2 out of 3 property.

Then $\ts{X_\alpha\to X}$ is a covering family if the set theoretic images satisfy $\Union_\alpha \im(f_\alpha) = X$.
:::

:::{.example title="The big étale site"}
Again let $X$ be a scheme, and define $X_{\mathrm{Et}}$ the category whose objects are all $X\dash$schemes (where we no longer require the maps to be étale).
In other words, this is the overcategory of $X$: the category of schemes over $X$.
Then $\ts{U_\alpha\mapsvia{f_\alpha}U}$ is a covering family if all of the $f_\alpha$ are étale and $\Union_\alpha \im(f_\alpha) = U$.
:::

Note the difference: in the small site, we included only étale $X\dash$schemes, vs all $X\dash$schemes in the big site.
In both cases, the notion of covering families are the same.


:::{.example title="?"}
Let $X$ be a complex analytic space (e.g. a complex manifold), then there is an analytic étale site whose objects are complex analytic spaces $Y\mapsvia{f} X$ such that locally on $Y$, $f$ is an analytic isomorphism.
Note that this includes covering spaces.
The morphisms will be morphisms over $X$ creating commuting triangles, and the covers are the usual covers.
:::

:::{.remark}
This category is part of what motivates the definition of the étale topology.
This is what we're trying to imitate. 
E.g. if you have a complex algebraic variety, taking its analytification will be one of these.
This site will show up later when we compare étale cohomology to singular cohomology.
:::

:::{.remark}
We haven't said what it means to be a sheaf yet, but Grothendieck topologies behave in somewhat unexpected ways.
The category of sheaves of the analytic étale cohomology, $\Sh(X_{\mathrm{an\dash et}})$, is canonically equivalent to $\Sh(X^{\mathrm{top}})$.
Thus sometimes the category of sheaves over a site doesn't remember the site, i.e. two different sites can have the same category of sheaves.
On the RHS we had a category of open subsets, whereas on the LHS we included things like covering spaces.
We'll see later that there is a notion of morphisms of sites, and there is a morphism inducing this equivalence.

Proving this isomorphism will be an exercise, here's an outline of why it's true: suppose you have a cover of $X$ in this category, i.e. a family of local analytic isomorphisms.
Given any of these, you can cover by subsets for which these are isomorphisms onto their images.
:::

:::{.definition title="fppf"}
The letter **fppf** stand for **faithfully flat and finite presentation**.
[^letters_fppf]

[^letters_fppf]: The letters don't precisely match up here because this comes from a French acronym.

:::

:::{.example title="The fppf topology"}
There are small and big sites here: we define $X_{\fppf}$ whose objects are fppf morphism $Y\to X$, with morphisms as triangular diagrams of morphisms over $X$, and covers are the usual covers.
Note that replacing fppf morphisms with flat morphisms would yield an equivalent definition here.
:::

:::{.example title="?"}
If $X$ is a scheme, then the small Zariski topology is $X_{\mathrm{zar}}$ whose objects are $\Op(X^{\mathrm{top}})$, the Grothendieck topology of the corresponding topological space, and we take the usual notion of covers.
There is a big Zariski topology $X_{\mathrm{Zar}}$ whose category is all $X\dash$schemes $\ts{U_\alpha\mapsvia{f_\alpha} U}$ with $f_\alpha$ open embeddings and $\Union_\alpha \im(f_\alpha) = U$.
:::

:::{.example title="?"}
Some other examples:

- The **Nisnevich** topology, which lives between the Zariski and the étale topology,


- The **crystalline** site, used to define crystalline cohomology,

- The **infinitesimal** site,

- The **cdh** topology, the **arc** topology, the **rh** topology, and many more.
:::

## Toward Sheaves of Sites

:::{.definition title="Presheaf"}
For $\mathcal{D}$ a category, a $\mathcal{D}\dash$valued **presheaf** is a contravariant function $F:\mathcal{C}\to \mathcal{D}$.
:::

:::{.remark}
This makes no reference to any Grothendieck topology.
:::

:::{.example title="?"}
If $X$ is a topological space, a $\mathcal{D}\dash$valued presheaf of $X$ is equivalent to a presheaf on $\Op(X)$.
:::

We can now define a sheaf.
What's the motivation?
For $X$ a topological space, it's a sheaf satisfying some conditions:
its sections are determined by an open cover, and given sections agreeing on overlaps allows gluing.
This can be captured by a specific diagram, which is what we will use here.

Recall the definition of a **site** (\cref{def:site}): in short, a category equipped with the Grothendieck topology.

:::{.definition title="Sheaf"}
A **sheaf** $F$ is presheaf such that 

\begin{tikzcd}
F(U) \ar[r] & \prod_\alpha F(U_\alpha) \ar[r, shift left=0.75ex, "F(\pi_1)"] \ar[r, shift right=0.75ex, "F(\pi_2)"'] & \prod_{\alpha, \alpha'} F(U_\alpha \cross_U U_{\alpha'}) 
\end{tikzcd}

is an *equalizer* diagram for all covering families $\ts{U_\alpha \to U}$.

:::

:::{.remark}
The diagram arises due to the fact that if we have a bunch of maps coming from a cover, since we have a contravariant functor, we get a map into the product.
We then look at the intersections of all $U_{\alpha}, U_{\alpha'}$.

The two arrows occurring come from the projections:
\begin{tikzcd}
& U_\alpha \cross_U U_{\alpha'} \ar[dl, "\pi_1"] \ar[rd, "\pi_2"] & \\
U_\alpha\ar[dr, hook] & & U_{\alpha'}\ar[dl, hook] \\
& U &
\end{tikzcd}
where we use the fact that since $F$ is a contravariant functor, it induces maps going the other way.

What does being an equalizer mean, say if $F$ is set-valued?
"Exactness" at the middle term is the gluing condition, and exactness at the first term is injectivity, i.e. a section (the values of $F$ on $U$) are determined by its values on a cover (by $F(U_\alpha)$).
Note that in fact $F(U)$ is the limit of this diagram.
The gluing condition is more precisely that if we're given $(s_\alpha) \in \prod_\alpha F(U_\alpha)$ such that $F(\pi_1)(s_\alpha) = F(\pi_2)(s_\alpha)$, then $(s_\alpha)$ comes from $F(U)$.
:::

:::{.definition title="Morphisms of sheaves and presheaves"}
A **morphism** $F_1\to F_2$ of either presheaves or sheaves is a natural transformation of functors.
:::

### Examples of Sheaves of Sites

:::{.theorem title="?"}
Any representable functor is a sheaf on the étale site $X_{\Et}$.
In fact, any such functor is a sheaf on the big fppf site $X_{\Fppf}$: the category of all $X\dash$schemes with covers as fppf covers, which are maps that are flat and jointly surjective.
:::

:::{.example title="Examples of sheaves on the étale site"}
Take \( \mu_n \) the functor represented by \( \mu_n \da \spec k[t] / t^{n-1} \).
For $U$ an $X\dash$scheme, we can evaluate in the following way:
\[  
\mu_n(U) = \ts{f\in \OO_U(U) \st f^n = 1}
.\]
:::

:::{.example title="?"}
We define a sheaf of the étale site as $\OO^{\et}_X(U) = \OO_U(U)$ where we've said what the values are.
This is a sheaf that is represented by $\AA^1_{/X}$.
:::

:::{.example title="?"}
The constant sheaf $\underline{\zlnz}$.
How can we prove it is a sheaf, given the theorem, and determine what its values are?
This is represented by $\qty{\zlnz} \cross X$, i.e. taking the disjoint union of $\ell^n$ copies of $X$.
The values are given by
\[  
\underline{\zlnz}(U) =  \hom_{\Top}(U^{\Top}, \zlnz)
,\]
where we give the set $\zlnz$ the discrete topology and take morphisms to be continuous maps.
:::

:::{.warnings}
The constant sheaf $\underline{S}$ doesn't associate $S$ to every open set: it instead associates $S^d$ where $d$ is the number of components. 
The former would only be a presheaf, and not a sheaf.
:::

:::{.example title="?"}
We can take the sheaf $\GG_m(U) \da \OO_U(U)\units$, whose values are obtained by taking the global sections of the structure sheaf and only keeping the units.
This is represented by 
\[
\GG_{m, X} = \spec \ZZ[t, t^{-1}] \fp{\spec \ZZ} X
\]
Why does this represent this functor?
Mapping into this requires that $t$ goes to an invertible function, which yields the isomorphism.
:::

:::{.remark}
Note that all of these functors take values in abelian groups, which is a consequence of the fact that the representing objects are group schemes.
In fact, one definition of a group scheme is that the functor it represents factors through groups.
:::

:::{.example title="?"}
Take the functor $\PP^n(U) \da \hom(U, \PP^n)$.
This functor can be written down as a line bundle on $U$ with a surjective map from $\OO_U \to \OO_U^n$ (?), the functor represented by projective space, and that's also a sheaf that is necessarily representable but not an abelian one.
:::

Some things we still need to get to:

- A proof that $\ul{\zlnz}$ is actually a sheaf,
- A proof that the category of sheaves on the big étale site $X_\Et$[^note_on_restriction_big_small] with values in $\thecat{Ab}$ is abelian and has enough injectives.

[^note_on_restriction_big_small]: Note that a sheaf on the big étale site necessarily restricts to a sheaf on the small étale site, since covers in the small site are also covers in the big site.

## Étale Cohomology: A Preliminary Definition

:::{.definition title="Imprecise: étale cohomology"}
Let $\mathcal{F}$ be a sheaf and define a functor $\Gamma_X: \mathcal{F}\to \mathcal{F}(X)$ sending it to its values on $X$.
Then the **étale cohomology** of $X$ is defined by
\[  
H^i(X_\et, \ul{\zlnz}) \da R^i \Gamma_X(\ul \zlnz)
,\]
the right-derived functors of $\Gamma_X$.
:::

:::{.remark}
This definition is incomplete, and in particular, it's highly non-obvious that this category of abelian sheaves is abelian.
E.g. usually when proving that the category of abelian sheaves on a topological space has cokernels, you use sheafification: you take the cokernel of a map of presheaves, which is a presheaf, and sheafify it.
Here, we don't know how to sheafify a presheaf on a site.
The usual construction involves forming the *espace étalé* and taking sections does not work for a site, you need a genuinely different argument.
:::

:::{.warnings}
Even showing cokernels exist in the category of abelian sheaves on a site is nontrivial. 
Try as an exercise!
:::

:::{.remark}
What will be true in general is that this category will be an $AB5$ abelian category, and having enough injectives is all that's additionally needed.
This comes from machinery developed in Grothendieck's Tohoku paper, and we'll sketch part of the proof.
:::

Properties of these sheaves are not so obvious, and depend on the site you're working over:

:::{.example title="?"}
Consider the map
\[  
\GG_m &\to \GG_m \\
t^m &\mapsfrom t
,\]
where $n$ is invertible over the base, e.g. if we're over a field of characteristic coprime to $n$.
This yields a map of sheaves in two different settings.
In $X_{\mathrm{Zar}}$ we have
\[  
\OO\units &\to \OO\units \\
f &\mapsto f^n
.\]

We can look at this in $X_{\et}$, yielding
\[  
\OO_\et\units &\to \OO_\et\units \\
f &\mapsto f^m
.\]

:::{.claim}
This map is not an epimorphism on $X_{\mathrm{Zar}}$ but is on $X_{\et}$
:::

:::{.proof title="?"}
It suffices to give one example: take $X = \spec \RR$ and $n=2$, and since this is just a point, the sheaf is determined by its values.
So is the map
\[  
\RR\units &\to \RR\units \\
t &\mapsto t^2
\]
surjective?
The answer is no, of course, since its image is $\RR_{\geq 0}$.

This will be surjective on $X_{\et}$ if $n$ is invertible on $X$.
If we were in usual topological spaces, we would want to show that given any section of the sheaf on an open set, it can be refined.
Here we want to pass to an étale cover so that section has an $n$th root.
So given $f\in  \GG_m(U)$, we want an étale cover of $U$ so that $f$ obtains an $n$th root.
An invertible function is a map $U\to \GG_m$, and we can form the square
\begin{tikzcd}
 U \fp{\GG_m} \GG_m\ar[r]\ar[d] & \GG_m & z^m  \ar[d] \\
 U\ar[r] &  \GG_m & z\ar[u, |->]
\end{tikzcd}

The RHS map is étale since $n$ is invertible, and the fiber product is étale since étale morphisms are preserved by base change.

:::{.claim}
$f$ has an $n$th root upstairs. (Verify!)
:::

There's a more concrete way of writing this: note that $\AA^1_{U, z} = \spec k[t]$, so take the subscheme cut out by $V(z^n - f)$.
This will be an étale cover of $U$ (the same one in fact) and $z$ is now an $n$th root.
:::

:::


:::{.exercise title="?"}
Check the details!
Namely that this argument implies that this map of sheaves is an epimorphism.
:::

:::{.remark}
This map of sheaves $\GG_m \mapsvia{z^m \mapsfrom z} \GG_m$, noting that if $n$ is not invertible this will not be an epimorphism, will always be an epimorphism in $\Sh(X_\fppf)$ since this map is flat and finitely presented.
:::

## Preview: Morphisms of Sites

:::{.definition title="Morphisms of Sites"}
Suppose $T_1, T_2$ are sites (categories with covering families), then a **continuous map of sites** $f:T_1 \to T_2$ is a functor $T_2 \to T_1$[^note_opposite_way]
that preserves fiber products and sends covering families to covering families.

[^note_opposite_way]: Note that this functor goes in the opposite direction of the original map.  

:::

:::{.example title="?"}
A continuous map $f\in \Hom_\Top(X, Y)$ induces a map
\[  
\Op(Y) &\to \Op(X) \\
U &\mapsto f^{-1}(U)
.\]
:::

:::{.exercise title="?"}
Check that this is a continuous map of sites.
:::

Next time: a bunch of examples.

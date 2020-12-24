
---
title: Étale Cohomology 
todos: true
book: true
---

These are notes live-tex'd from a graduate course in Étale Cohomology taught by Daniel Litt at the University of Georgia in Fall 2020.
As such, any errors or inaccuracies are almost certainly my own.

\medskip
\begin{flushright}
  D. Zack Garza, \today \\
  \currenttime
\end{flushright}

# Lecture 1

> References: <https://www.daniellitt.com/tale-cohomology>

## Intro

Prerequisites:

- Homological Algebra
  - Abelian Categories
  - Derived Functors
  - Spectral Sequences (just exposure!)
- Sheaf theory and sheaf cohomology
- Schemes (Hartshorne II and III)

Outline/Goals:

- Basics of etale cohomology
  - Etale morphism
  - Grothendieck topologies
  - The etale topology
  - Etale cohomology and the basis theorems
  - Etale cohomology of curves
  - Comparison theorems to singular cohomology
  - Focused on the case where coefficients are a constructible sheaf.

- Prove the Weil Conjectures (more than one proof)
  - Proving the Riemann Hypothesis for varieties over finite fields

  > One of the greatest pieces of 20th century mathematics!

- Topics
  - Weil 2 (Strengthening of RH, used in practice)
  - Formality of algebraic varieties (topological features unique to varieties)
  - Other things (monodromy, refer to Katz' AWS notes)


## What is Etale Cohomology?

Suppose $X/\CC$ is a quasiprojective variety: a finite type separated integral $\CC\dash$scheme.
If you take the complex points, it naturally has the structure of a complex analytic space $X(\CC)^{\text{an}}$: you can give it the Euclidean topology, which is much finer than the Zariski topology.
For a nice topological space, we can associate the singular cohomology $H^i(X(\CC)^{\text{an}}, \ZZ)$, which satisfies several nice properties:

- Finitely generated $\ZZ\dash$modules
- Extra Hodge structure when tensored up to $\CC$ (same as $\CC$ coefficients)
- Cycle classes (i.e. associate to a subvariety a class in cohomology)

Goal of etale cohomology: do something similar for much more general "nice" schemes.
Note that some of these properties are special to complex varieties.
(E.g. finitely generated: not true for a random topological space.)

We'll associate $X$ a "nice scheme" $\rightsquigarrow H^i(X_{\text{et}}, \ZZ/\ell^n\ZZ)$.
Take the inverse limit over all $n$ to obtain the $\ell\dash$adic cohomology $H^i(X_{\text{et}}, \ZZ_\ell)$.
You can tensor with $\QQ$ to get something with $\QQ_\ell$ coefficients.
And as in singular cohomology, you can a "twisted coefficient system".


:::{.example title="?"}
What are some nice schemes?

- $X = \spec \OO_k$, the ring of integers over a number field.
- $X$ a variety over an algebraically closed field
  - Typical, most analogous to taking a variety over $\CC$.
- $X$ a variety over a non-algebraically closed field

:::
  
Some comparisons between the last two cases:

- For $\CC\dash$ variety, $H^i_{\text{sing}}$ will vanish above $i=2d$.
- Over a finite field, $H^i$ will vanish for $i>2d+1$ but generally not vanish for $i=2d+1$. 

In good situations, these are finitely generated $\ZZ/\ell^n\ZZ\dash$modules, have Mayer-Vietoris and excision sequences, spectral sequences, etc.
Related invariants: for a scheme with a geometric point [^what_is_a_geom_point]


$(X, \bar x) \rightsquigarrow \pi_1^{\text{étale}}(X, \bar x)$, which is a profinite topological group, which is a profinite topological group.

[^what_is_a_geom_point]: 
A **geometric point** is a map from $\spec X$ to an algebraically closed field.


:::{.remark}
More invariants beyond the scope of this course:

- Higher homotopy groups
- Homotopy type (equivalence class of spaces)

So we want homotopy-theoretic invariants for varieties.
:::

:::{.remark}
This cohomology theory is necessarily weird!
The following theorem explains why.
The slogan: there is no cohomology theory with $\QQ$ coefficients. 
:::

:::{.theorem title="Serre"}
There does not exists a cohomology theory for schemes over $\bar{\FF}_q$ with the following properties:

1. Functorial
2. Satisfies the Kunneth formula
3. For $E$ an elliptic curve, $H^1(E) = \QQ^2$.
:::

:::{.proof}
Take $E$ to be a supersingular elliptic curve.
Then $\endo(E) \tensor \QQ$ is a quaternion algebra, and use the fact that there are no algebra morphisms $R\to \mat_{2\times 2}(\QQ)$.
:::

:::{.exercise}
Functoriality and Kunneth implies that $\endo(E)\actson E$ yields an action on $H^1(E)$, which is precisely an algebra morphism $\endo(E) \to \mat_{2\by 2}(\QQ)$, a contradiction.

The content here: the sum of two endomorphisms act via their sum on $H^1$.
:::


:::{.exercise}
Prove the same thing for $\QQ_p$ coefficients, where $p$ divides the characteristic of the ground field.
Proof the same, just need to know what quaternion algebras show up.
:::


This forces using some funky type of coefficients.


## What are the Weil Conjectures?

Suppose $X/\FF_q$ is a variety, then 
\[  
\zeta_X(t) = \exp{\sum_{n>0} { {\abs{X(\FF_{q^n})} \over n} t^n } }
.\]


:::{.remark}
\envlist

- $\dd{}{t} \log \zeta_X(t)$ is an ordinary generating function for the number of rational points.

- Slogan: locations of zeros and poles of a meromorphic function control the growth rate of the coefficients of the Taylor series of the logarithmic derivative.

:::

:::{.exercise}
Make this slogan precise for rational functions, i.e. ratios of two polynomials.
:::

:::{.theorem title="The Weil Conjectures"}
\envlist

1. $\zeta_x(t)$ is a rational function.

2. (Functional equation) For $X$ smooth and proper
\[  
\zeta_X(q^{-n} t\inv) = \pm q^{nE \over 2} t^E \zeta_X(t)
.\]

3. (RH) All roots and poles of $\zeta_X(t)$ have absolute value $q^{i\over 2}$ with $i\in \ZZ$, and these are equal to the $i$th Betti numbers if $X$ lifts to characteristic zero.[^generalize_betti_numbers]

[^generalize_betti_numbers]: 
Note that we'll generalize Betti numbers so this makes sense in general.

:::

:::{.remark}
These are all theorems!
The proofs:

1. Dwork, using $p\dash$adic methods. 
  Proof here will follow from the fact that $H^i_{\text{étale} }$ are finite-dimensional.
  Related to the **Lefschetz Trace Formula**, and is how Grothendieck thought about it.

2. Grothendieck, follows from some version of Poincaré duality.

3. (and 4) Deligne.

:::



### Euler Product

Let $\abs X$ denote the closed points of $X$, then there is an Euler product:
\[  
\zeta_X(q^{-n} t\inv) = \pm q^{nE \over 2} t^E \zeta_X(t)
&= \prod_{x\in \abs{X}} \exp{t^{\deg (x)} + {t^{2\deg (x)} \over 2} + \cdots} \\
&= \prod_{x\in \abs X} \exp{-\log(1-t^{\deg(x)})} \\
&= \prod_{x\in \abs X} {1 \over 1 - t^{\deg(x)}}
.\]

:::{.exercise}
Check the first equality.
If you have a point of $\deg(x) = n$, how many $\FF_{q^n}$ points does this contribute?
I.e., how many maps are there $\spec(\FF_{q^n}) \to \spec(\FF_{q^n})$ over $\FF_q$?

There are exactly $n$: it's $\gal(\FF_{q^n} / \FF_q)$.
But then division by $n$ drops this contribution to one.
:::

We can keep going by expanding and multiplying out the product:
\[  
\prod_{x\in \abs X} {1 \over 1 - t^{\deg(x)}}
&= \prod_{x\in \abs X} (1 + t^{\deg(x)} + t^{2 \deg(x)}) \\
&= \sum_{n\geq 0} \qty{\text{\# of Galois-stable subset of $X(\bar \FF_{q^n})$ of size $n$}}t^n
.\]

Why? 
If you have a degree $x$ point, it contributes a stable subset of size $x$: namely the $\FF_{q^n}$ points of $\FF_{q^n}$. 
Taking Galois orbits like that correspond to multiplying this product.

But these are the points of some algebraic variety:
\[  
\cdots 
= \sum_{n\geq 0} \abs{\sym^n(X)(\FF_q)} t^n
,\]
where $\sym^n(X) \da X^n/\Sigma_n$, the action of the symmetric group.
Why is that?
A $\bar \FF_q$ point of $\sym^n(X)$ is an unordered $n\dash$tuple of $\bar \FF_q$ points without an ordering, and asking them to be Galois stable is the same as saying that they are an $\FF_q$ point.


:::{.theorem title="First Weil Conjecture for Curves"}
For $X$ a smooth proper curve over $\FF_q$, $\zeta_X(t)$ is rational.
:::

:::{.proof}

:::{.claim}
There is a set map 
\[  
\sym^n X &\to \pic^n X \\
D &\mapsto \OO(D)
,\]
where here the divisor is an $n\dash$tuple of points.
:::

What are the fibers over a line bundle $\OO(D)$?
A linear system, i.e. the projectivization of global sections $\PP \Gamma(X, \OO(D))$.
What is the expected dimension? 
To compute the dimension of the space of line bundles on a curve, use Riemann-Roch:
\[  
\dim \PP\Gamma(X, \OO(D)) = \deg(D) + 1 - g + \dim H^1(X, \OO(D)) - 1
.\]
where the last $-1$ comes from the fact that this is a projective space.

:::{.claim}
If $\deg(D) = 2g-2$, then $H^1(X, \OO(D)) = 0$.
:::

This is because it's dual to $H^0(X, \OO(K-D))\dual$, but this has negative degree and a line bundle of negative degree can never have sections.[^check_this_1]

[^check_this_1]: 
You should check to make sure you know why this is true!


Thus the fibers are isomorphic to $\PP^{n-g}$ for $n>2g-2$.
Now make a reduction[^exc_justify_reduction_1]
and without loss of generality, assume $X(\FF_q) \neq \emptyset$.
In this case, $\pic^n(X) \cong \pic^{n+1}(X)$ for all $n$, since you can take $\OO(P)$ for $P$ a point, a degree 1 line bundle, and tensor with it.
It's an isomorphism because you can tensor with the dual bundle to go back.
Thus for all $n>2g-2$,
\[  
\abs{\sym^n(X)(\FF_q)} 
= \abs{\PP^{n-g}(\FF_q)} \cdot \abs{\pic^n(X)(\FF_q)}
= \abs{\PP^{n-g}(\FF_q)} \cdot \abs{\pic^0(X)(\FF_q)}
.\]

Thus $\zeta_X(t)$ is a polynomial plus $\sum_{n>2g-2} \abs{\pic^n(X)(\FF_q)}\qty{1+q+q^2+\cdots+q^{n-g}}t^n$.


[^exc_justify_reduction_1]: 
Exercise: justify why the reduction is valid.

:::{.exercise}
Show that this is a rational function using the formula for a geometric series.
:::

:::

:::{.theorem title="Functional Equation"}
The functional equation in the case of curves:
\[  
\zeta_X(q^{-1} t^{-1} ) = \pm q^{2-2g \over 2} t^{2-2g} \zeta_X(t)
.\]
:::

:::{.exercise title="Important"}
Where it comes from in terms of $\sym^n$: Serre duality.
:::

We'll show the RH later.

:::{.theorem title="Dwork"}
Suppose $X/\FF_q$ is any variety, then $\zeta_X(t)$ is rational function.
:::

This was roughly known to Weil, hinted at in original paper

:::{.proof title="Grothendieck"}
Idea: take Frobenius (intentionally vague, arithmetic vs geometric vs ...) $F:X\to X$, then $X(\FF_q)$ are the fixed points of $F$ acting on $X_{\bar \FF_q}$, and the $\FF_{q^n}$ points are the fixed points of $F^n$.
Uses the Lefschetz fixed point formula, which will say for $\ell\neq \ch(\FF_q)$,[^compact_supported_cohomology]

\[  
\abs{X(\FF_{q^n})} = \sum_{i=0}^{2\dim(X)} (-1)^i \tr(F^n) H^i_c(X_{\FF_q}, \QQ_\ell)
.\]

[^compact_supported_cohomology]: 
Here $H^i_c$ is compactly supported cohomology, we'll define this later in the course.

:::{.lemma}
\[  
\exp{\sum {\tr(F^n) \over n}t^n  }\quad\text{is rational}
.\]
:::
This lemma implies the result, because if you plug the trace formula into the zeta function, you'll get an alternating product $f \cdots {1\over g} \cdot h \cdot {1\over j} \cdots$ of functions of the form in the lemma, which is still rational.

:::{.proof title="Of Lemma"}
It suffices to treat the case $\dim(V) = 1$, because otherwise you can just write this as a sum of powers of eigenvalues.
Then you have a scalar matrix, so you obtain
\[  
\exp{ \sum {\alpha^n \over n} t^n} = \exp{ -\log(1 - \alpha t)} = {1 \over 1-\alpha t}
,\]
which is rational.
:::
:::

This proves rationality, contingent on 

1. The Lefschetz fixed point formula
2. The finite dimensionality of etale cohomology

:::{.exercise}
Try to figure out how Poincaré duality should give the functional equation.

*(Hint: try the lemma on a vector space where $F$ scales a bilinear form.)*
:::

:::{.theorem title="Serre, Kahler Analog"}
Suppose $X/\CC$ is a smooth projective variety and $[H] \in H^2(X(\CC), \CC)$ is a hyperplane class (corresponds to intersection of generic hyperplane or the first Chern class of an ample line bundle).

Suppose $F:X\to X$ is an endomorphism such that $f^*[H] = q[H]$ for some $q\in \ZZ_{\geq 1}$.

Define 
\[  
L(F^n) \definedas 
\sum_{i=0}^{2\dim(X)} (-1)^i \tr\qty{ F^n \st H^i(X_{\FF_q}, \QQ_\ell)}
.\]
and
\[  
\zeta_{X, F}(t) \da
\exp{\sum_{n=1}^\infty {L(F^n) \over n}t^n }
.\]

Then $\zeta_{X, F}(t)$ satisfies the RH: the zeros and poles are of absolute value $q^{i\over 2}$.
Equivalently, the eigenvalues $\lambda$ of $F^n$ actings on $H^i(X, \CC)$ all satisfy $\abs{\lambda} = q^{i\over 2}$.
:::

Next time, to review

- Étale morphisms
- Definition of a site













# Lecture 2

## Review

From last time: we want to prove the following theorem of Serre, a complex analog of the Weil conjectures.
After this, we'll talk about étale morphisms, the étale topology, and possibly the definition of étale cohomology.

:::{.theorem title="Serre"}
Let $X_{/\CC}$ be a smooth projective variety and $[H]\in H^2(X; \ZZ)$ be a hyperplane class[^hyerplane_note]
and an endomorphism $F:X\to X$ a map satisfying $F^*[H] = q[H]$ for some $q\in \ZZ_{\geq 1}$.
Then the eigenvalues of $F^*$ on $H^i(X;\CC)$ all have absolute value $q^{i\over 2}$.

[^hyerplane_note]: Intersection with a hyperplane in projective space.

:::

Note that the same $q$ is appearing in both parts of the theorem.
Why prove this theorem?
Later on, to prove the Riemann hypothesis for varieties over finite fields, we'll prove that the Frobenius acts in this way on the étale cohomology.
There is in fact a *reason* this is true, coming from some special properties of the behaviors of the cohomology of varieties which aren't manifested in random topological spaces.

:::{.warnings}
The proof here will not look at all like Deligne's proof of the Riemann hypothesis for varieties over finite fields.
We'll see shadows of it, but use a lot of things that are true for complex varieties that are still not known for varieties over finite fields.
:::

:::{.fact}
There is a cup product map
\[  
L: H^i(X; \CC) &\to H^{i+2}(X; \CC) \\
\alpha &\mapsto \alpha \smile [H]
.\]
Thus taking the direct sum $\bigoplus_i H^i(X; \CC)$ yields an algebra.
:::

:::{.theorem title="Hard Lefschetz"}
Each $H^i(X; \CC) \cong \im(L) \oplus H^i_{\text{prim}}$, which is an isomorphism that depends on a choice of hyperplane class $[H]$ but is then canonically defined.
Moreover, there is a Hodge decomposition $H^i_{\text{prim}} = \bigoplus_{p+q=i}H^{p, q}_{\text{prim}}$.
:::

:::{.theorem title="Hodge Index Theorem"}
If $\alpha, \beta \in H^k(X)_{\text{prim}}$, then there is a natural pairing
\[  
\inner{a}{b} = i^* \int_X a\wedge \bar{\beta} \wedge [H]^{n-k}
,\]
where we've used the fact that the integrand is a top form and can thus be integrated.
Moreover, this is a *definite* bilinear form on $H^{p, q}_{\text{prim}}$, i.e. a nonzero element paired with itself is again nonzero.
:::

The moral of the story here is that cohomology breaks up into pieces, where $\im L$ comes from lower degrees and can perhaps be controlled inductively, and the higher dimensional pieces carry a canonical definite bilinear form.

## Sketch proof of Serre's analog of the Riemann hypothesis

As a reminder, we want to show that the eigenvalues of $F^*$ acting on $H^k(X; \CC)$ have absolute value $q^{k\over 2}$ where $q$ is the scalar associated to $F$ acting on $[H]$.

:::{.claim}
It suffices to do this for $H^k_{\text{prim}}$.
:::

Why is this true?
If we have an eigenvector $\alpha\in H^{k-2}(X; \CC)$, then by induction on $k$ we can assume the eigenvalue has absolute value $q^{k-2 \over 2}$.
Then $F^*(\alpha \smile [H]) = F^* \alpha \smile F^*[H] = \lambda \alpha \smile q[H] = q\lambda (\alpha \smile [H])$, so this is an eigenvector of absolute values $q q^{k-2\over 2} = q^{k\over 2}$.

Now for the primitive part, let $\alpha\in H^k_{\prim}$ be an $F^*$ eigenvector.
Since $F^*$ preserves $H^{p, q}$, we can assume $\alpha \in H^{p, q}_{\prim}$ for some $p+q=k$.
Consider
\[  
\inner{F^* \alpha}{F^*\alpha}
.\]
On one hand, this is equal to $\abs{\lambda}^2 \inner{\alpha}{\alpha}$ by sesquilinearity, pulling out a $\lambda$ and a $\bar \lambda$.
On the other hand, it is equal to
\[  
\cdots 
&= i^* \int F^* \alpha \wedge F^* \bar \alpha \wedge [H]^{n-k} \\
&= {i^k \over q^{n-k}} \int F^*\qty{\alpha \wedge \bar\alpha \wedge [H]^{n-k} } \\
&= {q^n i^k \over q^{n-k}} \int \alpha \wedge \bar \alpha \wedge H^{n-k} \\
&= q^k \inner{\alpha}{\alpha}
.\]

:::{.exercise title="?"}
Using the Lefschetz hyperplane theorem or Poincaré duality, $F^*$ acts on $H^{2n}(X; \CC)$ via $q^n$.
:::

So we're done if $\inner{\alpha}{\alpha} \neq 0$, since this implies $\abs{\lambda}^2 = q^k$ and thus $\abs \lambda = q^{k\over 2}$.
Why is this true?
This is the statement of the Hodge index theorem.

:::{.remark title="Slogan"}
The structures on cohomology imply this complex analog of the Riemann hypothesis, and we'll want to use something similar for varieties over a finite field.
This will be hard!
Deligne doesn't quite accomplish this: there's no analog of the Hodge decomposition and we don't know the Hodge index theorem.
:::

This is the proof that will motivate much of the rest of what we'll do in the course.

## Étale Morphisms

This is a property of morphism of schemes, see Hartshorne.

:::{.definition title="Étale Morphism"}
Suppose $f:X\to Y$ is a morphism of schemes.
Then $f$ is **étale** is it is locally of finite presentation, flat, and unramified.
:::

:::{.definition title="Unramified"}
$f$ is **unramified** if $\Omega_{X/Y}1 = 0$ (the relative Kahler differentials).
Equivalently, all residue field extensions are separable, i.e. given a point in $Y$ with a point in $X$ above it, the residue fields of these points gives a field extension, and we require it to be separable.
:::

:::{.definition title="Formally Etale"}
Suppose we have a nilpotent ideal $I$, so $I^n = 0$ for some $n$, then $f:X\to Y$ is **formally étale** if there is a unique lift in the following diagram:

\begin{tikzcd}
\spec(A/I)\ar[r]\ar[d] & X\ar[d, "f"] \\
\spec(A) \ar[r] \ar[ur, dotted, "\exists !"] & Y
\end{tikzcd}

:::

:::{.remark}
This is supposed to resemble a covering space map:
We have $\spec(A) \in Y$ with a nilpotent thickening and a map from $A/I$, which you may think of as a reduced subscheme.
This thus says that tangent vectors downstairs can be lifted in a unique way to tangent vectors upstairs:

![Image](figures/image_2020-11-15-01-41-25.png){width=350px}


:::

:::{.remark}
There are some equivalent definitions of a morphism being étale:

- Smooth of relative dimension zero

- Locally finite presentation and *formally étale*

- Locally *standard étale*, i.e. for each $x\in X$ with $y\da f(x)$, there exists a $U\ni x, V\ni y$ such that $f(U) \subseteq V$ and $V=\spec(R), U = \spec\qty{R[x]_h / g}$ (where we localize at $h$) such that the derivative $g'$ is a unit in $R[x]_h$ and $g$ is monic.

For this last definition, thinking of $\spec(R[x])$ as $R\times \AA^n$, what happens when modding out by a polynomial $g$?
This yields a curve cutting out the roots of $g$.
Inverting $h$ deletes the locus where $h$ vanishes, and $g'$ being a unit means that the $g$ has no double roots in the fibers.
In other word, the delete locus passes through all double roots:

![Image](figures/image_2020-11-15-01-47-05.png){width=350px}


:::

:::{.exercise title="?"}
Check that standard étale morphisms are étale, and try to understand the proof that all étale morphisms are locally standard étale.
:::


Let's do some examples!

:::{.example title="Example of an étale morphism"}
\envlist

- Multiplication by $[n]$ on an elliptic curve if $n \in \ZZ$ is invertiable in the base field.

- Take $\GG_m = \spec  k[t, t^{-1}]$, and the map
\[  
\GG_m &\to \GG_m \\
 t^m &\mapsfrom t
,\]
  where $n$ is prime to $\ch(k)$.[^prime_zer]

  - Note that this is in fact finite étale.

[^prime_zer]: Here we use the convention that everything is prime to zero.
  
:::

:::{.exercise title="?"}
Show that the last map above is étale.
Hint: use the fact that $\dd{}{t} (t^n) = nt^{n-1}$, which is a unit.
:::

:::{.example title="?"}
Consider the map
\[  
\GG_m &\injects \AA^1 \\
k[t, t^{-1}] &\mapsfrom k[t]
.\]
We need to check 3 things:

- Locally finite presentation,
  - This is a finitely presented ring map, since you just need to adjoin an inverse of $t$, one element and one relation.

- Flat,
  - Since open embeddings are flat,

- $\Omega^1_{\GG_m / \AA^1} = 0$,
  - True for a Zariski open embedding.

Note that this is finite onto its image.
:::

:::{.proposition title="?"}
Any open immersion is étale.[^checked_etale]

[^checked_etale]: Note that we actually already checked this! 

:::

:::{.example title="An étale morphism that is not finite onto its image"}
Use the fact that $\GG_m$ is $\AA^1\sm\ts{\vector 0}$, so take $\GG_m \sm\ts{1}$ and the map
\[  
\GG_m\sm\ts{1} &\to \GG_m \\
t^2 &\mapsfrom t
.\]

What's the picture?
For the squaring map, there are two square roots:

![Image](figures/image_2020-11-15-02-01-04.png)

This is an étale surjection but not finite étale, since it is not proper.
This also gives a counterexample to étale morphisms always looking like covering spaces, since here that may be true locally but doesn't hold globally.


:::

:::{.warnings}
This is an important example to keep in mind, because you'll often see arguments that treat étale maps as though they were finite onto their image.
:::


:::{.example title="?"}
Take a finite separable field extension, taking $\spec$ of it yields an étale map.
:::

Now for some non-examples:

:::{.example title="A finite map which is not etale"}
Take $X = \spec k[x, y] / xy$, which looks like the following:

![$X$](figures/image_2020-11-15-02-04-46.png){width=350px}

Then the normalization $\tilde X\to X$ is not étale, since it is not flat.
:::

:::{.example title="A finite flat map which is not etale"}
Take the map
\[  
\AA^1 &\to \AA^1 \\
t^2 &\mapsfrom t
.\]

The picture is the following:

![Image](figures/image_2020-11-15-02-07-04.png)

This is note étale since it is ramified at zero.
We can compute
\[  
\Omega_f^1 = k[t]\, dt / d(t^2) = k[t] dt/ 2t\, dt
,\]
where $2t\,dt$ does not generate this module.
This is supported at $t=0$ if $\ch \neq 2$.
:::

:::{.example title="?"}
A finite flat morphism such that \( \Omega_{X/Y}^1 \) is not torsion: a hint is that the previous example almost works, with a slight modification.
Let $\ch k = p$, and take
\[  
\AA^1 &\mapsvia{F} \AA^1 \\
t^p &\mapsfrom t
.\]
Then $\Omega_f^1 = k[t]\, dt / d(t^p) = k[t]\,dt$ since $d(t^p) = 0$ in characteristic $p$.
This yields line bundles (?), so it is not torsion.
:::


:::{.remark}
This map has a name: the relative Frobenius.
In general, looking at Frobenii, the Kahler differentials will be very big.
You might not be used to this: in characteristic zero, a map of relative dimension zero is generically étale.
In this case, the Kahler differentials will always be torsion.
:::

:::{.example title="?"}
Consider a map 
\[  
\AA^m &\mapsvia{f_1, \cdots, f_m} \AA^m
,\]
since such a map is given by a system of $m$ polynomials in $m$ variables.
Then $f$ is étale is a neighborhood of $\vector a$ if $\det \qty{\dd{f_i}{x_j} \evalfrom_{\vector a} }$ is a unit.
:::


### Properties of Étale Morphisms

:::{.proposition title="Some properties of étale morphisms"}
\envlist

1. Open immersions are étale
2. Compositions of étale morphisms are étale[^composition_etale_note]
3. Base change of étale morphisms are étale, i.e. 
\begin{tikzcd}
X \cross_Y T\ar[d, "\therefore \text{étale}"']\ar[r] & X\ar[d, "\text{étale}"]  \\
T\ar[r] &  Y\\
\end{tikzcd}

4. There is a 2 out of 3 property: If $\phi \circ \psi$ and $\phi$ are étale, then $\psi$ is étale.

[^composition_etale_note]: What do you have to check? Locally finite presentation, flat, and unramified are all preserved. The one that may be tricky is remaining unramified, a hint is to use the cotangent exact sequence for $\Omega^1_{X/Y}$.

:::

:::{.exercise title="?"}
Show property 4 above.
:::

:::{.proposition title="?"}
Étale morphisms on varieties over an algebraically closed field induce isomorphisms on complete local rings at closed points.
:::


:::{.exercise title="?"}
Prove this! 
Hint: use the criterion for formal étaleness.
There's an evident map one way on local rings coming from your étale morphism, and you need to produce the inverse map.
:::


:::{.exercise title="?"}
$\danger$ If $\psi$ is étale and $\phi\circ\psi$ is étale, it is not necessarily the case that $\phi$ is étale.
Come up with an example!
:::

:::{.corollary title="An informal statement"}
Any property that can be checked at the level of complete local rings is true for the source of an étale morphism if it is true for the target.
:::

Why?
If you want to check a property for complete local rings on the source, note that the map induces an isomorphism of complete local rings.

## Generalizing Topologies 


### Sites

The notion of a *site* will be a generalization of topological spaces and sheaves.
The idea is we'll generalize sheaf cohomology to this setting.
On a nice space like a manifold, singular cohomology is isomorphic to the sheaf cohomology of the constant sheaf $\underline{\ZZ}$.
Here we'll find some version of a sheaf where étale cohomology with $\ZZ/\ell^n\ZZ$ coefficients will be the sheaf cohomology with the constant sheaf $\underline{\ZZ/\ell^n\ZZ}$.

:::{.question}
What parts of the definition of a topological space are needed to define the notion of a sheaf?
:::

:::{.remark}
Recall that the *sheaf condition* is given in two parts:

1. A section is determined by its value on a cover, and

2. Sections can be glued when they agree on intersections.
:::

:::{.answer}
\envlist

1. As in presheaves, a notion of open sets and inclusions.
  (I.e., a category of open sets.)[^presheaf_defn][^what_sheaves_know]

We'd also like to make sense of the sheaf condition: 

2. Collections of morphisms which are "covers", remembering which collections of opens cover a space, and

3. The existence of certain fiber products (intersections).

[^what_sheaves_know]: The notion of a presheaf on $X$ doesn't know much about the actual topology of $X$. If two spaces have the coarsest topology, so the only opens are $X, \emptyset$, then the categories of open sets are equivalent, and every presheaf on them will be the same.

[^presheaf_defn]: Recall that a presheaf on $X$ is a contravariant functor out of the category of open sets of $X$.

:::


:::{.remark}
The motivation for (3) above is that for $U, V \subseteq X$, we can form $U\cross V = U\intersect V$.
:::


:::{.definition title="Preliminary: Sites/Grothendieck Topologies"}
A category $\mathcal{C}$ with a collection of *covering families* $\ts{X_\alpha \mapsvia{f_\alpha} X \st \alpha\in A}$[^think_of_covering_families]
such that several axioms are satisfied.

[^think_of_covering_families]: How to think of this: elements in this collection cover $X$.

:::

We'll discuss the axioms next time, they just capture the notion of what a cover of a topological space should look like.


:::{.warnings}
There are at least three different notions of this definition!
The one above is perhaps the least general but the easiest to work with.
:::

:::{.example title="?"}
For $X$ a topological space, $\mathcal{C}$ the category of open sets in $X$, then $\ts{U_\alpha\to U}$ is a covering family if the $U_\alpha$ cover $U$, i.e. $U = \union_\alpha U_\alpha$.
:::

:::{.example title="More exotic"}
Let $M$ be a manifold and $\mathcal{C}$ be the category of manifolds over $M$, so all $M' \mapsvia{f} M$ such that $f$ is locally an isomorphism.
Note that these are smooth local homeomorphisms.
Let $\ts{M_\alpha \mapsvia{f_\alpha} M}$ if $\union_\alpha \im (f_\alpha) = M$.
:::

:::{.example title="Another exotic example"}
Let $X$ be a scheme and consider $X_{\text{et}}$ the category of all étale $Y/X$: so the objects are schemes $Y$ admitting an étale morphism $Y\to X$.
Then $\ts{X_\alpha\to X}$ is a covering family if $\union \im (f_\alpha) = X$.
:::

This will be the fundamental object, and we'll define étale cohomology by defining sheaves on this category, taking a constant sheaf $\underline{\ZZ/\ell^n\ZZ}$, and we'll take sheaf cohomology.


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


:::{.example title="The fppf topology"}
This stands for **faithfully flat and finite presentation**.
[^letters_fppf]
There are small and big sites here: we define $X_{\fppf}$ whose objects are fppf morphism $Y\to X$, with morphisms as triangular diagrams of morphisms over $X$, and covers are the usual covers.
Note that replacing fppf morphisms with flat morphisms would yield an equivalent definition here.

[^letters_fppf]: The letters don't precisely match up here because this comes from a French acronym.

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
For $\mathcal{D}$ a category, a $\mathcal{D}\dash$valued presheaf is a contravariant function $F:\mathcal{C}\to \mathcal{D}$.
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

Recall that a site is a category equipped with the Grothendieck topology.

:::{.definition title="Sheaf"}
A sheaf $F$ is presheaf such that 

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
A morphism $F_1\to F_2$ of either presheaves or sheaves is a natural transformation of functors.
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

- A proof that $\ul{zlnz}$ is actually a sheaf,
- A proof that the category of sheaves on the big étale site $X_\Et$[^note_on_restriction_big_small] with values in $\thecat{Ab}$ is abelian and has enough injectives.

[^note_on_restriction_big_small]: Note that a sheaf on the big étale site necessarily restricts to a sheaf on the small étale site, since covers in the small site are also covers in the big site.

## Étale Cohomology: A Preliminary Definition

:::{.definition title="Imprecise: étale cohomology"}
Let $\mathcal{F}$ be a sheaf and define a functor $\Gamma_X: \mathcal{F}\to \mathcal{F}(X)$ sending it to its values on $X$.
Then
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
Suppose $T_1, T_2$ are sites (categories with covering families), then a continuous map $f:T_1 \to T_2$ is a functor $T_2 \to T_1$[^note_opposite_way]
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

# Lecture 4: Descent

Last time: sites, sheaves, and morphisms of sites.
Today: descent, which is how we'll see that many familiar objects are sheaves on the étale site, such as representable functors or quasicoherent sheaves.

## Reminder

:::{.definition title="A continuous map of sites"}
Given two sites $(C, T_1)$ and $(D, T_2)$ where $C, D$ are categories and the $T_i$ are collections of covering families, a **morphism** is a functor $f^{-1} :D\to C$ such that

1. $f^{-1}$ preserves fiber products.
2. $f^{-1}$ sends covering families to covering families.
:::

:::{.example title="?"}
The main example: for $f:X\to Y$ a map of topological spaces, the functor $F: \Op(Y) \to \Op(X)$ given by $F(U) \da f^{-1}(U)$ sending an open set to its preimage.
:::

:::{.exercise title="Check!"}
Check that this is a continuous map of sites.
:::

:::{.example title="?"}
Suppose $X$ is a scheme, then there is a natural map of sites from $X_{\Fppf}$ (all $X\dash$schemes where covers are collections of jointly surjective flat morphism) to $X_{\Et}$ (all $X\dash$schemes where covers are jointly surjective étale morphisms) to $X_{\et}$ (étale $X\dash$schemes with morphisms over $X$) to $X_{\zar}$ (the open subsets of $X$ with morphisms given by inclusions and covers the usual covers).
The maps here are inclusions going the other way.
:::

:::{.exercise title="Check!"}
Check that these are continuous maps of sites.
:::

:::{.remark}
\envlist
On terminology: 

- What we've been calling a site or a Grothendieck topology is sometimes called a *Grothendieck pretopology*. 
  The major difference is that you don't have to assume the existence of fiber products.

- You may also see the notion of a **topos**, which is the category of sheaves on a site.

:::

## Setting up Descent


:::{.question}
\envlist

1.  We've said what it means to be a sheaf on a site, how do we check that a given functor is a sheaf on $X_{\et}$ or $X_{\fppf}$?

2. How do we construct such sheaves?
:::

:::{.theorem title="Ways of constructing sheaves"}
\envlist

1. If $Y$ is an $X\dash$scheme (i.e. a scheme equipped with a map to $X$) then the functor $Z \to \hom_X(Z, Y)$ is a sheaf on $X_{\Fppf}, X_{\Et}, X_{\et}$, etc.

2. Suppose $\mathcal{F}$ is a quasicoherent sheaf on $X$, so $\mathcal{F}\in \qcoh(X)$, the functor of taking global sections:

\begin{tikzcd}
Z \ar[dd, "f"]  &  \\
 \ar[r]         &  \Gamma(Z, f^* \mathcal{F}) \\
X & 
\end{tikzcd}
  is a sheaf on $X_{\Fppf}, X_{\Et}, X_{\et}$, etc.

:::


:::{.definition title="$\mathcal{F}^{\et}$"}
The sheaf associated to the above functor on $X_{\et}$ will be denoted $\mathcal{F}^\text{étale}$.
:::

:::{.proof title="of 2"}
Suppose we have an fppf cover of $X$
\begin{tikzcd}
U = \disjoint U_i \ar[d] \\
X
\end{tikzcd}
:::

:::{.question}
Suppose $\mathfrak{F}\in \qcoh(X)$.
When does it come from a quasicoherent sheaf on $X$?
I.e., when is there a quasicoherent sheaf $\mathcal{F}'$ on $X$ and an isomorphism between its pullback to $U$ and $\mathcal{F}$?
What extra structure do you need to "descend" to $\qcoh(X)$, i.e. to pick such an isomorphism?
:::

:::{.question}
Given $\mathcal{F}_1, \mathcal{F}_2 \in \qcoh(U)$ and a morphism $f: \ro{\mathcal{F}_1}{U} \to \ro{\mathcal{F}_2}{U}$, when does $f$ come from $X$?
:::

:::{.remark}
If $X = \spec k$ and $U$ is a finite separable extension, then this question is exactly what Galois descent is about!
:::

:::{.example title="(a motivating one)"}
$U = \disjoint U_i \to X$ is a Zariski cover.
If we have a sheaf on $U$, what extra data do we need to get a sheaf on $X$?
We need isomorphisms $\ro{\mathcal{F}_i }{U_i\intersect U_j} \mapsvia{\sim} \ro{\mathcal{F}_j}{U_i\intersect U_j}$ (gluing data) where each $\mathfrak{F}_i$ is the sheaf given on $U_i$.
We also need a cocycle condition on triple intersections.
Given this data, gluing yields a sheaf on $X$.
This may be familiar from vector bundles.
Thus to give a sheaf, it suffices to specify gluing data.

Morphisms $\mathcal{F}\to \mathcal{G}$ is the same as morphisms $\ro{\mathcal{F}}{U_i} \to \ro{\mathcal{G}}{U_i}$ which commute with the gluing data.
We'd like to generalize this notion of commuting with gluing data to more general types of covers.
:::

:::{.definition title="Descent data for quasicoherent sheaves"}
Suppose $U\mapsvia{f}X$ is a morphisms, then **descent data** for a quasicoherent sheaf on $U/X$ is the following:

1. A sheaf $\mathcal{F}\in \qcoh(U)$.
2. Gluing data: If we take the fiber product of $U$ with itself, mapping to $U$ under 2 different projections[^fp_actual_open_cov],  

\begin{tikzcd}
U \cross_X U \ar[d, bend left, "\pi_1"] \ar[d, bend right, "\pi_2"'] \\
U
\end{tikzcd}
  there are isomorphisms
  \[  
  \phi: \pi_1^* \mathcal{F} \mapsvia{\sim} \pi_2^* \mathcal{F}
  .\]

3. Cocycle condition: in the following fiber product
\begin{tikzcd}
U \cross_X U \cross_X U 
\ar[d, shift  left=1.75ex] \ar[d] \ar[d,shift  right=1.75ex,  "\pi_{ij}"'] \\
U\cross_X U
\end{tikzcd}
  we have $\pi_{23}^* \phi \circ \pi_{12}^* \phi = \pi_{13}\phi$.

[^fp_actual_open_cov]: 
If $U$ was an open cover, this would correspond to intersections of elements in the cover.

:::

:::{.exercise title="?"}
Check that this agrees with the previous notions when $U\to X$ is a Zariski cover.
:::

:::{.definition title="Morphisms of descent data"}
Given descent data $(\mathcal{F}, \phi)$ and $(\mathcal{G}, \psi)$, a **morphism** is a morphism $h: \mathcal{F} \to \mathcal{G}$ of quasicoherent sheaves on $U$ such that the following diagram commutes:

\begin{tikzcd}
\pi_1^* \mathcal{F} 
\ar[r, "\pi_1^*h"] 
\ar[d, "\phi"'] 
& \pi_1^* \mathcal{G} \ar[d, "\psi"] \\
\pi_2^* \mathcal{F} \ar[r, "\pi_2^*h"'] 
& \pi_2^* \mathcal{G} 
\end{tikzcd}

:::

## Descent Data is Equivalent to Quasicoherent Sheaves

:::{.theorem title="Descent for quasicoherent sheaves"}
Suppose $f: U\to X$ is fppf.
Then $f^*$ induced an equivalence of categories between $\qcoh(X)$ and descent data on $U/X$.
:::

:::{.remark}
This doesn't quite make sense, since we haven't covered how to get descent data from a given sheaf.
Explicitly, given $\mathcal{F}\in \qcoh(X)$, we can pullback to obtain $f^* \mathcal{F}\in \qcoh(U)$.
We now want an isomorphism
\[  
\qty{f\circ \pi_1}^* \mathcal{F} \mapsvia{\sim} \qty{f\circ \pi_2}^* \mathcal{F}
\]
on $U\cross_X U$.
We have a situation like the following:

\begin{tikzcd}
U\cross_X U \ar[r, bend left, "\pi_1"] \ar[r, bend right, "\pi_2"] & U \ar[r, "f"] & X
\end{tikzcd}

Since $f\circ \pi_1 = f\circ \pi_2$ in this case, pulling back the identity yields the desired isomorphism.
:::

:::{.example title="?"}
Let $U = \disjoint U_i$ be a Zariski cover of $X$, then vector bundle can be obtained from $\OO_{U_i}^{\oplus n}\in \qcoh(U_i)$.
To glue this to a vector bundle on $X$, we need isomorphism $\phi_{ij} \OO_{U_i\intersect U_j}^{\oplus n} \mapsvia{\sim } \OO_{U_i\intersect U_j}^{\oplus n}$ such that $\ro{\phi_{jk}}{U_i \intersect U_j \intersect U_k} \circ \ro{\phi_{ij}}{U_i \intersect U_i \intersect U_k} = \ro{\phi_{ik}}{U_i\intersect U_j \intersect U_k}$.
For $n=1$, this is gluing data for a line bundle.
:::

:::{.example title="?"}
Suppose $L/k$ is a Galois extension with Galois group $G$, then $\spec L \to \spec k$ is an étale cover.
Descent data on this map is a quasicoherent sheaf on $\spec L$, i.e. an $L\dash$vector space $V$, with an isomorphism $\pi_1^* V \mapsvia{\phi \sim}\pi_2^* V$ satisfying the cocycle condition.
We can compute $\spec L \times_{\spec k} \spec L = \spec L\tensor_k L = \disjoint_{L\mapsvia{\sim} L} \spec L$, which is a torsor for the Galois group, and in fact is equal to $\disjoint_{\Gal(L/k)} \spec L$.
:::

:::{.exercise title="?"}
Convince yourself that descent data here is the same as Galois descent, i.e. a semilinear action.
Hint: you will need to use $\phi$!
:::



Explicitly, the theorem says

- Given a morphisms of descent data, we get a unique morphism of sheaves (fully faithful)

- If you have descent data, it comes from a sheaf (essentially surjective)

So we need to prove

1.  $f^*$ is fully faithful, inducing an isomorphism on hom sets, and

2. $f^*$ is essentially surjective.

> Reference: Neron modules by BLR.

### Proof of Theorem

Given $\mathcal{F}_1, \mathcal{F}_2 \in \qcoh(X)$, then we have a functor and thus a map 
\[
\hom_X(\mathcal{F}_1, \mathcal{F}_2) \mapsvia{f^*} \hom_U(f^*\mathcal{F}_1, f^*\mathcal{F}_2)
\]
We're not trying to show this map is a bijection, since we need more than that: the morphism should commute with the descent data.
We can produce two maps to fill in the following diagram:
\begin{tikzcd}
 & & \hom_{U\cross_X U} 
\qty{ (f\circ \pi_1)^* \mathcal{F}_1, (f\circ \pi_1)^* \mathcal{F}_2 }
\ar[dd, equal]\\
\hom_X(\mathcal{F}_1, \mathcal{F}_2)  
\ar[r, "{f^*}"]  &
\hom_U(f^*\mathcal{F}_1, f^*\mathcal{F}_2)
\ar[ru, "\pi_1^*"]
\ar[rd, "\pi_2^*"] 
& \\
 & & \hom_{U\cross_X U} \qty{ (f\circ \pi_2)^* \mathcal{F}_1, (f\circ \pi_2)^* \mathcal{F}_2   } \\
\end{tikzcd}

where these hom sets are equal since $f\circ \pi_1 = f\circ \pi_2$.

:::{.claim}
Given $g\in \Hom_U(f^* \mathcal{F}_1, f^* \mathcal{F}_2)$, this is a morphism of descent data if maps to the same element under $\pi_1^*$ and $\pi_2^*$ using the above identification of hom sets.
:::

:::{.exercise title="?"}
This follows from definitions, check that it holds.
:::

Being fully faithful is the same as the above diagram being a equalizer.
I.e., the first map $f^*$ is injective, yielding faithfulness, and fullness means that any map in the middle that has the same image under the two arrows $\pi_1^*, \pi_2^*$ comes from an element in $\hom_X(\mathcal{F}_1, \mathcal{F}_2)$.

Assuming that this is fully faithful, why do quasicoherent sheaves give sheaves on $X_{\et}$ or $X_{\fppf}$?
Being a sheaf was characterized by an equalizer diagram gotten by replacing the first hom with taking global sections of $\mathcal{F}$ on $X, U, U\cross_X U$.

:::{.remark}
Taking $\mathcal{F}_1 = \OO$ and $\mathcal{F}_2 = \mathcal{F}$, this shows that $\mathcal{F}^{\et}$ (resp. $\mathcal{F}^{\fppf}$) is a sheaf.
In this case, the first hom is global sections of $\mathcal{F}$ on $X$, the middle are global sections of $\mathcal{F}$ on $U$, and the two maps are to the double intersections.
:::

To prove this is an equalizer diagram, we'll need a lemma:

:::{.lemma title="?"}
Suppose $R\to S$ is a faithfully flat ring morphism (flat and morphisms on spec are surjective) and suppose $N\in \rmod$.
Then there is an equalizer diagram 
\begin{tikzcd}
N \ar[r] & N\tensor_R S \ar[r, bend left, "\id_N \tensor \id_S \tensor 1"] \ar[r, bend right, "\id_N \tensor 1 \tensor \id_S"] & N\tensor_R S \tensor_R S \\
n \ar[r] & n\tensor 1 
\end{tikzcd}
:::

This is the case where $\mathcal{F}_1 = \OO$ and $\mathcal{F}_2 = \tilde N$ the quasicoherent sheaf associated to $N$, $U = \spec S \to X = \spec R$.

:::{.proof title="of lemma"}

**Step 1**:
(Amazing trick) WLOG $R\to S$ splits, so there's a map $S\to R$ such that $R\to S\to R$ is the identity.
We can tensor with $S$, i.e. push out this map along itself to obtain
\begin{tikzcd}
R \ar[d]\ar[r] & S \ar[d, "1\tensor \id_S"] \\
S \ar[r] & S\tensor_R S  \ar[u, bend right, "\exists m"]
\end{tikzcd}
where $m$ is a section given by multiplication.

:::{.claim}
The claim is that we can replace $R$ with $S$ and $S$ with $S\tensor_R S$.
:::

:::{.proof title="of claim"}
Checking the equalizer diagram is the same as showing that the following sequence is exact:
\[  
0 \to N \to N\tensor_R S \mapsvia{f-g} N\tensor_R S\tensor_R S
,\]
where $f, g$ are the maps given in the equalizer.
It suffices to do this after tensoring with $S$, since a sequence of $R$ modules is exact iff it is exact after tensoring with $S$.
One direction is easy, since $S$ is flat, and the other direction follows from the fact that you can check on each stalk, and after tensoring the stalks are the same.
This requires checking for each point on $\spec R$ that the map on stalks is exact, but that's true because we have a surjective map and this can be checked upstairs.
:::


**Step 2**:
Suppose $R\mapsvia{f} S$ splits via a map $S\mapsvia{r} S$.
The geometric picture is that we're supposing we have a section to $U\to X$, and descending amounts to pulling back along the splitting.
We first want to check that $N\to N\tensor_R S$ is injective, which is true since we can use the map $\id_N \tensor r$ to produce a splitting.
Why is this true?
Supposing $n\in N$ maps to zero, then noting that $N\to N\tensor_R S \to N$ is the identity and thus maps $f(n)\mapsvia{\id} 0$, forcing $n=0$.

We now want to show exactness in the middle.
Define 
\[
\tilde r: S\tensor_R S &\to S \\
s_1 \tensor s_2 &\mapsto s_1 \cdot f(r(s_2))
\]
Suppose we have something in the image of the differential.
This yields
\[  
\id_N \tensor \tilde r \qty{n\tensor s\tensor 1 - n\tensor 1 \tensor s}
= n\tensor s - n\tensor f(r(s))
= n\tensor s - nr(s) \tensor 1
.\]

Thus $n\tensor s\tensor 1 - n\tensor 1\tensor s = 0$, putting this in the kernel of the differential, making the last term above equal to zero, and thus $n\tensor s = n r(s) \tensor 1$, which is in the image of the differential.
So anything in the kernel is in the image, where we've proved it for pure tensors, and it's an exercise to do it in general.
:::

:::{.remark}
Given $R\to S$ faithfully flat, you can define the **Amitsur complex**:
\[  
N \to N\tensor S \to N\tensor S^{\tensor 2} \to \cdots \to N\tensor S^{\tensor r}
,\]
where the maps are given by alternating sums of identities with a 1 in the $i$th spot.
There is a theorem that this is always exact, essentially by the same proof as above: reduce to the case where you have a section by tensoring with $S$, then use the section to build a nullhomotopy.
:::

Next time: we'll complete the proof of fppf descent.


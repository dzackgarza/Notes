# Lecture 1

## References

-   <https://www.daniellitt.com/tale-cohomology>
-   [@milneLEC], [@milne_2017], [@freitag_kiehl_2013], [@katz]

## Intro

Prerequisites:

-   Homological Algebra
    -   Abelian Categories
    -   Derived Functors
    -   Spectral Sequences (just exposure!)
-   Sheaf theory and sheaf cohomology
-   Schemes (Hartshorne II and III)

Outline/Goals:

-   Basics of etale cohomology
    -   Etale morphism
    -   Grothendieck topologies
    -   The etale topology
    -   Etale cohomology and the basis theorems
    -   Etale cohomology of curves
    -   Comparison theorems to singular cohomology
    -   Focused on the case where coefficients are a constructible sheaf.
-   Prove the Weil Conjectures (more than one proof)
    -   Proving the Riemann Hypothesis for varieties over finite fields

    > One of the greatest pieces of 20th century mathematics!
-   Topics
    -   Weil 2 (Strengthening of RH, used in practice)
    -   Formality of algebraic varieties (topological features unique to varieties)
    -   Other things (monodromy, refer to Katz' AWS notes)

## What is Etale Cohomology?

Suppose \( X/{\mathbb{C}} \) is a quasiprojective variety: a finite type separated integral \( {\mathbb{C}}{\hbox{-}} \)scheme. If you take the complex points, it naturally has the structure of a complex analytic space \( X({\mathbb{C}})^{\text{an}} \): you can give it the Euclidean topology, which is much finer than the Zariski topology. For a nice topological space, we can associate the singular cohomology \( H^i(X({\mathbb{C}})^{\text{an}}, {\mathbb{Z}}) \), which satisfies several nice properties:

-   Finitely generated \( {\mathbb{Z}}{\hbox{-}} \)modules
-   Extra Hodge structure when tensored up to \( {\mathbb{C}} \) (same as \( {\mathbb{C}} \) coefficients)
-   Cycle classes (i.e. associate to a subvariety a class in cohomology)

Goal of etale cohomology: do something similar for much more general "nice" schemes. Note that some of these properties are special to complex varieties. (E.g. finitely generated: not true for a random topological space.)

We'll associate \( X \) a "nice scheme" \( \rightsquigarrow H^i(X_{\text{et}}, {\mathbb{Z}}/\ell^n{\mathbb{Z}}) \). Take the inverse limit over all \( n \) to obtain the \( \ell{\hbox{-}} \)adic cohomology \( H^i(X_{\text{et}}, {\mathbb{Z}}_\ell) \). You can tensor with \( {\mathbb{Q}} \) to get something with \( {\mathbb{Q}}_\ell \) coefficients. And as in singular cohomology, you can a "twisted coefficient system".

::: {.example title="?"}
What are some nice schemes?

-   \( X = \operatorname{Spec}{\mathcal{O}}_k \), the ring of integers over a number field.
-   \( X \) a variety over an algebraically closed field
    -   Typical, most analogous to taking a variety over \( {\mathbb{C}} \).
-   \( X \) a variety over a non-algebraically closed field
:::

Some comparisons between the last two cases:

-   For \( {\mathbb{C}}{\hbox{-}} \) variety, \( H^i_{\text{sing}} \) will vanish above \( i=2d \).
-   Over a finite field, \( H^i \) will vanish for \( i>2d+1 \) but generally not vanish for \( i=2d+1 \).

In good situations, these are finitely generated \( {\mathbb{Z}}/\ell^n{\mathbb{Z}}{\hbox{-}} \)modules, have Mayer-Vietoris and excision sequences, spectral sequences, etc. Related invariants: for a scheme with a geometric[^1] point: \( (X, \mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu) \rightsquigarrow \pi_1^{\text{étale}}(X, \mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu) \), which is a profinite topological group.

::: {.remark}
More invariants beyond the scope of this course:

-   Higher homotopy groups
-   Homotopy type (equivalence class of spaces)

So we want homotopy-theoretic invariants for varieties.
:::

::: {.remark}
This cohomology theory is necessarily weird! The following theorem explains why. The slogan: there is no cohomology theory with \( {\mathbb{Q}} \) coefficients.
:::

::: {.theorem title="Serre"}
There does not exists a cohomology theory for schemes over \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_q \) with the following properties:

1.  Functorial
2.  Satisfies the Kunneth formula
3.  For \( E \) an elliptic curve, \( H^1(E) = {\mathbb{Q}}^2 \).
:::

::: {.proof}
Take \( E \) to be a supersingular elliptic curve. Then \( \operatorname{End}(E) \otimes{\mathbb{Q}} \) is a quaternion algebra, and use the fact that there are no algebra morphisms \( R\to \operatorname{Mat}_{2\times 2}({\mathbb{Q}}) \).
:::

::: {.exercise}
Functoriality and Kunneth implies that \( \operatorname{End}(E)\curvearrowright E \) yields an action on \( H^1(E) \), which is precisely an algebra morphism \( \operatorname{End}(E) \to \operatorname{Mat}_{2\times 2}({\mathbb{Q}}) \), a contradiction.

The content here: the sum of two endomorphisms act via their sum on \( H^1 \).
:::

::: {.exercise}
Prove the same thing for \( {\mathbb{Q}}_p \) coefficients, where \( p \) divides the characteristic of the ground field. Proof the same, just need to know what quaternion algebras show up.
:::

This forces using some funky type of coefficients.

## What are the Weil Conjectures?

Suppose \( X/{\mathbb{F}}_q \) is a variety, then
\[  
\zeta_X(t) = \exp\qty{\sum_{n>0} { {{\left\lvert {X({\mathbb{F}}_{q^n})} \right\rvert} \over n} t^n } }
.\]

::: {.remark}
```{=tex}
\envlist
```
-   \( {\frac{\partial }{\partial t}\,} \log \zeta_X(t) \) is an ordinary generating function for the number of rational points.

-   Slogan: locations of zeros and poles of a meromorphic function control the growth rate of the coefficients of the Taylor series of the logarithmic derivative.
:::

::: {.exercise}
Make this slogan precise for rational functions, i.e. ratios of two polynomials.
:::

::: {.theorem title="The Weil Conjectures"}
```{=tex}
\envlist
```
1.  \( \zeta_x(t) \) is a rational function.

2.  (Functional equation) For \( X \) smooth and proper
    \[  
    \zeta_X(q^{-n} t^{-1}) = \pm q^{nE \over 2} t^E \zeta_X(t)
    .\]

3.  (RH) All roots and poles of \( \zeta_X(t) \) have absolute value \( q^{i\over 2} \) with \( i\in {\mathbb{Z}} \), and these are equal to the \( i \)th Betti numbers if \( X \) lifts to characteristic zero.[^2]
:::

::: {.remark}
These are all theorems! The proofs:

1.  Dwork, using \( p{\hbox{-}} \)adic methods. Proof here will follow from the fact that \( H^i_{\text{étale} } \) are finite-dimensional. Related to the **Lefschetz Trace Formula**, and is how Grothendieck thought about it.

2.  Grothendieck, follows from some version of Poincaré duality.

3.  (and 4) Deligne.
:::

### Euler Product

Let \( {\left\lvert {X} \right\rvert} \) denote the closed points of \( X \), then there is an Euler product:
\[  
\zeta_X(q^{-n} t^{-1}) = \pm q^{nE \over 2} t^E \zeta_X(t)
&= \prod_{x\in {\left\lvert {X} \right\rvert}} \exp\qty{t^{\deg (x)} + {t^{2\deg (x)} \over 2} + \cdots} \\
&= \prod_{x\in {\left\lvert {X} \right\rvert}} \exp\qty{-\log(1-t^{\deg(x)})} \\
&= \prod_{x\in {\left\lvert {X} \right\rvert}} {1 \over 1 - t^{\deg(x)}}
.\]

::: {.exercise}
Check the first equality. If you have a point of \( \deg(x) = n \), how many \( {\mathbb{F}}_{q^n} \) points does this contribute? I.e., how many maps are there \( \operatorname{Spec}({\mathbb{F}}_{q^n}) \to \operatorname{Spec}({\mathbb{F}}_{q^n}) \) over \( {\mathbb{F}}_q \)?

There are exactly \( n \): it's \( \operatorname{Gal}({\mathbb{F}}_{q^n} / {\mathbb{F}}_q) \). But then division by \( n \) drops this contribution to one.
:::

We can keep going by expanding and multiplying out the product:
\[  
\prod_{x\in {\left\lvert {X} \right\rvert}} {1 \over 1 - t^{\deg(x)}}
&= \prod_{x\in {\left\lvert {X} \right\rvert}} (1 + t^{\deg(x)} + t^{2 \deg(x)}) \\
&= \sum_{n\geq 0} \qty{\text{\# of Galois-stable subset of $X(\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_{q^n})$ of size $n$}}t^n
.\]

Why? If you have a degree \( x \) point, it contributes a stable subset of size \( x \): namely the \( {\mathbb{F}}_{q^n} \) points of \( {\mathbb{F}}_{q^n} \). Taking Galois orbits like that correspond to multiplying this product. But these are the points of some algebraic variety:
\[  
\cdots 
= \sum_{n\geq 0} {\left\lvert {\operatorname{Sym}^n(X)({\mathbb{F}}_q)} \right\rvert} t^n
,\]
where \( \operatorname{Sym}^n(X) \mathrel{\vcenter{:}}= X^n/\Sigma_n \), the action of the symmetric group. Why is that? A \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_q \) point of \( \operatorname{Sym}^n(X) \) is an unordered \( n{\hbox{-}} \)tuple of \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_q \) points without an ordering, and asking them to be Galois stable is the same as saying that they are an \( {\mathbb{F}}_q \) point.

::: {.theorem title="First Weil Conjecture for Curves"}
For \( X \) a smooth proper curve over \( {\mathbb{F}}_q \), \( \zeta_X(t) \) is rational.
:::

::: {.proof}
::: {.claim}
There is a set map
\[  
\operatorname{Sym}^n X &\to {\operatorname{Pic}}^n X \\
D &\mapsto {\mathcal{O}}(D)
,\]
where here the divisor is an \( n{\hbox{-}} \)tuple of points.
:::

What are the fibers over a line bundle \( {\mathcal{O}}(D) \)? A linear system, i.e. the projectivization of global sections \( {\mathbb{P}}\Gamma(X, {\mathcal{O}}(D)) \). What is the expected dimension? To compute the dimension of the space of line bundles on a curve, use Riemann-Roch:
\[  
\dim {\mathbb{P}}\Gamma(X, {\mathcal{O}}(D)) = \deg(D) + 1 - g + \dim H^1(X, {\mathcal{O}}(D)) - 1
.\]
where the last \( -1 \) comes from the fact that this is a projective space.

::: {.claim}
If \( \deg(D) = 2g-2 \), then \( H^1(X, {\mathcal{O}}(D)) = 0 \).
:::

This is because it's dual to \( H^0(X, {\mathcal{O}}(K-D))^\vee \), but this has negative degree and a line bundle of negative degree can never have sections.[^3] Thus the fibers are isomorphic to \( {\mathbb{P}}^{n-g} \) for \( n>2g-2 \). Now make a reduction[^4] and without loss of generality, assume \( X({\mathbb{F}}_q) \neq \emptyset \). In this case, \( {\operatorname{Pic}}^n(X) \cong {\operatorname{Pic}}^{n+1}(X) \) for all \( n \), since you can take \( {\mathcal{O}}(P) \) for \( P \) a point, a degree 1 line bundle, and tensor with it. It's an isomorphism because you can tensor with the dual bundle to go back. Thus for all \( n>2g-2 \),
\[  
{\left\lvert {\operatorname{Sym}^n(X)({\mathbb{F}}_q)} \right\rvert} 
= {\left\lvert {{\mathbb{P}}^{n-g}({\mathbb{F}}_q)} \right\rvert} \cdot {\left\lvert {{\operatorname{Pic}}^n(X)({\mathbb{F}}_q)} \right\rvert}
= {\left\lvert {{\mathbb{P}}^{n-g}({\mathbb{F}}_q)} \right\rvert} \cdot {\left\lvert {{\operatorname{Pic}}^0(X)({\mathbb{F}}_q)} \right\rvert}
.\]

Thus \( \zeta_X(t) \) is a polynomial plus \( \sum_{n>2g-2} {\left\lvert {{\operatorname{Pic}}^n(X)({\mathbb{F}}_q)} \right\rvert}\qty{1+q+q^2+\cdots+q^{n-g}}t^n \).

::: {.exercise}
Show that this is a rational function using the formula for a geometric series.
:::
:::

::: {.theorem title="Functional Equation"}
The functional equation in the case of curves:
\[  
\zeta_X(q^{-1} t^{-1} ) = \pm q^{2-2g \over 2} t^{2-2g} \zeta_X(t)
.\]
:::

::: {.exercise title="Important"}
Where it comes from in terms of \( \operatorname{Sym}^n \): Serre duality.
:::

We'll show the RH later.

::: {.theorem title="Dwork"}
Suppose \( X/{\mathbb{F}}_q \) is any variety, then \( \zeta_X(t) \) is rational function.
:::

This was roughly known to Weil, hinted at in original paper

::: {.proof title="Grothendieck"}
Idea: take Frobenius (intentionally vague, arithmetic vs geometric vs ...) \( F:X\to X \), then \( X({\mathbb{F}}_q) \) are the fixed points of \( F \) acting on \( X_{\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_q} \), and the \( {\mathbb{F}}_{q^n} \) points are the fixed points of \( F^n \). Uses the Lefschetz fixed point formula, which will say for \( \ell\neq \operatorname{ch}({\mathbb{F}}_q) \),[^5]

\[  
{\left\lvert {X({\mathbb{F}}_{q^n})} \right\rvert} = \sum_{i=0}^{2\dim(X)} (-1)^i \operatorname{Tr}(F^n) H^i_c(X_{{\mathbb{F}}_q}, {\mathbb{Q}}_\ell)
.\]

::: {.lemma}
\[  
\exp\qty{\sum {\operatorname{Tr}(F^n) \over n}t^n  }\quad\text{is rational}
.\]
:::

This lemma implies the result, because if you plug the trace formula into the zeta function, you'll get an alternating product \( f \cdots {1\over g} \cdot h \cdot {1\over j} \cdots \) of functions of the form in the lemma, which is still rational.
:::

::: {.proof title="Of Lemma"}
It suffices to treat the case \( \dim(V) = 1 \), because otherwise you can just write this as a sum of powers of eigenvalues. Then you have a scalar matrix, so you obtain
\[  
\exp\qty{ \sum {\alpha^n \over n} t^n} = \exp\qty{ -\log(1 - \alpha t)} = {1 \over 1-\alpha t}
,\]
which is rational.
:::

This proves rationality, contingent on

1.  The Lefschetz fixed point formula
2.  The finite dimensionality of etale cohomology

::: {.exercise}
Try to figure out how Poincaré duality should give the functional equation.

*(Hint: try the lemma on a vector space where \( F \) scales a bilinear form.)*
:::

::: {.theorem title="Serre, Kahler Analog"}
Suppose \( X/{\mathbb{C}} \) is a smooth projective variety and \( [H] \in H^2(X({\mathbb{C}}), {\mathbb{C}}) \) is a hyperplane class (corresponds to intersection of generic hyperplane or the first Chern class of an ample line bundle). Suppose \( F:X\to X \) is an endomorphism such that \( f^*[H] = q[H] \) for some \( q\in {\mathbb{Z}}_{\geq 1} \).

Define
\[  
L(F^n) \mathrel{\vcenter{:}}=
\sum_{i=0}^{2\dim(X)} (-1)^i \operatorname{Tr}\qty{ F^n {~\mathrel{\Big|}~}H^i(X_{{\mathbb{F}}_q}, {\mathbb{Q}}_\ell)}
.\]
and
\[  
\zeta_{X, F}(t) \mathrel{\vcenter{:}}=
\exp\qty{\sum_{n=1}^\infty {L(F^n) \over n}t^n }
.\]

Then \( \zeta_{X, F}(t) \) satisfies the RH: the zeros and poles are of absolute value \( q^{i\over 2} \). Equivalently, the eigenvalues \( \lambda \) of \( F^n \) actings on \( H^i(X, {\mathbb{C}}) \) all satisfy \( {\left\lvert {\lambda} \right\rvert} = q^{i\over 2} \).
:::

Next time, to review

-   Étale morphisms
-   Definition of a site

[^1]: A **geometric point** is a map from \( \operatorname{Spec}X \) to an algebraically closed field.

[^2]: Note that we'll generalize Betti numbers so this makes sense in general.

[^3]: You should check to make sure you know why this is true!

[^4]: Exercise: justify why the reduction is valid.

[^5]: Here \( H^i_c \) is compactly supported cohomology, we'll define this later in the course.

# Prologue {#prologue .unnumbered}

## References

-   Gathmann's Algebraic Geometry notes[@AndreasGathmann515].

## Notation

-   If a property \( P \) is said to hold **locally**, this means that for every point \( p \) there is a neighborhood \( U_p \ni p \) such that \( P \) holds on \( U_p \).

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Notation                                                             Definition
  -------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  \( k[\mathbf{x}] = k[x_1, \cdots, x_n] \)                            Polynomial ring in \( n \) indeterminates

  \( k(\mathbf{x}) = k(x_1, \cdots, x_n) \)                            Rational function field in \( n \) indeterminates\
                                                                       \( k(\mathbf{x}) = \left\{{f(\mathbf{x}) = p(\mathbf{x})/q(\mathbf{x}), {~\mathrel{\Big|}~}p,q, \in k[x_1, \cdots, x_{n}]}\right\} \)\

  \( \mathcal{U} \rightrightarrows X \)                                An open cover\
                                                                       \( \mathcal{U} = \left\{{U_j {~\mathrel{\Big|}~}j\in J}\right\}, X = \bigcup_{j\in J}U_j \)\

  \( \Delta_X \)                                                       The diagonal\
                                                                       \( \Delta_X \coloneqq\left\{{(x, x) {~\mathrel{\Big|}~}x\in X}\right\} \subseteq X\times X \)\

  \( {\mathbb{A}}^n_{/k} \)                                            Affine \( n{\hbox{-}} \)space\
                                                                       \( {\mathbb{A}}^n_{/k} \coloneqq\left\{{\mathbf{a} = {\left[ {a_1, \cdots, a_n} \right]} {~\mathrel{\Big|}~}a_j \in k}\right\} \)\

  \( {\mathbb{P}}^n_{/k} \)                                            Projective \( n{\hbox{-}} \)space\
                                                                       \( {\mathbb{P}}^n_{/k} \coloneqq\qty{k^n\setminus\left\{{0}\right\}}/x\sim \lambda x \)\

  \( V(J), V_a(J) \)                                                   Variety associated to an ideal \( J {~\trianglelefteq~}k[x_1, \cdots, x_{n}] \)\
                                                                       \( V_a(J) \coloneqq\left\{{\mathbf{x}\in {\mathbb{A}}^n {~\mathrel{\Big|}~}f(\mathbf{x}) = 0,\, \forall f\in J}\right\} \)\

  \( I(S), I_a(S) \)                                                   Ideal associated to a subset \( S \subseteq {\mathbb{A}}^n_{k} \)\
                                                                       \( I_a(S) \coloneqq\left\{{f\in k[x_1, \cdots, x_{n}] {~\mathrel{\Big|}~}f(\mathbf{x}) = 0\, \forall \mathbf{x}\in X}\right\} \)\

  \( A(X) \)                                                           Coordinate ring of a variety\
                                                                       \( A(X) \coloneqq k[x_1, \cdots, x_{n}]/I(X) \)\

  \( V_p(J) \)                                                         Projective variety of an ideal\
                                                                       \( V_p(J) \coloneqq\left\{{\mathbf{x} \in {\mathbb{P}}^n_{/k} {~\mathrel{\Big|}~}f(\mathbf{x}) = 0,\, \forall f\in J}\right\} \)\

  \( I_p(S) \)                                                         Projective ideal (?)\
                                                                       \( I_p(S) \coloneqq\left\{{f\in k[x_1, \cdots, x_{n}] {~\mathrel{\Big|}~}f \text{ is homogeneous and } f(x) = 0\, \forall x\in S}\right\} \)\

  \( S(X) \)                                                           Projective coordinate ring\
                                                                       \( S(X) \coloneqq k[x_1, \cdots, x_{n}]/ I_p(X) \)\

  \( f^h \)                                                            Homogenization\
                                                                       \( f^h \coloneqq x_0^{\deg f} f\qty{{x_1 \over x_0}, \cdots, {x_n \over x_0}} \)\

  \( f^i \)                                                            Dehomogenization\
                                                                       \( f^i \coloneqq f(1, x_1, \cdots, x_n) \)\

  \( J^h \)                                                            Homogenization of an ideal\
                                                                       \( J^h \coloneqq\left\{{f^j {~\mathrel{\Big|}~}f\in J}\right\} \)\

  \( \mkern 1.5mu\overline{\mkern-1.5muX\mkern-1.5mu}\mkern 1.5mu \)   Projective closure of a subset\
                                                                       \( \mkern 1.5mu\overline{\mkern-1.5muX\mkern-1.5mu}\mkern 1.5mu \coloneqq V_p(J^h) \coloneqq\left\{{\mathbf{x} \in {\mathbb{P}}^n {~\mathrel{\Big|}~}f^h(\mathbf{x}) = 0\, \forall f\in X}\right\} \)\

  \( D(f) \)                                                           Distinguished open set\
                                                                       \( D(f) \coloneqq V(f)^c = \left\{{x\in {\mathbb{A}}^n {~\mathrel{\Big|}~}f(x) \neq 0}\right\} \)\

  \( \mathcal{F} \)                                                    Presheaf or a sheaf\

  \( f\in \mathcal{F}(U) \)                                            Section of a presheaf or sheaf\

  \( \underline{\mathbf{S}} \) where \( S \) is a set                  Locally constant functions valued in \( S \)\
                                                                       \

  \( \mathcal{F}_p \)                                                  Stalk of a sheaf\
                                                                       \( \mathcal{F}_p \coloneqq\left\{{(U, \phi) {~\mathrel{\Big|}~}p\in U \text{ open },\, \phi \in \mathcal{F}(U)}\right\}/\sim \)\
                                                                       where \( (U, \phi) \sim (U', \phi') \iff \exists p\in W \subset U\cap U' \text{ s.t. } { \left.{{\phi}} \right|_{{W}} } = { \left.{{\phi'}} \right|_{{W}} } \)\

  \( f\in \mathcal{F}_p \)                                             Germs at \( p \)\

  \( {\mathcal{O}}_X \)                                                Structure sheaf\
                                                                       \( {\mathcal{O}}_X \coloneqq\left\{{f:U\to k {~\mathrel{\Big|}~}U \subseteq X \text{ is open}, f \in k(\mathbf{x}) \text{ locally}}\right\} \)\

  \( {\mathcal{O}}_X(U) \)                                             Regular functions on \( U \)\
                                                                       \( {\mathcal{O}}_X(U) \coloneqq\left\{{f:U\to k {~\mathrel{\Big|}~}f \in k(\mathbf{x}) \text{ locally}}\right\} \)\

  \( {\mathcal{O}}_{X, p} \)                                           Germs of Regular functions?\
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Summary of Important Concepts

-   What is an affine variety?
-   What is the coordinate ring of an affine variety?
-   What are the constructions \( V({\,\cdot\,}) \) and \( I({\,\cdot\,}) \)?
-   What is the Nullstellensatz?
-   What are the definitions and some examples of:
    -   The Zariski topology?
    -   Irreducibility?
    -   Connectedness?
    -   Dimension?
-   What is the definition of a presheaf?
    -   What are some examples and counterexamples?
-   What is the definition of sheaf?
    -   What are some examples?
    -   What are some presheaves that are not sheaves?
-   What is the definition of \( {\mathcal{O}}_X \), the sheaf of regular functions?
    -   How does one compute \( {\mathcal{O}}_X \) for \( X = D(f) \) a distinguished open?
-   What is a morphism between two affine varieties?
-   What is the definition of separatedness?
    -   What are some examples of spaces that are and are not separated?
-   What is a projective space?
-   What is a projective variety?
-   What is the projective coordinate ring?
-   How does one take the closure of an affine variety \( X \) in projective space?
-   What is completeness?
    -   What are some examples and counterexamples of complete spaces?

```{=tex}
\newpage
```
## Useful Examples

### Varieties

-   \( V(x-p) \) a point.
-   \( V(x) \) a coordinate axis
-   \( V(xy) \subseteq {\mathbb{A}}^2 \) the coordinate axes
-   \( V(xy-1) \subseteq {\mathbb{A}}^2 \) a hyperbola
-   \( V(x_1^2 - x_2^2 - 1) \subseteq {\mathbb{A}}^2_{/{\mathbb{C}}} \)
-   \( {\mathbb{A}}^2\setminus\left\{{0}\right\} \) is **not** an affine variety or a distinguished open

### Presheaves / Sheaves

-   \( C^\infty({\,\cdot\,}, {\mathbb{R}}) \), a sheaf of smooth functions
-   \( C^0({\,\cdot\,}, {\mathbb{R}}) \), a sheaf of continuous functions
-   \( \underline{{\mathbb{R}}}({\,\cdot\,}) \), the constant sheaf associated to \( {\mathbb{R}} \) (locally constant real-valued functions)
-   \( \operatorname{Hol}({\,\cdot\,}, {\mathbb{C}}) \), a sheaf of holomorphic functions
-   \( K_p \) the skyscraper sheaf:
    \[  
    K_p(U) \coloneqq
    \begin{cases}
    k & p\in U \\
    0 & \text{else}.
    \end{cases}
    \]
-   \( {\mathcal{O}}_X({\,\cdot\,}) \), the sheaf of regular functions on \( X \)

## The Algebra-Geometry Dictionary

Let \( k=\mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \), we're setting up correspondences:

  Algebra                                                                         Geometry
  ------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------
  \( k[x_1, \cdots, x_{n}] \)                                                     \( {\mathbb{A}}^n_{/k} \)
  Maximal ideals \( \mathfrak{m}={x_1 - a_1, \cdots, x_n - a_n} \)                Points \( \mathbf{a} \coloneqq{\left[ {a_1, \cdots, a_n} \right]} \in {\mathbb{A}}^n \)
  Radical ideals \( J = \sqrt{J} {~\trianglelefteq~}k[x_1, \cdots, x_{n}] \)      \( V(J) \) the zero locus
  Prime ideals \( \mathfrak{p}\in \operatorname{Spec}(k[x_1, \cdots, x_{n}]) \)   Irreducible closed subsets
  Minimal prime ideals of \( A(X) \)                                              Irreducible components of \( X \)
  \( I(S) \) the ideal of a set                                                   \( S \subseteq {\mathbb{A}}^n \) a subset
  \( I + J \)                                                                     \( V(I) \cap V(J) \)
  \( \sqrt{I(V) + I(W)} \)                                                        \( V\cap W \)
  \( I \cap J, IJ \)                                                              \( V(I) \cup V(J) \)
  \( I(V) \cap I(W), \sqrt{I(V)I(W)} \)                                           \( V \cup W \)
  \( I(V) : I(W) \)                                                               \( \mkern 1.5mu\overline{\mkern-1.5muV\setminus W\mkern-1.5mu}\mkern 1.5mu \)
  \( k[x_1, \cdots, x_{n}]/I(X) \)                                                \( A(X) \) (Functions on \( X \))
  \( A(X) \) a domain                                                             \( X \) is irreducible
  \( A(X) \) indecomposable                                                       \( X \) is connected
  \( k{\hbox{-}} \)algebra morphism \( A(X)\to A(Y) \)                            Morphisms of varieties \( X\to Y \)
  Krull dimension \( n \) (chaints of primes)                                     Topological dimension \( n \) (chains of irreducibles)
  Integral domains \( S(X) \)                                                     Irreducible projective varieties \( X \)

# Intro and Motivation (Friday, August 21)

## Coordinate Rings

General idea: functions in a *coordinate ring* \( R[x_1, \cdots, x_n]/I \) will correspond to the geometry of the *variety* cut out by \( I \).

::: {.example}
```{=tex}
\envlist
```
-   \( x^2 + y^2 - 1 \) defines a circle, say, over \( {\mathbb{R}} \)

-   \( y^2 = x^3-x \) gives an elliptic curve:

![An elliptic curve.](figures/image_2020-08-21-01-04-22.png){width="350px"}

-   \( x^n+y^n-1 \): does it even contain a \( {\mathbb{Q}}{\hbox{-}} \)point? (Fermat's Last Theorem)

-   \( x^2 + 1 \), which has no \( {\mathbb{R}}{\hbox{-}} \)points.

-   \( x^2 + y^2 + 1/{\mathbb{R}} \) vanishes nowhere, so its ring of functions is not \( {\mathbb{R}}[x, y] / \left\langle{x^2 + y^2 + 1}\right\rangle \). The problem: \( {\mathbb{R}} \) is not algebraically closed.

-   \( x^2 - y^2 = 0 \) over \( {\mathbb{C}} \) is not a manifold (no chart at the origin):

![A non-manifold curve.](figures/image_2020-08-21-01-23-32.png){width="350px"}

-   \( x+y+1/{\mathbb{F}}_3 \), which has 3 points over \( {\mathbb{F}}_3^2 \), but \( f(x, y) = (x^3 - x)(y^3-y) \) vanishes at every point

    -   Not possible when algebraically closed. For example, is there a nonzero polynomial that vanishes on every point in \( {\mathbb{C}} \)?

    -   \( V(f) = {\mathbb{F}}_3^2 \), so the coordinate ring is zero instead of \( {\mathbb{F}}_3[x, y]/\left\langle{f}\right\rangle \) This is addressed by scheme theory.
:::

## Harnack Curve Theorem

::: {.theorem title="Harnack Curve Theorem"}
If \( f \in {\mathbb{R}}[x, y] \) is of degree \( d \), then[^1]
\[  
\pi_1 V(f) \subseteq {\mathbb{R}}^2 \leq 1 + {(d-1)(d-2) \over 2}
\]
:::

::: {.example}
Take the curve
\[  
X = \left\{{(x, y, z) = (t^3, t^4, t^5) \in {\mathbb{C}}^3 {~\mathrel{\Big|}~}t\in {\mathbb{C}}}\right\}
.\]

Then \( X \) is cut out by three equations:

-   \( y^2 = xz \)
-   \( x^2 = yz \)
-   \( z^2 = x^2 y \)
:::

::: {.exercise}
Show that the vanishing locus of the first two equations above is \( X\cup L \) where \( L \) is a line.
:::

Compare to linear algebra: codimension \( d \) iff cut out by exactly \( d \) equations.

## Connection to Riemann Surfaces

::: {.example}
Given the Riemann surface
\[  
y^2 = (x-1)(x-2)\cdots(x-2n)
,\]
how does one visualize its solution set?
:::

::: {.fact}
On \( {\mathbb{C}} \) with some slits, you can consistently choose a square root of the RHS.

![Choosing a square root of a polynomial.](figures/image_2020-08-21-01-31-47.png){width="350px"}

Away from \( x=1, \cdots, 2n \), there are two solutions for \( y \) given \( x \).

After gluing along strips, obtain:

![Glusing along strips to obtain a Riemann surface.](figures/image_2020-08-21-01-32-48.png){width="350px"}
:::

# The Nullstellensatz (Tuesday, August 25)

## Radicals, Degrees, and Affine Varieties

Given \( f\in k[x_1, \cdots, x_n] \), we'll denote by \( f(a) \) the value of \( f \) at the point \( (a_1, \cdots, a_n) \). Let \( k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \) and \( R \) a ring containing ideals \( I, J \). Recall the definition of the *radical* of an ideal:

::: {.definition title="Radical"}
The *radical* of an ideal \( I {~\trianglelefteq~}R \) is defined as
\[  
\sqrt{I} = \left\{{r\in R {~\mathrel{\Big|}~}r^k\in I \text{ for some } k\in {\mathbb{N}}}\right\}
.\]
:::

::: {.example}
Let
\[
I &= (x_1, x_2^2) \subset {\mathbb{C}}[x_1, x_2] \\
  &= \left\{{ f_1 x_1 + f_2 x_2 {~\mathrel{\Big|}~}f_1, f_2 \in {\mathbb{C}}[x_1, x_2]}\right\}
\]

Then \( \sqrt{I} = (x_1, x_2) \), since \( x_2^2 \in I \implies x_2 \in \sqrt{I} \).
:::

::: {.definition title="Degree of an element of {$k[x_1, x_2, \\cdots, x_n]$}"}
Define \( \deg(f) \) as the largest value of \( i_1 + \cdots + i_n \) such that the coefficient of \( \prod x_j ^{i_j} \) is nonzero.
:::

::: {.example}
\( \deg(x_1 + x_2^2 + x_1 x_2^3) = 4 \)
:::

::: {.definition title="Affine Variety"}
```{=tex}
\envlist
```
1.  Affine \( n{\hbox{-}} \)space[^2] \( {\mathbb{A}}^n = {\mathbb{A}}_k^n \) is defined as
    \[
    {\mathbb{A}}^n \coloneqq\left\{{(a_1, \cdots, a_n) {~\mathrel{\Big|}~}a_i \in k}\right\}
    \]

2.  Let \( S\subset k[x_1, \cdots, x_n] \) be a **set** of polynomials.[^3] Then define the **affine variety** of \( S \) as
    \[
      V(S) \coloneqq\left\{{x\in {\mathbb{A}}^n {~\mathrel{\Big|}~}f(x) = 0}\right\} \subset {\mathbb{A}}^n
      \]
:::

::: {.example title="Examples of affine varieties"}
```{=tex}
\envlist
```
-   Let \( f(x) = 0 \), then \( {\mathbb{A}}^n = V\qty{\left\{{f}\right\}} \) is an affine variety.
-   Any point \( (a_1, \cdots, a_n)\in {\mathbb{A}}^n \) is an affine variety, uniquely determined by
    \[
    V(x_1 - a_1, \cdots, x_n - a_n) = \left\{{a_1, \cdots, a_n}\right\}
    \]
-   For any finite set \( r_1, \cdots, r_k \in {\mathbb{A}}^1 \), there exists a polynomial \( f\in k[x_1] \) whose roots are \( r_i \).
:::

::: {.remark}
We may as well assume \( S \) is an ideal by taking the ideal it generates,
\[
S\subseteq \left\langle{S}\right\rangle = \left\{{\sum g_i f_i {~\mathrel{\Big|}~}g_i \in k[x_1, \cdots, x_n],\, f_i\in S}\right\}
.\]

::: {.claim}
\[  
V(S) = V\qty{\left\langle{S}\right\rangle}
.\]
:::

It's clear that \( V(\left\langle{S}\right\rangle) \subset V(S) \). Conversely, if \( f_1, f_2 \) vanish at \( x\in {\mathbb{A}}^n \), then \( f_1 + f_2 \) and \( gf_1 \) also vanish at \( x \) for all \( g\in k[x_1, \cdots, x_n] \). Thus \( V(S) \subset V(\left\langle{S}\right\rangle) \).
:::

## Ideals and Properties of \( V({\,\cdot\,}) \) {#ideals-and-properties-of-vcdot}

See `\cref{useful-algebra-facts}`{=tex} for a review of properties of ideals.

::: {.proposition title="Properties of $V$"}
\[  
S_1 \subseteq S_2 &\implies V(S_1) \supseteq V(S_2) \tag{1}\\
V(S_1) \cup V(S_2) &= V(S_1 S_2) = V(S_1 \cap S_2) \tag{2} \\
\bigcap V(S_i) &= V\qty{\bigcup S_i} \tag{3}
.\]
:::

We thus have a map
\[  
V: \left\{{\text{Ideals in } k[x_1, \cdots, x_n]}\right\} \to \left\{{\text{Affine varieties in } {\mathbb{A}}^n_{/k}}\right\}
.\]

::: {.definition title="The Ideal of a Set"}
Let \( X\subset {\mathbb{A}}^n \) be any set, then *the ideal of \( X \)* is defined as
\[  
I(X) \coloneqq\left\{{f\in k[x_1, \cdots, x_n] {~\mathrel{\Big|}~}f(x) = 0\, \forall x\in X}\right\}
.\]
:::

::: {.example}
Let \( X \) be the union of the \( x_1 \) and \( x_2 \) axes in \( {\mathbb{A}}^2 \), then
\[
I(X) = \left\langle{x_1 x_2}\right\rangle = \left\{{g x_1 x_2 {~\mathrel{\Big|}~}g\in k[x_1, x_2]}\right\}
.\]
:::

::: {.proposition title="$I$ is inclusion-reversing"}
\[  
X_1 \subset X_2 \implies I(X_1) \supset I(X_2)
.\]
:::

::: {.proof title="?"}
If \( f\in I(X_2) \), then \( f(x) = 0 \) for all \( x\in X_2 \). Since \( X_1 \subset X_2 \), we have \( f(x) = 0 \) for all \( x\in X_1 \), so \( f\in I(X_2) \).
:::

::: {.proposition title="The Image of $I$ is Radical"}
\[  
I(X) = \sqrt{I(X)}
,\]
i.e. \( I(X) \) is a radical ideal.
:::

::: {.proof title="?"}
It's clear that
\[
I(X) \subset \sqrt{I(X)} \coloneqq\left\{{f\in k[x_1, \cdots, x_{n}] {~\mathrel{\Big|}~}f^k \in I(X)}\right\}
\]
since we can simply take \( k=1 \) in this definition.

::: {.claim}
For a fixed \( f\in k[x_1, \cdots, x_{n}] \) and any \( k\in {\mathbb{N}} \),
\[  
f(x)^k = 0\,\, \forall x\in X \implies f(x) = 0\,\, \forall x\in X
.\]
:::

Granting this claim, if \( f\in \sqrt{I(X)} \) then \( f^k \in I(X) \) and thus \( f\in I(X) \), completing the proof.

::: {.proof title="?"}
Without loss of generality, we can take \( n = 1 \) and consider \( k[x_1, \cdots, x_{n}] \) Toward a contradiction, fix a \( k \) suppose \( f(x) \neq 0 \) but \( f(x)^k = 0 \). Then writing \( f(x) = \sum_{j=1}^d \alpha_j x^j \) where \( d \coloneqq\deg(f) \), we have \( \alpha_d \neq 0 \) and
\[  
f(x)^k = \alpha_d^k x^{dk} + \cdots
.\]
Equating coefficients, we have \( \alpha_d^k = 0 \) in the base field. But fields have no nonzero nilpotents, so we arrive at a contradiction.
:::
:::

These maps thus yield correspondences
\[  
\left\{{\substack{\text{Ideals in } k[x_1, \cdots, x_n]}}\right\} &\xrightarrow{V} \left\{{\substack{\text{Affine Varieties}}}\right\} \\
\left\{{\substack{\text{Radical Ideals}}}\right\} &\xleftarrow{I} \left\{{\substack{\text{Affine Varieties}}}\right\}
.\]

We'll find that if we restrict to radical ideals, this will yield a bijective correspondence.

## The Nullstellensatz: Statement and Proof

::: {.theorem title="Hilbert Nullstellensatz (Zero Locus Theorem)"}
```{=tex}
\envlist
```
a.  For any affine variety \( X \),
    \[
    V(I(X)) = X
    .\]

b.  For any ideal \( J \subset k[x_1, \cdots, x_n] \),
    \[
    I(V(J)) = \sqrt{J}
    .\]

Thus there is a bijection between radical ideals and affine varieties.
:::

Recall the Hilbert Basis Theorem (`\cref{thm:hilbert_basis}`{=tex}): any ideal in a finitely generated polynomial ring over a field is again finitely generated. We need to show 4 inclusions, 3 of which are easy.

::: {.proof title="$X \\subset V(I(X))$ (a)"}
If \( x\in X \) then \( f(x) = 0 \) for all \( f\in I(X) \). So \( x\in V(I(X)) \), since every \( f\in I(X) \) vanishes at \( x \).
:::

::: {.proof title="$\\sqrt{J} \\subset I(V(J))$ (b)"}
If \( f\in \sqrt{J} \) then \( f^k \in J \) for some \( k \). Then \( f^k(x) = 0 \) for all \( x\in V(J) \). So \( f(x) = 0 \) for all \( x\in V(J) \). Thus \( f\in I(V(J)) \).
:::

::: {.proof title="$V(I(X)) \\subset X$ (c)"}
Need to now use that \( X \) is an affine variety. Counterexample: \( X = {\mathbb{Z}}^2 \subset {\mathbb{C}}^2 \), then \( I(X) = 0 \). But \( V(I(X)) = {\mathbb{C}}^2 \not\subset {\mathbb{Z}}^2 \). By (b), \( I(V(J)) \supset \sqrt{J} \supset J \). Since \( V({\,\cdot\,}) \) is order-reversing, taking \( V \) of both sides reverses the containment. So \( V(I(V(J))) \subset V(J) \), i.e. \( V(I(X)) \subset X \).
:::

Thus the hard direction that remains is (d),

\[
I(V(J)) \subset \sqrt{J}
\]

::: {.warnings title="Hard theorem from commutative algebra."}
We'll need Noether Normalization (`\cref{thm:noether_normalization}`{=tex}), which is perhaps more important than the Nullstellensatz!
:::

::: {.theorem title="1st Version of Nullstellensatz" ref="thm:nullstellensatz_one"}
Suppose \( k \) is algebraically closed and uncountable[^4]. Then the maximal ideals in \( k[x_1, \cdots, x_n] \) are given by
\[  
\operatorname{mSpec}\qty{k[x_1, \cdots, x_{n}]} = \left\{{ \left\langle{x_1 - a_1, \cdots, x_n - a_n}\right\rangle {~\mathrel{\Big|}~}a_j\in k}\right\}
.\]
:::

::: {.proof}
Let \( {\mathfrak{m}} \) be a maximal ideal, then by the Hilbert Basis Theorem (`\cref{thm:hilbert_basis}`{=tex}), \( {\mathfrak{m}}= \left\langle{f_1, \cdots, f_r}\right\rangle \) is finitely generated. Let \( L = {\mathbb{Q}}[\left\{{c_i}\right\}] \) where the \( c_i \) are all of the coefficients of the \( f_i \) if \( \operatorname{ch}(K) = 0 \), **or** \( {\mathbb{F}}_p[\left\{{c_i}\right\}] \) if \( \operatorname{ch}(k) = p \). Then \( L\subset k \). Define
\[
{\mathfrak{m}}_0 = {\mathfrak{m}}\cap L[x_1, \cdots, x_n]
\]
Note that by construction, \( f_i \in {\mathfrak{m}}_0 \) for all \( i \), and we can write \( {\mathfrak{m}}= {\mathfrak{m}}_0 \cdot k[x_1, \cdots, x_n] \).

::: {.claim}
\( {\mathfrak{m}}_0 \) is a maximal ideal.
:::

If it were the case that
\[  
{\mathfrak{m}}_0 \subsetneq {\mathfrak{m}}_0' \subsetneq L[x_1, \cdots, x_n]
,\]
then
\[  
{\mathfrak{m}}_0\cdot k[x_1, \cdots, x_n] \subsetneq {\mathfrak{m}}_0'\cdot k[x_1, \cdots, x_n]  \subsetneq k[x_1, \cdots, x_n]
.\]

So far, we've constructed a smaller polynomial ring and a maximal ideal in it. Thus \( L[x_1, \cdots, x_n]/{\mathfrak{m}}_0 \) is a field that is finitely generated over either \( {\mathbb{Q}} \) or \( {\mathbb{F}}_p \). So \( L[x_1, \cdots, x_n]/{\mathfrak{m}}_0 \) is finite over some \( {\mathbb{Q}}(t_1, \cdots, t_n) \), and since \( k \) is uncountable, there exists an embedding \( {\mathbb{Q}}(t_1, \cdots, t_n) \hookrightarrow k \).[^5]\

This extends to an embedding of \( \phi: L[x_1, \cdots, x_n]/{\mathfrak{m}}_0 \hookrightarrow k \) since \( k \) is algebraically closed. Letting \( a_i \) be the image of \( x_i \) under \( \phi \), then \( f(a_1, \cdots, a_n) = 0 \) by construction, \( f_i \in (x_i - a_i) \) implies that \( {\mathfrak{m}}= (x_i - a_i) \) by maximality.
:::

# More Nullstellensatz (Thursday, August 27)

## Consequence of the Nullstellensatz

Recall Hilbert's Nullstellensatz:

a.  For any affine variety, \( V(I(X)) = X \).

b.  For any ideal \( J{~\trianglelefteq~}k[x_1, \cdots, x_n] \), \( I(V(J)) = \sqrt{J} \).

So there's an order-reversing bijection
\[  
\left\{{\substack{\text{Radical ideals } k[x_1, \cdots, x_n]}}\right\} 
\mathrel{\operatorname*{\rightleftharpoons}_{V({\,\cdot\,})}^{I({\,\cdot\,})}}
\left\{{\substack{\text{Affine varieties in } {\mathbb{A}}^n}}\right\}
.\]

In proving \( I(V(J)) \subseteq \sqrt{J} \), we needed Noether Normalization and an important theorem (`\cref{thm:nullstellensatz_one}`{=tex}): the maximal ideals of \( k[x_1, \cdots, x_n] \) are of the form \( \left\langle{x-a_1, \cdots, x-a_n}\right\rangle \).

::: {.corollary title="?"}
If \( V(I) \) is empty, then \( I = \left\langle{1}\right\rangle \).
:::

::: {.slogan}
The only ideals that vanish nowhere are trivial.
:::

::: {.proof}
This is because no common vanishing locus \( \implies \) trivial ideal, so there's a linear combination that equals 1. By contrapositive, suppose \( I\neq \left\langle{1}\right\rangle \). By Zorn's Lemma, these exists a maximal ideals \( {\mathfrak{m}} \) such that \( I \subset {\mathfrak{m}} \). By the order-reversing property of \( V({\,\cdot\,}) \), \( V({\mathfrak{m}}) \subseteq V(I) \). By the classification of maximal ideals, \( {\mathfrak{m}}= \left\langle{x-a_1, \cdots, x-a_n}\right\rangle \), so \( V({\mathfrak{m}}) = \left\{{a_1, \cdots, a_n}\right\} \) is nonempty.
:::

## Proof of Remaining Part of Nullstellensatz

We now return to the remaining hard part of the proof of the Nullstellensatz:

\[
I(V(J)) \subseteq \sqrt{J}
\]

::: {.proof title="?"}
Let \( f\in V(I(J)) \), we want to show \( f\in \sqrt{J} \). Consider the ideal
\[
\tilde J \coloneqq J + \left\langle{ft - 1}\right\rangle \subseteq k[x_1, \cdots, x_n, t]
\]

::: {.observation}
\( f = 0 \) on all of \( V(J) \) by the definition of \( I(V(J)) \).
:::

However, if \( f=0 \), then \( ft-1 \neq 0 \), so
\[
V(\tilde J) = V(G) \cap V(ft-1) = \emptyset
\]

![Effect, a hyperbolic tube around \( V(J) \), so both can't vanish](figures/image_2020-08-27-09-56-33.png){width="350px"}

Applying the corollary \( \tilde J = (1) \), so
\[
1 = \left\langle{ft-1}\right\rangle g_0(x_1, \cdots, x_n, t) + \sum f_i g_i(x_1, \cdots, x_n, t)
\]
with \( f_i \in J \). Let \( t^N \) be the largest power of \( t \) in any \( g_i \). Thus for some polynomials \( G_i \), we have
\[  
f^N \coloneqq(ft-1) G_0(x_1, \cdots, x_n, ft) + \sum f_i G_i(x_1, \cdots, x_n, ft)
\]
noting that \( f \) does not depend on \( t \). Now take \( k[x_1, \cdots, x_n, t]/\left\langle{ft-1}\right\rangle \), so \( ft=1 \) in this ring. This kills the first term above, yielding
\[  
f^N = \sum f_i G_i(x_1, \cdots, x_n, 1) \in k[x_1, \cdots, x_n, t]/\left\langle{ft-1}\right\rangle
.\]

::: {.claim}
There is an inclusion
\[  
k[x_1, \cdots, x_n] \hookrightarrow
k[x_1, \cdots, x_n, t]/\left\langle{ft-1}\right\rangle
.\]
:::

Since this is injective, this identity also holds in \( k[x_1, \cdots, x_n] \). But \( f_i\in J \), so \( f\in \sqrt{J} \).
:::

::: {.exercise title="?"}
Why is the claim above true?
:::

::: {.example}
Consider \( k[x] \). If \( J\subset k[x] \) is an ideal, it is principal, so \( J = \left\langle{f}\right\rangle \). We can factor \( f(x) = \prod_{i=1}^k (x-a_i)^{n_i} \) and \( V(f) = \left\{{a_1, \cdots, a_k}\right\} \). Then
\[
I(V(f)) = \left\langle{(x-a_1)(x-a_2)\cdots(x-a_k)}\right\rangle = \sqrt{J} \subsetneq J
,\]
so this loses information.
:::

::: {.example}
Let \( J = \left\langle{x-a_1, \cdots, x-a_n}\right\rangle \), then \( I(V(J)) = \sqrt{J} = J \) with \( J \) maximal. Thus there is a correspondence
\[  
\left\{{\substack{\text{Points of } {\mathbb{A}}^n}}\right\} \iff 
\left\{{\substack{\text{Maximal ideals of }k[x_1, \cdots, x_n]}}\right\}
.\]
:::

::: {.theorem title="Properties of $I$"}
```{=tex}
\envlist
```

\[  
I(X_1 \cup X_2)       &= I(X_1) \cap I(X_2) \tag{a} \\
I(X_1) \cap I(X_2) &= \sqrt{I(X_1) + I(X_2)} \tag{b}
.\]
:::

::: {.proof}
We proved (a) on the variety side. For (b), by the Nullstellensatz we have \( X_i = V(I(X_i)) \), so
\[  
I(X_1\cap X_2) 
&=
I\qty{ VI(X_1) \cap VI(X_2)} \\
&=
IV\qty{I(X_1) + I(X_2)} \\
&= \sqrt{I(X_1) + I(X_2)}
.\]
:::

::: {.example}
Example of property (b):

Take \( X_1 = V(y-x^2) \) and \( X_2 = V(y) \), a parabola and the \( x{\hbox{-}} \)axis.

![Intersecting \( V(y-x^2) \) and \( V(y) \)](figures/image_2020-08-27-10-26-45.png){width="350px"}

Then \( X_1 \cap X_2 = \left\{{(0, 0)}\right\} \), and \( I(X_1) + I(X_2) = \left\langle{y-x^2, y}\right\rangle = \left\langle{x^2, y}\right\rangle \), but
\[
I(X_1 \cap X_2) = \left\langle{x, y}\right\rangle = \sqrt{\left\langle{x^2, y}\right\rangle}
\]
:::

::: {.proposition title="?"}
If \( f, g\in k[x_1, \cdots, x_n] \), and suppose \( f(x) = g(x) \) for all \( x\in {\mathbb{A}}^n \). Then \( f = g \).
:::

::: {.proof}
Since \( f-g \) vanishes everywhere,
\[
f-g \in I({\mathbb{A}}^n) = I(V(0)) = \sqrt{0} = 0
\]
:::

More generally suppose \( f(x) = g(x) \) for all \( x\in X \), where \( X \) is some affine variety. Then by definition, \( f-g \in I(X) \), so a "natural" space of functions on \( X \) is \( k[x_1,\cdots, x_n]/I(X) \).

::: {.definition title="Coordinate Ring"}
For an affine variety \( X \), the **coordinate ring of \( X \)** is
\[  
A(X) \coloneqq k[x_1, \cdots, x_n]/ I(X)
.\]

Elements \( f\in A(X) \) are called *polynomial* or **regular** functions on \( X \).
:::

::: {.observation}
The constructions \( V({\,\cdot\,}), I({\,\cdot\,}) \) work just as well with \( A(X) \) instead of \( k[x_1, \cdots, x_{n}] \) and \( X \) instead of \( {\mathbb{A}}^n \).

Given any \( S\subset A(Y) \) for \( Y \) an affine variety,
\[  
V(S) = V_Y(S) \coloneqq\left\{{x\in Y {~\mathrel{\Big|}~}f(x) = 0\,\,\forall f\in S}\right\}
.\]

Given \( X\subset Y \) a subset,
\[  
I(X) = I_Y(X) \coloneqq\left\{{f\in A(Y) {~\mathrel{\Big|}~}f(x) = 0\,\,\forall x\in X}\right\} \subseteq A(Y)
.\]
:::

::: {.example}
For \( X\subset Y \subset {\mathbb{A}}^n \), we have \( I(X) \supset I(Y) \supset I({\mathbb{A}}^n) \), so we have maps
```{=tex}
\begin{tikzcd}
A({\mathbb{A}}^n) \ar[rrrr, twoheadrightarrow, "{\,\cdot\,}/I(X)", bend left] \ar[rr, "{\,\cdot\,}/I(Y)"', twoheadrightarrow] 
&& A(Y)\ar[rr, twoheadrightarrow, "{\,\cdot\,}/I(X)"'] 
&& A(X) \\
\end{tikzcd}
```
:::

::: {.theorem title="Relative Nullstellensatz"}
Let \( X\subset Y \) be an affine subvariety, then

a.  \( A(X) = A(Y) / I_Y(X) \)

b.  There is a correspondence
    \[  
    \left\{{\substack{\text{Affine subvarieties of }Y}}\right\} 
    &\iff \left\{{\substack{\text{Radical ideals in }A(Y)}}\right\} \\
    X &\mapsto I_Y(X) \\
    V_Y(J) &\mapsfrom J
    .\]
:::

::: {.proof}
Properties are inherited from the case of \( {\mathbb{A}}^n \), see exercise in Gathmann.
:::

::: {.example}
Let \( Y = V(y-x^2) \subset {\mathbb{A}}^2/{\mathbb{C}} \) and \( X = \left\{{(1, 1)}\right\} = V(x-1, y-1)\subset {\mathbb{A}}^2/{\mathbb{C}} \).

Then there is an inclusion \( \left\langle{y-x^2}\right\rangle \subset \left\langle{x-1, y-1}\right\rangle \), e.g. by Taylor expanding about the point \( (1, 1) \). and thus there is a map

```{=tex}
\begin{tikzcd}
A({\mathbb{A}}^n)\ar[r]\ar[d, equal] & A(Y) \ar[r]\ar[d, equal]   & A(X)\ar[d, equal] \\
k[x, y]\ar[r]               & k[x, y]/\left\langle{y-x^2}\right\rangle\ar[r, dotted, "\exists"] & k[x, y]/\left\langle{x-1, y-1}\right\rangle
\end{tikzcd}
```
:::

# Zariski Topology (Tuesday, September 01)

## The Zariski Topology

Last time:
\[  
V(I) &= \left\{{x\in {\mathbb{A}}^n {~\mathrel{\Big|}~}f(x) = 0 \, \forall x\in I}\right\} \\
I(X) &= \left\{{f\in k[x_1, \cdots, x_n] {~\mathrel{\Big|}~}f(x) = 0\, \forall x\in X}\right\}
.\]

We proved the Nullstellensatz \( I(V(J)) = \sqrt{J} \), defined the coordinate ring of an affine variety \( X \) as
\[
A(X) \coloneqq k[x_1, \cdots, x_n] / I(X)
\]
the ring of *regular* (polynomial) functions on \( X \). Recall that a *topology* on \( X \) can be defined as a collection of closed subsets of \( X \) that are closed under arbitrary intersections and finite unions. A subset \( Y\subset X \) inherits a subspace topology with closed sets of the form \( Z\cap Y \) for \( Z\subset X \) closed in \( X \).

::: {.definition title="Zariski Topology"}
Let \( X \) be an affine variety. The closed sets are affine subvarieties \( Y\subset X \).
:::

::: {.proposition title="The Zariski topology is a topology"}
This satisfies the axioms for a topological space.
:::

::: {.proof title="?"}
```{=tex}
\envlist
```
-   We have \( \emptyset, X \) closed, since

    1.  \( V_X(1) = \emptyset \),
    2.  \( V_X(0) = X \)

-   Closure under finite unions:

    Let \( V_X(I), V_X(J) \) be closed in \( X \) with \( I, J \subset A(X) \) ideals. Then \( V_X(IJ) = V_X(I) \cup V_X(J) \).

-   Closure under intersections:

    We have \( \bigcap_{i\in \sigma} V_X(J) = V_X\qty{ \sum_{i\in \sigma} J_i} \).
:::

::: {.remark}
There are few closed sets, so this is a "weak" topology.
:::

::: {.example title="Closedness differs in the analytic topology"}
Compare the classical topology on \( {\mathbb{A}}^1_{/{\mathbb{C}}} \) to the Zariski topology. Consider the set
\[
A\coloneqq\left\{{x\in {\mathbb{A}}^1_{/{\mathbb{C}}} {~\mathrel{\Big|}~}{\left\lVert {x} \right\rVert} \leq 1}\right\}
\]
which is closed in the classical topology. However, \( A \) is *not* closed in the Zariski topology, since the closed subsets are finite sets or the whole space. In fact, the topology here is the cofinite topology.
:::

::: {.example}
Let \( f: {\mathbb{A}}^1_{/k} \to {\mathbb{A}}^1_{/k} \) be any injective map. Then \( f \) is necessarily continuous wrt the Zariski topology. Thus the notion of continuity is too weak in this situation.
:::

::: {.warnings title="The topology on the product is not the product topology"}
Consider \( X\times Y \) a product of affine varieties. Then there is a product topology where open sets are of the form \( \bigcup_{i=1}^n U_i \times V_i \) with \( U_i, V_i \) open in \( X, Y \) respectively. This is the wrong topology! On \( {\mathbb{A}}^1 \times{\mathbb{A}}^1 = {\mathbb{A}}^2 \), the diagonal \( \Delta \coloneqq V(x-y) \) is closed in the Zariski topology on \( {\mathbb{A}}^2 \) but not in the product topology.
:::

## Irreducibility and Connectedness

::: {.example}
Consider \( {\mathbb{A}}^2_{/{\mathbb{C}}} \), so the closed sets are curves and points. Observation: \( V(x_1 x_2 ) \subset {\mathbb{A}}^2_{/{\mathbb{C}}} \) decomposed into the union of the coordinate axes \( X_1 \coloneqq V(x_1) \) and \( X_2 \coloneqq V(x_2) \). The Zariski topology can detect these decompositions.
:::

::: {.definition title="Irreducibility and Connectedness"}
Let \( X \) be a topological space.

a.  \( X \) is **reducible** iff there exist nonempty proper closed subsets \( X_1 ,X_2 \subset X \) such that \( X = X_1 \cup X_2 \). Otherwise, \( X \) is said to be *irreducible*.

b.  \( X \) is **disconnected** if there exist \( X_1, X_2 \subset X \) such that \( X = X_1 {\coprod}X_2 \). Otherwise, \( X \) is said to be *connected*.
:::

::: {.example}
\( V(x_1 x_2) \) is reducible but connected.
:::

::: {.example}
\( {\mathbb{A}}^1_{/{\mathbb{C}}} \) is *not* irreducible, since we can write
\[
{\mathbb{A}}^1_{/{\mathbb{C}}} = \left\{{{\left\lVert {x} \right\rVert} \leq 1}\right\} \cup\left\{{{\left\lVert {x} \right\rVert} \geq 1}\right\}
\]
:::

::: {.proposition title="?"}
Let \( X \) be a disconnected affine variety with \( X = X_1 {\coprod}X_2 \). Then \( A(X) \cong A(X_1) \times A(X_2) \).
:::

::: {.proof}
We have
\[
X_1 \cup X_2 = X \implies I(X_1) \cap I(X_2) = I(X) = (0) \in A(X)
,\]
recalling that the coordinate ring \( A(X) \) is a quotient by \( I(X) \). Since \( X_1 \cap X_1 = \emptyset \), we have
\[  
I(X_1 \cap X_2) = \sqrt{I(X_1) + I(X_2) } = I(\emptyset) = \left\langle{1}\right\rangle
.\]

Thus \( I(X_1) + I(X_2) = \left\langle{1}\right\rangle \), and by the Chinese Remainder Theorem, the following map is an isomorphism:
\[  
A(X) \to A(X)/I(X_1) \times A(X) / I(X_2)
.\]

However, the codomain is precisely \( A(X_1) \times A(X_2) \).
:::

### Irreducibility on the Algebra Side

::: {.proposition title="?"}
An affine variety \( X \) is irreducible \( \iff \) \( A(X) \) is an integral domain.
:::

::: {.proof}
\( \implies \): By contrapositive, suppose \( f_1, f_2 \in A(X) \) are nonzero with \( f_1 f_2 = 0 \). Let \( X_i \coloneqq V(f_i) \), then
\[
X= V(0) = V(f_1 f_2) = X_1 \cup X_2
\]
which are closed and proper since \( f_i \neq 0 \).

\

\( \impliedby \): Suppose \( X \) is reducible with \( X = X_1 \cup X_2 \) with \( X_i \) proper and closed. Define \( J_i \coloneqq I(X_i) \), then by part (a) of the Nullstellensatz.
\[  
V(J_i) = V(I(X_i)) = X_i \implies J_i \neq 0
.\]
So there exists a nonzero \( f_i \in J_i = I(X_i) \), so \( f_i \) vanishes on \( X_i \). But then
\[
V(f_1) \cup V(f_2) \supset X_1 \cup X_2 = X
,\]
so \( X= V(f_1 f_2) \) and \( f_1 f_2 \in I(X) = \left\langle{0}\right\rangle \) and \( f_1 f_2 = 0 \), and \( A(X) \) is thus not a domain.
:::

::: {.example}
Let \( X = \left\{{\mathbf{p}^1, \cdots, \mathbf{p}^d}\right\} \) be a finite set in \( {\mathbb{A}}^n \). The Zariski topology on \( X \) is the discrete topology, and \( X = {\coprod}_{i=1}^d \left\{{\mathbf{p}^i}\right\} \). So
\[  
A(X) = A\qty{\displaystyle\coprod_{i=1}^d \left\{{\mathbf{p}^i}\right\}} = \prod_{i=1}^d A\qty{\left\{{\mathbf{p}^i}\right\}} = \prod_{i=1}^d \frac{ k[x_1, \cdots, x_n]} {\left\langle{x_1 - p^i_1, \cdots, x_n - p^i_n}\right\rangle }
\]
where \( p_j^i \) is the \( j \)th component of \( \mathbf{p}^i \).
:::

::: {.example}
Set \( V(x_1 x_2) = X \), then \( A(X) = k[x_1, x_2]/ \left\langle{x_1 x_2}\right\rangle \). This not being a domain (since \( x_1 x_2 = 0 \)) corresponds to \( X = V(x_1) \cup V(x_2) \) not being irreducible.
:::

::: {.example}
Let \( X_1 \) be the \( xy{\hbox{-}} \)plane and \( X_2 \) be the line parallel to the \( y{\hbox{-}} \)axis through \( {\left[ {0,0,1} \right]} \), and let \( X= X_1 {\coprod}X_2 \):

![Union of a plane and a parallel line.](figures/image_2020-09-01-10-43-00.png){width="350px"}

Then \( X_1 = V(z) \) and \( X_2 = V(x, z-1) \), and
\[
I(X) = \left\langle{z}\right\rangle \cdot \left\langle{x, z-1}\right\rangle=  \left\langle{xz, z^2 - z}\right\rangle
\]
The coordinate ring is then given by
\[
A(X) = { {\mathbb{C}}[x, y, z] \over \left\langle{xz, z^2 - z}\right\rangle } = { {\mathbb{C}}[x, y, z] \over  \left\langle{z}\right\rangle } \oplus { {\mathbb{C}}[x, y,z] \over \left\langle{x, z-1}\right\rangle }
\]
:::

# Irreducibility (Thursday, September 03)

## Irreducibility and Prime Ideals

Recall that the Zariski topology is defined on an affine variety \( X = V(J) \) with \( J {~\trianglelefteq~}k[x_1, \cdots, x_n] \) by describing the closed sets.

::: {.proposition title="?"}
\( X \) is irreducible if its coordinate ring \( A(X) \) is a domain.
:::

::: {.proposition title="?"}
There is a 1-to-1 correspondence
\[  
\left\{{\substack{\text{Irreducible subvarieties} \\ \text{of }X}}\right\}
\iff
\left\{{\substack{\text{Prime ideals} \\ \text{in }A(X)}}\right\}
.\]
:::

::: {.proof}
Suppose \( Y\subset X \) is an affine subvariety. Then
\[  
A(X) / I_X(Y) = A(Y)
.\]

By the Nullstellensatz, there is a bijection between subvarieties of \( X \) and radical ideals of \( A(X) \) where \( Y\mapsto I_X(Y) \). A quotient is a domain iff quotienting by a prime ideal, so \( A(Y) \) is a domain iff \( I_X(Y) \) is prime.
:::

Recall that \( {\mathfrak{p}}{~\trianglelefteq~}R \) is prime when \( fg\in {\mathfrak{p}}\iff f\in {\mathfrak{p}} \) or \( g\in {\mathfrak{p}} \). Thus \( \mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu \mkern 1.5mu\overline{\mkern-1.5mug\mkern-1.5mu}\mkern 1.5mu = 0 \) in \( R/{\mathfrak{p}} \) implies \( \mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu = 0 \) or \( \mkern 1.5mu\overline{\mkern-1.5mug\mkern-1.5mu}\mkern 1.5mu = 0 \) in \( R/{\mathfrak{p}} \), i.e. \( R/{\mathfrak{p}} \) is a domain. Finally, note that prime ideals are radical (easy proof).

::: {.example}
Consider \( {\mathbb{A}}^2/{\mathbb{C}} \) and some subvarieties \( C_i \):

![Subvarieties](figures/image_2020-09-03-09-47-09.png){width="350px"}

Then irreducible subvarieties correspond to prime ideals in \( {\mathbb{C}}[x, y] \). Here \( C_1, C_3 \) correspond to \( V(f), V(g) \) for \( f,g \) irreducible polynomials, whereas \( C_2 \) corresponds to a maximal ideal, i.e. \( V(x_1 - a_1, x_2 - a_2) \). Note that \( I(C_1 \cup C_2 \cup C_3) \) is not a prime ideal, since the variety is reducible as the union of 3 closed subsets.
:::

::: {.example}
A finite set is irreducible iff it contains only one point.
:::

::: {.example}
Any irreducible topological space is connected, since irreducible requires a union but connectedness requires a *disjoint* union.
:::

::: {.example}
\( {\mathbb{A}}^n/k \) is irreducible: by prop 2.8, its irreducible iff the coordinate ring is a domain. However \( A({\mathbb{A}}^n) = k[x_1, \cdots, x_n] \), which is a domain.
:::

::: {.example}
\( V(x_1 x_2) \) is not irreducible, since it's equal to \( V(x_1) \cup V(x_2) \).
:::

::: {.definition title="Noetherian Space"}
A *Noetherian* topological space \( X \) is a space with no infinite strictly decreasing sequence of closed subsets.
:::

::: {.proposition title="?"}
An affine variety \( X \) with the Zariski topology is a Noetherian space.
:::

::: {.proof}
Let \( X_0 \supsetneq X_1 \supsetneq \cdots \) be a decreasing sequence of closed subspaces. Then \( I(X_0) \subsetneq I(X_1) \subsetneq \). Note that these containments are strict, otherwise we could use \( V(I(X_1)) = X_1 \) to get an equality in the original chain.

Recall that a ring \( R \) is Noetherian iff every ascending chain of ideals terminates. Thus it suffices to show that \( A(X) \) is Noetherian.

We have \( A(X) = k[x_1, \cdots, x_{n}] / I(X) \), and if this had an infinite chain \( I_1 \subsetneq I_2 \subsetneq \cdots \) lifts to a chain in \( k[x_1, \cdots, x_{n}] \), which is Noetherian. A useful fact: \( R \) Noetherian implies that \( R[x] \) is Noetherian, and fields are always Noetherian.
:::

::: {.remark}
Any subspace \( A\subset X \) of a Noetherian space is Noetherian. To see why, suppose we have a chain of closed sets in the subspace topology,
\[  
A\cap X_0 \supsetneq A\cap X_1 \supsetneq \cdots
.\]

Then \( X_0 \supsetneq X_1 \supsetneq \cdots \) is a strictly decreasing chain of closed sets in \( X \). Why strictly decreasing:
\[
\cap^n X_i = \cap^{n+1} X_i \implies A\cap^n X_i = A\cap^{n+1} X_i
,\]
yielding a contradiction.
:::

::: {.proposition title="Important: Noetherian spaces are finite unions of closed irreducibles"}
Every Noetherian space \( X \) is a finite union of irreducible closed subsets, i.e. \( X = \bigcup_{i=1}^k X_i \). If we further assume \( X_i \not\subset X_j \) for all \( i, j \), then the \( X_i \) are unique up to permutation.
:::

::: {.remark}
The \( X_i \) are the **components** of \( X \). In the previous example \( C_1 \cup C_2 \cup C_3 \) has three components.
:::

::: {.proof}
::: {.claim}
Such a finite decomposition exists.
:::

If \( X \) is irreducible, then \( X=X \) and this holds. Otherwise, write \( X = X_1 \cup X_2 \) with \( X_i \) proper closed subsets. If \( X_1 \) and \( X_1' \) are irreducible, we're done, so otherwise suppose wlog \( X_1' \) is not irreducible. Then we can express \( X = X_1 \cup\qty{X_2 \cup X_2'} \) with \( X_2, X_2' \subset X_1' \) closed and proper. Thus we can obtain a tree whose leaves are proper closed subsets:

![Image](figures/image_2020-09-03-10-15-53.png){width="350px"}

This tree terminates because \( X \) is Noetherian: if it did not, this would generate an infinite decreasing chain of subspaces.

::: {.claim}
This decomposition is unique if no two components are contained in the other.
:::

Suppose
\[  
X= \bigcup_{i=1}^k X_i = \bigcup_{j=1}^\ell X_j'
.\]

Note that \( X_i \subset X \) implies that \( X_i = \bigcup_{j=1}^\ell X_i \cap X_j' \). But \( X_i \) is irreducible and this would express \( X_i \) as a union of proper closed subsets, so some \( X_i \cap X_j' \) is *not* a proper closed subset. Thus \( X_i = X_i \cap X_j' \) for some \( j \), which forces \( X_i \subset X_j' \). Applying the same argument to \( X_j' \) to obtain \( X_j' \subset X_k \) for some \( k \). Then \( X_i \subset X_j' \subset X_k \), but \( X_ i \not\subset X_j \) when \( j\neq i \). So \( X_i = X_j' = X_k \), forcing the \( X_i \) to be unique up to permutation.
:::

Recall from ring theory: for \( I\subset R \) and \( R \) Noetherian, \( I \) has a *primary decomposition* \( I = \bigcap_{i=1}^k Q_i \) with \( \sqrt{Q_i} \) prime. Assuming the \( Q_i \) are minimal in the sense that \( \sqrt{Q_i} \not\subset \sqrt{Q_j} \) for any \( i, j \), this decomposition is unique.

Applying this to \( I(X) {~\trianglelefteq~}k[x_1, \cdots, x_{n}] = R \) yields
\[  
I(X) = \bigcap_{i=1}^k Q_i 
\implies
X  = V(I(X)) = \bigcup_{i=1}^k V(Q_i)
.\]

Letting \( P_i = \sqrt{Q_i} \), noting that the \( P_i \) are prime and thus radical, we have \( V(Q_i) = V(P_i) \). Writing \( X = \bigcup V(P_i) \), we have \( I(V(P_i)) = P_i \) and thus \( A(V(P_i)) = R/P_i \) is a domain, meaning \( V(P_i) \) are irreducible affine varieties. Conversely, if we express \( X = \bigcup X_i \), we have \( I = I\qty{\bigcup X_i} = \bigcap I(X_i) = \bigcap P_i \) which are irreducible since they are prime.

::: {.remark}
There is a correspondence
\[  
\left\{{\substack{\text{Irreducible components} \\ \text{of } X}}\right\} 
\iff
\left\{{\substack{\text{Minimal prime ideals} \\ \text{in } A(X)}}\right\}
,\]
where here *minimal* is the condition that no pair of ideals satisfies a subset containment.
:::

In what follows, let \( X \) be an irreducible topological space.

::: {.proposition title="1"}
The intersection of nonempty two open sets is *never* empty.
:::

::: {.proof}
Let \( U, U' \) be open and \( X\setminus U, X\setminus U' \) closed. Then \( U\cap U' = \emptyset \iff (X\setminus U) \cup(X\setminus U') = X \), but this is not possible since \( X \) is irreducible.[^6]
:::

::: {.proposition title="?"}
Any nonempty open set is dense, i.e. if \( U\subset X \) is open then its closure \( \operatorname{cl}_X(U) \) is dense in \( X \).
:::

::: {.proof}
Write \( X = \operatorname{cl}_X(U) \cup(X\setminus U) \). Since \( X\setminus U \neq X \) and \( X \) is irreducible, we have \( \operatorname{cl}_X(U) = X \).
:::

# Dimension (Tuesday, September 08)

Review: we discussed irreducible components. Recall that the *Zariski topology* on an affine variety \( X \) has affine subvarieties as closed sets, and a *Noetherian space* has no infinitely decreasing chains of closed subspaces. We showed that any Noetherian space has a decomposition into irreducible components \( X = \cup X_i \) with \( X_i \) closed, irreducible, and unique such that no two are subsets of each other. Applying this to affine varieties, a descending chain of subspaces \( X_0 \supsetneq X_1 \cdots \) in \( X \) corresponds to an increasing chain of ideals \( I(X_0) \subsetneq I(X_1) \cdots \) in \( A(X) \). Since \( k[x_1, \cdots, x_{n}] \) is a Noetherian ring, this chain terminates, so affine varieties are Noetherian.

## Dimension

::: {.definition title="Dimensions"}
Let \( X \) be a topological space.

1.  The **dimension** \( \dim X \in {\mathbb{N}}\cup\left\{{\infty}\right\} \) is either \( \infty \) or the length \( n \) of the longest chain of *irreducible* closed subsets \( \emptyset \neq Y_0 \subsetneq \cdots \subsetneq Y_n \subset X \) where \( Y_n \) need not be equal to \( X \).[^7]

2.  The **codimension** of \( Y \) in \( X \), \( \operatorname{codim}_X(Y) \), for an irreducible subset \( Y\subseteq X \) is the length of the longest chain \( Y\subset Y_0 \subsetneq Y_1 \cdots \subset X \).
:::

::: {.example}
Consider \( {\mathbb{A}}^1/k \), what are the closed subsets? The finite sets, the empty set, and the entire space.

What are the irreducible closed subsets? Every point is a closed subset, so sets with more than one point are reducible. So the only irreducible closed subsets are \( \left\{{a}\right\}, {\mathbb{A}}^1/k \), since an affine variety is irreducible iff its coordinate ring is a domain and \( A({\mathbb{A}}^1/k) = k[x] \). We can check

```{=tex}
\begin{tikzcd}
    {\emptyset} & {\left\{{a}\right\}} & {{\mathbb{A}}^1_k} \\
    {Y_0} & {Y_1} & {Y_2}
    \arrow[from=1-1, to=2-1, equal]
    \arrow[from=1-2, to=2-2, equal]
    \arrow[from=1-3, to=2-3, equal]
    \arrow[from=1-1, to=1-2, hook]
    \arrow[from=1-2, to=1-3, hook]
    \arrow[from=2-1, to=2-2, hook]
    \arrow[from=2-2, to=2-3, hook]
\end{tikzcd}
```
which is of length \( 1 \), since there is one nontrivial containment \( Y_1 \subsetneq Y_2 \), and so \( \dim({\mathbb{A}}^1/k) = 1 \).
:::

::: {.example}
Consider \( V(x_1 x_2) \subset {\mathbb{A}}^2/k \), the union of the \( x_i \) axes. Then the closed subsets are \( V(x_1), V(x_2) \), along with finite sets and their unions. What is the longest chain of irreducible closed subsets?

Note that \( k[x_1, x_2] / \left\langle{x_1}\right\rangle \cong k[x_2] \) is a domain, so \( V(x_i) \) are irreducible. So we can have a chain
\[  
\emptyset \subsetneq \left\{{a}\right\} \subsetneq V(x_1) \subset X
,\]
where \( a \) is any point on the \( x_2{\hbox{-}} \)axis, so \( \dim(X) = 1 \).

The only closed sets containing \( V(x_1) \) are \( V(x_1)\cup S \) for \( S \) some finite set, which can not be irreducible.
:::

::: {.remark}
You may be tempted to think that if \( X \) is Noetherian then the dimension is finite. However, finite dimension requires a bounded length on descending/ascending chains, whereas Noetherian only requires "termination", which may not happen in a bounded number of steps. So this is **false**!
:::

::: {.example}
Take \( X = {\mathbb{N}} \) and define a topology by setting closed subsets be the sets \( \left\{{0, \cdots, n}\right\} \) as \( n \) ranges over \( {\mathbb{N}} \), along with \( {\mathbb{N}} \) itself. Is \( X \) Noetherian? Check descending chains of closed sets:

\[  
{\mathbb{N}}\supsetneq \left\{{0, \cdots, N}\right\} \supsetneq \left\{{0, \cdots, N-1}\right\} \cdots
,\]

which has length at most \( N \), so it terminates and \( X \) is Noetherian. But note that all of these closed subsets \( X_N \coloneqq\left\{{0, \cdots, N}\right\} \) are irreducible. Why? If \( X_n = X_i \cup X_j \) then one of \( i, j \) is equal to \( N \), i.e \( X_i, X_j = X_N \). So for every \( N \), there exists a chain of irreducible closed subsets of length \( N \), implying that \( \dim({\mathbb{N}}) = \infty \).
:::

::: {.remark}
Let \( X \) be an affine variety. There is a correspondence
\[  
\left\{{\substack{\text{Chains of irreducible closed subsets} \\ Y_0 \subsetneq \cdots \subsetneq Y_n \text{ in } X}}\right\}
\left\{{\substack{\text{Chains of prime ideals} \\ P_0\supsetneq \cdots \supsetneq P_n \text{ in } A(X)}}\right\}
.\]
Why? We have a correspondence between closed subsets and radical ideals. If we specialize to irreducible, we saw that these correspond to radical ideals \( I\subset A(X) \) such that \( A(Y) \coloneqq A(X) / I \) is a domain, which precisely correspond to prime ideal in \( A(X) \).
:::

We thus make the following definition:

::: {.definition title="Krull Dimension"}
The *Krull dimension* of a ring \( R \) is the length \( n \) of the longest chain of prime ideals
\[  
P_0 \supsetneq P_1 \supsetneq \cdots \supsetneq P_n
.\]
:::

::: {.remark}
This uses the key fact from commutative algebra: a finitely generated \( k{\hbox{-}} \)algebra \( M \) satisfies

1.  \( M \) has finite \( k{\hbox{-}} \)dimension
2.  If \( M \) is a domain, every maximal chain has the same length.
:::

::: {.remark}
From scheme theory: for any ring \( R \), there is an associated topological space \( \operatorname{Spec}R \) given by the set of prime ideals in \( R \), where the closed sets are given by
\[  
V(I) = \left\{{\text{Prime ideals } {\mathfrak{p}}{~\trianglelefteq~}R {~\mathrel{\Big|}~}I\subseteq {\mathfrak{p}}}\right\}
.\]

If \( R \) is a Noetherian ring, then \( \operatorname{Spec}(R) \) is a Noetherian space.
:::

::: {.example}
Using the fact above, let's compute \( \dim {\mathbb{A}}^n/k \). We can take the following chain of prime ideals in \( k[x_1, \cdots, x_{n}] \):
\[  
0 \subsetneq \left\langle{x_1}\right\rangle \subsetneq \left\langle{x_1, x_2}\right\rangle \cdots \subsetneq \left\langle{x_1, \cdots, x_n}\right\rangle
.\]

By applying \( V({\,\cdot\,}) \) we obtain
\[  
{\mathbb{A}}^n/k \supsetneq {\mathbb{A}}^{n-1}/k \cdots \supsetneq {\mathbb{A}}^0/k = \left\{{0}\right\} \supsetneq \emptyset
,\]
where we know each is irreducible and closed, and it's easy to check that these are maximal:

If there were an ideal \( \left\langle{x_1, x_2}\right\rangle \subset P \subset \left\langle{x_1, x_2, x_3}\right\rangle \), then take \( P\cap k[x_1, x_2, x_3] / \left\langle{x_1, x_2}\right\rangle \) which would yield a polynomial ring in \( k[x_1] \). But we know the only irreducible sets in \( {\mathbb{A}}^1/k \) are a point and the entire space.

So this is a chain of maximal length, implying \( \dim {\mathbb{A}}^n/k = n \).
:::

# Dimension (Thursday, September 10)

Recall that the dimension of a ring \( R \) is the length of the longest chain of prime ideals. Similarly, for an affine variety \( X \), we defined \( \dim X \) to be the length of the longest chain of irreducible closed subsets.

These notions of dimension of the same when taking \( R = A(X) \), i.e. \( \dim {\mathbb{A}}^n/k = n \).

::: {.proposition title="Dimensions"}
Let \( k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \).

a.  The dimension of \( k[x_1, \cdots, x_n] \) is \( n \).
b.  All maximal chains of prime ideals have length \( n \).
:::

## Proof of Dimension Proposition

The case for \( n=0 \) is trivial, just take \( P_0 = \left\langle{0}\right\rangle \). For \( n=1 \), easy to see since the only prime ideals in \( k[x] \) are \( \left\langle{0}\right\rangle \) and \( \left\langle{x-a}\right\rangle \), since any polynomial factors into linear factors.\

Let \( P_0 \subsetneq \cdots \subsetneq P_m \) be a maximal chain of prime ideals in \( k[x_1, \cdots, x_{n}] \); we then want to show that \( m=n \). Assume \( P_0 = \left\langle{0}\right\rangle \), since we can always extend our chain to make this true (using maximality). Then \( P_1 \) is a minimal prime and \( P_m \) is a maximal ideal (and maximals are prime).

::: {.claim}
\( P_1 \) is principle, i.e. \( P_1 = \left\langle{f}\right\rangle \) for some irreducible \( f \).
:::

### Proof That \( P_1 \) is Principle {#proof-that-p_1-is-principle}

::: {.claim}
\( k[x_1, \cdots, x_{n}] \) is a unique factorization domain. This follows since \( k \) is a UFD since it's a field, and \( R \) a UFD \( \implies R[x] \) is a UFD for any \( R \).

> See Gauss' lemma.
:::

::: {.claim}
In a UFD, minimal primes are principal. Let \( r \in P \), and write \( r = u \prod p_i^{n_i} \) with \( p_i \) irreducible and \( u \) a unit. So some \( p_i\in P \), and \( p_i \) irreducible implies \( \left\langle{p_i}\right\rangle \) is prime. Since \( 0 \subsetneq \left\langle{p_i}\right\rangle \subset P \), but \( P \) was prime and assumed minimal, so \( \left\langle{p_i}\right\rangle = P \).
:::

The idea is to now transfer the chain \( P_0 \subsetneq \cdots \subsetneq P_m \) to a maximal chain in \( k[x_1, \cdots, x_{n-1}] \). The first step is to make a linear change of coordinates so that \( f \) is monic in the variable \( x_n \).

::: {.example}
Take \( f=x_1x_2 + x_3^2 x_4 \) and map \( x_3 \mapsto x_3 + x_4 \).
:::

So write
\[  
f(x_1, \cdots, x_n) = x_n^d + f_1(x_1, \cdots, x_{n-1}) x_n^{d-1} + \cdots + f_d(x_1, \cdots, x_{n-1})
.\]

We can then descend to \( k[x_1, \cdots, x_{n}] \) to \( k[x_1, \cdots, x_{n}]/\left\langle{f}\right\rangle \):
```{=tex}
\begin{tikzcd}
P_0 \ar[r] & P_1 \ar[r]\ar[d]                   & \cdots \ar[r]\ar[d] & P_m\ar[d] \\
           & P_1/P_1 \ar[r]\ar[d]               & \cdots \ar[r]\ar[d] & P_m/P_1\ar[d] \\
           & P_1/P_1 \cap k[x_1, \cdots, x_{n-1}] \ar[r] & \cdots \ar[r]       & (P_m / P_1) \cap k[x_1, \cdots, x_{n-1}]
\end{tikzcd}
```
The first set of downward arrows denote taking the quotient, and the upward is taking inverse images, and this preserves strict inequalities.

::: {.definition title="Integral Extension"}
An *integral* ring extension \( R\hookrightarrow R' \) of \( R \) is one such that all \( r' \in R' \) satisfying a monic polynomial with coefficients in \( R \), where \( R' \) is finitely generated.

> In this case, also implies that \( R' \) is a finitely-generated \( R \) module.
:::

In this case, \( k[x_1, \cdots, x_{n-1}] \hookrightarrow k[x_1, \cdots, x_{n}] /\left\langle{f}\right\rangle \) is an integral extension. We want to show that the intersection step above also preserves strictness of inclusions, since it preserves primality.

::: {.lemma}
Suppose \( P', Q' \subset R' \) are distinct prime ideals with \( R\hookrightarrow R' \) an integral extension. Then if \( P'\cap R = Q'\cap R \), neither contains the other, i.e. \( P'\not\subset Q' \) and \( Q'\not\subset P' \).
:::

::: {.proof}
Toward a contradiction, suppose \( P' \subset Q' \), we then want to show that \( Q'\supset P' \). Let \( a\in Q'\setminus P' \) (again toward a contradiction), then
\[  
R/\qty{P'\cap R} \hookrightarrow R'/P'
\]
is integral.

Then \( \mkern 1.5mu\overline{\mkern-1.5mua\mkern-1.5mu}\mkern 1.5mu \neq 0 \) in \( R'/P' \), and there exists a monic polynomial of minimal degree that \( \mkern 1.5mu\overline{\mkern-1.5mua\mkern-1.5mu}\mkern 1.5mu \) satisfies, \( p(x) = x^n + \sum_{i=2}^n \mkern 1.5mu\overline{\mkern-1.5muc\mkern-1.5mu}\mkern 1.5mu_i x^{n-i} \). This implies \( \mkern 1.5mu\overline{\mkern-1.5muc\mkern-1.5mu}\mkern 1.5mu_n \in Q'/P' \) (which will contradict \( c_n \in P' \)), since if \( \mkern 1.5mu\overline{\mkern-1.5muc\mkern-1.5mu}\mkern 1.5mu_n = 0 \) then factoring out \( x \) yields a lower degree polynomial that \( \mkern 1.5mu\overline{\mkern-1.5mua\mkern-1.5mu}\mkern 1.5mu \) satisfies.

But then \( \mkern 1.5mu\overline{\mkern-1.5mua\mkern-1.5mu}\mkern 1.5mu_n \in Q'\cap R \), so ???
:::

Question: Given \( R\hookrightarrow R' \) is an integral extension, can we lift chains of prime ideals?

Answer: Yes, by the "Going Up" Theorem: given \( P\subset R \) prime, there exists \( P'\subset R' \) prime such that \( P'\cap R = P \). Furthermore, we can lift \( P_1 \subset P_2 \) to \( P_1' \subset P_2' \), as well as "lifting sandwiches":

![Image](figures/image_2020-09-10-10-18-40.png){width="350px"}

In this process, the length of the chain decreased since \( \left\langle{0}\right\rangle \) was deleted, but otherwise the chains are in bijective correspondence. So the inductive hypothesis applies. \( \hfill\blacksquare \)

## Using Dimension Theory

Key fact used: the dimension doesn't change under integral extensions, i.e. if \( R\hookrightarrow R' \) is integral then \( \dim R = \dim R' \).

::: {.proposition}
Any affine variety has finite dimension.
:::

::: {.proof}
We have \( \dim X = \dim A(X) \), where \( A(X) \coloneqq k[x_1, \cdots, x_{n}] I \) for some \( I(X)=\sqrt{I(X)} \).

The noether normalization lemma (used in proof of nullstellensatz) shows that a finitely generated \( k{\hbox{-}} \)algebra is an integral extension of some polynomial ring \( k[y_1, \cdots, y_d] \). I.e., the following extension is integral:
\[  
k[y_1, \cdots, y_d] \hookrightarrow k[x_1, \cdots, x_n]/I
.\]

We can conclude that \( \dim A(X) = d < \infty \).
:::

::: {.proposition title="?"}
Let \( X, Y \) be irreducible affine varieties. Then

a.  \( \dim X\times Y = \dim X + \dim Y \).
b.  \( Y\subset X \implies \dim X = \dim Y + \operatorname{codim}_X Y \).
c.  If \( f\in A(X) \) is nonzero, then any component of \( V(f) \) has codimension 1.
:::

::: {.proof}
::: {.remark}
Why is \( X\times Y \) again an affine variety? If \( X\subset {\mathbb{A}}^n/k \), \( Y\subset {\mathbb{A}}^m/k \) with \( X = V(I), Y = V(J) \), then \( X\times Y \subset {\mathbb{A}}^n/k \times{\mathbb{A}}^m/k = {\mathbb{A}}^{n+m}/k \) can be given by taking \( I+J {~\trianglelefteq~}k[x_1, \cdots, x_n, y_1, \cdots, y_m] \) using the natural inclusions of \( k[x_1, \cdots, x_{\ell}] \).

Note that we can write
\[  
k[x_1, \cdots, x_n, y_1, \cdots, y_m] = k[x_1, \cdots, x_{n}] \otimes_k k[y_1, \cdots, y_n]
\]
where we think of \( x_i = x_i \otimes 1, y_j = 1 \otimes y_j \). We thus map \( I, J \) to \( I\otimes 1 + 1\otimes J \) and obtain \( V(I\otimes 1 + 1\otimes J) = X\times Y \) and \( A(X\times Y) = A(X)\otimes_k A(Y) \).

In general, for \( k{\hbox{-}} \)algebras \( R,S \),
\[  
R/I \otimes_k S/J \cong R\otimes_k S / \left\langle{I\otimes 1 + 1\otimes J}\right\rangle
.\]
:::

::: {.remark}
For \( R,S \) finitely generated \( k{\hbox{-}} \)algebras, \( \dim R\otimes_k S = \dim R + \dim S \).
:::

Part (a) is proved by the above remarks.

For part (b), the statement is equivalent to \( P\subset A(X) \) with \( I(Y) \subset P \) is a member of some maximal chain, along with the statement that all maximal chains are the same length.
:::

# Codimension and Hypersurfaces (Tuesday, September 15)

Recall the dictionary in `\cref{the-algebra-geometry-dictionary}`{=tex}, and the fact that \( A(X) \coloneqq k[x_1, \cdots, x_{n}] \) contains no nilpotent elements. We also had some results about dimension

1.  \( \dim X<\infty \) and \( \dim {\mathbb{A}}^n = n \).
2.  \( \dim Y + \operatorname{codim}_X Y = \dim X \) when \( Y\subset X \) is irreducible.
3.  Only over \( \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu = k \), \( \operatorname{codim}_X V(f) = 1 \).

::: {.example}
Take \( V(x^2+y^2) \subset {\mathbb{A}}^2_{/{\mathbb{R}}} \).
:::

::: {.definition title="Curves, Surfaces, and Hypersurfaces"}
An affine variety \( Y \) of

-   \( \dim Y = 1 \) is a **curve**,
-   \( \dim Y = 2 \) is a **surface**,
-   \( \operatorname{codim}_X Y = 1 \) is a **hypersurface in \( X \)**
:::

Question: Is every hypersurface the vanishing locus of a *single* polynomials \( f\in A(X) \)?

Answer: This is true iff \( A(X) \) is a UFD.

## Codimension

::: {.definition title="Codimension in a Ring"}
\( \operatorname{codim}_R {\mathfrak{p}} \) is the length of the longest chain
\[P_0 \subsetneq P_1 \subsetneq \cdots \subsetneq P_n = {\mathfrak{p}}.\]
:::

Recall that \( f \) is irreducible if \( f = f_1 f_2 \implies f_i \in R^{\times} \) for one \( i \), and \( f \) is prime iff \( \left\langle{f}\right\rangle \) is a prime ideal, or equivalently \( f\divides ab \implies f\divides a \) or \( f\divides b \).

Note that prime implies irreducible, since \( f \) divides itself.

::: {.proposition title="?"}
Let \( R \) be a Noetherian domain, then TFAE

a.  All prime ideals of codimension 1 are principal.

b.  \( R \) is a UFD.
:::

::: {.proof}
\( a\implies b \):

Let \( f \) be a nonzero non-unit, we'll show it admits a prime factorization. If \( f \) is not irreducible, then \( f = f_1 f_1' \), both non-units. If \( f_1' \) is not irreducible, we can repeat this, to get a chain
\[  
\left\langle{f}\right\rangle \subsetneq \left\langle{f_1'}\right\rangle \subsetneq \left\langle{f_2'}\right\rangle \subsetneq \cdots
,\]
which must terminate.

This yields a factorization \( f = \prod f_i \) with \( f_i \) irreducible. To show that \( R \) is a UFD, it thus suffices to show that the \( f_i \) are prime. Choose a minimal prime ideal containing \( f \). We'll use Krull's Principal Ideal Theorem: if you have a minimal prime ideal \( {\mathfrak{p}} \) containing \( f \), its codimension \( \operatorname{codim}_R {\mathfrak{p}} \) is one. By assumption, this implies that \( {\mathfrak{p}}= \left\langle{g}\right\rangle \) is principal. But \( g\divides f \) with \( f \) irreducible, so \( f,g \) differ by a unit, forcing \( {\mathfrak{p}}= \left\langle{f}\right\rangle \). So \( \left\langle{f}\right\rangle \) is a prime ideal.\

\( b\implies a \):

Let \( {\mathfrak{p}} \) be a prime ideal of codimension 1. If \( {\mathfrak{p}}= \left\langle{0}\right\rangle \), it is principal, so assume not. Then there exists some nonzero non-unit \( f\in {\mathfrak{p}} \), which by assumption has a prime factorization since \( R \) is assumed a UFD. So \( f=\prod f_i \).

Since \( {\mathfrak{p}} \) is a prime ideal and \( f\in{\mathfrak{p}} \), some \( f_i\in {\mathfrak{p}} \). Then \( \left\langle{f_i}\right\rangle \subset {\mathfrak{p}} \) and \( {\mathfrak{p}} \) minimal implies \( \left\langle{f_i}\right\rangle = {\mathfrak{p}} \), so \( {\mathfrak{p}} \) is principal.
:::

::: {.corollary title="?"}
Every hypersurface \( Y\subset X \) is cut out by a single polynomial, so \( Y=V(f) \), iff \( A(X) \) is a UFD.
:::

## Hypersurfaces and Prime Ideals

::: {.example}
Apply this to \( R=A(X) \), we find that there is a bijection
\[  
\operatorname{codim}1 \text{ prime ideals}
\iff 
\operatorname{codim}1 \text{ closed irreducible subsets }Y\subset X,\text{ i.e. hypersurfaces}
.\]

Taking \( A(X) = {\mathbb{C}}[x,y,z]/\left\langle{x^2+y^2-z^2}\right\rangle \), whose real points form a cone:

![Image](figures/image_2020-09-15-10-26-24.png){width="350px"}

Note that \( x^2 + y^2 = (x-iy)(x+iy) = z^2 \) in this quotient, so this is not a UFD.

Then taking a line through its surface is a codimension 1 subvariety not cut out by a single polynomial. Such a line might be given by \( V(x + iy, z) \), which is 2 polynomials, so why not codimension 2?

Note that \( V(z) \) is the union of the lines

-   \( z = 0, x + iy= 0 \),
-   \( z=0, x - iy = 0 \).

Note that it suffices to show that this ring has an irreducible that is not prime. Supposing \( z = f_1 f_2 \), some \( f_i \) is a unit, then \( z \) is not prime because \( z\divides xy \) but divides neither of \( x,y \).
:::

::: {.example}
Note that \( k[x_1, \cdots, x_{n}] \) is a UFD since \( k \) is a UFD. Applying the corollary, every hypersurface in \( {\mathbb{A}}^n \) is cut out by a single irreducible polynomial.
:::

::: {.definition title="Pure Dimension of Affine Varieties"}
An affine variety \( X \) is of **pure dimension \( d \)** iff every irreducible component \( X_i \) is of dimension \( d \).
:::

::: {.remark}
Note that \( X \) is a Noetherian space, so has a unique decomposition \( X = \cup X_i \). Given \( X\subset {\mathbb{A}}^n/k \) of pure dimension \( n-1 \), \( X = \cup X_i \) with \( X_i \) hypersurfaces with \( I(X_j) = \left\langle{f_j}\right\rangle \), \( I(X) = \left\langle{f}\right\rangle \) where \( f = \prod f_i \).
:::

::: {.definition title="Degree of a Hypersurface"}
Given such an \( X \), define the **degree of a hypersurface** as the degree of \( f \) where \( I(X) = \left\langle{f}\right\rangle \).
:::

# Regular Functions (Thursday, September 17)

> See chapter 3 in the notes.

We'll next want to attach certain rings of functions to a space.

::: {.example title="Some examples of regular functions"}
```{=tex}
\envlist
```
-   \( X \) a manifold or an open set in \( {\mathbb{R}}^n \) has a ring of \( C^\infty \) functions.
-   \( X \subset {\mathbb{C}} \) has a ring of holomorphic functions.
-   \( X\subset {\mathbb{R}} \) has a ring of real analytic functions

These all share a common feature: it suffices to check if a function is a member on an arbitrary open set about a point, i.e. they are **local**.
:::

## Defining Regular Functions

::: {.definition title="Regular Functions"}
Let \( X \) be an affine variety and \( U\subseteq X \) open. A **regular function** on \( U \) is a function \( \phi: U\to k \) such that \( \phi \) is "locally a fraction", i.e. a ratio of polynomial functions. More formally, for all \( p\in U \) there exists a \( U_p \) with \( p\in U_p \subseteq U \) such that \( \phi(x) = g(x)/ f(x) \) for all \( x\in U_p \) with \( f, g\in A(X) \).
:::

::: {.example}
For \( X \) an affine variety and \( f\in A(X) \), consider the open set \( U\coloneqq V(f)^c \). Then \( {1\over f} \) is a regular function on \( U \), so for \( p\in U \) we can take \( U_p \) to be all of \( U \).
:::

::: {.example}
For \( X = {\mathbb{A}}^1 \), take \( f=x-1 \). Then \( {x\over x-1} \) is a regular function on \( {\mathbb{A}}^1 \setminus\left\{{1}\right\} \).
:::

::: {.example}
Let \( X + V(x_1 x_4 - x_2 x_3) \) and
\[  
U \coloneqq X\setminus V(x_2, x_4) = \left\{{{\left[ {x_1, x_2, x_3, x_4} \right]} {~\mathrel{\Big|}~}x_1 x_4 = x_2 x_3, x_2\neq 0 \text{ or } x_4\neq 0 }\right\}
.\]

Define
\[  
\phi: U &\to K \\
{\left[ {x_1, x_2, x_3, x_4} \right]} &\mapsto
\begin{cases}
{x_1\over x_2} & \text{if } x_2 \neq 0 \\
{x_3\over x_4} & \text{if } x_4 \neq 0
\end{cases}
.\]

This is well-defined on \( \left\{{x_2\neq 0}\right\} \cap\left\{{x_4 \neq 0}\right\} \), since \( {x_1\over x_2} = {x_3 \over x_4} \). Note that this doesn't define an element of \( k \) at \( {\left[ {0,0,0,1} \right]}\in U \). So this is not globally a fraction.
:::

Notation: we'll let \( {\mathcal{O}}_X(U) \) is the ring of regular function on \( U \).

::: {.proposition title="?"}
Let \( U\subset X \) be an affine variety and \( \phi \in {\mathcal{O}}_X(U) \). Then \( V(\phi) \coloneqq\left\{{x\in U {~\mathrel{\Big|}~}\phi(x) = 0}\right\} \) is closed in the subspace topology on \( U \).
:::

::: {.proof}
For all \( a\in U \) there exists \( U_a\subset U \) such that \( \phi = g_a/f_a \) on \( U_a \) with \( f_a, g_a \in A(X) \) with \( f_a \neq 0 \) on \( U_a \). Then
\[  
\left\{{x\in U_a {~\mathrel{\Big|}~}\phi(x) \neq 0}\right\} = U_a \setminus V(g_a)\cap U_a
\]
is an open subset of \( U_a \), so taking the union over \( a \) again yields an open set. But this is precisely \( V(\phi)^c \).
:::

::: {.proposition}
Let \( U\subset V \) be open in \( X \) an *irreducible* affine variety. If \( \phi_1, \phi_2 \in {\mathcal{O}}_X(V) \) agree on \( U \), then they are equal.
:::

::: {.proof}
\( V(\phi_1 - \phi_2) \) contains \( U \) and is closed in \( V \). It contains \( \mkern 1.5mu\overline{\mkern-1.5muU\mkern-1.5mu}\mkern 1.5mu\cap V \), by an earlier lemma, \( X \) irreducible implies that \( \mkern 1.5mu\overline{\mkern-1.5muU\mkern-1.5mu}\mkern 1.5mu = X \) and so \( V(\phi_1 - \phi_2) =V \).
:::

::: {.question}
Let \( U\subset V \subset {\mathbb{R}}^n \) be open. If \( \phi_1, \phi_2 \in C^\infty(V) \) such that \( \phi_1, \phi_2 \) are equal when restricted \( U\subset V \). Does this imply \( \phi_1 = \phi_2 \)?
:::

::: {.answer}
For \( {\mathbb{R}}^n \), no, there exist smooth bump functions. You can make a bump function on \( V\setminus U \) and extend by zero to \( U \). For \( {\mathbb{C}} \) and holomorphic functions, the answer is yes, by the uniqueness of analytic continuation.
:::

## Distinguished Open Sets

::: {.definition title="(Important) Distinguished Open Sets"}
A **distinguished open set** in an affine variety is one of the form
\[  
D(f) \coloneqq X\setminus V(f) = \left\{{x\in X {~\mathrel{\Big|}~}f(x) \neq 0}\right\}
.\]
:::

::: {.proposition}
The distinguished open sets form a base of the Zariski topology.
:::

::: {.proof}
Given \( f, g\in A(X) \), we can check:

1.  Closed under finite intersections: \( D(f) \cap D(g) = D(fg) \).
2.  
    \[U = X\setminus V(f_1, \cdots, f_k) = V\setminus\bigcap V(f_i) = \bigcup D(f_i),\]
    and any open set is a *finite* union of distinguished opens by the Hilbert basis theorem.
:::

::: {.proposition title="?"}
The regular functions on \( D(f) \) are given by
\[  
{\mathcal{O}}_X(D(f)) = \left\{{{ g \over f^n} {~\mathrel{\Big|}~}g\in A(X), n\in {\mathbb{N}}}\right\} = A(X)_{\left\langle{f}\right\rangle}
,\]
the localization of \( A(X) \) at \( \left\langle{f}\right\rangle \).
:::

Note that if \( f=1 \), then \( {\mathcal{O}}_X(X) = A(X) \).

::: {.proposition title="?"}
Note that \( {g\over f^n} \in {\mathcal{O}}_X(D(f)) \) since \( f^n\neq 0 \) on \( D(f) \). Let \( \phi: D(f) \to k \) be a regular function. By definition, for all \( a\in D(f) \) there exists a local representation as a fraction \( \phi = g_a/f_a \) on \( U_a\ni a \). Note that \( U_a \) can be covered by distinguished opens, one of which contains \( a \). Shrink \( U_a \) if necessary to assume it is a distinguished open set \( U_a = D(h_a) \).\

Now replace
\[  
\phi = {g_a \over f_a} = {g_a h_a \over f_a h_a}
,\]
which makes sense because \( h_a\neq 0 \) on \( U_a \). We can assume wlog that \( h_a = f_a \). Why? We have \( \phi = {g_a \over f_a} \) on \( D(f_a) \). Since \( f_a \) doesn't vanish on \( U_a \), we have \( V(f_a h_a) = V(h_a) \) since \( V(f_a) \subset D(h_a)^c = V(h_a) \). Consider \( U_a = D(f_a) \) and \( U_b = D(f_b) \), on which \( \phi = {g_a\over f_a} \) and \( \phi = {g_b \over f_b} \) respectively. On \( U_a\cap U_b = D(f_a f_b) \), these are equal, i.e. \( f_b g_a = f_a g_b \) in the coordinate ring \( A(X) \).\

Then \( D(f) = \bigcup_a D(f_a) \), so take the component \( V(f) = \cap V(f_a) \) by the Nullstellensatz \( f\in I(V(f_a)) = I(V(g_a, a\in D_f)) = \sqrt{f_a {~\mathrel{\Big|}~}a\in D_f} \). Then there exists an expression \( f^n = \sum k_a f_a \) as a finite sum, so set \( g - \sum g_a k_a \).

::: {.claim}
\( \phi = g/f^n \) on \( D(f) \).
:::

This follows because on \( D(f_b) \), we have \( \phi = {g_b \over f_b} \), and so \( gf_b = \sum k_a g_a f_b \).

> Finish next class
:::

# Distinguished Opens (Tuesday, September 22)

## Computing the Regular Functions

Given an affine variety \( X \) and \( U\subseteq X \) open, a *regular function* \( \phi: U\to k \) is one locally (wrt the Zariski topology) a fraction. We write the set of regular functions as \( {\mathcal{O}}_X \).

::: {.example}
\( X = V(x_1 x_4 - x_2 x_3) \) on \( U = V(x_2, x_4)^c \), the following function is regular:
\[  
\phi: U &\to k \\
x &\mapsto 
\begin{cases}
{x_1\over x_2} & x_2 \neq 0 \\ \\
{x_3 \over x_4} & x_4 \neq 0
\end{cases}
.\]
Note that this is not globally a fraction.
:::

## Distinguished Opens

::: {.definition title="Distinguished Open Sets"}
A *distinguished open set* \( D(f) \subseteq X \) for some \( f\in A(X) \) is \( V(f)^c \coloneqq\left\{{x\in X {~\mathrel{\Big|}~}f(x) \neq 0}\right\} \).
:::

These are useful because the \( D(f) \) form a base for the Zariski topology.

::: {.proposition title="?"}
For \( X \) an affine variety, \( f\in A(X) \), we have
\[ 
{\mathcal{O}}_X(D(f)) = \left\{{ {g\over f^n} {~\mathrel{\Big|}~}g\in A(X), n\in {\mathbb{N}}}\right\}
.\]
:::

::: {.proof}
The first reduction we made was that \( \phi \in {\mathcal{O}}_X(D(f)) \) is expressible as \( g_a / f_a \) on distinguished opens \( D(f_a) \) covering \( D(f) \). We also noted that
\[
{g_a \over f_a} = {g_b \over f_b} \text{ on } D(f_a) \cap D(f_b) \implies f_b g_a = f_a g_b \text{ in } A(X)
.\]
\

The second step was writing \( D(f) = \cup D(f_a) \), and so \( V(f) = \cap_a V(f_a) \) implies that \( f\in I\qty{ V\qty{ \left\{{f_a {~\mathrel{\Big|}~}a\in U}\right\} }} \). By the Nullstellensatz, \( f\in \sqrt{\left\langle{f_a {~\mathrel{\Big|}~}a\in U}\right\rangle} \), so \( f^N = \sum k_a f_a \) for some \( N \). So construct \( g = \sum k_a g_a \), then compute
\[  
gf_b = \sum_a k_a g_a f_b = \sum_a k_a g_b f_a = g_b \sum k_a f_a = g_b f^N
.\]
Thus \( g/f^N = g_b / f_b \) for all \( b \), and we can thus conclude
\[  
\phi \coloneqq\left\{{{g_b \over f_b} \text{ on } D(f_b)}\right\} = g/f^N
.\]
:::

::: {.corollary title="?"}
For \( X \) an affine variety, \( {\mathcal{O}}_X(X) = A(X) \).
:::

::: {.warnings title="Things go wrong when $k\\neq \\bar k$"}
For \( k \) not algebraically closed, the proposition and corollary are both false. Take \( X = {\mathbb{A}}^1/{\mathbb{R}} \), then \( {1\over x^2+1} \in {\mathbb{R}}(x) \), but \( {\mathcal{O}}_X(X) \neq A(X) = {\mathbb{R}}[x] \).
:::

## Structure Sheaf of Distinguished Opens

::: {.definition title="Localization"}
Let \( R \) be a ring and \( S \) a set closed under multiplication, then the localization at \( S \) is defined by
\[  
R_S \coloneqq\left\{{r/s {~\mathrel{\Big|}~}r\in R, s\in S}\right\} / \sim
.\]
where \( r_1/s_1 \sim r_2/s_2 \iff s_3(s_2 r_1 - s_1 r_2) = 0 \) for some \( s_3 \in S \).
:::

::: {.example}
Let \( f\in R \) and take \( S = \left\{{f^n {~\mathrel{\Big|}~}n\geq 1}\right\} \), then \( R_f \coloneqq R_S \).
:::

::: {.corollary title="?"}
\( {\mathcal{O}}_X(D(f)) = A(X)_f \) is the localization of the coordinate ring.
:::

These requires some proof, since the LHS literally consists of functions on the topological space \( D(f) \) while the RHS consists of formal symbols.

::: {.proof}
Consider the map
\[  
A(X)_f &\to {\mathcal{O}}_X(D(f)) \\
``g/f^n" &\mapsto g/f^n: D(f) \to k
.\]

By definition, there exists a \( k\geq 0 \) such that
\[  
f^k(f^m g - f^n g') = 0 
\implies
f^k(f^m g - f^n g') = 0 \text{ as a function on } D(f)
.\]
Since \( f^k \neq 0 \) on \( D(f) \), we have \( f^m g = f^n g' \) as a function on \( D(f) \), so \( g/f^n = g'/g^m \) as functions on \( D(f) \).\

**Surjectivity**: By the proposition, we have surjectivity, i.e. any element of \( |OO_x(D(f)) \) can be represented by some \( g/f^n \).\

**Injectivity**: Suppose \( g/f^n \) defines the zero function on \( D(f) \), then \( g = 0 \) on \( D(f) \) implies that \( fg=0 \) on \( X \) (i.e. \( fg= 0 \in A(X) \)), and we can write \( f(g\cdot 1 - f^n\cdot 0) = 0 \). Then \( g/f^n\sim 0/1 \in A(X)_f \), which forces \( g/f^n = 0\in A(X)_f \).
:::

## Presheaves and Sheaves

Idea: spaces on functions on topological spaces.

::: {.definition title="Presheaf"}
A *presheaf* (of rings) \( \mathcal{F} \) on a topological space is

1.  For every open set \( U\subset X \) a ring \( \mathcal{F}(U) \).

2.  For any inclusion \( U\subset V \) a restriction map \( \operatorname{Res}_{VU}: \mathcal{F}(V) \to \mathcal{F}(U) \) satisfying

```{=html}
<!-- -->
```
a.  \( \mathcal{F}(\emptyset) = 0 \).
b.  \( \operatorname{Res}_{UU} = \operatorname{id}_{\mathcal{F}(U)} \).
c.  \( \operatorname{Res}_{VW} \circ \operatorname{Res}_{UV} = \operatorname{Res}_{UW} \).
:::

::: {.example}
The smooth functions on \( {\mathbb{R}} \) with the standard topology, \( \mathcal{F} = C^\infty \) where \( C^\infty(U) \) is the set of smooth functions \( U\to {\mathbb{R}} \). It suffices to check the restriction condition, but the restriction of a smooth function is smooth: if \( f \) is smooth on \( U \), it is smooth at every point in \( U \), i.e. all derivatives exist at all points of \( U \). So if \( V\subset U \), all derivatives of \( f \) will exist at points \( x \in V \), so \( f \) will be smooth on \( V \).

Note that this also works with continuous functions.
:::

::: {.definition title="Sheaf"}
A *sheaf* is a presheaf satisfying an additional gluing property: given \( \phi_i \in \mathcal{F}(U_i) \) such that \(  {\left.{{\phi_i}} \right|_{{U_i\cap U_j}} }  =  {\left.{{\phi_j}} \right|_{{U_i \cap U_j}} }  \), then there exists a unique \( \phi\in \mathcal{F}(\cup_i U_i) \) such that \(  {\left.{{\phi}} \right|_{{U_i}} }  = \phi_i \).
:::

# Categories and Presheaves (Thursday, September 24)

## Regular Functions vs Holomorphic Functions

Recall that we defined the *regular functions* \( {\mathcal{O}}_X(U) \) on an open set \( U\subset X \) an affine variety as the set of functions \( \phi: U\to k \) such that \( \phi \) is locally a fraction, i.e. for all \( p\in U \) there exists a neighborhood of \( p \), say \( U_p \subset U \), such that \( \phi \) restricted to \( U_p \) is given by \( g_p \over f_p \) for some \( f_p, g_p \in A(X) \).

We proved that on a distinguished open set \( D(f) = V(f)^c \), we have \( {\mathcal{O}}_X(D(f)) = A(X)_f \). An important example was that \( {\mathcal{O}}_X(X) = A(X) \).

::: {.question}
If \( X \) is a variety over \( {\mathbb{C}} \), does \( A(X) = \operatorname{Hol}(X) \)?
:::

::: {.answer}
The answer is no, since taking \( {\mathbb{A}}^1/{\mathbb{C}}\cong {\mathbb{C}}= X \) we obtain \( A(X) = {\mathbb{C}}[x] \) but for example \( e^z \in \operatorname{Hol}(X) \). On the other hand, if you require that \( f\in \operatorname{Hol}(X) \) is meromorphic at \( \infty \), i.e. \( f({1\over z}) \) is meromorphic at zero, then you do get \( {\mathbb{C}}[z] \). This is an example of GAGA!
:::

> Review: what is a category?

> Review: what is a presheaf?

# Sheafifying (Tuesday, September 29)

## Presheaves That Are Not Sheaves

Recall the definition of a presheaf: a sheaf of rings on a space is a contravariant functor from its category of open sets to ring, such that

1.  \( F(\emptyset) = 0 \)
2.  The restriction from \( U \) to itself is the identity,
3.  Restrictions compose.

::: {.example title="?"}
```{=tex}
\envlist
```
-   Smooth functions on \( {\mathbb{R}}^n \)
-   Holomorphic functions on \( {\mathbb{C}} \)
:::

Recall the definition of sheaf: a presheaf satisfying *unique* gluing: given \( f_i \in \mathcal{F}(U_i) \), such that \(  {\left.{{f_i}} \right|_{{U_i \cap U_j}} }  =  {\left.{{f_j}} \right|_{{U_i\cap U_j}} }  \) implies that there exists a unique \( f\in \mathcal{F}(\cup U_i) \) such that \(  {\left.{{f}} \right|_{{U_i}} }  = f_i \).

::: {.question}
Are the constant functions on \( {\mathbb{R}} \) a presheaf and/or a sheaf?
:::

::: {.answer}
This is a presheaf but not a sheaf. Set \( \mathcal{F}(U) = \left\{{f: U\to {\mathbb{R}}{~\mathrel{\Big|}~}f(x) = c}\right\} \cong {\mathbb{R}} \) with \( \mathcal{F}(\emptyset) = 0 \). Can check that restrictions of constant functions are constant, the composition of restrictions is the overall restriction, and restriction from \( U \) to itself gives the function back.

Given constant functions \( f_i \in \mathcal{F}(U_i) \), does there exist a unique constant function \( \mathcal{F}(\cup U_i) \) restricting to them? No: take \( f_1 = 1 \) on \( (0, 1) \) and \( f_2 = 2 \) on \( (2, 3) \). Can check that they both restrict to the zero function on the intersection, since these sets are disjoint.
:::

## Locally Constant Sheaves

How can we make this into a sheaf? One way: weaken the topology. Another way: define another presheaf \( \mathcal{G} \) on \( {\mathbb{R}} \) given by *locally* constant function, i.e. \( \left\{{f: U\to {\mathbb{R}}{~\mathrel{\Big|}~}\forall p\in U, \exists U_p\ni p,\, { \left.{{f}} \right|_{{U_p}} } \text{ is constant}}\right\} \). Reminiscent of definition of regular functions in terms of local properties.

::: {.example}
Let \( X = \left\{{p, q}\right\} \) be a two-point space with the discrete topology, i.e. every subset is open. Then define a sheaf by
\[  
\emptyset &\mapsto 0 \\
\left\{{p}\right\} &\mapsto R \\
\left\{{q}\right\} &\mapsto S \\
\implies \left\{{p, q}\right\} &\mapsto R\times S
,\]
where the sheaf condition forces the assignment of the whole space to be the product. Note that the first 3 assignments are automatically compatible, which means that we need a unique \( f\in \mathcal{F}(X) \) restricting to \( R \) and \( S \). In other words, \( \mathcal{F}(X) \) needs to be unique and have maps to \( R, S \), but this is exactly the universal property of the product.
:::

::: {.example}
Consider the presheaf on \( X \) given by \( \mathcal{F}(X) = R\times S \times T \). Taking \( T = {\mathbb{Z}}/2{\mathbb{Z}} \), we can force uniqueness to fail: by projecting to \( R, S \), there are two elements in the fiber, namely \( (r,s,0)\mapsto r,s \) and \( (r,s,1)\mapsto r,s \).
:::

::: {.example}
Let \( X = \left\{{a, b, c}\right\} \) and \( \tau = \left\{{\emptyset, \left\{{a}\right\}, \left\{{a, b}\right\}, \left\{{a, c}\right\}}\right\} \). Can check that it's closed under finite intersections and arbitrary unions, so this forms a topology. Now make the assignments
\[
\left\{{a}\right\}    & \mapsto A \\
\left\{{b}\right\}    & \mapsto B \\
\left\{{a, b}\right\} & \mapsto C \\
X         & \mapsto ?
.\]

We have a situation like the following:

```{=tex}
\begin{tikzcd}
               & \mathcal{F}(X)\ar[ld]\ar[rd] & \\
B\ar[rd]       &                              & C\ar[ld] \\
               & A\ar[d]                      & \\
               & \emptyset                    &
\end{tikzcd}
```
Unique gluing says that given \( r\in B, s\in C \) such that \( \phi_B(r) = \phi_C(s) \), there should exist a unique \( t\in \mathcal{F}(X) \) such that \( { \left.{{t}} \right|_{{\left\{{a, b}\right\}}} } = r \) and \( { \left.{{t}} \right|_{{\left\{{a, c}\right\}}} } = s \). This recovers exactly the fiber product.
\[  
B \times_A C \coloneqq\left\{{(r, s) \in B\times C {~\mathrel{\Big|}~}\phi_B(r) = \phi_C(s) \in A}\right\}
.\]
:::

## The Structure Sheaf is a Sheaf

::: {.example}
Let \( X \) be an affine variety with the Zariski topology and let \( \mathcal{F} \coloneqq{\mathcal{O}}_X \) be the sheaf of regular functions:
\[  
{\mathcal{O}}_X(U) \coloneqq\left\{{f: U\to k {~\mathrel{\Big|}~}\forall p\in U,\, \exists U_p \ni p,\,\, { \left.{{f}} \right|_{{U_p}} } ={g_p \over h_p} }\right\}
.\]

Is this a presheaf? We can check that there are restriction maps:
\[  
{\mathcal{O}}_X(U) &\to {\mathcal{O}}_X(V) \\
\left\{{f: U\to K}\right\} &\mapsto \left\{{{ \left.{{f}} \right|_{{V}} }(x) \coloneqq f(x) \text{ for } x \in V }\right\}
.\]
This makes sense because if \( V\subset U \), any \( x\in V \) is in the domain of \( f \). Given that \( f \) is locally a fraction, say \( \rho = g_p / h_p \) on \( U_p \ni p \), is \( { \left.{{\phi}} \right|_{{V}} } \) locally a fraction? Yes: for all \( p\in V\subset U \), \( \phi = g_p / f_p \) on \( U_p \) and this remains true on \( U_p \cap V \).

To check that \( {\mathcal{O}}_X \) is a sheaf, given a set of regular functions \( \left\{{\phi_i: U_i \to k}\right\} \) agreeing on intersections, define
\[  
\phi: \cup U_i &\to k\\
\phi(x) &\coloneqq\phi_i(x) \text{ if }x\in U_i
.\]

This is well-defined, since if \( x\in U_i \cap U_j \), \( \phi_i(x) = \phi_j(x) \) since both restrict to the same function on \( U_i \cap U_j \) by assumption.

Why is \( \phi \) locally a fraction? We need to check that for all \( p\in U \coloneqq\cup U_i \) there exists a \( U_p \ni p \) with \( { \left.{{\phi}} \right|_{{U_p}} } = g_p/h_p \). But any \( p\in \cup U_i \) implies \( p\in U_i \) for some \( i \). Then there exists an open set \( U_{i, p} \ni p \) in \( U_i \) such that \( { \left.{{\phi}} \right|_{{U_{i, p}}} } = g_p / h_p \) by definition of a regular function. So take \( U_p = U_{i, p} \) and use the fact that \( { \left.{{\phi}} \right|_{{U_i}} } = \phi_i \) along with compatibility of restriction.
:::

::: {.remark}
General observation: any presheaf of functions is a sheaf when the functions are defined by a local property, i..e any property that can be checked at \( p \) by considering an open set \( U_p \ni p \).

As in the examples of smooth or holomorphic functions, these were local properties. E.g. checking that a function is smooth involves checking on an open set around each point. On the other hand, being a constant function is not a local property.
:::

## Restriction, Stalks, Sections

::: {.definition title="Restriction of a (Pre)sheaf"}
Given a sheaf \( \mathcal{F} \) on \( X \) and an open set \( U\subset X \), we can define a sheaf \( { \left.{{\mathcal{F}}} \right|_{{U}} } \) on \( U \) (with the subspace topology) by defining \( { \left.{{\mathcal{F}}} \right|_{{U}} }(V) \coloneqq\mathcal{F}(V) \) for \( U\subseteq V \).
:::

::: {.definition title="Stalks"}
Let \( \mathcal{F} \) be a sheaf on \( X \) and \( p\in X \) a point. The *stalk* of \( \mathcal{F} \) at \( p \), denoted \( \mathcal{F}_p \) for \( p\in U \), is defined by
\[  
\mathcal{F}_p \coloneqq\left\{{(U, \phi) {~\mathrel{\Big|}~}\phi \in \mathcal{F}(U) }\right\} / \sim
\]
where \( (U, \phi) \sim (V, \phi') \) iff there exists a \( W\subset U\cap V \) and \( p\in W \) such that \( { \left.{{\phi}} \right|_{{W}} } = { \left.{{\phi}} \right|_{{W}} }' \).
:::

::: {.example}
What is the stalk of \( \operatorname{Hol}({\mathbb{C}}) \) at \( p=0 \)?

Examples of equivalent elements in this stalk:

![O](figures/image_2020-09-29-10-38-22.png)

In this case
\[  
\operatorname{Hol}({\mathbb{C}})_0 = \left\{{\phi = \sum_{i>0}c_i z^i {~\mathrel{\Big|}~}\phi \text{ has a positive radius of convergence}}\right\}
.\]
:::

::: {.definition title="Sections and Germs"}
An element \( f\in \mathcal{F}(U) \) is called a *section* over \( U \), and elements of the stalk \( f\in \mathcal{F}_p \) are called *germs* at \( p \).
:::

# Stalks and Localizations (Thursday, October 01)

## Review

Recall that a sheaf of rings on a topological space \( X \) is a ring \( \mathcal{F}(U) \) for all open sets \( U\subset X \) satisfying four properties:

1.  Initial to terminal: the empty set is mapped to zero.[^8]

```{=html}
<!-- -->
```
2.  Identities: the morphism \( \mathcal{F}(U)\to \mathcal{F}(U) \) is the identity.

3.  Composition: given \( W\subset V\subset U \) we have a commutative diagram

    ```{=tex}
    \begin{center}
    \begin{tikzcd}
    \mathcal{F}(U) \ar[rr, "\operatorname{Res}_{UV}"] \ar[rd, "\operatorname{Res}_{UW}"'] &                & \mathcal{F}(V) \ar[ld, "\operatorname{Res}_{VW}"] \\
                        & \mathcal{F}(W) &
    \end{tikzcd}
    \end{center}
    ```

4.  Gluing: given sections \( s_i \in\mathcal{F}(U_i) \) which agree on overlaps (restrict to the same function on \( U_i\cap U_j \)), there is a unique \( s\in \mathcal{F}(\cup U_i) \).

::: {.example}
If \( X \) is an affine variety with the Zariski topology, \( \mathcal{O}_X \) is a sheaf of regular functions, where we recall \( \mathcal{O}_X(U) \) are the functions \( \phi: U\to k \) that are locally a fraction.
:::

## Computing Stalks

Recall that the **stalk** of a sheaf \( \mathcal{F} \) at a point \( p\in X \), is defined as
\[  
\mathcal{F}_p \coloneqq\left\{{(U, \phi) {~\mathrel{\Big|}~}p\in U \text{ open },\, \phi \in \mathcal{F}(U)}\right\}/\sim
.\]
where \( (U, \phi) \sim (U', \phi') \) if there exists a \( p\in W \subset U\cap U' \) such \( \phi, \phi' \) restricted to \( W \) are equal.

Recall that a **local ring** is a ring with a unique maximal ideal \( {\mathfrak{m}} \). Given a prime ideal \( {\mathfrak{p}}\in R \), so \( ab\in {\mathfrak{p}}\implies a,b\in {\mathfrak{p}} \), the complement \( R\setminus P \) is closed under multiplication. So we can localize to obtain
\[
R_{\mathfrak{p}}&\coloneqq\left\{{a/s {~\mathrel{\Big|}~}s\in R\setminus P, a\in R}\right\}/\sim \\
\text{ where } a'/s' \sim a/s &\iff \exists t\in R\setminus P \text{ such that } t(a's - as') = 0
\]

::: {.warnings title="Notation for localizations"}
Note that \( R_f \) is localizing at the powers of \( f \), whereas \( R_{\mathfrak{p}} \) is localizing at the *complement* of \( {\mathfrak{p}} \).
:::

Since maximal ideals are prime, we can localize any ring \( R \) at a maximal ideal \( \mathfrak{m} \in \operatorname{mSpec}(R) \) to obtain \( R_{\mathfrak{m}} \), and this will be a local ring. Why? The ideals in \( R_{\mathfrak{m}} \) biject with ideals in \( R \) contained in \( {\mathfrak{m}} \). Thus all ideals in \( R_{\mathfrak{m}} \) are contained in the maximal ideal generated by \( {\mathfrak{m}} \), i.e. \( {\mathfrak{m}}R_{\mathfrak{m}} \).

::: {.lemma title="Stalks are isomorphic to localizations"}
Let \( X \) be an affine variety, then
\[  
{\mathcal{O}}_{X, p}\coloneqq\qty{{\mathcal{O}}_X}_p \cong A(X)_{\mathfrak{m}_p}
.\]
In words: the stalk of the sheaf of regular functions \( {\mathcal{O}}_{X, p} \coloneqq({\mathcal{O}}_X)_p \) is isomorphic to the localization \( A(X)_{{\mathfrak{m}}_p} \) where \( {\mathfrak{m}}_p \coloneqq I(\left\{{p}\right\}) \).
:::

::: {.proof}
We can write
\[  
A(X)_{{\mathfrak{m}}_p} \coloneqq\left\{{{g\over f} {~\mathrel{\Big|}~}g\in A(X),\, f\in A(X)\setminus{\mathfrak{m}}_p}\right\} / \sim \\
\text{ where } g_1/f_1 \sim g_2/f_2 \iff \exists h(p) \neq 0 \text{ where }0 = h(f_2 g_1 - f_1 g_2)
.\]
where the \( f \) are regular functions on \( X \) such that \( f(p) = 0 \).

We can also write
\[  
{\mathcal{O}}_{X, p} \coloneqq\left\{{(U, \phi) {~\mathrel{\Big|}~}p\in U,\, \phi \in {\mathcal{O}}_X(U) }\right\} /\sim 
\\ \text{ where } (U, \phi) \sim (U', \phi') 
\iff \exists p\in W \subset U\cap U' \text{ s.t. } { \left.{{\phi}} \right|_{{W}} } = { \left.{{\phi'}} \right|_{{W}} }
.\]

So we can define a map
\[  
\Phi: A(X)_{{\mathfrak{m}}_p} &\to {\mathcal{O}}_{X, p} \\
{g\over f} &\mapsto \qty{D_f, {g\over f}}
.\]

**Step 1:** There are equivalence relations on both sides, so we need to check that things are well-defined.

We have
\[  
g/f \sim g'/f' &\iff \exists g \text{ such that } h(p) \neq 0,\, h(gf' - g'f)=0 \in A(X) \\
&\iff \text{the functions } {g\over f}, {g' \over f'} \text{ agree on } W\coloneqq D(f) \cap D(f') \cap D(h) \\
&\implies (D_f, g/f) \sim (D_{f'}, g'/f')
,\]
since there exists a \( W\subset D_f \cap D_{f'} \) such that \( g/f, g'/f' \) are equal.\

**Step 2:** Surjectivity, since this is clearly a ring map with pointwise operations.

Any germ can be represented by \( (U, \phi) \) with \( \phi \in {\mathcal{O}}_X(U) \). Since the sets \( D_f \) form a base for the topology, there exists a \( D_f\subset U \) containing \( p \). By definition, \( (U, \phi) = (D_f, { \left.{{\phi}} \right|_{{D_f}} }) \) in \( {\mathcal{O}}_{X, p} \).

Using the proposition that \( {\mathcal{O}}_X(D(f)) = A(X)_f \), this implies that \( { \left.{{\phi}} \right|_{{D_f}} } = g/f^n \) for some \( n \) and \( f(p) \neq 0 \), so \( (U, \phi) \) is in the image of \( \Phi \).\

**Step 3**: Injectivity. We want to show that \( g/f\mapsto 0 \) implies that \( g/f = 0 \in A(X)_{{\mathfrak{m}}_p} \).

Suppose that \( (D_f, g/f) = 0 \in {\mathcal{O}}_{X, p} \) and \( (U, \phi) = 0 \in {\mathcal{O}}_{X,p} \), then there exists an open \( W\subset D_f \) containing \( p \) such that after passing to some distinguished open \( D_h\ni p \) such that \( \phi = 0 \) on \( D_h \). Wlog we can assume \( \phi = 0 \) on \( U \), since we could shrink \( U \) (staying in the same equivalence class) to make this true otherwise. Then \( \phi = g/f \) on \( D_h \), using that \( {\mathcal{O}}_X(D_f) = A(X)_f \), so \( g/f = 0 \) here. So there exists a \( k \) such that
\[  
f^k(g\cdot 1 - 0\cdot f) = 0 \in A(X) \implies f^k g=0 \in A(X)_{{\mathfrak{m}}_p}
.\]

We can thus conclude that
\[  
{\mathcal{O}}_{X, p} \cong A(X)_{{\mathfrak{m}}_p}
.\]
:::

::: {.example}
Let \( X = \left\{{p, q}\right\} \) with the discrete topology with the sheaf \( \mathcal{F} \) given by
\[  
p &\mapsto R \\
q &\mapsto S \\
X &\mapsto R\times S
.\]
Then \( \mathcal{F}_p = R \), since if \( U \) is open and \( p\in\ U \) then either \( U= \left\{{p}\right\} \) or \( U = X \). We can check that for \( (r, s) \) a section of \( \mathcal{F} \), we have an equivalence of germs
\[
(X, (r, s)) \sim (\left\{{p}\right\}, r) \text{ since } \left\{{p}\right\} \subset X\cap\left\{{p}\right\}
\]
Here \( X \) plays the role of \( U \), \( \left\{{p}\right\} \) of \( U' \), and the last \( \left\{{p}\right\} \) the role of \( W \subset U\cap U' \).

\[  
{\mathcal{O}}_{X, p} &\to A(X) \\
(\left\{{p}\right\}, r) &\mapsto r \\
\mathcal{F}_p &\cong R
.\]
:::

::: {.example}
Let \( M \) be a manifold and consider the sheaf \( C^\infty \) of smooth functions on \( M \). Then the stalk \( C_p^\infty \) at \( p \) is defined as the set of smooth functions in a neighborhood of \( p \) modulo functions being equivalent if they agree on a small enough ball \( B_\varepsilon(p) \). This contains a maximal ideal \( {\mathfrak{m}}_p \), the smooth functions vanishing at \( p \). Then \( {\mathfrak{m}}_p^2 \) is again an ideal, and as sets,
\[  
{\mathfrak{m}}^2 = \left\{{f {~\mathrel{\Big|}~}{\partial}_i {\partial}_j f\mathrel{\Big|}_p = 0,\, \forall i,j}\right\}
.\]
Thus \( {\mathfrak{m}}_p/{\mathfrak{m}}_p^2 \cong \left\{{{\partial}_v}\right\}^\vee \), the *dual* of the set of directional derivatives.
:::

## Morphisms of Affine Varieties

Problem: what should a map of affine varieties be? A bad definition would be just taking the continuous maps: for example, any bijection \( {\mathbb{A}}^1_{_{\mathbb{C}}} \) is a homeomorphism in the Zariski topology. Why? This coincides with the cofinite topology, and the preimage of a cofinite set is cofinite.

::: {.question}
How do we fix this?
:::

::: {.answer}
```{=tex}
\envlist
```
1.  \( f:X\to Y \) should be continuous, i.e. \( f^{-1} (U) \) is open whenever \( U \) is open.

2.  Given \( U\subset Y \) open and \( \phi \in {\mathcal{O}}_Y(U) \), the function \( \phi \circ f: f^{-1}(U) \to k \) should be regular.

We'll take these conditions to be the definition of a morphism \( X\to Y \).
:::

::: {.example}
For smooth manifolds, we similarly require that there is a pullback that preserves smooth functions:
\[  
f^*: C^\infty(U) \to C^\infty(f^{-1}(U))
.\]
:::

# Ringed Spaces (Ch. 4, Tuesday, October 06)

::: {.definition title="Ringed Spaces"}
A **ringed space** is a topological space \( X \) together with a sheaf \( {\mathcal{O}}_X \) of rings.
:::

::: {.example}
```{=tex}
\envlist
```
1.  \( X \) an affine variety and \( {\mathcal{O}}_X \) its ring of regular functions.

2.  \( X \) a manifold over \( {\mathbb{R}}^n \) with \( {\mathcal{O}}_X \) a ring of smooth or continuous functions on \( X \).

3.  \( X = \left\{{p, q}\right\} \) with the discrete topology and \( {\mathcal{O}}_X \) given by \( p\mapsto R, q\mapsto S \).

4.  Let \( U\subset X \) an open subset of \( X \) an affine variety. Then declare \( {\mathcal{O}}_U \) to be \( { \left.{{{\mathcal{O}}_X}} \right|_{{U}} } \).
:::

Recall that the restriction of a sheaf \( \mathcal{F} \) to an open subset \( U\subset X \) is defined by \( { \left.{{\mathcal{F}}} \right|_{{U}} }(V) = \mathcal{F}(V) \).

::: {.example title="Skyscraper Sheaf"}
Let \( X \) be a topological space and \( p\in X \) a point. The **skyscraper sheaf at \( p \)** is defined by
\[  
k_p(U) \coloneqq
\begin{cases}
k & p\in U \\
0 & p\not\in U
\end{cases}
.\]
:::

::: {.remark}
As a convention, we'll always assume that \( {\mathcal{O}}_X \) is a sheaf of functions, so \( {\mathcal{O}}_X(U) \) is a subring of all \( k{\hbox{-}} \)valued functions on \( U \). Moreover, \( \operatorname{Res}_{UV} \) is restriction of \( k{\hbox{-}} \)valued functions.
:::

## Morphisms of Ringed Spaces

::: {.definition title="Morphisms of Ringed Spaces"}
A **morphism of ringed spaces**
\[  
(X, {\mathcal{O}}_X) \xrightarrow{f}  (Y, {\mathcal{O}}_Y)
\]
is a continuous map \( X\to Y \) such that for all opens \( U \subset Y \) and any \( \phi \in {\mathcal{O}}_Y(U) \), the pullback satisfies \( f^* \phi \in {\mathcal{O}}_X(f^{-1}(U)) \).
:::

::: {.slogan}
Pullbacks of regular functions are regular.
:::

::: {.remark}
We'll need to use th convention that \( {\mathcal{O}}_X \) is a sheaf of \( K{\hbox{-}} \)valued functions in order to make sense of pullbacks. In general, for schemes with \( U \subset Y \) and \( f^{-1} (U) \subset X \), we'll need some analog of \( f^*: {\mathcal{O}}_Y(U) \to {\mathcal{O}}_X(f^{-1} (U) ) \) to make sense of "composing" or "restricting" sections. We still need continuity, however, so that \( f^{-1}(U) \) is open when \( U \) is open and thus \( {\mathcal{O}}_X(f^{-1}(U)) \) makes sense.
:::

::: {.example}
If \( (X, {\mathcal{O}}_X) \) is a ringed space associated to an affine variety, then we assume \( {\mathcal{O}}_X(U) \) are literally functions on \( U \). Morphisms of open subsets is again defined by morphisms of ringed spaces.
:::

::: {.example}
Let \( X = {\mathbb{A}}^1/k \) and \( U \coloneqq D(x) \), then \( D(f) = {\mathbb{A}}^1\setminus\left\{{0}\right\} \). Then \( \iota: U\hookrightarrow X \) is continuous. Given an arbitrary distinguished open set \( D(f) \subset {\mathbb{A}}^1 \), we know from previous results that
\[  
{\mathcal{O}}_X(D(f)) \coloneqq{\mathcal{O}}_{{\mathbb{A}}^1}(D(f)) = A({\mathbb{A}}^1)_{\left\langle{f}\right\rangle} = k[x]_{\left\langle{f}\right\rangle} \coloneqq\left\{{g/f^n {~\mathrel{\Big|}~}g\in k[x]}\right\}
.\]
We want to show that \( \iota: (U, {\mathcal{O}}_U) \hookrightarrow(X, {\mathcal{O}}_X) \) is a morphism of ringed spaces where \( {\mathcal{O}}_U(V) \coloneqq{\mathcal{O}}_X(V) \). Does \( \iota^* \) pull back regular functions to regular functions? Yes, since
\[
\iota^{-1} (D(f)) = D(f) \cup D(x) = D(xf)
\]
and thus
\[
g/f^n \in {\mathcal{O}}_U(\iota^{-1}(D(f))) = {\mathcal{O}}_U(D(xf))
\]
where we've used that \( f^n \neq 0 \implies xf\neq 0 \).
:::

::: {.example}
A non-example: take
\[  
h: {\mathbb{A}}^1 &\to {\mathbb{A}}^1 \\
x & \mapsto 
\begin{cases}
x & x \neq \pm 1 \\
-x & x= \pm 1
\end{cases}
.\]
This is continuous because the Zariski topology on \( {\mathbb{A}}^1 \) is the cofinite topology (since the closed sets are finite), so any injective map is continuous since inverse images of cofinite sets are again cofinite.

::: {.question}
Does \( h \) define a morphism of ringed spaces? I.e., is the pullback of a regular function on an open still regular?
:::

::: {.answer}
Take \( U = {\mathbb{A}}^1 \) and the regular function \( x\in {\mathcal{O}}_{{\mathbb{A}}^1}({\mathbb{A}}^1) \). Then \( h^*x = x\circ h \), so
\[  
(x\circ h)(p) =
\begin{cases}
p & p\neq \pm 1 \\
-p & p= \pm 1 
\end{cases}
\not \in k[x]
\]
since this is clearly not a polynomial: if two polynomials agree on an infinite set of points, they are equal.
:::
:::

::: {.example}
Consider
\[
\iota: ({\mathbb{R}}^2, C^\infty) \hookrightarrow({\mathbb{R}}^3, C^\infty)
\]
is the inclusion of a coordinate hyperplane. To say that this is a morphism of ringed spaces, we need that for all \( U\subset {\mathbb{R}}^3 \) open and \( f:U\to {\mathbb{R}} \) a smooth function, we want \( i^* f\in C^\infty (\iota^{-1}(U)) \). But this is the same as \( f\circ \iota \in C^\infty({\mathbb{R}}^2\cap U) \), which is true.
:::

## Gluing Morphisms

::: {.proposition title="Ringed spaces form a category"}
```{=tex}
\envlist
```
1.  They can be composed: if \( \phi \in {\mathcal{O}}_Z(U) \), then \( g^* \phi \in {\mathcal{O}}_Y(g^{-1}(U)) \) and so \( f^* g^* \phi \in {\mathcal{O}}_X(f^{-1} g^{-1} (U)) \).

2.  The identity is a morphism.

Thus ringed spaces form a category, since composition is associative.
:::

::: {.lemma title="Gluing for Morphisms"}
Let \( f:X\to Y \) be a continuous map between ringed spaces. Assume there exists an open cover \( \left\{{U_i}\right\}_{i\in I}\rightrightarrows X \) such that \( { \left.{{f}} \right|_{{U_i}} } \) is a morphism, then \( f \) is a morphism.
:::

::: {.remark}
Slogan: it suffices to check a morphism on an open cover.
:::

::: {.proof title="of part (a)"}
Part a: Need to check that \( f \) is continuous, can compute
\[  
f^{-1}(V) = \bigcup_{i\in I} U_i \cap f^{-1}(V) = \bigcup_{i\in I} { \left.{{f}} \right|_{{U_i}} }^{-1} (V)
.\]
but the latter is open as a union of open sets, where each constituent set is open by assumption.
:::

# Morphisms Glue (Thursday, October 08)

We continue the proof that morphisms glue.

::: {.proof title="part b"}
We want to show that \( f^* \) sends sections of \( {\mathcal{O}}_Y \) to sections of \( {\mathcal{O}}_X \) (e.g. regular functions pullback). Let \( V\subset Y \) be open and \( \phi \in {\mathcal{O}}_Y(V) \), then
\[  
{ \left.{{f^* \phi}} \right|_{{U_i \cap f^{-1} (V)}} }
\qty{ { \left.{{f^* \phi}} \right|_{{U_i \cap f^{-1} (V)}} } }^* \phi \in 
{\mathcal{O}}_X(U_i f^{-1} (V))
.\]

Since pullback commutes with restriction, \( f^* \phi \) is the unique \( k{\hbox{-}} \)valued function for which
\[  
{ \left.{{f^* \phi}} \right|_{{U_i \cap f^{-1} V}} } =
{ \left.{{f}} \right|_{{U_i\cap f^{-1} V}} }^* \phi
.\]
and all of the latter functions agree on overlaps \( U_i \cap U_j \). This by unique gluing, \( f^* \phi \in {\mathcal{O}}_X(f^{-1}(V)) \).
:::

## Morphisms Have Regular Components

::: {.proposition title="Morphisms between affine varieties have regular functions as components"}
Let \( U\subset X \) be open in an affine variety and let \( Y\subset {\mathbb{A}}^n \) be another affine variety. Then the morphisms \( U\to Y \) of ringed spaces are the maps of the form \( f = {\left[ {f_1, \cdots, f_n} \right]}: U\to {\mathbb{A}}^n \) such that \( f(U) \subset Y \) and \( f_i \in {\mathcal{O}}_X(U) \) for all \( i \).
:::

::: {.proof title="$\\implies$"}
Assume that \( f: U\to Y \) is a morphism. Then the coordinate functions \( Y\xrightarrow{y_i} {\mathbb{A}}_1 \) are regular functions, since they generate \( {\mathcal{O}}_Y(Y) = k[y_1, \cdots, y_n]/I(Y) \). Then \( f^* y_i \) is a regular function, so define \( f_i \coloneqq f^* y_i \). But then \( f = {\left[ {f_1, \cdots, f_n} \right]} \).
:::

::: {.proof title="$\\impliedby$"}
Conversely suppose \( f \coloneqq{\left[ {f_1, \cdots, f_n} \right]}: U\to Y \subset {\mathbb{A}}^n \) is a map such that \( f_i \in {\mathcal{O}}_U(U) \). We want to show that \( f \) is a morphism, i.e. that the pullback of every regular function is regular. We thus need to show the following:

::: {.claim}
```{=tex}
\envlist
```
1.  \( f \) is continuous, and
2.  \( f^* \) pulls back regular functions.
:::

::: {.proof title="of (1)"}
Suppose \( Z \) is closed, then it suffices to show \( f^{-1} (Z) \) is closed. Then \( Z = V(g_1, \cdots, g_n) \) for some \( g_i \in A(Y) \). So we can write
\[  
f^{-1} (Z) = \left\{{
x\in U {~\mathrel{\Big|}~}g_i(f_1(x), \cdots, f_n(x)  ) = 0\, \forall i
}\right\}
.\]
The claim is that the functions \( g_i \) are regular, i.e. in \( {\mathcal{O}}_U(U) \), because the \( g_i \) are polynomials in regular functions, which form a ring. This is the common vanishing locus of \( m \) regular functions on \( U \). By lemma 3.4, the vanishing locus of a regular function is closed, so \( f^{-1} (Z) \) is closed.
:::

::: {.proof title="of (2)"}
For 2, let \( \phi \in {\mathcal{O}}_Y(W) \) be a regular function on \( W\subset Y \) open. Then
\[  
f^* \phi  = \phi \circ f: f^{-1} (W) &\to K \\
x &\mapsto \phi(f_1(x), \cdots, f_n(x))
.\]
We want to show that this is a regular function. Since the \( f_i \) are regular functions, they are locally fractions, so for all \( x\in f^{-1} (W) \) there is a neighborhood of \( U_x\ni x \) such that (by intersecting finitely many neighborhoods) all of the \( f_i \) are fractions \( a_i/b_i \). Then at a point \( p = {\left[ {f_i(x)} \right]} \) in the image, there exists an open neighborhood \( W_p \) in \( W \) such that \( \phi = U/V \). But then \( \phi{{\left[ {a_i /b_i} \right]}} = (U/V)({\left[ {a_i/b_i} \right]}) \), which is evaluation of a fraction of functions on fractions.
:::
:::

::: {.example}
Let \( Y \coloneqq V(xy-1) \subset{\mathbb{A}}^2 \) and \( U\coloneqq D(x) = {\mathbb{A}}^1\setminus\left\{{0}\right\}\subset {\mathbb{A}}^1 \). Note that
\[  
A(Y)    &= {k[x, y] \over \left\langle{xy-1}\right\rangle} \\
A({\mathbb{A}}^1) &= k[t]
,\]
and if \( f_1 \coloneqq t, f_2\coloneqq t^{-1} \), then \( f_1, f_2 \in {\mathcal{O}}_U(U) \). So we can define a map
\[  
{\left[ {f_1, f_2} \right]}: U &\to Y  \\
p &\mapsto {\left[ {p, {1\over p} } \right]}
\]
whose image lies in \( Y \). Conversely, there is a map
\[  
V(xy - 1) &\to U = D(0) \subset  {\mathbb{A}}^1 \\
{\left[ {x, y} \right]} &\mapsto x
.\]
This a morphism from \( V(xy - 1) \) to \( {\mathbb{A}}^1 \), since the coordinates are regular functions. Since the image is contained in \( U \), the definitions imply that this is in fact a morphism of ringed spaces. We thus have mutually inverse maps
\[  
U       &\mathrel{\operatorname*{\rightleftharpoons}_{t\mapsto {\left[ {t, t^{-1} } \right]}}^{x\mapsfrom {\left[ {x, y} \right]}}} V(xy-1) \\ 
,\]
so \( U\cong V(xy-1) \) as ringed spaces.
:::

::: {.slogan}
Maps of affine varieties (or their open subsets) are given by functions whose coordinates are regular.
:::

## Morphisms of Varieties on the Algebra Side

::: {.corollary title="Morphisms of varieties corresponds to $k\\dash$algebra morphisms of coordinate rings"}
Let \( X, Y \) be affine varieties, then there is a correspondence
\[  
\left\{{\substack{\text{Morphisms } X\to Y }}\right\}
&\iff
\left\{{\substack{k{\hbox{-}}\text{algebra morphisms } A(Y) \to A(X)}}\right\} \\
X\to Y &\mapsto A(Y) \to A(X) \\
f &\mapsto f^* {\mathcal{O}}_Y(Y) = {\mathcal{O}}_X(X)
.\]

Thus there is an equivalence of categories between reduced[^9] \( k{\hbox{-}} \)algebras and affine varieties.
:::

::: {.proof}
We have a map in the forward direction. Conversely, given a \( k{\hbox{-}} \)algebra morphism \( g:A(Y) \to A(X) \), we need to construct a morphism \( f \) such that \( f^* = g \). Let \( Y\subset {\mathbb{A}}^n \) with coordinate functions \( y_1, \cdots, y_n \). Then \( f_i = g(y_i) \in A(X) = {\mathcal{O}}_X(X) \). Set \( f = {\left[ {f_1, \cdots, f_n} \right]} \). Then by the proposition, \( f \) is a morphism to \( {\mathbb{A}}^n \). Letting \( h\in A({\mathbb{A}}^n) \), we have

\[
(f^*h)(x) 
&= h(f(x)) \\
&= h({\left[ {f_1(x) , \cdots, f_n(x)} \right]}) \\
&= h(g(y_1), \cdots, g(y_n)) \\ 
&= g(h)(x) \qquad\text{since $g$ is an algebra morphism, $h$ is a polynomial}
\]
which follows since \( f_i(x) = g(y_i)(x) \), where \( g:A(Y) \to A(X) \). So \( f^*(h) = g(h) \) for all \( h\in A({\mathbb{A}}^n) \), so the pullback of \( f \) is \( g \). We now need to check that it's contained in the image. Let \( h\in I(Y) \), then \( f^*(h) = g(h) = 0 \) since \( h = 0 \in A(Y) \). So \( \operatorname{im}f \subset Y \). Since the coordinate \( f_i \) are regular, this is a morphism, and we have \( f^* = g \) as desired.
:::

# Isomorphisms of Affine Varieties (Tuesday, October 13)

Last time: proved that if \( X, Y \) are affine varieties then there is a bijection
\[  
\left\{{\substack{\text{Morphisms} \\ f:X\to Y}}\right\}
&\iff
\left\{{\substack{\text{$k{\hbox{-}}$algebra morphisms}\\ A(Y) \to A(X)}}\right\}
\\
f & \mapsto f^*: {\mathcal{O}}_Y(Y) \to {\mathcal{O}}_X(X)
.\]

::: {.remark}
A morphism \( f:X\to Y \) is by definition a morphism of ringed spaces where \( {\mathcal{O}}_X, {\mathcal{O}}_Y \) are the sheaves of regular functions. This shows \( X\cong Y \) as ringed spaces iff \( A(X) \cong A(Y) \) as \( k{\hbox{-}} \)algebras.
:::

## Counterexample: Isomorphisms Are Not Just Bijective Morphisms

::: {.warnings title="Isomorphisms are not necessarily bijective morphisms"}
Let \( X = V(y^2 - x^3) \subset {\mathbb{A}}^2 \) and define a map
\[  
f: {\mathbb{A}}^1 &\to X \\
t &\mapsto {\left[ {t^2, t^3} \right]}
,\]
This is a morphism by proposition 4.7 in [@AndreasGathmann515], since the coordinates \( t^2, t^3 \) are regular functions. Then \( f \) is a bijection, since we can define a piecewise inverse
\[  
f^{-1}: X &\to {\mathbb{A}}^1 \\
{\left[ {x, y} \right]} &\mapsto 
\begin{cases}
y/x & x\neq 0 \\
0 & \text{else}.
\end{cases}
\]
However, \( f^{-1} \) is not a morphism, since it is not in \( A(X) \) and thus not a regular function on \( X \). For instance, pulling back the function \( g(t) = t \) yields
\[  
\qty{ (f^{-1})^* g} \qty{ {\left[ {x, y} \right]} } = 
\begin{cases}
y/x & x\neq 0\\
0 & x=y=0
\end{cases}
\quad 
\not \in A(X)
.\]
Since \( f \) is a morphism, however, we can still consider the corresponding map of \( k{\hbox{-}} \)algebras:
\[  
f^*: A(X) = \frac{k[x, y]}{\left\langle{y^2 - x^3}\right\rangle} &\to A({\mathbb{A}}^1) = k[t] \\
x & \mapsto t^2 \\
y & \mapsto t^3
,\]
but even though \( f \) is a bijective morphism, it's not an isomorphism of rings: this can be seen from the fact that \( t\not \in \operatorname{im}f^* \).
:::

## Categorical Products

> Review of introductory category theory.

We'll define a category \( \mathrm{AffVar}_k \) whose objects are affine varieties over \( k \) and morphisms in \( \hom(X, Y) \) will be morphisms of ringed spaces. There is a contravariant functor \( A \) into reduced[^10] finitely generated \( k{\hbox{-}} \)algebras which sends \( X \) to \( A(X) \) and sends morphisms \( f:X\to Y \) to their pullbacks \( f^*:A(Y) \to A(X) \).

> Review of the universal property of the product.

::: {.remark}
If we have \( X,Y \) affine varieties, we take \( X\times Y \) to be the categorical product instead of the underlying product of topological spaces. We have
\[
A(X\times Y) \cong A(X) \otimes_k A(Y) \cong \frac{ k[x_1, \cdots, x_n, y_1, \cdots, y_m]} { I(X) \otimes 1 + 1 \otimes I(Y) }
.\]
This recovers the product, since we have

```{=tex}
\begin{tikzcd}
Z \ar[dr, dotted, "{\exists! H = (f, g)}"]\ar[rrd, bend left, "f"]\ar[rdd, bend right, "g"] &                       & \\
                                                                                            & X\times Y\ar[r]\ar[d] & X  \\
                                                                                            & Y                     & \\
\end{tikzcd}
```
:::

::: {.remark}
Products of spaces are sent to the tensor product of \( k{\hbox{-}} \)algebras, i.e. pullbacks are sent to pushouts.
:::

::: {.remark}
Note that the groupoid associated to a group does not have products: there can only be one element, but the outer triangles will not necessarily simultaneously commute.
:::

# Prevarieties (Thursday, October 15)

> This corresponds to the end of Chapter 4.

Recall that we had a proposition: morphisms between affine varieties are in bijection with \( k{\hbox{-}} \)algebra morphisms between their coordinate rings. As a result, we'll redefine an *affine variety* to be a ringed space isomorphic to an affine variety (using the previous definition of affine variety). This provides a way of saying when affine varieties embedded in different ways are the "same".

::: {.example}
\( {\mathbb{A}}^2 \) vs \( V(x) \subset {\mathbb{A}}^n \). In fact, the map
\[  
f: {\mathbb{A}}^2 &\to {\mathbb{A}}^3
(y,z) &\mapsto (0, y, z)
.\]
This is continuous and the pullback of regular functions are again regular.
:::

::: {.remark}
With the new definition, there is a bijection between affine varieties up to isomorphisms and finitely generated \( k{\hbox{-}} \)algebras up to algebra isomorphism.
:::

::: {.proposition title="Distinguished opens are ringed spaces"}
Let \( D(f) \subset X \) be a distinguished open, then \( D(f) \) is a ringed space. This follows because \( (X, {\mathcal{O}}_X) \) is a ringed space, and we can restrict the structure sheaf to any open subset of \( X \).
:::

::: {.proof}
Set
\[  
Y \coloneqq\left\{{(x, t) \in X\times{\mathbb{A}}^1 {~\mathrel{\Big|}~}tf(x) = 1}\right\} \subset X\times{\mathbb{A}}^1
.\]
This is an affine variety, since \( Y = V(I + \left\langle{ft-1}\right\rangle) \). This is isomorphic to \( D(f) \) by the map
\[  
Y &\to D(f) \\
{\left[ {x, t} \right]} &\mapsto x
.\]
with inverse
\[
D(f)  &\to Y \\
x     &\mapsto {\left[ {x, {1\over f(x)} } \right]}
\]

![Image](figures/image_2020-10-15-09-50-03.png){width="350px"}

Note that \( \pi: X\times{\mathbb{A}}^1 \to X \) is regular, using prop 3.8 in [@AndreasGathmann515], if the coordinates of a map are regular functions, then the entire map is a morphism of ringed spaces. We can then note that \( 1\over f(x) \) is regular on \( D(f) \), since \( f\neq 0 \) on this set.
:::

::: {.example}
\( {\mathbb{A}}^2 \setminus\left\{{0}\right\} \) is not an affine variety. Note that this is also not a distinguished open. We showed on a HW problem that the regular functions on \( {\mathbb{A}}^2\setminus\left\{{0}\right\} \) are \( k[x, y] \), which are also the regular functions on \( {\mathbb{A}}^2 \). So there is a map inducing a pullback
\[  
\iota: {\mathbb{A}}^2\setminus\left\{{0}\right\}&\to {\mathbb{A}}^2 \\ \\
\iota^*: k[x, y]  &\xrightarrow{\sim} k[x, y]
.\]
Note that \( \iota^* \) is an isomorphism on the space of regular functions, but \( \iota \) itself is not an isomorphism of topological spaces. Why? \( i^{-1} \) is not defined at zero.
:::

## Prevarieties (Chapter 5)

::: {.definition title="Prevariety"}
A **prevariety** is a ringed spaced \( X \) with a finite open cover by affine varieties. This is a topological space \( X \) with an open cover \( \left\{{U_i}\right\}_{i=1}^n \rightrightarrows X \) such that \( (U_i, { \left.{{{\mathcal{O}}_X}} \right|_{{U_i}} } ) \) is isomorphic to an affine variety. We'll call \( {\mathcal{O}}_X \) the sheaf of *regular functions* and \( U_i\subset X \) *affine open sets*.
:::

One way to construct prevarieties from affine varieties is by *gluing*:

::: {.definition title="Glued Spaces"}
Let \( X_1, X_2 \) be prevarieties which are themselves actual varieties, and let \( U_{12} \subset X_1, U_{21} \subset X_2 \) be opens with \( f: U_{12} \to U_{21} \) an isomorphism of ringed spaces.

![Image](figures/image_2020-10-15-10-08-59.png){width="350px"}

As a set, take \( X = X_1 {\coprod}X_2/\sim \) where \( a\sim f(a) \) for all \( a\in U_{12} \). As a topological space, \( U \subset X \) is open iff \( U_i \coloneqq U\cap X_i \) are open in \( X_i \). As a ringed space, we take
\[
{\mathcal{O}}_X(U) \coloneqq\left\{{\phi: U\to k {~\mathrel{\Big|}~}{ \left.{{\phi}} \right|_{{U_i}} } \in {\mathcal{O}}_{X_i}}\right\}
\]
:::

::: {.example}
The prototypical example is \( {\mathbb{P}}^1_{/k} \) constructed from two copies of \( {\mathbb{A}}^1_{/k} \). Set \( X_1 = {\mathbb{A}}^1, X_2 = {\mathbb{A}}^2 \), with \( U_{12} \coloneqq D(x) \subset X_1 \) and \( U_{21} \coloneqq D(y) \subset X_2 \). Then let
\[  
f: U_{12} &\to U_{21} \\
x & \mapsto {1\over x}
.\]
This defines a regular function on \( U_{12} \) so defines a morphism \( U_{12} \xrightarrow{\sim} {\mathbb{A}}^1 \).

![Gluing two affine lines to obtain projective space.](figures/image_2020-10-15-10-20-32.png){width="350px"}

Over \( {\mathbb{C}} \), topologically this yields a sphere

![Complex projective space is a sphere.](figures/image_2020-10-15-10-23-24.png){width="350px"}

Given a ringed space \( X = X_1\cup X_2 \) with a structure sheaf \( {\mathcal{O}}_X \), what is \( {\mathcal{O}}_X(X) \)? By definition, it's
\[  
{\mathcal{O}}_X(X) \coloneqq\left\{{\phi: X\to k {~\mathrel{\Big|}~}{ \left.{{\phi}} \right|_{{X_1}} }, { \left.{{\phi}} \right|_{{X_2}} } \text{ are regular} }\right\}
.\]

Then if \( { \left.{{\phi}} \right|_{{X_1}} } = f(x) \) and \( { \left.{{\phi}} \right|_{{X_2}} } = g(y) \), we have \( y=1/x \) on the overlap and so
\[
{ \left.{{f(x)}} \right|_{{D(x)}} } = { \left.{{g(1/x)}} \right|_{{D(x)}} }
\]
Since \( f, g \) are rational functions agreeing on an infinite set, \( f(x) = g(1/x) \) both being polynomial forces \( f = g = c \) for some constant \( c \in k \). Thus \( {\mathcal{O}}_X(X) = k \).

What about \( {\mathcal{O}}_X(X_1) \)? This is just \( k[x] \), and similarly \( {\mathcal{O}}_X(X_2) = k[y] \). We can also consider \( {\mathcal{O}}_X(X_1\cap X_2) = D(x) \subset X \), so this yields \( k[x, 1/x] \). We thus have a diagram
```{=tex}
\begin{tikzcd}
                         & {\mathcal{O}}_X(X_1) = k[x] \ar[rd, "x\mapsto x"]   & \\
{\mathcal{O}}_X(X) \ar[ru] \ar[rd] &                                           & {\mathcal{O}}_X(X_1\cap X_2) = k[x, 1/x] \\
                         & {\mathcal{O}}_X(X_2) = k[y] \ar[ru, "y\mapsto 1/x"] &
\end{tikzcd}
```
:::

# Prevarieties (Tuesday, October 20)

## Gluing Two Opens in a Prevariety

Recall that a *prevariety* is a ringed space that is locally isomorphic to an affine variety, where we recall that \( (X, {\mathcal{O}}_X) \) is *locally isomorphic* to an affine variety iff there exists an open cover \( U_i \rightrightarrows X \) such that \( (U_i, {\mathcal{O}}_{U_i}) \). We found one way of producing these: the gluing construction. Given two ringed spaces \( (X_1, {\mathcal{O}}_{X_1}) \) and \( (X_2, {\mathcal{O}}_{X_2}) \) and open sets \( U_{12} \in X_1 \) and \( U_{21} \in X_2 \) and an isomorphism \( (U_{12}, {\mathcal{O}}_{U_{12}}) \xrightarrow{f} (U_{21}, {\mathcal{O}}_{U_{21}}) \), we defined

-   The topological space as \( X_1 {\coprod}_f X_2 \)
-   The sheaf of rings as \( {\mathcal{O}}_X = \left\{{\phi:U\to k {~\mathrel{\Big|}~}{ \left.{{\phi}} \right|_{{U\cap X_i}} } \text{ is regular for } i=1,2 }\right\} \).

::: {.example}
\( {\mathbb{P}}^1_{/k} = X_1 \cup X_2 \) where \( X_1 \cong X_2 \cong {\mathbb{A}}^1_{/k} \). Take \( U_{12} \coloneqq D(x) \) and \( U_{21} \coloneqq D(y) \) with
\[  
f: U_{12} &\to U_{21} \\
x &\mapsto y \coloneqq{1\over x}
.\]

![Supposing \( \operatorname{ch}(k) \neq 2 \). Note that for \( {\mathbb{C}} \) this recovers \( S^2 \) in the classical topology.](figures/image_2020-10-20-09-41-55.png)
:::

::: {.example}
Let \( X_i = {\mathbb{A}}^1 \) and \( U_{12} = D(x), U_{21} = D(y) \) with
\[  
f: U_{12} &\to U_{21} \\
x &\mapsto y\coloneqq x
.\]

![Line with the doubled origin.](figures/image_2020-10-20-09-44-41.png)

Define \( X\coloneqq X_1 {\coprod}_f X_2 \), then \( {\mathcal{O}}_X = \left\{{\phi: X\to k {~\mathrel{\Big|}~}{ \left.{{\phi}} \right|_{{X_i}} } \text{ is regular}}\right\} \cong k[x] \).
:::

## More General Gluing

Now we want to glue more than two open sets. Let \( I \) be an indexing set for prevarieties \( X_i \). Suppose that for an ordered pair \( (i, j) \) we have open sets \( U_{ij} \subset X_i \) and isomorphisms \( f_{ij}: U_{ij} \xrightarrow{\sim} U_{ji} \) such that

a.  \( f_{ji} = f_{ij}^{-1} \)

b.  \( f_{jk} \circ f_{ij} = f_{ik} \) (cocycle condition)

![Opens with isomorphisms.](figures/image_2020-10-20-09-54-14.png)

Then the gluing construction is given by

1.  \( X\coloneqq{\coprod}X_i/\sim \) where \( x\sim f_{ij}(x) \) for all \( i,j \) and all \( x\in U_{ij} \).

2.  \( {\mathcal{O}}_x(U) \coloneqq\left\{{\phi:U\to k {~\mathrel{\Big|}~}{ \left.{{\phi}} \right|_{{U\cap X_i}} } \in {\mathcal{O}}_{X_i} }\right\} \).

Every prevariety arises from the gluing construction applied to affine varieties \( X_i \), since a prevariety \( (X, {\mathcal{O}}_X) \) by definition has an open affine cover \( \left\{{X_i}\right\} \rightrightarrows X \) and \( X \) is the result of gluing the \( X_i \) by the identity.

::: {.example}
Let \( X_1 = X_2 = X_3 \coloneqq{\mathbb{A}}^2/k \). Glue by the following instructions:

```{=tex}
\begin{tikzcd}
{\left[ {x_1, x_2} \right]} \in X_1 
\ar[rdd, "{{\left[ {y_1, y_2} \right]} = {\left[ { {1\over x_1}, {x_2\over x_1} } \right]}}"']
\ar[rr, "{{\left[ {z_1, z_2} \right]} = {\left[ { {1\over x_2}, {x_1\over x_2} } \right]} }"]
& & 
{\left[ {z_1, z_2} \right]} \in X_3 \ar[ldd, "f"] \\ \\
& 
{\left[ {y_1, y_2} \right]} \in X_2 \\ 
& 
\end{tikzcd}
```
where \( f \) is a map with whatever formula is required to make the diagram commute. Here

-   \( D(x_1 x_2) \subseteq X_1 \)
-   \( U_{12} = D(x_1) \)
-   \( U_{21} = D(x_2) \).

![Yields \( {\mathbb{P}}^2 \)](figures/image_2020-10-20-10-13-56.png){width="350px"}

Here \( X_1 = [1: y/x: z/x] \), \( X_2 = [x/y: 1: z/y] \).
:::

::: {.example}
From Gathmann 5.10, open and closed subprevarieties. Let \( X \) be a prevariety and suppose \( U\subset X \) is open. Then \( (U, {\mathcal{O}}_U) \) is a prevariety where \( {\mathcal{O}}_U = { \left.{{{\mathcal{O}}_X}} \right|_{{U}} } \). How can we write \( U \) as (locally) an affine variety? Since the \( U_i \) are covered by distinguished opens \( D_{ij} \) in \( X_i \) where \( X = \cup X_i \) with \( X_i \) affine varieties, we can write \( U = \bigcup_i U_i = \bigcup_{i, j} D_{ij} \).
:::

::: {.example}
Let \( Y\subset X \) be a closed subset of a prevariety \( X \). We need to define \( {\mathcal{O}}_Y(U) \) for all \( U\subset Y \) open, so we set
\[  
{\mathcal{O}}_Y(U) = \left\{{\phi: U\to k {~\mathrel{\Big|}~}\forall p\in U, \, \exists V_p \text{ with } p\in V_p 
  \mathrel{\stackunder[2pt]{\stackon[4pt]{$\subseteq$}{$\scriptscriptstyle$}}{
  $\scriptscriptstyle\text{open}$}}
 X \text{ and } \psi\in {\mathcal{O}}_X(V_p) \text{ s.t. } { \left.{{\psi}} \right|_{{U\cap V}} } = \phi  }\right\}
.\]

What's the picture?

![Sheaf for a closed subset.](figures/image_2020-10-20-10-29-25.png){width="350px"}
:::

::: {.exercise title="?"}
Show that this is a prevariety.
:::

::: {.remark}
If \( U\subset X \) is an open subprevariety or \( Y\subset X \) is a closed subprevariety, then the inclusions are morphisms. We'd need to show that a pullback of a function is regular, but this is set up by definition.
:::

::: {.remark}
Define \( \tilde {\mathcal{O}}_X(U) \) as the set of *all* functions \( U\to k \). Then the inclusion \( (X, {\mathcal{O}}_X) \hookrightarrow(X, \tilde {\mathcal{O}}_X) \) given by the identity on \( X \) is a morphism, but the identity in the reverse direction is not.
:::

# Separatedness (Thursday, October 22)

::: {.example}
Consider \( {\mathbb{A}}^1 \), whose polynomial functions are \( k[x] \). Consider now \( D(x) \subset {\mathbb{A}}^1 \), which is isomorphic to the affine variety \( V(xy-1) \). Then the regular functions on \( D(x) \) are given by
\[  
A(D(x)) = 
\frac{ k[x, y] }{ \left\langle{xy-1}\right\rangle } \cong k[x, x^{-1} ]
.\]
:::

## Products of Prevarieties

Recall that a *prevariety* is a ringed space \( (X, {\mathcal{O}}_X) \) such that \( X \) has a finite open cover by affine varieties \( (U_i, { \left.{{{\mathcal{O}}_X}} \right|_{{U_i}} }) \), and a *morphism* of prevarieties is a morphism of ringed spaces. We saw that one can construct prevarieties by gluing finite collections of prevarieties or affine varieties along open sets, and all prevarieties arise this way. Similar to varieties, the product \( P \) of prevarieties \( X, Y \) will satisfy a universal property:

```{=tex}
\begin{center}
\begin{tikzcd}
P \arrow[rrd, "\pi_X", bend left] \arrow[rdd, "\pi_Y"', bend right] &                                                     &   \\
                                                                    & Z \arrow[d] \arrow[r] \arrow[lu, "\exists !", dashed] & X \\
                                                                    & Y                                                   &  
\end{tikzcd}
\end{center}
```
[Link to Diagram](https://tikzcd.yichuanshen.de/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZABgBpiBdUkANwEMAbAVxiRAAUQBfU9TXfIRQBGUsKq1GLNgC1uvEBmx4CRAExiJ9Zq0QgAGvL7LBRUWq1TdIAJrcJMKAHN4RUADMAThAC2SUSA4EEgAzDwe3n6IAUFIauEgXr7+1LGIZCAMWGDWUHRwABaOINTa0noAOhUwAB5YcDgICUlRGWkaIABGMGBQoRll1lVoWAD6hs2RSG3BiCHU3b1IALQhA1Zsw2N21Ax03Qzs-CpCIJ5YTgU49lxAA)

::: {.proposition title="?"}
The product is unique up to unique isomorphism, i.e. there is a unique isomorphism between any two products.
:::

::: {.proof}
Standard exercise in category theory.
:::

### Constructing the product of prevarieties

::: {.example}
Consider \( {\mathbb{A}}^1 \times {\mathbb{A}}^1 \), then the product is (and should be) \( {\mathbb{A}}^2 \), but \( {\mathbb{A}}^2 \) does not have the product topology. For example, one problem is that the Zariski open set \( D(x-y) \) is not covered by products of open sets in \( {\mathbb{A}}^1 \).
:::

This happens because the Zariski topology is too weak. Strategy to fix: use gluing. Let \( X, Y \) be prevarieties and \( \left\{{U_i}\right\}, \left\{{V_i}\right\} \) be open affine covers of \( X \) and \( Y \) respectively. We can construct the product \( U_i \times V_j \subset {\mathbb{A}}^{n+m} \), which is an affine variety and satisfies the universal property for products. We then glue two such products \( U_{i_1} \times V_{j_1} \) and \( U_{i_2} \times V_{j_2} \) along their common open subset in \( \qty{U_{i_1}\cap U_{i_2} }\cap\qty{V_{j_1} \cap V_{j_2}} \subseteq X\times Y \).

Let \( \tilde U \coloneqq U_{i_1} \cap U_{i_2} \times V_{j_1} \cap V_{j_2} \), we then need that

\[  
\qty{ \tilde U, { \left.{{ {\mathcal{O}}_{U_{i_1} \times V_{j_1}} }} \right|_{{\tilde U}} } } \cong
\qty{ \tilde U, { \left.{{ {\mathcal{O}}_{U_{i_2} \times V_{j_2}} }} \right|_{{\tilde U}} } }
.\]
This follows from the universal property of products, since the open set \( (U\times V, { \left.{{ {\mathcal{O}}_{X\times Y} }} \right|_{{U\times V}} } ) \) is a categorical product of ringed spaces, and the identity provides a unique isomorphism. By the gluing construction, this produces a ringed space \( (X\times Y, {\mathcal{O}}_{X\times Y}) \), we just need to check that this satisfies the universal property. We have projections \( \pi_X, \pi_Y \) set-theoretically, which restrict to morphisms on every \( U_i \times V_j \). For any prevariety \( Z \), we get a unique set map \( h:Z\to X\times Y \) which commutes, so it suffices to check that \( h \) is a morphism of ringed spaces.

So consider \( h^{-1} (U_i \times V_j) \subset Z \), which is an open subset of \( Z \) given by \( f^{-1}(U) \times f^{-1}(V) \). Take an open cover and let \( W \) be an element in it. We can then restrict \( f \) and \( g \) to get \( { \left.{{f}} \right|_{{W}} }:W\to U_i \) and \( { \left.{{g}} \right|_{{W}} }:W\to V_j \) and their product is a morphism of ringed spaces. So \( Z \) is covered by open sets for which \( h \) is a morphism of ringed spaces, making \( h \) itself a morphism.

What was the point of constructing the product? We want some notion analogous to being Hausdorff to distinguish spaces like \( {\mathbb{P}}^1/k \) from the line with the doubled origin. The issue is that these spaces with the Zariski topology are never Hausdorff. So we make the following definition:

::: {.definition title="Separated"}
A prevariety is **separated** iff the diagonal morphism
\[  
\Delta_X: X &\to X\times X \\
x &\mapsto (\operatorname{id}_X \times\operatorname{id}_X)(x) \coloneqq(x, x)
\]
is a closed embedding.
:::

::: {.definition title="Variety"}
A **variety** is a separated prevariety.
:::

# General Varieties and Completeness (Tuesday, October 27)

Recall the following:

-   An *affine variety* is given by \( X = V(I) \subset {\mathbb{A}}^n/k \), and we have sheaves of rings of regular functions \( {\mathcal{O}}_X \) on \( X \).

-   A *prevariety* is a ringed space that is covered by finitely many affine spaces.

-   A *morphism* of prevarieties \( f:X\to Y \) is a continuous map such that the pullbacks of regular functions are regular, i.e. for all \( \phi \in {\mathcal{O}}_X(U) \) we have \( f^* \phi \in {\mathcal{O}}_X(f^{-1} (U) ) \).

-   We can form a category \( \operatorname{PreVar}_k \) of prevarieties over \( k \), where we have several important constructions

    1.  Gluing

    2.  Products: Given \( X, Y \), there is a unique prevariety \( X\times Y \) such that

        ```{=tex}
        \begin{tikzcd}
          Z\ar[drr, bend left , "f_x"] \ar[rdd, bend right, "f_y"] \ar[rd, "\exists ! h", dotted] &                                         & \\
                                                                                               & X\times Y\ar[r, "\pi_X"]\ar[d, "\pi_Y"] & X \\
                                                                                               & Y                                       &
          \end{tikzcd}
        ```

-   We had an analogue of being Hausdorff: the diagonal \( \Delta_X \) is closed.

::: {.example title="The line with double origins is not separated"}
Glue \( D(x) \subset {\mathbb{A}}^1 \) to \( D(y) \subset {\mathbb{A}}^1 \) by the isomorphism
\[  
D(x) & \xrightarrow{\sim} D(y) \\
x &\mapsto y
.\]
This yields an affine line with two origins:

![Line with two origins.](figures/image_2020-10-27-09-47-27.png){width="250px"}

Consider the product:

![Product of lines with two origins](figures/image_2020-10-27-09-51-10.png){width="250px"}

Since the diagonal is given by \( \Delta_X = \left\{{(x, x) {~\mathrel{\Big|}~}x\in X}\right\} \), we have the following situation in blue:

![The diagonal has four copies of the origin.](figures/image_2020-10-27-09-52-26.png){width="250px"}

We claim that \( \Delta_X \) is not closed, and for example \( (0, 0') \in \mkern 1.5mu\overline{\mkern-1.5mu\Delta\mkern-1.5mu}\mkern 1.5mu_X \). Consider \( U\times U' \subset X\times X \) where \( U, U' \) are the two copies of \( {\mathbb{A}}^1 \) in \( X \). This is an affine open set, since it's isomorphic to \( {\mathbb{A}}^1\times{\mathbb{A}}^1 \). If \( \Delta_X \) were closed, then \( S \coloneqq\Delta_X \cap(U\times U') = \left\{{(x, x) {~\mathrel{\Big|}~}x\neq 0}\right\} \) would be closed in \( U\times U' \):

![Open diagonal in a product.](figures/image_2020-10-27-10-01-15.png){width="250px"}

This is because any polynomial vanishing on \( S \) must vanish at \( (0, 0) \), so \( S \) is an affine variety. But then \( V(I(S)) = \Delta_{{\mathbb{A}}^1} \).
:::

::: {.lemma title="Affine varieties and affine subvarieties are varieties"}
```{=tex}
\envlist
```
a.  Any affine variety is a variety.

b.  Open and closed subprevarieties of a variety \( X \) are themselves varieties.

Thus it makes since to consider *open* and *closed subvarieties*.
:::

::: {.proof title="of a"}
We need to check that \( \Delta_X \subset X^2 \) is closed for any affine \( X\subset {\mathbb{A}}^n \). Note that we can write.
\[
\Delta_X = X^2 \cap V\qty{ \left\{{x_j - y_j {~\mathrel{\Big|}~}1\leq j \leq n}\right\}} \subset {\mathbb{A}}^n \times{\mathbb{A}}^2
\]
:::

::: {.proof title="of b"}
Let \( \iota:Y\to X \) be the inclusion of either an open or closed subset. Then we have a morphism \( (\iota, \iota): Y^2 \to X^2 \) by the universal property. Then \( \Delta_Y = (\iota, \iota)^{-1} (\Delta_X) \), so is closed by the continuity of \( (\iota, \iota) \) and the fact that \( \Delta_X \). Thus \( Y \) is a variety.
:::

## Properties of Varieties

::: {.proposition title="Properties of Varieties"}
Let \( f, g: X\to Y \) be morphisms of prevarieties and assume \( Y \) is a variety.

a.  The graph of \( f \), given by \( \Gamma_f \coloneqq\left\{{(x, f(x)) {~\mathrel{\Big|}~}x\in X}\right\} \), is closed in \( X\times Y \).

b.  The set \( \left\{{x\in X{~\mathrel{\Big|}~}f(x) = g(x)}\right\} \) is closed in \( X \).
:::

::: {.proof title="of a"}
Consider the product morphism \( (f, \operatorname{id}): X\times Y \to Y^2 \). Since \( \Delta_Y \) is closed, \( (f, \operatorname{id})^{-1} (\Delta_Y) \) is closed, and is the locus where \( f(x) = y \), so this is \( \Gamma_f \).
:::

::: {.proof title="of b"}
Consider \( (f, g): X\to Y^2 \). Since \( \Delta_Y \subset Y^2 \) is closed,
\[
(f, g)^{-1}(\Delta_Y) = \left\{{x\in X {~\mathrel{\Big|}~}f(x) = g(x)}\right\} \subset X
\]

is closed.
:::

## Chapter 6: Projective Varieties

Note that affine varieties of positive dimension over \( {\mathbb{C}} \) are not compact in the classical topology, but *are* compact in the Zariski topology. Similarly, they are Hausdorff classically, but not in the Zariski topology. We want to find notions equivalent to being Hausdorff and compact that coincide with these notions in the classical topologies but generalize to varieties. The fix for being Hausdorff case was "separatedness", and the fix for compactness will be the following:

::: {.definition title="Complete"}
A variety \( X \) is **complete** iff for any variety \( Y \) the projection map
\[
\pi_Y:X\times Y\to Y
\]
is a closed[^11] map.
:::

::: {.example title="$\\AA^1$ is not complete"}
Let \( X = Y={\mathbb{A}}^1 \) and set \( Z \coloneqq V(xy-1)\subset X\times Y \). Then \( \pi_Y(Z) = D(y) \subset Y \subset {\mathbb{A}}^1 \) is not closed.
:::

# Projective Space & Homogeneous Polynomials (Thursday, October 29)

## Projective Space

::: {.definition title="Projective Space"}
Let \( n\in {\mathbb{N}} \), and define **projective \( n{\hbox{-}} \)space** over \( k \) by\
\[  
{\mathbb{P}}^n_{/k} = \left\{{\text{lines through the origin in } k^{n+1}}\right\}
.\]
:::

::: {.remark}
For notation, given \( L\in {\mathbb{P}}^n/k \), it is spanned by any nonzero points \( {\left[ {x_0, \cdots, x_n} \right]} \in L \), and \( L \) is uniquely determined by this point up to scaling by elements in \( k^{\times} \). In this case, we write \( L = {\left[ {x_0: \cdots : x_n} \right]} = {\left[ {\lambda x_0: \cdots : \lambda x_n} \right]} \). We can then alternatively define \( {\mathbb{P}}^n{_/k} \coloneqq\qty{ k^{n+1}\setminus\left\{{0}\right\}} / \sim \) where we mod out by scalar multiplication \( x\sim \lambda x \) for \( \lambda\in k^{\times} \). We call \( [x_1 : \cdots : x_n] \) the *homogeneous coordinates* on \( {\mathbb{P}}^n/k \).
:::

::: {.remark}
Consider the map
\[  
{\mathbb{A}}^n \to {\mathbb{P}}^n \\
{\left[ {x_1, \cdots, x_n} \right]} &\mapsto {\left[ {1: x_1 : \cdots : x_n} \right]}
.\]
This is injective. Conversely, consider
\[  
"D(x_0)" \subset {\mathbb{P}}^n \coloneqq\left\{{{\left[ {x_0 : \cdots : x_n} \right]} {~\mathrel{\Big|}~}x_0\neq 0}\right\}
.\]
This is a well-defined subset of \( {\mathbb{P}}^n \), since it only depends on the equivalence class of a point. In this case, there is a unique \( \lambda(x_0, \cdots, x_n) \), namely \( \lambda = 1/x_0 \), such that each point in this set is of the form \( {\left[ {1: {x_1\over x_0} : \cdots : {x_n \over x_0}} \right]} \), yielding a copy of \( {\mathbb{A}}^n\subset {\mathbb{P}}^n \) given by points \( {\left[ {{x_1\over x_0}, \cdots, {x_n\over x_0}} \right]} \). What is its complement? It's given by \( \left\{{{\left[ {0: x_1: \cdots : x_n} \right]}}\right\} \subset {\mathbb{P}}^n \), which is equal (as a set) to a copy of \( {\mathbb{P}}^{n-1} \) defined by the set of lines in \( k^n \) defined by \( x_0 = 0 \).
:::

::: {.example title="?"}
Note that \( {\mathbb{P}}^1 \) contains a copy of \( {\mathbb{A}}^1 \) where \( x_0 \neq 0 \) and a second copy where \( x_1 \neq 0 \), yielding maps
\[  
f_1: {\mathbb{P}}^1 &\to {\mathbb{A}}^1 \\
{\left[ {x_0: x_1} \right]} &\mapsto {\left[ {{x_0 \over x_1}} \right]} \\ \\
f_2: {\mathbb{P}}^1 &\to {\mathbb{A}}^1 \\
{\left[ {x_0: x_1} \right]} &\mapsto {\left[ {{x_1 \over x_0}} \right]}
,\]
since every point in \( {\mathbb{P}}^1 \) corresponds to some line in \( {\mathbb{A}}^2 \), and thus has either \( x_0\neq 0 \) or \( x_1 \neq 0 \). These two copies cover \( {\mathbb{P}}^1 \), and the "transition map" is inversion.
:::

::: {.remark}
More generally, there are \( n+1 \) projection \( {\mathbb{P}}^n \twoheadrightarrow{\mathbb{A}}^n \) given by dividing by the \( j \)th coordinate, and the union of their images is the entire space. The gluing construction gives \( {\mathbb{P}}^n \) the structure of a prevariety: we can consider \( D(x_j) \subset {\mathbb{P}}^n \) where each has the structure of a ringed space \( ({\mathbb{A}}^n, {\mathcal{O}}_{{\mathbb{A}}^n}) \). We have \( D(x_i) \cap D(x_j) \subset D(x_i) \), which has coordinate \( \left\{{ x_k/x_i,\, k\neq i }\right\} \), and similarly \( D(x_i) \cap D(x_j) \subseteq D(x_j) \) with coordinates \( \left\{{ x_k/x_j, \, k\neq j}\right\} \). Their intersection is \( D(x_i / x_j) \cong {\mathbb{A}}^{n-1} \).
:::

::: {.example title="?"}
Consider \( {\mathbb{P}}^1 \), then \( D(x_0) \cong {\mathbb{A}}^1 \) with which contains a copy of \( {\mathbb{A}}^1 \) with coordinate ring \( k[x_1 / x_0] \) and a subset \( D(x_1 / x_0) \) with coordinate ring \( k[y, y^{-1}] \), and similarly, \( D(x_1) \cong {\mathbb{A}}^1 \) has coordinate ring \( k[x_0\over x_1] \) and contains \( D(x_0/ x_1) \) with coordinate ring \( k[z, z^{-1}] \). Consider their overlap \( D(x_0) \cap D(x_1) \). `\todo[inline]{Might be mistakes here.}`{=tex}

When do \( y, z \) denote the same point in \( {\mathbb{P}}^1 \)? When \( y = z^{-1} \). We can conclude that the \( n+1 \) copies \( D(x_i) \subset {\mathbb{P}}^n \) are affine varieties isomorphic as ringed spaces on the overlaps, so the gluing construction makes \( {\mathbb{P}}^n \) a prevariety.
:::

## Homogeneous Polynomials

::: {.definition title="Homogeneous Degrees of Polynomials"}
A polynomial \( f \) is **homogeneous of degree \( d \)** if every monomial in \( f \) has total degree \( d \).
:::

::: {.example title="?"}
The polynomial
\[  
f(x_0, x_1, x_2) = x_0^3 + x_1 x_2^2 + x_0 x_1 x_2
.\]
has homogeneous degree 3.
:::

::: {.remark}
If \( f \) is homogeneous of degree \( d \), then for all \( \lambda \in k^{\times} \),
\[  
f(\lambda x_0, \cdots, \lambda x_n) = \lambda^d f(x_0, \cdots, x_n)
.\]

If \( f \) is homogeneous, \( V(f) \subset {\mathbb{P}}^n \) is a well-defined subset, since
\[
f(x_0, \cdots, x_n) = 0 \iff \lambda^d f(x_0, \cdots, x_n) = 0 \iff f(\lambda x_0, \cdots, \lambda x_n) = 0
\]
:::

::: {.definition title="Graded Rings"}
A **graded ring** \( R \) is a ring \( R \) with abelian subgroups \( R_d \subset R \) with

-   \( R = \bigoplus_{d\geq 0} R_d \), and
-   For all \( f\in R_d \) and \( g\in R_{d'} \), we have \( fg \in R_{d+d'} \) and \( R_d + R_{d} \subset R_d \).
:::

# Projective Nullstellensatz (Tuesday, November 02)

## Quotients of Graded Rings

::: {.proposition title="Quotients of graded rings by homogeneous ideals are again graded"}
If \( R \) is a graded ring and \( I{~\trianglelefteq~}R \) is a homogeneous ideal, then \( R/I \) is a graded ring.
:::

## Cones and Projectivization

::: {.definition title="Cones"}
An affine variety \( X \subseteq {\mathbb{A}}^{n+1} \) is a **cone** iff

-   \( \mathbf{0} \in X \)
-   \( kX \subseteq X \)
:::

::: {.remark}
This says that \( X \) is the origin and a union of lines through the origin. For the following definitions, we define a map
\[  
\pi: {\mathbb{A}}^{n+1}\setminus\left\{{0}\right\}&\to {\mathbb{P}}^n \\
{\left[ {x_0, \cdots, x_n} \right]} &\mapsto {\left[ {x_0 : \cdots :x_n} \right]}
.\]
:::

::: {.definition title="Projectivization of a Cone"}
For a cone \( X \subseteq {\mathbb{A}}^{n+1} \), the **projectivization** of \( X \) is defined as
\[  
{\mathbb{P}}(X) \coloneqq\pi(X\setminus\left\{{0}\right\}) = \left\{{ {\left[ {x_0: \cdots : x_n } \right]} \in {\mathbb{P}}^n {~\mathrel{\Big|}~}{\left[ {x_0, \cdots, x_n} \right]} \in X }\right\} \subseteq {\mathbb{P}}^n
.\]
:::

::: {.definition title="Cone Over a Projective Variety"}
For a projective variety \( X \subseteq {\mathbb{P}}^n \), the **cone over \( X \)** is the cone defined by
\[  
C(X) \coloneqq\left\{{0}\right\} \cup\pi^{-1}(X) = \left\{{0}\right\} \cup\left\{{ {\left[ {x_0, \cdots, x_n} \right]} {~\mathrel{\Big|}~}{\left[ {x_0: \cdots : x_n} \right]} \in X }\right\} \subseteq {\mathbb{A}}^{n+1}
.\]
:::

::: {.remark}
We have
\[  
{\mathbb{P}}V_a(S) = V_p(S) &\text{and}& C(V_p(S)) = V_a(S)
.\]
:::

## Projective Nullstellensatz

::: {.proposition title="Projective Nullstellensatz Construction"}
Define
\[  
V_p(J) &\coloneqq\left\{{\mathbf{x} \in {\mathbb{P}}^n {~\mathrel{\Big|}~}f(\mathbf{x}) = 0 \text{ for all homogeneous } f\in J}\right\} \subseteq {\mathbb{P}}^n \\
I_p(X) &\coloneqq\left\langle{ f \in k[x_0, \cdots, x_n] \text{ homogeneous } {~\mathrel{\Big|}~}f(\mathbf{x}) = 0\,\, \forall x\in X}\right\rangle {~\trianglelefteq~}k[x_0, \cdots, x_n]
.\]
:::

```{=tex}
\todo[inline]{Missing some info, fill in.}
```
# Projective Spaces (Thursday, November 05)

We defined \( {\mathbb{P}}^n_{/k} \coloneqq\qty{ k^{n+1}\setminus\left\{{0}\right\}} /\sim \) where \( x\sim \lambda x \) for all \( x\in k^{\times} \), which we identified with lines through the origin in \( k^{n+1} \). We have homogeneous coordinates \( p = [x_0: \cdots : x_n] \). We say an ideal is *homogeneous* iff for all \( f\in I \), the homogeneous part \( f_d\in I \) for all \( d \). In this case \( V_p(I) \subset {\mathbb{P}}^{n}_{/k} \) defined as the vanishing locus of all homogeneous elements of \( I \) is well-defined, and we think of this as the "projective version" of a vanishing locus. Similarly we defined \( I_p(S) \) defined as the ideal generated by all homogeneous \( f\in k[x_1, \cdots, x_{n}] \) such that \( f(x) = 0 \) for all \( x\in S \).

::: {.remark}
Observe that \( V_a(I) \) defined as the cone over \( V_p(I) \) is the set of points in \( {\mathbb{A}}^{n+1}\setminus\left\{{0}\right\}\cup\left\{{0}\right\} \) which map to \( V_p(I) \).
:::

We have an alternative definition of a cone in \( {\mathbb{A}}^{n+1} \), characterized as a closed subset \( C \) which is closed under scaling, so \( kC\subseteq C \). The following proposition(s) show that these notions are related.

::: {.proposition}
```{=tex}
\envlist
```
-   If \( S\subset k[x_1, \cdots, x_{n}] \) is a set of homogeneous polynomials, then \( V_a(S) \) is a cone since it is closed and closed under scaling. This follows from the fact that \( f(x) = 0 \iff f(\lambda x) = 0 \) for \( \lambda \in k^{\times} \) when \( f \) is homogeneous.

-   If \( C \) is a cone, then its affine ideal \( I_a(C) \) is homogeneous.
:::

::: {.proof title="?"}
Let \( f\in I_a(C) \), then \( f(x) = 0 \) for all \( x\in C \). Since \( C \) is closed under scaling, \( f(\lambda x) = 0 \) for all \( x\in C \) and \( \lambda \in k^{\times} \). Decompose \( f = \sum_d f_d \) into homogeneous pieces, then
\[  
x\in C \implies 0 = f(\lambda x) = \sum \lambda^d f_d(x) 
.\]

Fixing \( x\in C \), the quantities \( f_d(x) \) are constants, so the resulting polynomial in \( \lambda \) vanishes for all \( \lambda \). But since \( k \) is infinite, this forces \( f_d(x) = 0 \) for all \( d \), which shows that \( f_d \in I_a(C) \).
:::

::: {.lemma title="?"}
There is a bijective correspondence
\[  
\left\{{\substack{\text{Cones}}}\right\} 
&\iff
\left\{{\substack{\text{Projective Varieties}}}\right\} \\
{\mathbb{A}}^{n+1} \supset X &\mapsto {\mathbb{P}}X\subset {\mathbb{P}}^n \\
{\mathbb{A}}^{n+1} \supset CX &\mapsfrom X\subset {\mathbb{P}}^n \\
.\]
:::

::: {.proof title="?"}
\( {\mathbb{P}}V_a(S) = V_p(S) \) for any set \( S \) of homogeneous polynomials, and \( C(V_p(S)) = V_a(S) \), where \( V_p(S) \) is a cone by part (a) of the previous proposition. Conversely, every cone is the variety associated to some homogeneous ideal.
:::

## Projective Nullstellensatz

::: {.definition title="Irrelevant Ideal"}
The homogeneous ideal \( I_0 \coloneqq(x_0, \cdots, x_n) \subset k[x_1, \cdots, x_{n}] \) is denoted the **irrelevant ideal**. This corresponds to the origin in \( {\mathbb{A}}^{n+1} \), which does not correspond to any point in \( {\mathbb{P}}^n \).
:::

::: {.proposition title="Projective Nullstellensatz"}
```{=tex}
\envlist
```
a.  For all \( X\subseteq {\mathbb{P}}^n \),
    \[
    V_p(I_p(X)) = X
    \]

b.  For all homogeneous ideal \( J\subset k[x_1, \cdots, x_{n}] \) such that (importantly) \( \sqrt{J} \neq I_0 \),
    \[
    I_p(V_p(J)) = \sqrt J
    \]
:::

::: {.proof title="of a"}
\( \supset \): If we let \( I \) denote the ideal of all homogeneous polynomials vanishing on \( X \), then this certainly contains \( X \).

\( \subset \): This follows from part (b), since \( X = V_p(J) \) implies that
\[
(V_p I_p V_p)(J) = V_p(\sqrt J) = V_p(J) = X
\]
since taking roots of homogeneous polynomials doesn't change the vanishing locus.
:::

::: {.proof title="of b"}
That \( I_p(V_p(J)) \supset \sqrt J \) is obvious, since \( f\in \sqrt{J} \) vanishes on \( V_p(J) \). `\todo[inline]{Check}`{=tex}

It remains to show \( \sqrt{J} \subset I_p(V_p(J)) \) , but we can write \( I_p(V_p(J)) \) as \( \left\langle{f \in k[x_1, \cdots, x_{n}]}\right\rangle \) the set of homogeneous polynomials vanishing on \( V_p(S) \), which is equal to those vanishing on \( V_a(J) \setminus\left\{{0}\right\} \). But since \( I_p(\cdots) \) is closed, this is equal to the \( f \) that vanish on \( \mkern 1.5mu\overline{\mkern-1.5muV_a(J)\setminus\left\{{0}\right\}\mkern-1.5mu}\mkern 1.5mu \), which is only equal to \( V_a(J) \) iff \( V_a(J) \neq \left\{{0}\right\} \).

![Projective Varieties as Cones in \( {\mathbb{A}}^n \)](figures/image_2020-11-05-10-10-38.png){width="350px"}

By the affine Nullstellensatz,
\[  
V_a(J) = \left\{{0}\right\} \iff \sqrt{J} = I_0
.\]

Thus
\[
I_p(V_p(J)) = \left\langle{f {~\mathrel{\Big|}~}\text{homogeneous vanishing on }V_a(J)}\right\rangle
\]
Using the fact that \( V_a(J) \) is a cone, its ideal is homogeneous and thus generated by homogeneous polynomials by part (b) of the previous proposition. Thus
\[  
I_p(V_p(J)) = I_a(V_a(J)) = \sqrt J
,\]
where the last equality follows from the affine Nullstellensatz.
:::

::: {.corollary title="?"}
There is an order-reversing bijection
\[  
\left\{{\substack{\text{Projective varieties} \\ X\subset {\mathbb{P}}^n}}\right\}
&\iff
\left\{{\substack{\text{Homog non-irrelevant radical ideals} \\ J \in k[x_1, \cdots, x_{n}]}}\right\} \\
X &\mapsto I_p(X) \\
V_p(J) &\mapsfrom J
.\]
:::

::: {.remark}
A better definition of a cone over \( X\subset {\mathbb{P}}^n_{/k} \) is
\[  
C(X) &\coloneqq\mkern 1.5mu\overline{\mkern-1.5mu\pi^{-1}(X)\mkern-1.5mu}\mkern 1.5mu \subset {\mathbb{A}}^{n+1}_{/k} \\
\text{where} \\
\pi: {\mathbb{A}}^{n+1}\setminus\left\{{0}\right\}&\to {\mathbb{P}}^n \\
{\left[ {x_0, \cdots, x_n} \right]} &\mapsto {\left[ {x_0: \cdots: x_n} \right]}
.\]
:::

## Projective Coordinate Ring

::: {.definition title="Homogeneous / Projective Coordinate Ring"}
Given \( X\subset {\mathbb{P}}^n \) a projective variety, the **projective coordinate ring** of \( X \) is given by
\[  
S(X) \coloneqq k[x_1, \cdots, x_{n}] / I_p(X)
.\]
:::

::: {.remark}
This is a graded ring since \( I_p(X) \) is homogeneous. This follows since the quotient of a graded ring by a homogeneous ideal yields a grading on the quotient.
:::

::: {.remark}
We have relative versions of everything. Projective subvarieties of projective varieties are given by \( Y\subset X\subset {\mathbb{P}}^n \) where \( X \) is a projective variety. We have a topology on \( X \) where the closed subsets are projective subvarieties.
:::

::: {.remark}
Given \( J\subset S(X) \), where \( S(X) \) is the projective coordinate ring of \( X \) and has a grading, we can take \( V_p(J) \subset X \). Conversely, given a set \( Y\subset S(X) \), we can take \( I_p(Y) \subset S(X) \) those homogeneous elements vanishing on \( Y \). Thus there is an order-reversing bijection
\[  
\left\{{\substack{\text{Projective subvarieties } \\ Y\subset X}}\right\}
\iff
\left\{{\substack{\text{Homogeneous radical ideals} \\ I \neq I_0 {~\trianglelefteq~}S(X)}}\right\}
\]
and \( S(X) = k[x_1, \cdots, x_{n}]/J \subset \mkern 1.5mu\overline{\mkern-1.5muI_0\mkern-1.5mu}\mkern 1.5mu \).
:::

::: {.remark}
Every nontrivial homogeneous ideal \( J \) contains the irrelevant ideal \( I_0 \). Why? Suppose \( f\in J\setminus I_0 \) and \( f_0\neq 0 \). Then \( f_0\in J \) but \( f_0\in k\subset k[x_1, \cdots, x_{n}] \), implying that \( 1\in J \) and thus \( J = \left\langle{1}\right\rangle \).
:::

```{=tex}
\todo[inline]{Check?}
```
::: {.remark}
It is sometimes useful to know that a projective variety is cut out by homogeneous polynomials all of *equal* degree, so \( X = V (f_1, \cdots, f_m) \) with each \( f_i \) homogeneous of degree \( d_i \). Then there is some maximum degree \( d \). We can write
\[  
V(f_1) &= V(x_0^k f_1, \cdots, x_n^k f_1 ) \qquad \forall k\geq 0 \\
X &= \bigcap V(f_1) \cup V(x_i)
.\]
This follows because \( V \) of a product is a union of the vanishing loci, but \( \bigcap V(x_i) = \emptyset \). The equality follows because for all points \( {\left[ {x_0, \cdots, x_n} \right]} \in {\mathbb{P}}^n \), some \( x_i \) is nonzero.
:::

# Homogenization and Dehomogenization (Tuesday, November 10)

Last time: projective varieties \( V(f_i) \subset {\mathbb{P}}^n_{/k} \) with \( f_i \) homogeneous. We proved the projective nullstellensatz: for any projective variety \( X \), we have \( V_p(I_p(X)) \) and for any homogeneous ideal \( I \) with \( \sqrt{I} \neq I_0 \) the irrelevant ideal, \( I_p(V_p(I)) = \sqrt{I} \). Recall that \( I_0 = \left\langle{x_0, \cdots, x_n}\right\rangle \). We had a notion of a projective coordinate ring, \( S(X) \coloneqq k[x_1, \cdots, x_{n}] / I_p(X) \), which is a graded ring since \( I_p(X) \) is a homogeneous ideal.

::: {.remark}
Note that \( S(X) \) is not a ring of functions on \( X \): e.g. for \( X= {\mathbb{P}}^n \), \( S(X) = k[x_1, \cdots, x_{n}] \) but \( x_0 \) is not a function on \( {\mathbb{P}}^n \). This is because \( f\qty{{\left[ {x_0: \cdots : x_n} \right]}} = f\qty{{\left[ {\lambda x_0: \cdots : \lambda x_n} \right]}} \) but \( x_0\neq \lambda x_0 \). It still makes sense to ask when \( f \) is zero though, so \( V_p(f) \) is a well-defined object.
:::

## Dehomogenization

::: {.definition title="Dehomogenization of functions and ideals"}
Let \( f\in k[x_1, \cdots, x_{n}] \) be a homogeneous polynomial, then we define its **dehomogenization** as
\[  
f^i \coloneqq f(1, x_1, \cdots, x_n) \in k[x_1,\cdots, x_n]
.\]

For a homogeneous ideal, we define
\[  
J^i \coloneqq\left\{{f^i {~\mathrel{\Big|}~}f\in J}\right\}
.\]
:::

::: {.example}
The dehomogenization is usually not homogeneous. Take
\[  
f &\coloneqq x_0^3 + x_0 x_1^2 + x_0 x_1 x_2 + x_0^2 + x_1 \\
\implies f^i &= 1  +x_1^2 + x_1 x_2 + x_1
,\]
which has terms of mixed degrees.
:::

::: {.remark}
\[  
(fg)^i &= f^i g^i \\
(f+g)^i &= f^i + g^i
.\]

In other words, evaluating at \( x_0 = 1 \) is a ring morphism.
:::

## Homogenization

::: {.definition title="Homogenization of a function"}
Let \( f\in k[x_1, \cdots, x_{n}] \), then the **homogenization** of \( f \) is defined by
\[  
f^h \coloneqq x_0^d f\qty{ {x_1 \over x_0}, \cdots, {x_n \over x_0} }
\]
where \( d\coloneqq\deg(f) \).
:::

::: {.example title="?"}
Set
\[  
f(x_1, x_2) &\coloneqq 1 + x_1^2 + x_1 x_2 + x_2^3 \\
\implies f^h(x_0, x_1, x_2) &= x_0^3 + x_0 x_1^2 + x_0 x_1 x_2 + x_2^3
,\]
which is a homogeneous polynomial of degree \( 3 \). Note that \( (f^h)^i = f \).
:::

::: {.example title="?"}
It need not be the case that \( (f^i)^h = f \). Take \( f = x_0^3 + x_0 x_1 x_2 \), then \( f^i = 1 + x_1 x_2 \) and \( (f^i)^h = x_0^2 + x_1 x_2 \). Note that the total degree dropped, since everything was divisible by \( x_0 \).
:::

::: {.remark}
\[  
(f^i)^h = f \iff x_0 \nmid f
.\]
:::

::: {.definition title="Homogenization of an ideal"}
Given \( J\subset k[x_1, \cdots, x_{n}] \), define its **homogenization** as
\[  
J^h \coloneqq\left\{{f^h {~\mathrel{\Big|}~}f\in J}\right\}
.\]
:::

::: {.example}
This is not a ring morphism, since \( (f+g)^h \neq f^h + g^h \) in general. Taking \( f = x_0^2 + x_1 \) and \( g= -x_0^2 + x_2 \), we have
\[  
f^h + g^h &= x_0 x_1 + x_0 x_2 \\ 
(f+g)^h &= x_1 + x_2
.\]
:::

What is the geometric significance?

::: {.proposition title="Geometric significance of homogenization"}
Set
\[
U_0 \coloneqq\left\{{{\left[ {x_0: \cdots :x_n} \right]} \in {\mathbb{P}}^n_{/k} {~\mathrel{\Big|}~}x_0 \neq 0 }\right\} \cong {\mathbb{A}}^n_{/k}
\]
with coordinates \( {\left[ {{x_1\over x_0} : \cdots : {x_n \over x_0}} \right]} \). Then \( U_0 \) with the subspace topology is equal to \( {\mathbb{A}}^n \) with the Zariski topology.
:::

::: {.proof title="?"}
If we define the Zariski topology on \( {\mathbb{P}}^n \) as having closed sets \( V_p(I) \), we would want to check that \( {\mathbb{A}}^n\cong U_0 \subset {\mathbb{P}}^n \) is closed in the subspace topology. This amounts to showing that \( V_p(I) \cap U_0 \) is closed in \( {\mathbb{A}}^n \cong U_0 \). We can check that
\[  
V_p\qty{f {~\mathrel{\Big|}~}f\in I} = \left\{{\mathbf{x} \coloneqq{\left[ {x_0:\cdots:x_n} \right]} {~\mathrel{\Big|}~}f(\mathbf{x}) = 0 \,\, \forall f\in I}\right\}
.\]
Intersecting with \( U_0 \) yields
\[  
V_p\qty{f{~\mathrel{\Big|}~}f\in I} \bigcap U_0 = \left\{{{\left[ {x_1:\cdots:x_n} \right]} {~\mathrel{\Big|}~}f(\mathbf{x}) = 0,\, x_0\neq 0}\right\}
.\]
Equivalently, we can rewrite this set \( S \) as
\[
S = \left\{{{\left[ {x_1:\cdots:x_n} \right]} {~\mathrel{\Big|}~}f\qty{{\left[ {1, {x_1 \over x_0}, \cdots,{x_n \over x_0} } \right]}} = 0,\, f \text{ homogeneous}}\right\}
\]
Since these are coordinates on \( {\mathbb{A}}^1 \), we have \( V_p(I) \cap U_0 = V_a(I^i) \) which is closed. Conversely, given a closed set \( V(I) \), we can write this as \( V(I) = U_0 \cap V_p(I^h) \).
:::

::: {.corollary title="Projective space is irreducible"}
\( {\mathbb{P}}^n_{/k} \) is irreducible of dimension \( n \).
:::

::: {.proof title="?"}
This follows from the fact that \( {\mathbb{P}}^n \) is covered by irreducible topological spaces of dimension \( n \) with nonempty intersection, along with a fact from the exercises.
:::

::: {.example title="?"}
Consider \( f(x_1, x_2) = x_1^2 - x_2^2 - 1 \) and consider \( V(f) \subset {\mathbb{A}}^2_{/{\mathbb{C}}} \):

![The variety \( V(x_1^2 - x_2^2 - 1) \)](figures/image_2020-11-10-10-10-42.png){width="350px"}

Note that for real projective space, we can view this as a sphere with antipodal points identified. We can thus visualize this in the following way:

![Projective 2-space as sphere with anitpodal points identified](figures/image_2020-11-10-10-12-20.png){width="350px"}

We can normalize the \( x_0 \) coordinate to one, hence the plane. We can also project \( V(f) \) from the plane onto the sphere, mirroring to antipodal points:

![Projecting a variety onto a sphere](figures/image_2020-11-10-10-14-09.png){width="350px"}

This misses some points on the equator, since we aren't including points where \( x_0 = 0 \). Consider the homogenization \( V(f^h) \subset {\mathbb{P}}^2_{/{\mathbb{C}}} \):
\[  
V(f^h) = V(x_1^2 - x_2^2 - x_0^2)
.\]
Then
\[  
V(f^h) \cap V(x_0) = \left\{{{\left[ {0:x_1:x_2} \right]} {~\mathrel{\Big|}~}f^h(0, x_1, x_2) = 0 }\right\} = \left\{{{\left[ {0:1:1} \right]}, {\left[ {0:1:-1} \right]}}\right\}
,\]
which can be seen in the picture as the points at infinity:

![Homogenization and points at infinity](figures/image_2020-11-10-10-19-19.png){width="550px"}

Note that the equator is \( V(x_0) = {\mathbb{P}}^2_{/{\mathbb{C}}}\setminus U_0 \cong {\mathbb{P}}^2\setminus{\mathbb{A}}^2 \). So we get a circle of points at infinity, i.e. \( V(x_0) = {\mathbb{P}}^1 = \left\{{{\left[ {0:v_1:v_2} \right]}}\right\} \).
:::

::: {.example title="?"}
Consider \( V(f) \) where \( f \) is a line in \( {\mathbb{A}}^2_{/{\mathbb{C}}} \), say \( f(x_1, x_2) = ax_1 + bx_2 + c \). This yields \( f^h = ax_1 + bx_2 + cx_0 \) and we can consider \( V(f^h) \cong {\mathbb{P}}^2_{{\mathbb{C}}} \). We know \( {\mathbb{P}}^1_{{\mathbb{C}}} \) is topologically a sphere and \( {\mathbb{A}}^1_{/{\mathbb{C}}} \) is a point:

![\( {\mathbb{P}}^1_{{\mathbb{C}}} \)](figures/image_2020-11-10-10-26-40.png){width="250px"}

The points at infinity correspond to
\[  
V(f^h) = V(f^h) \cap V(x_0) = \left\{{{\left[ {0:-b:a} \right]}}\right\}
,\]
which is a single point not depending on \( c \).
:::

::: {.remark}
\( {\mathbb{P}}^2_{/k} \) for any field \( k \) is a **projective plane**, which satisfies certain axioms:

1.  There exists a unique line through any two distinct points,

2.  Any two distinct lines intersect at a single point.

A famous example is the *Fano plane*:

![Fano Plane](figures/image_2020-11-10-10-29-34.png)

Why is this true? \( {\mathbb{P}}^2_{/k} \) is the set of lines in \( k^3 \), and the lines in \( {\mathbb{P}}^2_{/k} \) are the vanishing loci of homogeneous polynomials and also planes in \( k^3 \), since any two lines determine a unique plane and any two planes intersect at the origin.
:::

::: {.proposition title="?"}
Let \( J\subset k[x_1, \cdots, x_{n}] \) be an ideal. Let \( X \coloneqq V_a(J) \subset {\mathbb{A}}^n \) where we identify \( {\mathbb{A}}^n = U_0 \subset {\mathbb{P}}^n \). Then the closure \( \mkern 1.5mu\overline{\mkern-1.5muX\mkern-1.5mu}\mkern 1.5mu \subset {\mathbb{P}}^n \) is given by \( \mkern 1.5mu\overline{\mkern-1.5muX\mkern-1.5mu}\mkern 1.5mu = V_p(J^h) \). In particular,
\[
V_a(J) = V_p(J^h)
\]
:::

::: {.proof title="?"}
\( \supseteq \): It's clear that \( V_p(J^h) \) is closed and contains \( V_a(J) \).

\( \subseteq \) Let \( Y\supseteq X \) be closed; we want to show that \( Y\supseteq V_p(J^h) \). Since \( Y \) is closed, \( Y = V_p(J') \) where \( J' \) is some homogeneous ideal. Any element \( f'\in J' \) satisfies \( f' = x^d f \) for some maximal \( d \) where \( x_0^d f \) vanishes on \( X \). We also have \( f=0 \) on \( X \) since \( X\subset U_0 \). We can compute
\[  
f\in I_a(X) = I_a(V_a(J)) = \sqrt J
,\]
so \( f^m\in J \). Then \( (f^h)^m \in J^h \) for some \( m \), and this \( f^h \in \sqrt{J^h} \). So \( J'\subset \sqrt J \), which shows that \( V_p(J') \supseteq V_p(J^h) \) as desired.
:::

::: {.definition title="Projective Closure"}
The **projective closure** of \( X = V_a(J) \) is the smallest closed subset containing \( X \) and is given by
\[  
\mkern 1.5mu\overline{\mkern-1.5muX\mkern-1.5mu}\mkern 1.5mu = V_p(J^h)
.\]
:::

# Projective Closures (Thursday, November 12)

Recall that if \( f\in k[x_1, \cdots, x_{n}] \) is a homogeneous degree \( d \) polynomial, then
\[
f^i \coloneqq f(1, x_1, \cdots, x_n) \in k[x_1,\cdots, x_n]
\]
is the dehomogenization of \( f \). Conversely,
\[
f^h \coloneqq x_0^d f\qty{ {x_1 \over x_0}, \cdots, {x_n \over x_0} }
\]
is the homogenization. This is related to looking at the open subset \( U_0 \coloneqq\left\{{ x\in {\mathbb{P}}^n_{/k} {~\mathrel{\Big|}~}x_0\neq 0}\right\} \subseteq {\mathbb{P}}^n_{/k} \), where we found that \( U_0 \cong {\mathbb{A}}^n_{/k} \).

::: {.proposition title="Projective Closure"}
Let \( V(I) \subset U_0 \) be an affine variety, then \( V(I) \subset {\mathbb{P}}^n_{/k} \) is given by
\[
V(I^h) \coloneqq\left\{{f^h {~\mathrel{\Big|}~}f\in I}\right\}
,\]
the **projective closure**.
:::

::: {.remark}
Projective varieties are better! They're closed in the classical topology, and subsets of projective space and thus compact.
:::

::: {.warnings title="It doesn't suffice to just homogenize the individual generators of an ideal $I$"}
Take \( J \coloneqq\left\langle{x_1, x_2 - x_1^2}\right\rangle \). We have \( V(J) \subset {\mathbb{A}}^2 \) given by \( \left\{{(0, 0)}\right\} \), and by the proposition, \( V(J^h) = \left\{{[1:0:0]}\right\} \) since the single point at the origin is closed in \( {\mathbb{P}}^2 \).

On the other hand,
\[  
V_p(x_1, x_0 x_2 - x_1^2) = \left\{{[1:0:0], [0:0:1]}\right\} \subset {\mathbb{P}}^2
.\]

Note that \( x_2 \in J \), so this needs to be homogenized too.[^12]
:::

::: {.remark}
An aside: how do you implement algebraic geometry? For example, when is \( \left\langle{f_i}\right\rangle = \left\langle{1}\right\rangle \)? This is generally a somewhat difficult problem, since checking that their corresponding varieties are equal isn't so tractable.
:::

## Chapter ?

Goal: understand and define the sheaf of regular functions on projective varieties. Given an open subset \( U\subset V_p(J) \), what are the regular functions on it?

::: {.definition title="Regular Functions on Projective Varieties"}
Let \( U\subset X \) be an open subset of a projective variety, and define
\[  
{\mathcal{O}}_X(U) \coloneqq\left\{{\phi:U\to k {~\mathrel{\Big|}~}\phi \text{ is locally of the form }   {g_p \over f_p} \in S(X)_d }\right\}
.\]
i.e. the functions in the homogeneous coordinate ring of the same degree \( d \).
:::

::: {.remark}
Note that \( g_p/f_p \) is well-defined on \( V(f_p)^c \) since
\[  
{ g_p(\lambda \mathbf{x}) \over  f_p(\lambda \mathbf{x})} 
= { \lambda^d g_p(\mathbf{x}) \over \lambda^d f_p(\mathbf{x}) }
= {g_p(\mathbf{x}) \over f_p (\mathbf{x})}
\]
:::

Recall that "locally of the form \( \cdots \)" means that for all \( p\in U \), there exists an open neighborhood \( U_p \) on which \( { \left.{{\phi}} \right|_{{U_p}} } = g_p / f_p \).

::: {.definition title="Projective Variety as a Ringed Space"}
Note that if \( X\subset {\mathbb{P}}^n \) is closed, then \( X\cap U_i \) is closed and thus an affine variety.
\[  
\tilde {\mathcal{O}}_X(U) \coloneqq\left\{{\phi: U\to k {~\mathrel{\Big|}~}{ \left.{{\phi}} \right|_{{U\cap U_i}} } \text{ is a regular function} }\right\}
.\]
:::

::: {.proposition title="?"}
These two definitions are equivalent.
:::

::: {.proof title="?"}
It suffices to check that \( {\mathcal{O}}_{X\cap U_i} = \tilde {\mathcal{O}}_{X\cap U_i} \) as sheaves on \( X\cap U_i \), i.e. checking on an open cover, since then they'd both arise from the gluing construction. We have
\[  
X\cap U_i = \left\{{[x_0 : \cdots: x_n] {~\mathrel{\Big|}~}x_i \neq 0 }\right\}
.\]

Let \( V\subset X\cap U_0 \) be an open subset, we then want to show that \( {\mathcal{O}}_X(V) \) are the regular functions on \( V \) when \( V \) as a subset of an affine variety. So let \( \phi\in {\mathcal{O}}_X(V) \), so that locally \( \phi = g_p/f_p \in S(X)_d \) as a ratio of two homogeneous polynomials. We want to know if \( \phi \) can be written as the ratio of two polynomials in one additional variable, so we just dehomogenize to obtain \( \phi = g^i_p / f^i_p \) locally where both are in \( A(X\cap U_0) \). So \( \phi \) is a regular function on the open subset \( V \) of the affine variety \( X\cap U_0 \).\

Conversely, suppose that \( \phi = g_p/f_p \in A(X\cap X_0) \) locally around \( p \). It's not necessarily the case that \( \phi = g^h_p / f^h_p \), but it is true that
\[  
\phi = {x_0^d g_p^h \over f_p^h} = {g_p^h \over x_0^{-d} f_p^h}
,\]
where \( d = \deg f^h - \deg g^h \). This is locally a ratio of two homogeneous polynomials of equal degree, so \( {\mathcal{O}}_X \) and \( \tilde {\mathcal{O}}_X \) define the same sheaf of functions on \( X \).
:::

## Morphisms of Projective Varieties

::: {.lemma title="?"}
Let \( X \) be a projective variety and \( f_0, \cdots, f_m \in S(X)_d \). Then on the open subset \( X\setminus V(f_i) \), there is a morphism
\[  
f: U &\to {\mathbb{P}}^m \\
p &\mapsto {\left[ {f_0(p) : \cdots : f_m(p) } \right]}
.\]
:::

::: {.proof title="?"}
This map is well-defined, since letting \( p = [x_0: \cdots : x_n] \) we have
\[  
[\lambda x_0 : \cdots : \lambda x_n] 
&\mapsto 
[ \lambda^d f_0(p) : \cdots : \lambda^d f_m(p)] 
= f(p)
.\]

We need to check that

1.  \( f \) is continuous, and

2.  The pullback of a regular function on any open set is again regular.

::: {.claim}
\( f \) is continuous.
:::

Consider \( f^{-1}(V(h)) \) with \( h\in k[y_0, \cdots, y_m] \) homogeneous. We can check that
\[  
f^{-1}(V_p(h)) = V_p(h(f_0, \cdots, f_m))
,\]
which is closed, so \( f \) is continuous.

::: {.claim}
\( f \) pulls back regular functions.
:::

Let \( h_1, h_2 \in S({\mathbb{P}}^m) \) be homogeneous polynomials of equal degree in \( k[y_0, \cdots, y_m] \). Then on \( V(h_2)^c \), we have
\[  
f^*\qty{h_1 \over h_2 } = {h_1(f_0, \cdots, f_m) \over h_2(f_0, \cdots, f_m)}
.\]
This is a ratio of homogeneous polynomials of equal degree in the \( x_i \), the pullback is again locally homogeneous ratios of functions of equal degree.
:::

# Projections and Embeddings (Tuesday, November 17)

## Projecting From a Point

We have \( {\mathbb{P}}^n \coloneqq{\mathbb{A}}^{n+1}\setminus\left\{{0}\right\}/ \sim \) where \( x\sim \lambda x \), and projective varieties \( V(I) \subset {\mathbb{P}}^n \) where \( I {~\trianglelefteq~}k[x_0, \cdots, x_n] \) is a homogeneous ideal. We defined a sheaf of rings \( {\mathcal{O}}_X \) on \( X = V(I) \) by
\[  
{\mathcal{O}}_X(U) \coloneqq\left\{{\phi: U\to k {~\mathrel{\Big|}~}\phi \text{ is locally a ratio of two homogeneous polynomials of equal degree}}\right\}
.\]
We showed that this was the same as the sheaf \( \tilde {\mathcal{O}}_X \) defined by gluing ringed spaced \( (X \cap U_i, {\mathcal{O}}_{X\cap U_i}) \) where \( U_i = D(x_i) \). We also showed that \( S(X) \coloneqq k[x_0, \cdots, x_n] / I(X) \) is homogeneous, i.e. the quotient by a homogeneous ideal is again homogeneous. Moreover, if \( \left\{{f_i}\right\}_{i=0}^m \subseteq S(X)_d \) and \( V(\left\{{f_i}\right\}) = \emptyset \). then the map
\[  
(f_0, \cdots, f_m): X &\to {\mathbb{P}}^m \\
x &\mapsto [f_0(x), \cdots, f_m(x)]
.\]

Recall that a variety is separated iff \( \Delta \hookrightarrow X \) is closed. Let \( A\in \operatorname{GL}_{n+1}(k) \) and define a map
\[  
A: {\mathbb{P}}^n &\to {\mathbb{P}}^n \\
\begin{bmatrix}
x_0  \\
\vdots \\
x_n 
\end{bmatrix}
&\mapsto
A
\begin{bmatrix}
x_0  \\
\vdots \\
x_n 
\end{bmatrix}
.\]

This is a morphism because
\[  
\begin{bmatrix}
- & \vec A_0 & - \\
- & \vdots & - \\
- & \vec A_n & - \\
\end{bmatrix}
\begin{bmatrix}
x_0  \\
\vdots \\
x_n 
\end{bmatrix}
=
\begin{bmatrix}
A_0 \cdot \mathbf{x}  \\
\vdots \\
A_n \cdots \mathbf{x} 
\end{bmatrix}
,\]
which are linear homogeneous polynomials.

Then \( V_p(A_i \cdot \mathbf{x}) = \emptyset \), and thus \( V_a(A_i \cdot \mathbf{A}) = \left\{{0}\right\} \). So we should view \( A\in \operatorname{PGL}_{n+1}(k) \). Note that this is a group, since \( A^{-1} \) again forms a morphism. Thus \( \operatorname{PGL}_{n+1}(k) \subset {\operatorname{Aut}}({\mathbb{P}}^n) \), and it turns out that these are in fact equal.

::: {.definition title="Projection from a point"}
Let \( a = [1: 0 : \cdots : 0] \in {\mathbb{P}}^n \), then there is a morphism
\[  
{\mathbb{P}}^n \setminus\left\{{a}\right\} &\to {\mathbb{P}}^{n-1} \\
[x_0: \cdots : x_n] &\mapsto [x_1: \cdots : x_n]
.\]
Note that this morphism does not extend to \( {\mathbb{P}}^n \). More generally, given any point \( p\in {\mathbb{P}}^n \), we can project from it by making a linear change of coordinates to \( p = [1: 0 : \cdots : 0] \).
:::

Let \( x\in {\mathbb{P}}^n\setminus\left\{{a}\right\} \), then there is a unique line through \( a \) and \( x \). It can be described parametrically as follows: writing \( x = [x_0: \cdots : x_n] \), we take the plane they span and projectivize to obtain \( s[x_0 : \cdots : x_n] + t [1: 0 : \cdots : 0] \) where we range over \( [s: t] \in {\mathbb{P}}^1 \). In fact, this defines a morphism \( {\mathbb{P}}^1 \to {\mathbb{P}}^n \).

Consider now \( {\mathbb{P}}^{n-1} = V(x_0) \), this copy of \( {\mathbb{P}}^{n-1} \) intersects any such line at a unique point:

![Copy of \( {\mathbb{P}}^{n-1} \) intersecting a line.](figures/image_2020-11-17-10-10-32.png){width="550px"}

::: {.example title="?"}
Consider \( X = V(x_0 x_2 - x_1^2) \subset {\mathbb{P}}^2 \), which defines a conic, and the projection \( {\mathbb{P}}^2 \setminus\left\{{[1:0:0]}\right\} \to {\mathbb{P}}^1 \):

![Projection from \( V(x_0 x_2 - x_1^2) \) onto \( V(x_0) \).](figures/image_2020-11-17-10-13-40.png)

This morphism can be restricted to \( \phi: X\setminus\left\{{[1:0:0]}\right\} \to {\mathbb{P}}^2 \), and the claim is that this morphism extends to all of \( X \). The secant lines approach a tangent line at \( [1:0:0] \), which \( V(x_0) \) at a unique point. So we define
\[  
\mkern 1.5mu\overline{\mkern-1.5mu\phi\mkern-1.5mu}\mkern 1.5mu(x) \coloneqq
\begin{cases}
[x_1: x_2] & x \neq [1:0:0] \\
[x_0: x_1] & x \neq [0:0:1]
\end{cases}
.\]

This locally writes \( \phi \) as a morphism, so we only need to check that they agree on the overlap. Note that on \( X \), we have \( [x_1: x_2] = [x_0 : x_1] \) wherever both are well-defined. In fact, \( \mkern 1.5mu\overline{\mkern-1.5mu\phi\mkern-1.5mu}\mkern 1.5mu \) is an isomorphism, since an inverse can be explicitly written. Thus \( X\cong {\mathbb{P}}^1 \), and in fact all nondegenerate[^13] conics are isomorphic to \( {\mathbb{P}}^1 \) as well. Note that such a \( Q \) is a quadratic form, so \( Q(x) = B(x, x) \) for some bilinear form, and \( Q \) is nondegenerate iff \( \det B \neq 0 \) where \( B_{ij} = B(e_i, e_j) \).
:::

## The Segre Embedding

::: {.definition title="Segre Embedding"}
Letting \( N = (n+1)(m+1) - 1 \), the **Segre embedding** is the morphism
\[  
f: {\mathbb{P}}^n \times{\mathbb{P}}^m &\to {\mathbb{P}}^N \\
([x_0: \cdots : x_n], [y_0: \cdots : y_m]) &\mapsto
[x_0 y_0 : \cdots : z_{ij} \coloneqq x_i y_j : x_n y_m]
.\]
:::

Note that \( {\mathbb{P}}^n, {\mathbb{P}}^m \) are prevarieties and we thus know how to construct their product as a prevariety. Check that this is well-defined!

::: {.proposition title="Properties of the Segre embedding"}
```{=tex}
\envlist
```
a.  The image \( X \) is a projective variety.

b.  \( f: {\mathbb{P}}^n \times{\mathbb{P}}^m \to X \) is a morphism.
:::

::: {.proof title="of (a)"}
It suffices to write polynomials in the coordinate \( z_{ij} \) that cut out \( f({\mathbb{P}}^n \times{\mathbb{P}}^m) \). Given \( z_{ij} = x_i y_j \), we have \( z_{ij} z_{kl} = z_{il} z_{kj} \) and \( (x_i y_j)(x_k y_l) = (x_i y_l)(x_k y_j) \). The former quadric equations in \( z_{ij} \) variables vanish on \( f({\mathbb{P}}^n \times{\mathbb{P}}^m) \).

::: {.claim}
\( V(z_{ij} z_{kl} - z_{il} z_{kj}) \) works.
:::

Without loss of generality, we can assume \( z_{00} = 1 \), in which case \( z_{ij} z_{00} = z_{ij} = z_{i0} z_{0j} \) on \( X \). Setting \( x_i = z_{i0} \) and \( y_j = z_{0j} \), we've now constructed a point in the preimage, so \( f \) surjects onto \( X \).
:::

::: {.proof title="of (b)"}
That \( f \) is a morphism to \( {\mathbb{P}}^n \) is easy, and since \( \operatorname{im}f \subset X \), \( f: {\mathbb{P}}^n \times{\mathbb{P}}^m \to X \) is a morphism. On \( D(z_{00}) \subset X \), the inverse described above is a morphism. Since this works for any \( z_{ij} \), \( f^{-1} \) is well-defined and a morphism, making \( f \) an isomorphism.
:::

::: {.example title="of the Segre embedding being isomorphic to a variety"}
Take

\[  
f: {\mathbb{P}}^1 \times{\mathbb{P}}^1 &\to {\mathbb{P}}^3 \\
\qty{ {\left[ {x_0: x_1} \right]}, {\left[ {y_0: y_1} \right]}} &\mapsto {\left[ {z_{00} : z_{01} : z_{10} : z_{11} } \right]} \coloneqq{\left[ {x_0 y_0: x_0 y_1 : x_1 y_0 : x_1 y_1} \right]}
.\]
Restricting to \( \operatorname{im}(f) \) yields an isomorphism to \( X \subseteq {\mathbb{P}}^3 \) given by the quadric[^14] \( X = V(z_{00} z_{11} - z_{10} z_{01} ) \).
:::

# Projective Varieties (Thursday, November 19)

## Why use projective varieties?

For e.g. a manifold, there is a well-defined intersection pairing, and the same way that \( [\mu] \in H^1(T, {\mathbb{Z}}) = 1 \) in the torus, we have \( [L]^2 = 1 \) in \( {\mathbb{P}}^2_{/{\mathbb{C}}} \), so every two lines intersect in a unique point. Also, Bezout's theorem: any two curves of degrees \( d, e \) in projective space intersect in \( d\cdot e \) points. Also note that we have a notion of compactness that works in the projective setting but not for affine varieties.

## Projective Varieties are Varieties

Last time: we saw the Segre embedding \( (\mathbf{x}, \mathbf{y})\mapsto [x_i y_j] \), which was an isomorphism onto its image \( X = V(z_{ij}z_{kl} - z_{ik} z_{kj} ) \), which exhibits \( {\mathbb{P}}^n \times{\mathbb{P}}^m \) as a projective variety.

::: {.example title="?"}
For \( {\mathbb{P}}^1 \times{\mathbb{P}}^1 \to {\mathbb{P}}^3 \), its image is \( X = V_p(xy - zw) \), which is a quadric (vanishing locus of a degree 4 polynomial).

![\( {\mathbb{P}}^1 \times{\mathbb{P}}^1 \) is ruled.](figures/image_2020-11-19-09-45-47.png){width="350px"}

The projection map has fibers, which induce a **ruling**[^15] which we can see from the real points:

![Its image, a quadric surface, is also ruled.](figures/image_2020-11-19-09-46-38.png){width="350px"}
:::

::: {.corollary title="?"}
Every projective variety is a separated prevariety, and thus a variety.
:::

::: {.proof title="?"}
It suffices to show that \( \Delta_X \subset X\times X \) is closed. We can write
\[  
\Delta_{{\mathbb{P}}^n} = 
\left\{{
[x_0: \cdots: x_n], [y_0: \cdots : y_n] {~\mathrel{\Big|}~}
x_i y_j - x_j y_i = 0 \, \forall i, j
}\right\}
.\]
This says that \( \mathbf{x}, \mathbf{y} \) differ by scaling. We know that \( \Delta_{{\mathbb{P}}^n} \hookrightarrow{\mathbb{P}}^n \times{\mathbb{P}}^n \), which is isomorphic to the Segre variety \( S_V \) in \( {\mathbb{P}}^{(n+1)^2 -1} \), and we can write \( z_{ij} = x_i y_j \) and thus
\[  
\Delta_{{\mathbb{P}}^n} = S_V \cap V(z_{ij} - z_{ji})
.\]
Note that the Segre variety is closed. The conclusion is that \( {\mathbb{P}}^n \) is a variety, and any closed subprevariety of a variety is also a variety by taking \( \Delta_{{\mathbb{P}}^n} \cap(X\times X) = \Delta_X \), which is closed as the intersection of two closed subsets.
:::

::: {.definition title="Closed Maps"}
Recall that a map \( f:X\to Y \) is topological spaces is **closed** if whenever \( U \subset X \) is closed, then \( f(U) \) is closed in \( Y \).
:::

::: {.definition title="Complete Varieties"}
A variety \( X \) is **complete** if the projection \( \pi_Y: X\times Y \twoheadrightarrow Y \) is a closed map for any \( Y \).
:::

::: {.slogan}
Completeness is the analog of compactness for varieties.
:::

::: {.proposition title="Projection maps from products of projective spaces are closed."}
The projection \( {\mathbb{P}}^n \times{\mathbb{P}}^m \to {\mathbb{P}}^m \) is closed.
:::

::: {.proof title="?"}
Let \( Z \subset {\mathbb{P}}^n \times{\mathbb{P}}^m \), and write \( Z = V(f_i) \) with \( f_i \in S(S_V) \). Note that if the \( f_i \) are homogeneous of degree \( d \) in \( z_{ij} \), the pulling back only the isomorphism \( {\mathbb{P}}^n\times{\mathbb{P}}^m \to S_V \) yields \( z_{ij} = x_i y_j \) and polynomials \( h_i \) which are homogeneous polynomials in \( x_i, y_j \) which have degree \( d \) in both the \( x \) and \( y \) variables individually. Consider \( a\in {\mathbb{P}}^m \), we want to determine if \( a\in \pi(Z) \) and show that this is a closed condition. Note that \( a\not\in \pi(Z) \)

-   \( \iff \) there does not exists an \( x\in {\mathbb{P}}^n \) such that \( (x, a) \in Z \)

-   \( \iff \) \( V_p(f_i(x, a))_{i=1}^r = \emptyset \)

-   \( \iff \) \( \sqrt{\left\langle{f_i(x, a)}\right\rangle_{i=1}^r } = \left\langle{1}\right\rangle \) or the irrelevant ideal \( I_0 \)

-   \( \iff \) there exist \( k_i \in {\mathbb{N}} \) such that \( x_i^{k_i} \in \left\langle{f_i(x, a)}\right\rangle_{i=1}^r \)

-   \( \iff \) \( k[x_1, \cdots, x_{n}]_k \subset \left\langle{f_i(x, a)}\right\rangle_{i=1}^r \) (where this is the degree \( k \) part)

-   \( \iff \) the map
    \[  
    \Phi_a: k[x_1, \cdots, x_{n}]_{d - \deg f_2} \oplus \cdots \oplus k[x_1, \cdots, x_{n}]_{d - \deg f_r} &\to k[x_1, \cdots, x_{n}]_d \\
    (g_1, \cdots, g_r) &\mapsto \sum f_i(x, a) g_i (x, a)
    \]
    is surjective.

Recap: we have a closed subset of \( {\mathbb{P}}^n \times{\mathbb{P}}^m \), want to know its projection is closed. We looked at points not in the closed set, this happens iff the degree \( d \) part of the polynomial is not contained in the part where we evaluate by \( a \). This reduces to a linear algebra condition: taking arbitrary linear combinations yields a surjective map. Thus \( a\in \pi(Z) \) iff \( \Phi_a \) is *not* surjective.\

Expanding in a basis, we can write \( \Phi_a \) as a matrix whose entries are homogeneous polynomials in the coordinates of \( a \). Moreover, \( \Phi_a \) is not surjective iff all \( d\times d \) determinants of \( \Phi_a \) are nonzero (since this may not be square). This is a polynomial condition, so \( a\in \pi(Z) \) iff a bunch of homogeneous polynomials vanish, making \( \pi(Z) \) is closed.
:::

::: {.corollary title="$\\PP^n$ is complete."}
The projection \( \pi: {\mathbb{P}}^n\times Y\to Y \) is closed for any variety \( Y \) and thus \( {\mathbb{P}}^n \) is complete.
:::

::: {.proof title="?"}
How to prove anything for varieties: use the fact that they're glued from affine varieties, so prove in that special case. So first suppose \( Y \) is affine. Let \( Z \subset {\mathbb{P}}^n \times Y \) be closed, and consider \( \mkern 1.5mu\overline{\mkern-1.5muY\mkern-1.5mu}\mkern 1.5mu ss {\mathbb{P}}^m \) and
\[
\mkern 1.5mu\overline{\mkern-1.5muZ\mkern-1.5mu}\mkern 1.5mu \subset{\mathbb{P}}^n \times\mkern 1.5mu\overline{\mkern-1.5muY\mkern-1.5mu}\mkern 1.5mu \subset{\mathbb{P}}^n \times{\mathbb{P}}^m
\]
as a closed subset. Then we know that the projection \( \pi: {\mathbb{P}}^n \times{\mathbb{P}}^m \to {\mathbb{P}}^m \) is closed, so \( \pi(\mkern 1.5mu\overline{\mkern-1.5muZ\mkern-1.5mu}\mkern 1.5mu) \subset{\mathbb{P}}^m \) is closed. But we can write
\[
\pi(Z) = \pi(\mkern 1.5mu\overline{\mkern-1.5muZ\mkern-1.5mu}\mkern 1.5mu \cap{\mathbb{P}}^n \times Y) = \pi(\mkern 1.5mu\overline{\mkern-1.5muZ\mkern-1.5mu}\mkern 1.5mu) \cap Y
\]
which is closed. So \( \pi(Z) \) is closed in \( Y \), which proves this for affine varieties.\

Supposing now that \( Y \) is instead glued from affines, it suffices to check that the set is closed in an open cover. So \( Z \subset X \) is closed if when we let \( X = \cup U_i \), we can show \( Z \cap U_i \) is closed. But this essentially follows from above.
:::

::: {.corollary title="Projective varieties are complete."}
Any projective variety is complete.
:::

::: {.proof title="?"}
If \( X \subset {\mathbb{P}}^n \) is closed and if \( {\mathbb{P}}^n \times Y\to Y \) is a closed map for all \( Y \), then restricting to \( X\times Y\to Y \) again yields a closed map.
:::

::: {.corollary title="Images of varieties under morphisms are closed."}
Let \( f:X\to Y \) be a morphism of (importantly) *varieties* and suppose \( X \) is complete. Then \( f(X) \) is closed in \( Y \).
:::

::: {.proof title="?"}
Consider the graph of \( f \),
\[
\Gamma_f = \left\{{(x, f(x))}\right\} \subset X\times Y
\]
From a previous proof, we know \( \Gamma_f \) is closed when \( Y \) is a variety (by pulling back a diagonal). So \( \Gamma_f \) is closed in \( X\times Y \), and thus \( \pi_Y(\Gamma_f) = f(X) \) is closed because \( X \) is complete.
:::

The next result is an analog of the maximum modulus principle: if \( X \) is a compact complex manifold, then any function that is holomorphic on all of \( X \) is constant.

::: {.corollary title="Maximum modulus principle for varieties"}
Let \( X \) be complete, then \( {\mathcal{O}}_X(X) = k \), i.e. every global regular function is constant.
:::

::: {.proof title="?"}
Suppose \( \phi X\to {\mathbb{A}}^1 \) is a regular function. Since \( {\mathbb{A}}^1 \subset {\mathbb{P}}^1 \), extend \( \phi \) to a morphism \( \widehat{\phi}: X\to PP^1 \). By a previous corollary, \( \phi(X) \) is closed, but \( \infty \not\in \phi(X) \) implies \( \phi(X) \neq {\mathbb{P}}^2 \), so \( \phi(X) \) is finite. Since \( X \) is connected, \( \phi(X) \) is a point, making \( \phi \) a constant map.
:::

# Embeddings and Smoothness (Tuesday, November 24)

## The Veronese Embedding

::: {.definition title="Veronese Embedding"}
Let \( n, d > 0 \) and let \( f_0, \cdots, f_n \) be the monomials of degree \( d \) in \( k[x_1, \cdots, x_{n}] \). There is a morphism
\[  
{\mathbb{P}}^n \setminus V(f_0,\cdots , f_n) &\to {\mathbb{P}}^N \\
\mathbf{x} &\mapsto [f_0(\mathbf{x}), \cdots, f_N(\mathbf{x})]
,\]
where \( N+1 \) is the number of monomials, and is equal to \( {n+d \choose d} \).
:::

::: {.remark}
It is true that \( V(f_0, \cdots, f_N) \neq \emptyset \), since \( V(x_0^d, x_1^d, \cdots, x_n^d) = V(x_0, \cdots, x_n) \). This will be the Veronese embedding, although we need to prove it is an embedding. On an open set \( D(x_0) \subset {\mathbb{P}}^2 \) one can define an inverse. Suppose we have a coordinate \( z_j = x_i^{d-1} x_j \) and \( z_i = x_i^d \) on \( {\mathbb{P}}^N \). Then we can take the point
\[  
{\left[ { {z_1 \over z_i}, \cdots, {z_i \over z_i}, \cdots, {z_n \over z_i} } \right]}
.\]
This defines an inverse on \( D(z_i) \). Since the open sets \( D(x_i) \) cover \( {\mathbb{P}}^N \), we have an inverse on the entire image.
:::

### Exchanging Hypersurface Sections for Hyperplane Sections

::: {.remark}
This embedding converts hypersurfaces of degree \( d \) into hyperplanes. The Veronese is an isomorphism onto its image. Consider some arbitrary degree \( d \) element of \( S({\mathbb{P}}^n) \). Consider \( X \coloneqq V(\sum_{j=1}^N a_j f_j) \subset{\mathbb{P}}^n \), where \( a_j\in k \), which is equal to \( \phi^{-1}(V(\sum_{j=1}^N a_j w_j )) \).

```{=tex}
\todo[inline]{Probably not right.}
```
We have a picture: embedding \( {\mathbb{P}}^n\hookrightarrow{\mathbb{P}}^N \) in some curved way sends a hypersurface to the intersection of a hyperplane with the embedded image:

![Embedding a hypersurface into a hyperplane.](figures/image_2020-11-24-09-48-27.png){width="550px"}
:::

::: {.definition title="Hyperplane Sections"}
Let \( X \subset{\mathbb{P}}^n \) be a projective variety. A **hyperplane section** is the intersection of \( X \) with some hyperplane \( H \coloneqq V(f) \) for \( f \) some linear homogeneous polynomial.
:::

::: {.example title="of the Veronese embedding"}
Let \( n=1 \), then we get the embedding
\[  
{\mathbb{P}}^1 &\hookrightarrow{\mathbb{P}}^d \\
[x_0: x_1] &\mapsto [x_0^d: x_0^{d-1}x_1 : \cdots : x_0 x_1^{d-1} : x_1^d]
.\]
Note that there are \( d+1 \) such monomials, and not all can simultaneously vanish. The image of this \( {\mathbb{P}}^1 \) is called the *twisted normal curve*.
:::

::: {.example title="?"}
Take
\[  
{\mathbb{P}}^1 &\hookrightarrow{\mathbb{P}}^2 \\
[x_0 : x_1] &\mapsto [x_0^2 : x_0 x_1: x_1^2]
.\]
What homogeneous polynomials cut out \( \phi({\mathbb{P}}^1) \)? I.e., what is \( I(\phi({\mathbb{P}}^1)) \subset S({\mathbb{P}}^2) \)? Note that \( w_0 w_2 - w_1^2 { \left.{{}} \right|_{{\phi({\mathbb{P}}^1)}} } \), so this is an element. Is it a generator? I.e., given any \( p\in V(w_0 w_2 - w_1^2) \) is of the form \( p = [x_0^2 : x_0 x_1: x_1^2] \) for some \( x_), x_1 \in k \)? The answer is yes, by choosing signs of \( \sqrt{w_0}, \sqrt{w_2} \).
:::

::: {.example title="?"}
Take
\[  
\phi: {\mathbb{P}}^1 &\hookrightarrow{\mathbb{P}}^3 \\
[x_0: x_1] &\mapsto [x_0^3: x_0^2 x_1 : x_0 x_1^2: x_1^3]
.\]
What are some elements of this ideal?

-   \( w_0 w_3 - w_1 w_2 \)
-   \( w_0 w_2 - w_1^2 \)
-   \( w_1 w_3 - w_2^2 \)

Note that the first is not a \( k{\hbox{-}} \)linear combination of the other two. There is also a pattern: \( w_0/w_1 = w_1 / w_2 = w_2/w_3 = \cdots \). However, there will be issues when the denominators are zero.

In this case, \( \phi({\mathbb{P}}^1) \) is the *twisted cubic*. What is \( V(w_0 w_2 - w_1^2, w_1 w_3 - w_2^2) \setminus\phi({\mathbb{P}}^1) \)? Note that being in \( \phi({\mathbb{P}}^1) \) means \( w_1, w_2, w_3 \neq 0 \), and similarly if \( w_0, w_1, w_2 \neq 0 \). We can conclude that \( V(w_1, w_2) \subset V(w_0 w_2 - w_1^2, w_1 w_3 - w_2^2) \):

![Image](figures/image_2020-11-24-10-16-35.png){width="350px"}

This variety has two components: the twisted cubic, and a line. This variety has degree 4, since any generic hyperplane intersects it at 4 points. Why? Pulling back a hyperplane yields a cubic, which generally vanishes at three points in affine space.
:::

::: {.remark}
\( \phi({\mathbb{P}}^1) \) is a nice example of a curve in \( {\mathbb{P}}^3 \) that can not be cut out by two homogeneous polynomials.
:::

::: {.remark}
This is usually used to embed intersections like \( X\cap V(f) \) to \( X\cap H \), exchanging a hypersurface section for a hyperplane section. This is useful for induction:

1.  Prove for \( {\mathbb{P}}^n \).
2.  Induction: If it's true for \( X \subset{\mathbb{P}}^n \), then it's true for \( X \cap H \) for some hyperplane \( H \subset{\mathbb{P}}^N \).

This will prove it for any projective variety by taking \( X = V(f_1, \cdots, f_n) \) and embedding.
:::

## The Tangent Space (Chapter 10)

Motivation: we want to distinguish between things like \( V(xy) \) and \( V(xy-1) \). Over \( {\mathbb{C}} \), we can distinguish these: one is a complex manifold, and the other is not.

![\( V(xy-1) \) is a manifold in \( {\mathbb{C}}^2 \)](figures/image_2020-11-24-10-31-47.png){width="350px"}

This means we want each point to have a neighborhood biholomorphic to a disc.

::: {.definition title="Tangent Space"}
Let \( a\in X \) be a point on a variety \( X \). Choose an affine open set containing \( a \) and a chart such that \( a \) is the origin, then define
\[  
T_a X \coloneqq V(f_1 {~\mathrel{\Big|}~}f\in I(X))
,\]
where \( f_1 \) denotes the linear part of \( f \).

![Tangent space at a point.](figures/image_2020-11-24-10-38-10.png){width="350px"}
:::

::: {.remark}
Since \( 0=a \), any \( f\in I(X) \) has no constant term -- otherwise \( f \) would not vanish at the origin.
:::

::: {.example title="?"}
Consider \( T_{(1, 1)} V(xy-1) \). First translate \( (1, 1) \) to the origin, so
\[
T_{(1, 1)} V(xy-1) = T_{(0, 0)} = V((x-1)(y-1) - 1) = T_{(0, 0)} V(xy-x-y) = V(-x-y)
\]
On the other hand, \( T_{(0, 0)} V(xy) = V(0) = {\mathbb{C}}^2 \).

![Image](figures/image_2020-11-24-10-41-13.png){width="550px"}
:::

# The Tangent Space and Smoothness (Tuesday, December 01)

::: {.definition title="Tangent Space"}
The **tangent space** \( T_p X \) of a variety \( X \) at a point \( p\in X \) is defined as
\[
V\qty{\left\{{f_1 {~\mathrel{\Big|}~}f\in I(U_i),\, U_i \ni p = 0 \text{ affine } }\right\}}
\]
where \( f_1 \) denotes the degree 1 part.

![Image](figures/image_2020-12-01-09-40-28.png){width="550px"}
:::

::: {.remark}
We've really only defined it for affine varieties and \( p=0 \), but this is a local definition. Note that this is also not a canonical definition, since it depends on the affine chart \( U_i \).
:::

## Computing Tangent Spaces

::: {.example title="?"}
Consider
\[
T_0 V(xy) = V(f_1 {~\mathrel{\Big|}~}f\in \left\langle{xy}\right\rangle) = V(0) = {\mathbb{A}}^2
,\]
since every polynomial in this ideal has degree at least 2. Letting \( X = V(xy) \), note that we could embed \( X\hookrightarrow{\mathbb{A}}^3 \) as \( X\cong V(xy, z) \). In this case we have
\[
T_0 X = V(f_1 {~\mathrel{\Big|}~}f\in \left\langle{xy, z}\right\rangle) = V(z) \cong {\mathbb{A}}^2
\]
So we get a vector space of a different dimension from this different affine embedding, but \( \dim T_0 X \) is the same.
:::

::: {.example title="?"}
Let \( X = V_p(xy-z^2) \subset {\mathbb{P}}^2 \), which is a projective curve. What is \( T_p X \) for \( p = [0:1:0] \)? Take an affine chart \( \left\{{y\neq 0}\right\} \cap X \), noting that \( \left\{{y\neq 0}\right\} \cong {\mathbb{A}}^2 \). We could dehomogenize the ideal \( { \left.{{\left\langle{xy-z^2}\right\rangle}} \right|_{{y=1}} } = \left\langle{x-z^2}\right\rangle \). Thus \( X \cap D(y) = V(x-z^2) \subset {\mathbb{A}}^2 \) and the point \( [0:1:0] \in X \) gives \( (0, 0) \) in this affine chart. Then
\[
T_p X = V(f_1 {~\mathrel{\Big|}~}f\in \left\langle{x-z^2}\right\rangle) = V(x)
\]
Then \( f = (x-z^2)g \) implies that \( f_1 = (xg)_1 = g_0 x \), the constant term of \( g \) multiplied by \( x \), since \( z^2 \) kills any degree 1 part of \( g \). So \( T_p X \) is a line.
:::

::: {.example title="?"}
Take \( X \) to be the union of the coordinate axes in \( {\mathbb{A}}^3 \):

![The coordinate axes in \( {\mathbb{A}}^3 \).](figures/image_2020-12-01-09-54-30.png){width="350px"}

Then \( I(X) = \left\langle{xy, yz, xz}\right\rangle \) and
\[
T_0 X = V(f_1 {~\mathrel{\Big|}~}f\in I(X)) = V(0) = {\mathbb{A}}^3
\]
since the minimal degree of any such polynomial is 2. Note that \( \dim X = 1 \) but \( \dim T_0 X = 3 \)
:::

::: {.example title="?"}
Take \( Y = V(xy(x-y)) \subset {\mathbb{A}}^2 \):

![\( V(xy(x-y)) \) in \( {\mathbb{A}}^2 \).](figures/image_2020-12-01-09-59-06.png){width="350px"}

Then \( T_0 X = V(0) = {\mathbb{A}}^2 \).
:::

::: {.remark}
Note that \( X \) and \( Y \) both consists of 3 copies of \( {\mathbb{A}}^1 \) intersecting at a single point.

![Comparing \( X \) and \( Y \).](figures/image_2020-12-01-10-01-58.png){width="550px"}

Note that \( \dim T_0 X = 3 \) but \( \dim T_0 Y = 2 \), and interestingly \( X\not\cong Y \) as affine varieties. There is a bijective morphism that is not invertible.
:::

::: {.remark}
We will prove that \( \dim T_p X \) is invariant under choice of affine embedding.
:::

::: {.example title="How to compute $T_{(1,0,0)} V(xy, yz, xz)$"}
First move \( (1,0,0) \) to the origin, yielding \( T_{(0,0,0)} V((x+1)y, yz, (x+1) z) \). This is a different choice of affine embedding into \( {\mathbb{A}}^3 \) which sends \( (1,0,0) \mapsto (0,0,0) \). Taking the vanishing locus of linear parts, it suffices to take the linear parts of the generators, which yields the \( x{\hbox{-}} \)axis \( V(y, z) \), making the dimension of the tangent space 1.
:::

## Identifying the Cotangent Space as \( \mathfrak{m}/\mathfrak{m}^2 \) {#identifying-the-cotangent-space-as-mathfrakmmathfrakm2}

::: {.lemma title="The tangent space is given by $I/I^2$"}
Let \( X \subset{\mathbb{A}}^n \) be an affine variety and let \( 0 = p\in X \). Then
\[
T_0(X)^\vee\coloneqq\hom_k(T_0X, k) \cong I_X(p) / I_X(p)^2
\]
:::

::: {.remark}
Note that the hom involves an affine embedding, but the quotient of ideals does not. We know that the category of affine varieties is equivalent to the category of reduced \( k{\hbox{-}} \)algebras, since the points of \( X \) biject with the maximal ideals of the coordinate ring \( A(X) \). \( I_X(p) \) is the maximal ideal in \( A(X) \) of regular functions vanishing at \( p \).
:::

::: {.proof title="?"}
Consider the map
\[  
\phi: I_X(p) &\to T_0(X)^\vee\\
\mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu &\mapsto { \left.{{f_1}} \right|_{{T_0(X)}} }
.\]
E.g. given \( \mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu_1 - \mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu_2^2 \in A(X) \), we first lift to \( x_1 - x_2^2 \in A({\mathbb{A}}^n) \), restrict to the linear part \( x_1 \), then restrict to \( T_0(X) \). Note that \( I_X(p) = \left\langle{\mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu_1, \cdots, \mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu_n}\right\rangle \in k[x_1, \cdots, x_n]/I(X) \), and we need to check that this well-defined since there is ambiguity in choosing the above lift.

::: {.claim}
\( \phi \) is well-defined.
:::

Consider two lifts \( f, f' \) of \( \mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu\in A(X) = k[x_1, \cdots, x_n]/I(X) \). Then \( f - f'\in I(X) \), so \( (f - f')_1 = f_1 - f_1' \) is the linear part of some element in \( I(X) \). The definition of \( T_0(X) \) was the vanishing locus of linear parts of elements in \( I(X) \), which contains \( f_1 - f_1' \), and thus \( { \left.{{\qty{f_1 - f_1'} }} \right|_{{T_0(X)}} } = 0 \). So \( f_1 = f_1' \) on \( T_0(X) \).

::: {.claim}
\( I_X(p)^2 \to 0 \).
:::

We know \( I_X(p) = \left\langle{\mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu_1, \cdots, \mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu_n}\right\rangle \), and so \( I_X(p)^2 = \left\langle{\mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu_i \mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu_j}\right\rangle \). Giving any \( \mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu\in I_X(p)^2 \), we can lift this to some \( f\in \left\langle{x_i x_j}\right\rangle \), in which case \( f_1 = 0 \).

So \( \phi \) descends to
\[
\mkern 1.5mu\overline{\mkern-1.5mu\phi\mkern-1.5mu}\mkern 1.5mu: I_X(p) / I_X(p^2) &\to T_0(X)^\vee\\
\]

::: {.claim}
\( \phi \) is injective and surjective.
:::

That \( \mkern 1.5mu\overline{\mkern-1.5mu\phi\mkern-1.5mu}\mkern 1.5mu \) is surjective follows from the fact that if \( \mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu_1, \cdots, \mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu_n \in I_X(p) \), then the restrictions \( { \left.{{x_1}} \right|_{{T_0X}} }, \cdots, { \left.{{x_n}} \right|_{{T_0X}} } \) are in \( \operatorname{im}\mkern 1.5mu\overline{\mkern-1.5mu\phi\mkern-1.5mu}\mkern 1.5mu \) These elements generate \( T_0(X)^\vee \), since \( T_0(X) \subset{\mathbb{A}}^n \). For injectivity, suppose \( \mkern 1.5mu\overline{\mkern-1.5mu\phi\mkern-1.5mu}\mkern 1.5mu(\mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu) = 0 \), then \( { \left.{{f_1}} \right|_{{T_0(X)}} } = 0 \), so \( f_1 \) is the linear part of some \( f' \in I(X) \). Then \( f' \in I(X) \) and \( f, f' \) have the same linear part \( f_1 \), and \( f-f' \) has no linear part. Thus \( f-f'\in \left\langle{x_i x_j}\right\rangle \), which implies that \( \mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu - \mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu' \in I_P(X)^2 \) and \( \mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu \equiv \mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu' \in I_p(X) / I_p(X)^2 \). But \( f' \equiv 0 \) since \( f'\in I(X) \).
:::

::: {.remark}
So for \( X \) an affine variety, the cotangent space has a more intrinsic description, and we can recover the tangent space by dualizing:
\[  
T_p(X) \coloneqq\qty{\mathfrak{m}_p/\mathfrak{m}_p^2 }^\vee
\]
where \( \mathfrak{m}_p = I_X(p) \) is the maximal ideal of regular functions vanishing at \( p \). So how can we get rid of the word affine? Given \( X \) any variety, we can define \( T_p(X) \coloneqq\qty{\mathfrak{m}/\mathfrak{m}^2}^\vee \) where \( \mathfrak{m} \) is the maximal ideal of the local ring \( {\mathcal{O}}_{X, p} \). This allows us to work on affine patches and localize. Moreover, this will be left invariant under the localization.
:::

# Smoothness (Thursday, December 03)

We showed last time that if \( X \) is an affine variety, then \( T_p X = V\qty{f_1 {~\mathrel{\Big|}~}f\in I(X)} \) for \( p = \mathbf{0} \in {\mathbb{A}}^n \), and we showed this is naturally isomorphic to \( \qty{\mathfrak{m}_p /\mathfrak{m}_p^2} \). Then there was a claim that generalizing this definition to an arbitrary variety \( X \) involved taking \( \mathfrak{n}_p \leq {\mathcal{O}}_{X, p} \), a maximal ideal in this local ring of germs of regular functions, given by \( \left\{{(U, \phi) {~\mathrel{\Big|}~}p\in U, \, \phi\in {\mathcal{O}}_{X}(U)}\right\} \). In this case, \( T_p = \qty{\mathfrak{n}_p/\mathfrak{n}_p^2} \). To prove this, it suffices to show that \( \mathfrak{m}_p/\mathfrak{m}_p^2 \cong \mathfrak{n}_p/\mathfrak{n}_p^2 \). Note that for any affine open \( U_i \ni p \), we have \( {\mathcal{O}}_{X, p} = {\mathcal{O}}_{U_i, p} \).

When \( X \) is affine, we have \( {\mathcal{O}}_{X, p} = A(X)_{\mathfrak{m}_p} \coloneqq\left\{{f/g {~\mathrel{\Big|}~}f\in A(X), g\not\in \mathfrak{m}_p}\right\}/\sim \). Note that this localization makes sense, since the complement of a maximal ideal is multiplicatively closed since it is prime. The equivalence relation was \( f/g = f'/g' \) if there exists an \( s\not\in \mathfrak{m}_p \) such that \( s(fg' - f'g) = 0 \). We want to show that \( \mathfrak{m}_p / \mathfrak{m}_p^2 = \mathfrak{m}_p A(X)_{\mathfrak{m_p}} / \mathfrak{m}_p A(X)_{\mathfrak{m_p}}^2 \), i.e. this doesn't change when we localize. In other words, we want to show that \( {\mathfrak{m}}_p / {\mathfrak{m}}_p^2 \cong S^{-1} {\mathfrak{m}}_[ / (S^{-1} {\mathfrak{m}}_p)^2 \).

Let \( f\in S \) so \( f(p) \neq 0 \). Then \( \mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu\in A(X) / \mathfrak{m}_p \cong K \) is a nonzero element in a field and thus invertible. Thus \( c\coloneqq 1/\mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu \) is an element of \( K^{\times} \), and for all \( g\in \mathfrak{m}_p \) we have \( g/f \cong cg \) in \( \mathfrak{m}_p / \mathfrak{m}_p^2 \). So multiplying by elements of \( S \) is invertible in \( \mathfrak{m}_p / \mathfrak{m}_p^2 \). Thus \( S^{-1} \qty{\mathfrak{m}_p / \mathfrak{m}_p^2} \cong \mathfrak{m}_p / \mathfrak{m}_p^2 \), where the LHS is isomorphic to \( S^{-1} \mathfrak{m}_p / \qty{S^{-1}\mathfrak{m}_p^2} \).

## Defining Smoothness

::: {.definition title="Smooth/Regular Varieties"}
A connected variety \( X \) is **smooth** (or **regular**) if \( \dim T_p X = \dim X \) for all \( p\in X \). More generally, an arbitrary (potentially disconnected) variety is smooth if every connected component is smooth.
:::

::: {.example title="?"}
\( {\mathbb{A}}^n \) is smooth since \( T_p {\mathbb{A}}^n = k^n \) for all points \( p \), which has dimension \( n \).
:::

::: {.example title="?"}
\( {\mathbb{A}}^n {\coprod}{\mathbb{A}}^{n-1} \) is also smooth since each connected component is smooth.
:::

::: {.definition title="Singular Varieties"}
A variety that is not smooth is **singular** at \( p \) if \( \dim T_p X \neq \dim X \).
:::

::: {.fact}
\( \dim T_p X\geq \dim X \) for \( X \) equidimensional, i.e. every component has the same dimension. This rules out counterexamples like the following in \( {\mathbb{A}}^3 \):

![Union of Plane and Axis](figures/image_2020-12-03-10-05-17.png){width="350px"}
:::

::: {.example title="?"}
Consider \( X\coloneqq V(y^2 - x^3) \subset {\mathbb{A}}^2 \):

![\( V(y^2 - x^2) \)](figures/image_2020-12-03-10-07-39.png){width="350px"}

Note that \( \dim T_0 X = 2 \) is easy to see since it's equal to \( V\qty{f_1 {~\mathrel{\Big|}~}f\in \left\langle{y^2 - x^3}\right\rangle} = V(0) = k^2 \). Thus \( p\neq 0 \) are smooth points and \( p=0 \) is the unique singular point. So \( X \) is not smooth, but \( X\setminus\left\{{0}\right\} \) is.
:::

::: {.definition title="Regular Ring"}
A local ring \( R \) over a field \( k \) is **regular** iff \( \dim_k \mathfrak{m}/\mathfrak{m}^2 = \dim R \), the length of the longest chain of prime ideals. Note that we'll add the additional assumption that \( R/\mathfrak{m} \cong k \).
:::

::: {.remark}
A variety \( X \) is thus smooth iff \( \dim_k \mathfrak{m}_p / \mathfrak{m}_p^2 = \dim_p X = \dim {\mathcal{O}}_{X, p} \).
:::

::: {.theorem title="A hard theorem from commutative algebra (Auslander–Buchsbaum, 1940s)"}
A regular local ring is a UFD.
:::

::: {.corollary title="?"}
Each connected component of a smooth variety is irreducible.
:::

::: {.proof title="?"}
If a connected component\( X \) is not irreducible, then there exists a point \( p\in X \) such that \( {\mathcal{O}}_{X, p} \) is not a domain, and thus a nonzero pair \( f, g \in {\mathcal{O}}_{X, p} \) such that \( fg=0 \). These exist by simply taking an indicator function on each component. So \( 0 \) doesn't have a unique factorization. So \( {\mathcal{O}}_{X, p} \) is not regular, and thus \( \dim T_p X > \dim_p X \), which is a contradiction.
:::

::: {.remark}
How can we check if a variety \( X \) is smooth then? Just checking dimensions from the definitions is difficult in general.
:::

## Checking Smoothness

::: {.proposition title="Jacobi Criterion"}
Let \( p\in X \) an affine variety embedded in \( {\mathbb{A}}^n \), and suppose \( I(X) = \left\langle{f_1, \cdots, f_r}\right\rangle \). Then \( X \) is smooth at \( p \) \( \iff \) the matrix \( \qty{{\frac{\partial f}{\partial x_j}\,}}\Big|_{p} \) has rank \( n - \dim X \).
:::

::: {.example title="?"}
Is \( V(x^2 - y^2 - 1) \subset {\mathbb{A}}^2 \) smooth? We have \( I(X) = \left\langle{f_1}\right\rangle \coloneqq\left\langle{x^2 - y^2 - 1}\right\rangle \), so let \( p\in X \). Then consider the matrix
\[  
\begin{bmatrix}
J \coloneqq
{\frac{\partial f}{\partial x}\,} & {\frac{\partial f}{\partial y}\,} \\
\end{bmatrix} = 
\begin{bmatrix}
2x & -2y \\
\end{bmatrix}
.\]
We want to show that at any \( p\in X \), we have \( \operatorname{rank}(J) = 1 \). This is true for \( p\neq (0, 0) \), but this is not a point in \( X \).
:::

::: {.example title="?"}
Consider \( X \coloneqq V(y^2 - x^3 + x^2) \subset {\mathbb{A}}^2 \):

![Image](figures/image_2020-12-03-10-32-44.png){width="350px"}

Then \( I(X) = \left\langle{y^2 - x^3 + x^2}\right\rangle = \left\langle{f}\right\rangle \), and
\[  
J = 
\begin{bmatrix}
2y & -3x^2 + 2x \\
\end{bmatrix}
.\]
Then \( \operatorname{rank}(J) = 0 \) at \( p = (0, 0) \), which is a point in \( X \), so \( X \) is not smooth.
:::

::: {.example title="?"}
Consider \( X\coloneqq V(x^2 + y^2, 1+z^3) \subset{\mathbb{A}}^3 \), then \( I(X) = \left\langle{x^2 + y^2, 1 + z^3}\right\rangle \left\langle{f, g}\right\rangle \) which is clearly a radical ideal.

We then have
\[  
J = 
\begin{bmatrix}
f_x & f_y & f_z \\
g_x & g_y & g_z \\
\end{bmatrix}
=
\begin{bmatrix}
2x & 2y & 0 \\
0 & 0 & 3z^2
\end{bmatrix}
,\]
and thus
\[  
\operatorname{rank}(J) = 
\begin{cases}
0 & x=y=z=0 \\
1 & x=y=0 \text{ xor } z=0 \\
2 & \text{else}.
\end{cases}
\]

We can check that \( \dim X = 1 \) and \( \operatorname{codim}_{{\mathbb{A}}^3} X = 3-1 = 2 \), so a point \( (x,y,z) \in X \) is smooth iff \( \operatorname{rank}(J) = 2 \). The singular locus is where \( x=y=0 \) and \( z= \zeta_6 \) is any generator of the 6th roots of unity, i.e. \( \zeta_6, \zeta_6^3, \zeta_6^5 \), along with the point \( 0 \). Note that \( z=0 \) is not a point on \( X \), since \( 1+z^3\neq 0 \) in this case.

Thus the singular locus is \( V(x^2 + y^2) = V((x+iy)(x-iy)) \cap V(1+z^3) \), which results in 3 singular points after intersecting:

![Image](figures/image_2020-12-03-10-42-21.png){width="350px"}

Note that it doesn't matter that \( V(1+z^3) \) was intersected here, as long as it's anything that intersects the \( z{\hbox{-}} \)axis nontrivially we will still get something singular.
:::

# Appendix: Commutative Algebra {#appendix-commutative-algebra .unnumbered}

## Useful Algebra Facts

::: {.fact}
```{=tex}
\envlist
```
-   \( \mathfrak{p}{~\trianglelefteq~}R \) is prime \( \iff R/\mathfrak{p} \) is a domain.
-   \( \mathfrak{p}{~\trianglelefteq~}R \) is maximal \( \iff R/\mathfrak{p} \) is a field.
-   Maximal ideals are prime.
-   Prime ideals are radical.
-   If \( R \) is a PID and \( \left\langle{f}\right\rangle {~\trianglelefteq~}R \) is generated by an irreducible element \( f \), then \( \left\langle{f}\right\rangle \) is maximal
:::

::: {.proposition title="Finitely generated polynomial rings are Noetherian"}
A polynomial ring \( k[x_1, \cdots, x_{n}] \) on finitely many generators is Noetherian. In particular, every ideal \( I{~\trianglelefteq~}k[x_1, \cdots, x_{n}] \) has a finite set of generators and can be written as \( I = \left\langle{f_1, \cdots, f_m}\right\rangle \).
:::

::: {.proof title="?"}
A field \( k \) is both Artinian and Noetherian, since it has only two ideals and thus any chain of ideals necessarily terminates. By Hilbert's basis theorem (`\cref{thm:hilbert_basis}`{=tex}), \( k[x_1, \cdots, x_{n}] \) is thus Noetherian.
:::

::: {.proposition title="Properties and Definitions of Ideal Operations"}
\[  
I+J   &\coloneqq\left\{{f+g {~\mathrel{\Big|}~}f\in I,\, g\in J}\right\} \\
IJ    &\coloneqq\left\{{\sum_{i=1}^N f_i g_i {~\mathrel{\Big|}~}f_i\in I,\, g_i\in J, N\in {\mathbb{N}}}\right\} \\
I+J   = \left\langle{1}\right\rangle 
      &\implies I\cap J = IJ && \text{(coprime or comaximal)}
\left\langle{a}\right\rangle + \left\langle{b}\right\rangle = \left\langle{a, b}\right\rangle
.\]
:::

::: {.theorem title="Noether Normalization" ref="thm:noether_normalization"}
Any finitely-generated field extension \( k_1 \hookrightarrow k_2 \) is a finite extension of a purely transcendental extension, i.e. there exist \( t_1, \cdots, t_\ell \) such that \( k_2 \) is finite over \( k_1(t_1, \cdots, t_\ell) \).
:::

::: {.theorem title="Hilbert's Basis Theorem" ref="thm:hilbert_basis"}
If \( R \) is a Noetherian ring, then \( R[x] \) is again Noetherian.
:::

# Appendix: Course Exercises

## Problem Set 1

::: {.exercise title="Gathmann 1.19"}
Prove that every affine variety \( X\subset {\mathbb{A}}^n/k \) consisting of only finitely many points can be written as the zero locus of \( n \) polynomials.

> Hint: Use interpolation. It is useful to assume at first that all points in \( X \) have different \( x_1{\hbox{-}} \)coordinates.
:::

::: {.exercise title="Gathmann 1.21"}
Determine \( \sqrt{I} \) for
\[  
I\coloneqq\left\langle{x_1^3 - x_2^6,\, x_1 x_2 - x_2^3}\right\rangle {~\trianglelefteq~}{\mathbb{C}}[x_1, x_2]
.\]
:::

::: {.exercise title="Gathmann 1.22"}
Let \( X\subset {\mathbb{A}}^3/k \) be the union of the three coordinate axes. Compute generators for the ideal \( I(X) \) and show that it can not be generated by fewer than 3 elements.
:::

::: {.exercise title="Gathmann 1.23: Relative Nullstellensatz"}
Let \( Y\subset {\mathbb{A}}^n/k \) be an affine variety and define \( A(Y) \) by the quotient
\[  
\pi: k[x_1,\cdots, x_n] \to A(Y) \coloneqq k[x_1, \cdots, x_n]/I(Y)
.\]

a.  Show that \( V_Y(J) = V(\pi^{-1}(J)) \) for every \( J{~\trianglelefteq~}A(Y) \).

b.  Show that \( \pi^{-1} (I_Y(X)) = I(X) \) for every affine subvariety \( X\subseteq Y \).

c.  Using the fact that \( I(V(J)) \subset \sqrt{J} \) for every \( J{~\trianglelefteq~}k[x_1, \cdots, x_n] \), deduce that \( I_Y(V_Y(J)) \subset \sqrt{J} \) for every \( J{~\trianglelefteq~}A(Y) \).

Conclude that there is an inclusion-reversing bijection
\[  
  \left\{{\substack{\text{Affine subvarieties}\\ \text{of } Y}}\right\} \iff \left\{{\substack{\text{Radical ideals} \\ \text{in } A(Y)}}\right\}
  .\]
:::

::: {.exercise title="Extra"}
Let \( J {~\trianglelefteq~}k[x_1, \cdots, x_n] \) be an ideal, and find a counterexample to \( I(V(J)) =\sqrt{J} \) when \( k \) is not algebraically closed.
:::

## Problem Set 2

::: {.exercise title="Gathmann 2.17"}
Find the irreducible components of
\[  
X = V(x - yz, xz - y^2) \subset {\mathbb{A}}^3/{\mathbb{C}}
.\]
:::

::: {.exercise title="Gathmann 2.18"}
Let \( X\subset {\mathbb{A}}^n \) be an arbitrary subset and show that
\[  
V(I(X)) = \mkern 1.5mu\overline{\mkern-1.5muX\mkern-1.5mu}\mkern 1.5mu
.\]
:::

::: {.exercise title="Gathmann 2.21"}
Let \( \left\{{U_i}\right\}_{i\in I} \rightrightarrows X \) be an open cover of a topological space with \( U_i \cap U_j \neq \emptyset \) for every \( i, j \).

a.  Show that if \( U_i \) is connected for every \( i \) then \( X \) is connected.

b.  Show that if \( U_i \) is irreducible for every \( i \) then \( X \) is irreducible.
:::

::: {.exercise title="Gathmann 2.22"}
Let \( f:X\to Y \) be a continuous map of topological spaces.

a.  Show that if \( X \) is connected then \( f(X) \) is connected.

b.  Show that if \( X \) is irreducible then \( f(X) \) is irreducible.
:::

::: {.exercise title="Gathmann 2.23"}
Let \( X \) be an affine variety.

a.  Show that if \( Y_1, Y_2 \subset X \) are subvarieties then
    \[  
    I(\mkern 1.5mu\overline{\mkern-1.5muY_1\setminus Y_2\mkern-1.5mu}\mkern 1.5mu) = I(Y_1): I(Y_2)
    .\]

b.  If \( J_1, J_2 {~\trianglelefteq~}A(X) \) are radical, then
    \[  
    \mkern 1.5mu\overline{\mkern-1.5muV(J_1) \setminus V(J_2)\mkern-1.5mu}\mkern 1.5mu = V(J_1: J_2)
    .\]
:::

::: {.exercise title="Gathmann 2.24"}
Let \( X \subset {\mathbb{A}}^n,\, Y\subset {\mathbb{A}}^m \) be irreducible affine varieties, and show that \( X\times Y\subset {\mathbb{A}}^{n+m} \) is irreducible.
:::

## Problem Set 3

::: {.exercise title="Gathmann 2.33"}
Define
\[  
X \coloneqq\left\{{M \in \operatorname{Mat}(2\times 3, k) {~\mathrel{\Big|}~}{\operatorname{rank}}M \leq 1}\right\} \subseteq {\mathbb{A}}^6/k
.\]

Show that \( X \) is an irreducible variety, and find its dimension.
:::

::: {.exercise title="Gathmann 2.34"}
Let \( X \) be a topological space, and show

a.  If \( \left\{{U_i}\right\}_{i\in I} \rightrightarrows X \), then \( \dim X = \sup_{i\in I} \dim U_i \).

b.  If \( X \) is an irreducible affine variety and \( U\subset X \) is a nonempty subset, then \( \dim X = \dim U \). Does this hold for any irreducible topological space?
:::

::: {.exercise title="Gathmann 2.36"}
Prove the following:

a.  Every noetherian topological space is compact. In particular, every open subset of an affine variety is compact in the Zariski topology.

b.  A complex affine variety of dimension at least 1 is never compact in the classical topology.
:::

::: {.exercise title="Gathmann 2.40"}
Let
\[  
R = k[x_1, x_2, x_3, x_4] / \left\langle{x_1 x_4 - x_2 x_3}\right\rangle 
\]
and show the following:

a.  \( R \) is an integral domain of dimension 3.

b.  \( x_1, \cdots, x_4 \) are irreducible but not prime in \( R \), and thus \( R \) is not a UFD.

c.  \( x_1 x_4 \) and \( x_2 x_3 \) are two decompositions of the same element in \( R \) which are nonassociate.

d.  \( \left\langle{x_1, x_2}\right\rangle \) is a prime ideal of codimension 1 in \( R \) that is not principal.
:::

::: {.exercise title="Problem 5"}
Consider a set \( U \) in the complement of \( (0, 0) \in {\mathbb{A}}^2 \). Prove that any regular function on \( U \) extends to a regular function on all of \( {\mathbb{A}}^2 \).
:::

## Problem Set 4

::: {.exercise title="Gathmann 3.20"}
Let \( X\subset {\mathbb{A}}^n \)be an affine variety and \( a\in X \). Show that
\[  
{\mathcal{O}}_{X, a} = {\mathcal{O}}_{{\mathbb{A}}^n, a} / I(X) {\mathcal{O}}_{A^n,a}
,\]
where \( I(X) {\mathcal{O}}_{{\mathbb{A}}^n, a} \) denotes the ideal in \( {\mathcal{O}}_{{\mathbb{A}}^n, a} \) generated by all quotients \( f/1 \) for \( f\in I(X) \).
:::

::: {.exercise title="Gathmann 3.21"}
Let \( a\in {\mathbb{R}} \), and consider sheaves \( \mathcal{F} \) on \( {\mathbb{R}} \) with the standard topology:

1.  \( \mathcal{F} \coloneqq \) the sheaf of continuous functions
2.  \( \mathcal{F} \coloneqq \) the sheaf of locally polynomial functions.

For which is the stalk \( \mathcal{F}_a \) a local ring?

> Recall that a local ring has precisely one maximal ideal.
:::

::: {.exercise title="Gathmann 3.22"}
Let \( \phi, \psi \in \mathcal{F}(U) \) be two sections of some sheaf \( \mathcal{F} \) on an open \( U\subseteq X \) and show that

a.  If \( \phi, \psi \) agree on all stalks, so \( \mkern 1.5mu\overline{\mkern-1.5mu(U, \phi)\mkern-1.5mu}\mkern 1.5mu = \mkern 1.5mu\overline{\mkern-1.5mu(U, \psi)\mkern-1.5mu}\mkern 1.5mu \in \mathcal{F}_a \) for all \( a\in U \), then \( \phi \) and \( \psi \) are equal.

b.  If \( \mathcal{F} \coloneqq{\mathcal{O}}_X \) is the sheaf of regular functions on some irreducible affine variety \( X \), then if \( \psi = \phi \) on one stalk \( \mathcal{F}_a \), then \( \phi = \psi \) everywhere.

c.  For a general sheaf \( \mathcal{F} \) on \( X \), (b) is false.
:::

::: {.exercise title="Gathmann 3.23: Geometry of a Certain Localization"}
Let \( Y\subset X \) be a nonempty and irreducible subvariety of an affine variety \( X \), and show that the stalk \( {\mathcal{O}}_{X, Y} \) of \( {\mathcal{O}}_X \) at \( Y \) is a \( k{\hbox{-}} \)algebra which is isomorphic to the localization \( A(X)_{I(Y)} \).
:::

::: {.exercise title="Gathmann 3.24"}
Let \( \mathcal{F} \) be a sheaf on \( X \) a topological space and \( a\in X \). Show that the stalk \( \mathcal{F}_a \) is a *local object*, i.e. if \( U\subset X \) is an open neighborhood of \( a \), then \( \mathcal{F}_a \) is isomorphic to the stalk of \( { \left.{{ \mathcal{F} }} \right|_{{U}} } \) at \( a \) on \( U \) viewed as a topological space.
:::

## Problem Set 5

::: {.exercise title="Gathmann 4.13"}
Let \( f:X\to Y \) be a morphism of affine varieties and \( f^*: A(Y) \to A(X) \) the induced map on coordinate rings. Determine if the following statements are true or false:

a.  \( f \) is surjective \( \iff f^* \) is injective.

b.  \( f \) is injective \( \iff f^* \) is surjective.

c.  If \( f:{\mathbb{A}}^1\to{\mathbb{A}}^1 \) is an isomorphism, then \( f \) is *affine linear*, i.e. \( f(x) = ax+b \) for some \( a, b\in k \).

d.  If \( f:{\mathbb{A}}^2\to{\mathbb{A}}^2 \) is an isomorphism, then \( f \) is *affine linear*, i.e. \( f(x) = Ax+b \) for some \( a \in \operatorname{Mat}(2\times 2, k) \) and \( b\in k^2 \).
:::

::: {.exercise title="Gathmann 4.19"}
Which of the following are isomorphic as ringed spaces over \( {\mathbb{C}} \)?

(a) \( \mathbb{A}^{1} \backslash\{1\} \)

(b) \( V\left(x_{1}^{2}+x_{2}^{2}\right) \subset \mathbb{A}^{2} \)

(c) \( V\left(x_{2}-x_{1}^{2}, x_{3}-x_{1}^{3}\right) \backslash\{0\} \subset \mathbb{A}^{3} \)

(d) \( V\left(x_{1} x_{2}\right) \subset \mathbb{A}^{2} \)

(e) \( V\left(x_{2}^{2}-x_{1}^{3}-x_{1}^{2}\right) \subset \mathbb{A}^{2} \)

(f) \( V\left(x_{1}^{2}-x_{2}^{2}-1\right) \subset \mathbb{A}^{2} \)
:::

::: {.exercise title="Gathmann 5.7"}
Show that

a.  Every morphism \( f:{\mathbb{A}}^1\setminus\left\{{0}\right\}\to {\mathbb{P}}^1 \) can be extended to a morphism \( \widehat{f}: {\mathbb{A}}^1 \to {\mathbb{P}}^1 \).

b.  Not every morphism \( f:{\mathbb{A}}^2\setminus\left\{{0}\right\}\to {\mathbb{P}}^1 \) can be extended to a morphism \( \widehat{f}: {\mathbb{A}}^2 \to {\mathbb{P}}^1 \).

c.  Every morphism \( {\mathbb{P}}^1\to {\mathbb{A}}^1 \) is constant.
:::

::: {.exercise title="Gathmann 5.8"}
Show that

a.  Every isomorphism \( f:{\mathbb{P}}^1\to {\mathbb{P}}^1 \) is of the form
    \[  
    f(x) = {ax+b \over cx+d} && a,b,c,d\in k
    .\]
    where \( x \) is an affine coordinate on \( {\mathbb{A}}^1\subset {\mathbb{P}}^1 \).

b.  Given three distinct points \( a_i \in {\mathbb{P}}^1 \) and three distinct points \( b_i \in {\mathbb{P}}^1 \), there is a unique isomorphism \( f:{\mathbb{P}}^1 \to {\mathbb{P}}^1 \) such that \( f(a_i) = b_i \) for all \( i \).
:::

::: {.proposition title="?"}
There is a bijection
\[
\left\{{ \text { morphisms } X \rightarrow Y }\right\} 
&\stackrel{1: 1}{\leftrightarrow}
\left\{{  K{\hbox{-}}\text{algebra morphisms } \mathscr{O}_{Y}(Y) \rightarrow \mathscr{O}_{X}(X) }\right\} \\
f &\mapsto f^{*}
\]
:::

::: {.exercise title="Gathmann 5.9"}
Does the above bijection hold if

a.  \( X \) is an arbitrary prevariety but \( Y \) is still affine?
b.  \( Y \) is an arbitrary prevariety but \( X \) is still affine?
:::

[^1]: Actual statement: the number of connected components is bounded above by this quantity.

[^2]: Not \( k^n \), since we won't necessarily use the vector space structure (e.g. adding points).

[^3]: We don't necessarily require \( S \) to be an ideal in this definition. We will shortly show that taking the ideal it generates yields the same variety.

[^4]: Still true in countable case by a different proof.

[^5]: Here we use the fact that there are only countably many polynomials over a countable field.

[^6]: Irreducible iff any two nonempty open sets intersect.

[^7]: Note that we count the number of nontrivial strict subset containments in this chain.

[^8]: The initial object in the category of Sets is the empty set, and the terminal object in the category of Rings is the zero ring. This "swap" comes from the fact that presheaves should be contravariant.

[^9]: An algebra is **reduced** iff it has no nonzero nilpotent elements.

[^10]: An algebra is **reduced** iff it has no nonzero nilpotent elements.

[^11]: Recall that this means that \( \pi_Y(U) \) is closed whenever \( U \) is closed.

[^12]: It is possible to get around this issue computationally by using Gröbner bases, a special type of generating set for ideals.

[^13]: Here nondegenerate means that if \( Q \) is a quadratic polynomials in \( x_0, x_1, x_2 \), then \( Q \) does not factor as a product of linear factors.

[^14]: A **quadric** is the vanishing locus of a degree 4 polynomial.

[^15]: A family of copies of \( {\mathbb{P}}^1 \).

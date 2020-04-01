# Dave's Videos

- Historic note: Morse wanted to know not the diffeomorphism type of $M$, but rather the homotopy type.

- Definition: critical values and critical points

- Definition: indices of critical points

- Definition:

- Theorem (Smale, h-cobordism)
  - If $X^n$ is a smooth cobordism, $n\geq 6$, $\pi_1(X) = 0$, and $X$ "looks like" a product in algebraic topology, then $X$ is a product cobordism.

- Corollary (High-Dim Poincare)
  - If $X_1^n, X_2^n \cong_{\diff} S^n$, then there exists an $h\dash$cobordism between them.
  - Proof: use algebraic topology to eliminate (cancel) critical points.

- Definition: Morse function and index
  - Look at coordinate-free def?
  - Standard form at critical points
  - Alternatively: Hessian is non-singular at every critical point.
  - $f\inv\bd Y) = \bd X$

- Definition: Stable and generic

- Definition: cobordism
  - Example: (pair of pants)
  - Category: Objects are manifolds, morphisms are cobordisms between them

- Theorem: Every compact manifold has a Morse function.

- Theorem: Morse functions are generic (given any smooth function $f: X\to Y$, there's an arbitrarily small perturbation of $f$ that is Morse).

- Theorem (Morse Lemma): If $p\in \RR^n$ is a critical point of $f: \RR^n \to \RR$ such that the Hessian $H_f(p)$ is a non-degenerate bilinear form, then $f$ is locally Morse (standard form).

  - Moreover, after diagonalizing $H_f$, the index is given by the difference in the numbers of positive/negatives on the diagonal.

- Theorem: If $(W; M_0, M_1) \to I$ is Morse with no critical points then $W \cong_{\text{Diff}} I \cross M_0$

  - Consequence: $M_0 \cong_{\text{Diff}} M_1$ is a diffeomorphism, useful to show two things are diffeomorphic, used in higher-dimensional Poincare.

  - Recall that this is proved by constructing a vector field $V$ on $W$, then using a diffeo $\phi:I \cross M_0 \to W$ by flowing along $V$.

  - Say something about gradient flow in the case of a Riemannian metric?

![Image](figures/2020-03-30-22:49.png)\

![Image](figures/2020-03-30-22:50.png)\

[Video of conformal flows](https://youtu.be/mIUi1zIUQJw?t=42)

[Gradient Descent](https://youtu.be/vWFjqgb-ylQ?t=5)


- Theorem: If $X$ is closed and admits a Morse function with exactly 2 critical points, $X$ is homeomorphic to $S^n$.
  - Possibly used in Milnor's exotic 7-sphere (show a diffeomorphism invariant differs but admits such a Morse function)
- Diffeomorphism type depends on isotopy classes of attaching maps.

![Descriptions of 2d Handles](figures/2020-03-31-14:17.png)

![Descriptions of 3d Handles](figures/2020-03-31-14:24.png)

![Handle Decomposition of Torus](figures/2020-03-31-14:19.png)

# Intro Video
[Link](https://www.youtube.com/watch?v=78OMJ8JKDqI)

Morse theory: handles nice singularities. Can have worse ones, covered by *catastrophe theory* (dynamical systems).

Fact: $M$ is homotopy equivalent to a CW complex with one cell of dimension $k$ for each critical point of $f$ of index $k$.

Index: number of linearly independent direction you can move for which the function *decreases*.

![Image](figures/2020-03-30-23:47.png)\

Importance of CW complexes: triangulations of surfaces.

Morse Lemma: nondegenerate critical points have standard forms $\sum \pm x_i^2$, so the index is well-defined.

Morse Theorem 1:
If there are no critical points, $M_A \homotopic M_B$.

![Image](figures/2020-03-30-23:59.png)\

Stable vs unstable:
![Image](figures/2020-03-31-00:05.png)\

Consider height function on torus.
Circles are index 0 critical points, triangle is index 1.
![Image](figures/2020-03-31-00:04.png)\

![Image](figures/2020-03-31-00:04.png)\

Cancellation:
![Image](figures/2020-03-31-00:10.png)\

![Image](figures/2020-03-31-00:11.png)

Can use persistent homology to measure "importance" of critical points.

# Stein to Weinstein and Back

[Extremely good review](https://webusers.imj-prg.fr/~alexandru.oancea/BAMS-review-Stein.pdf)

Goal: reduce the complex geometry of Stein manifolds (hard) to the symplectic geometry of Weinstein manifolds (less hard). Study the space of structures up to homotopy.

## Stein

Moral: rigid, complex-analytic.

> Very rigid: uncountably many distinct biholomorphism Stein manifolds that are smooth $\eps\dash$small perturbations of $B^n_\CC$. So we study them up to deformation of the manifold, i.e. homotopy of the space of structures.

**Definition (a)**:
$M^{2n}$ complex-analytic, *properly embedded* in some $\CC^N$ (biholomorphically, can take $N = 2n+1$) such that complex structure is inherited from ambient space.

Data: $M$ and $J$ an integrable complex structure.

> Note: *properly embedded* here seems to mean $f:X\to Y$ where $f(\bd X)=f(X) \intersect \bd Y$ and $f(X) \transverse \bd Y$.

**Examples**:

- Any complex projective manifold $X\subset \CP^N$,
  - I.e. a manifold that is a projective variety; locus of polynomial equations in $\PP^n_\CC$.
  - Any algebraic variety over $k = \CC$ is (essentially) birationally equivalent to such a manifold.

- Any connected non-compact Riemann surface (or closed with a puncture).

- Any smooth compact $2n$ dimensional manifold with $n>2$ and handles of index $\leq n$.
  - $n=2$ case works with modification
  - Every smooth $4$ manifold admits a bisection into two Stein 4-manifolds.

**Why useful**:
- Supposed to be an analog of affine varieties (as per Wikipedia, but should probably be quasi-projective).
- Every Stein manifold is Kahler (compatible complex + Riemannian + symplectic structures), large class interesting to AG
- Amenable to Hodge Theory
- Homotopy types of CW complexes (admits a homotopy equivalence, as do all manifolds)


**Definition (b)**:

Consider $(M^{2n}, J_$ where $M$ is a complex manifold and $J$ the structure of complex multiplication on $T_p M$.

- Pick a smooth functional $\phi:M\to \RR$
- Associate the 1-form $d^\CC \phi \definedas d\phi \circ J$.
- Associate the 2-form $\omega_\phi \definedas -dd^\CC \phi$.
- Suppose $\phi$ is $J\dash$convex if the function $g_\phi(v, w) \definedas \omega_\phi(v, Jw)$ defines a Riemannian metric
- Then $\omega_\phi$ is a symplectic form compatible with $J$, i.e. $H_\phi \definedas g_\phi - i\omega_\phi$ is a Hermitian metric
- Suppose $\phi$ is *exhausting*, i.e. preimages of compact sets are compact and $\phi$ is bounded from below (?)

> Note on exhausting J-convex functions: origins seem to be in analysis of multiple complex variables. In nicest cases, boils down to the "Levi matrix" (analog of Hessian for $\del, \bar \del$) is positive semidefinite. This is an equivalent condition.

> The subspace of J-convex functions in $C^\infty(M, \RR)$ is open and contractible, so well-approximated by Morse functions (and the bigger class of *generalized Morse functions*: nondegenerate, restricted critical points).


Theorem (Grauert, Bishop-Narasimhan)
: $M$ is Stein iff it fits this description.

So a Stein structure is a pair $(J, \phi)$, a complex structure and a $J\dash$convex exhausting Morse function.

Theorem
: If $n=2$, $M$ admits a Morse function $f$ such that away from critical points, taking complex tangencies at the preimages $M_c\definedas f\inv(c)$ yield contact structures inducing orientations on $M_x$ agreeing with the induced boundary orientation on $f\inv(-\infty, c)$.

> A type of filling? Etnyre seems to work on this kind of thing.

## Weinstein

Aside:

Theorem (Gromov, Eliashberg)
: Any Stein manifold of dimension $n$ embeds holomorphically into $\CC^{\floor{3n \over 2} + 1}$, and this is optimal.

Moral: flexible, symplectic object.


**Definition**
A Weinstein manifold is the data of

- $M^{2n}$ a smooth manifold,
- $\omega$ a symplectic form,
- $\phi: M\to \RR$ an exhausting generalized Morse function
- $\xi$ a complete Liouville vector field which is gradient-like for $\phi$.

Subdefinitions:

- Exhausting: proper and bounded from below
- Generalized Morse function: non-degenerate critical points of only birth-death type
- Liouville: $\mathcal L_X \omega = \omega$, i.e. the Lie derivative preserves the symplectic form.
  - Recall
  $$
  \mathcal L: \Gamma(TM)\cross \Gamma(TM^{\tensor k}) \to \Gamma(TM^{\tensor k}) \quad \mathcal (\xi, E) \mapsto \mathcal L_\xi(E)
  $$ acts on vector fields and arbitrary tensor fields, in particular alternating tensor fields, i.e. $n\dash$forms.
  - Measures change of a tensor field wrt a vector field, giving a new tensor field. Reduces to lie bracket when $k=1$.
- Complete: flow curves of $\xi$ exist for all time.
  - Recall that the gradient operator takes scalar fields (functions!) to vector fields.
- Gradient-like:
  - $\nabla \phi(q) \xi(q) > 0 \in \RR$ for $q\in M\setminus \crit(\phi)$ (so $\xi$ "points in the same direction" as $\nabla \phi$)
  - Near $p\in \crit(\phi)$, we have $\phi(\vector x) =\vector x^t A \vector x$ where $A = \diag(-1, -1, \cdots, -1_k, 1, \cdots, 1_{n})$.

[Flow Curves](figures/2020-03-31-18:35.png)\


## Stein to Weinstein

Big idea: we want to study Stein structures by deforming them.There is a map from the space of Stein structures to the space of Weinstein structures that (theorem) is a weak homotopy equivalence
in the compact case, and is conjectured in general.

Goal: fix $M$, take $(J, \phi)$ and produce $(\omega, X, \phi)$.

> Really: Use $J, \phi$ to produce $\omega, X$.

- Fix $\phi$ an exhausting $J$-convex generalized Morse function
  - Theorem: every Stein admits one. Analogy: every smooth manifold admits a Morse function.
- Produce the symplectic form $\omega_\phi =-dd^\CC \phi = -d(d\phi \circ J)$ (**Item 1!**)
- By J-convexity, produce a Riemannian metric $g_\phi(v, w) \definedas \omega_\phi(v, Jw)$.
- Use this to define a gradient operator $\nabla_g$
- Produce a vector field $X_\phi \deifnedas \nabla_g \phi$, which is complete and Liouville and gradient-like $\omega_\phi$ (**Item 2**)
- Use the same Morse function $\phi$ (**Item 3**), now have a Weinstein structure.

**Theorem: homotopy-equivalent Weinstein manifolds are symplectomorphic**

Now choosing another $\phi$ yields a homotopy-equivalent and thus symplectomorphic manifold, so this association (denoted $\mathfrak{M}_\phi$ in the text) is unique/canonical.


## Weinstein to Stein

Theorem: there is a "weak homotopy inverse"to $\mathfrak{M}_\phi$, i.e. given a Weinstein structure $(\omega, X, \phi)$ there is a Stein structure $(J, \phi)$ such that $\mathfrak{M}(J, \phi)$ is Weinstein-homotopic (homotopy-equivalent?) to $(\omega, X, \phi)$ rel $\phi$, i.e. $\phi$ is fixed through the homotopy.

## Questions

Do these structures satisfy an **h-principle**? Origins (Gromov, 1970): given a PDE, a "partially specified" solution can be deformed into an actual solution.
The former have topological properties (and are amenable to algebraic topology), the latter analytic.
Recast, the inclusion of the space of "partially specified" solutions into the space of solutions is a weak homotopy equivalence.



## Morse Theory

Goal: handlebody decomposition, or for the purposes of the above theorems, retractions onto a CW complex.
Decomposing a cobordism into a sequence of elementary cobordisms (admit a Morse function with a single critical point).

Fact: since $\phi$ is Morse, $M^{2n}$ can be retracted onto a complex of dimension $d\leq n$, since all critical points will have index $\leq n$.

> Note: this immediately implies the Lefschetz Hyperplane theorem for affine manifolds $N$, i.e. that they are entirely determined by the homology and homotopy of $N\intersect H$ for any hyperplane. Very strong!

Setting up notation/definitions:

- $V$ will be a smooth $n\dash$manifold
- $W$ an $n\dash$dimensional cobordism
- $\phi: V\to \RR$ a smooth function
- $p$ a critical point of $\phi$ (i.e. the derivative $d_p \phi$ vanishes)
- $H_p = (\del^2 \phi \over \del x_i^2 \del x_j^2)$ the Hessian matrix
- $\null_\phi(p)$ the *nullity* of $\phi$ at $p$ is $\dim \ker H_p$, regarding $H_p\phi$ as a symmetric bilinear form on $T_p V$
- $p$ is *nondegenerate* iff $\null_\phi(p) = 0$.
- The *Morse index* at $p$ is the dimension of the maximal subspace on which the associated *quadratic* form $H_p \phi$ is negative definite.


Theorem (Morse Lemma)
:   Near a nondegenerate critical point $p$ of $\phi$ of index $k$ there exists a smooth coordinate chart $U$ and coordinates $\vector x \in \RR^n$ such that $\phi$ has the form $$\phi(\vector x) = \phi(p) + \vector x^t A \vector x$$ where $A = \diag(-1, \cdots, -1, 1,\cdots 1)$.

    Toward a generalization, we can also write $\RR = \RR^{k} \cross \RR^{n-k}$ and
    $$
    \phi(\vector x_1, \vector x_2) = \phi(p) - \norm{\vector x_1}^2 + \norm{\vector x_2}^2
    $$

Lemma (The nondegenerate directions can be split off)
:   If $\null_\phi(p) = \ell$ then we can instead write $\RR = \RR^{n-k-\ell} \cross \RR^k \cross \RR^\ell$ and
    $$
    \phi(\vector x, \vector y, \vector z) = \norm{\vector x}^2 - \norm{\vector y}^2 + \psi(\vector z)
    $$
    where $\psi: \RR^\ell \to \RR$ is some smooth function.


Definition
: A degenerate critical point is *embryonic* iff $\null_\phi(p) = 1$ and writing $L = \ker H_p\phi = \spanof_\RR{\vector v}$, the third directional derivative $D^3_{\vector v}\phi()$ (?) is nonzero.

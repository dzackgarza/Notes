---
date: 2021-04-28 17:22:38
tags: 
  - Unfiled
---

[Morse Theory](Morse%20Theory)
[Topology](Topology)

Tags: #morse_theory #topology

# BG Info

- [Video of conformal flows](https://youtu.be/mIUi1zIUQJw?t=42)

- [Gradient Descent](https://youtu.be/vWFjqgb-ylQ?t=5)

- Historic note: Morse wanted to know not the diffeomorphism type of $M$, but rather the homotopy type.
- Theorem (Smale, h-cobordism)
  - If $X^n$ is a smooth cobordism, $n\geq 6$, $\pi_1(X) = 0$, and $X$ "looks like" a product in algebraic topology, then $X$ is a product cobordism.
- Corollary (High-Dim Poincare)
  - If $X_1^n, X_2^n \cong_{\diff} S^n$, then there exists an $h\dash$cobordism between them.
  - Proof: use algebraic topology to eliminate (cancel) critical points.
- Theorem: Every compact manifold has a Morse function.
- Theorem: Morse functions are generic (given any smooth function $f: X\to Y$, there's an arbitrarily small perturbation of $f$ that is Morse).
- Theorem (Morse Lemma): If $p\in \RR^n$ is a critical point of $f: \RR^n \to \RR$ such that the Hessian $H_f(p)$ is a non-degenerate bilinear form, then $f$ is locally Morse (standard form).
- Theorem: If $(W; M_0, M_1) \to I$ is Morse with no critical points then $W \cong_{\diff} I \cross M_0$
  - Consequence: $M_0 \cong_{\text{Diff}} M_1$ is a diffeomorphism, useful to show two things are diffeomorphic, used in higher-dimensional Poincare.
- Theorem: If $X$ is closed and admits a Morse function with exactly 2 critical points, $X$ is homeomorphic to $S^n$.
  - Possibly used in Milnor's exotic 7-sphere (show a diffeomorphism invariant differs but admits such a Morse function)
- Diffeomorphism type depends on isotopy classes of attaching maps.

# Actual Talk

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

Consider $(M^{2n}, J)$ where $M$ is a complex manifold and $J$ the structure of complex multiplication on $T_p M$.

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
- Produce a vector field $X_\phi \definedas \nabla_g \phi$, which is complete and Liouville and gradient-like $\omega_\phi$ (**Item 2**)
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
- $H_p\phi = ({\del^2 \phi \over \del x_i^2 \del x_j^2})$ the Hessian matrix
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
: A degenerate critical point is *embryonic* iff $\null_\phi(p) = 1$ and writing $L = \ker H_p\phi = \spanof_\RR{\vector v}$, the third directional derivative $D^3_{\vector v}\phi$ (?) is nonzero.

We now consider homotopies of Morse functions $\phi: I \cross V \to \RR$, where we can partially apply the $I$ factor to get a 1-parameter family $\theset{\phi_t \suchthat t\in I}$.

Definition
: A homotopy $\Phi: V\cross I \to \RR$ of Morse functions has a *birth-death type* critical point at $p$ at $t=t_0$ iff $p$ is embryonic for $\phi_0$ and $(t_0, p)$ is a nondegenerate critical point of $\Phi$.

> Recall what a Cerf diagram/profile is -- I don't

Theorem (Whitney)
:   In three parts:

    1. Near an embryonic critical point $p$ of $\phi$ of index $k$ there exist coordinate $(\vector x, \vector y, z) \in \RR^{n-k-1} \oplus \RR^{k} \oplus \RR$ such that $\phi$ has the form
    $$
    \phi(\vector x, \vector y, z) = \phi(p) + \norm{\vector x}^2 - \norm{\vector y}^2 + z^3
    $$
    2. If $p$ is birth-death type for $\Phi$ of index $k$, then up to conjugating $\phi_t$ by a (uniform in $t$) family of diffeomorphisms, each $\phi_t$ is of the form
    $$
    \phi(\vector x, \vector y, z) = \phi(p) + \norm{\vector x}^2 - \norm{\vector y}^2 + z^3 \pm tz
    $$

    3. Any two homotopies $\Phi, \Phi'$ with points $(p, 0)$ and $(p', 0)$ with the same index and Cerf profile differ only by a diffeomorphism, i.e. there is a family of diffeomorphisms $h_t$ such that $\phi'_t \circ h_t = \phi_t$ for every $t$.

    4. A generic $\Phi$ has only nondegenerate and birth-death type singularities.

Definition
: A singularity is *birth type* if the sign on $t$ is positive, and *death type* if negative.

Fact
: Embryonic critical points are isolated, near a birth-type singularity two nondegenerate critical points of indices $k, k-1$ emerge, and near a death type they merge and disappear.

> Pretty vague -- I know there are pictures here that make this more obvious, but I couldn't find much.

Definition
: A *cobordism* is a triple $(W; M_+, M_-)$ where $W$ is an oriented compact smooth manifold with cooriented boundary $\bd W = M_+ \disjoint M_- = \bd_- W \disjoint \bd_+ W$, where the coorientation is provided by the inward (resp. outward) normal vector field (???).
  We'll usually just denote this as $W$.


Definition
:   A *Lyapunov cobordism* is a triple $(W, \phi , X)$ where

    - $W$ is a usual cobordism,
    - $\phi: W\to \RR$ is a smooth functional that is constant and has no critical points when restricted to $\bd W$,
    - $X$ is a gradient-like vector field for $\phi$ which points inward along $\bd_- W$ and outward along $\bd_+ W$.

Definition
:  Such a cobordism is *elementary* iff there exist no $X\dash$trajectories between distinct critical points of $\phi$.


Theorem (Smale, h-cobordism)
: Let $W$ be a cobordism of dimension $W\geq 6$ such that $W, \bd_{\pm}W$ are simply connected, and $H_*(W, \bd_- W; \ZZ) = 0$.
  Then $W$ admits a Morse function without critical points which is constant on $\bd_\pm W$.

  In particular, $W \cong I\cross M$ is diffeomorphic to the trivial product cobordism, and $M\cong N$ are diffeomorphic.

Proof (Sketch)

Goal: find a handle decomposition with *no* handles, then integrate along the gradient vector field of a Morse function $\phi$ to get a diffeomorphism.

- Find a Morse function and induce a handle decomposition
- Rearrange handles so that lower index handles are attached first
- Define a chain complex as free $\ZZ\dash$module on handles with boundary given in terms of intersection numbers of attaching spheres $k$ and belt $k-1$ spheres
- Find $k\dash$handles, create a pair of $k+1, k+2$ handles such that the $k+1$ handle cancels/fills in the $k\dash$handle (not sure why the $k+2$ is needed here)
- End up with nothing but an $n\dash$handle and an $n-1\dash$handle -- turn "upside down" and repeat process with $-\phi$ to remove them.

Proof (Sketch)

- Pick $\phi: W\to \RR$ Morse such that $\bd_\pm W$ are regular level sets.
- Make $\phi$ self-intersecting (uses a transversality argument)
- Partition manifold into regular level sets $L_k \definedas \phi\inv(k - \frac 1 2)$ for each $k\in \NN$.
- Letting $\theset{p_i}$ be the critical points in $L_k$ and $\theset{q_j}$ the critical points in $L_{k-1}$, form the matrix $A$ of intersection numbers $S_{p_i}^- \smile S_{q_j}^+$ between the stable sphere of $p_i$ and the unstable sphere of $q_j$.
- Goal: since homology can be read off $SNF(A)$, and we know $H_* = 0$ here, we try to reduce $A$ to SNF with geometric operations
  - Handle slides: Add row $j$ to row $i$ by moving $p_i$ to $L_{k+j}, ~j\geq 1$, deform $X$ to produce a trajectory $p_j \to p_i$, then "the stable manifold of $p_i$ slides over the stable manifold of $p_j$" (?) replacing $[S_i^-]$ with $[S_i^-] + [S_j^-]$ in homology.
  - This makes $A = [I, 0; 0, 0]$ a block matrix with the identity in the top-left.
  -  Handle Cancellation: Take two transverse intersection points $z_+, z_-$ with local intersection indices $1, -1$, connect via two paths: one in $S_i^-$, one in $S_j^+$. This yields a map $S^1 \injects L_k$, use the Whitney trick to fill with an embedded disc $\Delta$, then push $S_i^-$ over $\Delta$ eliminates $z_\pm$.
  - This leaves a collection $S_i^-, S_i^+$ for $i=1,\cdots, r$ intersecting in a single point $z_0$, then (lemma) there are unique trajectories $q_i \to p_i$ for each $I$ and thus they can be eliminated.
- Do this in $L_k$; we now have a Morse function with no critical points except possibly of index $0, 1, n-1$, or $n$.
- Use "Smale's trick": trades in an index $k$ critical point for one of index $k+1$ and one of index $k+2$, such that $k, k+1$ cancel. Trade index $1$ for index $2, 3$ and cancel index $3$ as before.
- Eliminate $0, n$ with a lemma (unclear)


# Potentially Useful Figures?

![Image](figures/2020-03-30-22:49.png)\

![Image](figures/2020-03-30-22:50.png)\

![Descriptions of 2d Handles](figures/2020-03-31-14:17.png)

![Descriptions of 3d Handles](figures/2020-03-31-14:24.png)

![Handle Decomposition of Torus](figures/2020-03-31-14:19.png)

![Image](figures/2020-03-30-23:47.png)\

![Image](figures/2020-03-30-23:59.png)\

![Image](figures/2020-03-31-00:05.png)\

![Image](figures/2020-03-31-00:04.png)\

![Image](figures/2020-03-31-00:04.png)\

![Image](figures/2020-03-31-00:10.png)\

![Image](figures/2020-03-31-00:11.png)\


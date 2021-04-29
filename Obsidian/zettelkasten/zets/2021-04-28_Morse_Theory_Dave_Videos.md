---
date: 2021-04-28 17:21:43
tags: 
  - Unfiled
---

[Morse Theory](Morse%20Theory)

Tags: #topology #morse_theory 

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

- Theorem: If $(W; M_0, M_1) \to I$ is Morse with no critical points then $W \cong_{\diff} I \cross M_0$

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

![Image](figures/2020-03-31-00:11.png)\

Can use persistent homology to measure "importance" of critical points.

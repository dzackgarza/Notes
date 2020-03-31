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

# Intro Video

Fact: $M$ is homotopy equivalent to a CW complex with one cell of dimension $k$ for each critical point of $f$ of index $k$.

Index: number of linearly independent direction you can move for which the function *decreases*.

![Image](figures/2020-03-30-23:47.png)\

Importance of CW complexes: triangulations of surfaces.

Morse Lemma: nondegenerate critical points have standard forms $\sum \pm x_i^2$, so the index is well-defined.





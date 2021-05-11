---
date: 2021-04-28 17:21:43
tags: 
  - Unfiled
---

Tags: #topology #morse_theory 

# Motivations

- Can be used to prove the high dimensional case of the generalized [Generalized Poincaré conjecture](Generalized%20Poincaré%20conjecture)

# Results
- **Theorem**: Every compact manifold has a Morse function.

- **Theorem**: [Morse functions](Morse%20function) are generic (given any smooth function $f: X\to Y$, there's an arbitrarily small perturbation of $f$ that is Morse).

See [Morse lemma](Morse%20lemma)

- **Theorem 3**:
 If $(W; M_0, M_1) \to I$ is Morse with no critical points then $W \cong_{\Diff} I \cross M_0$

# Dave's Videos

- Historic note: Morse wanted to know not the diffeomorphism type of $M$, but rather the homotopy type.

- Definition: critical values and critical points

- Definition: [index](index%20of%20a%20Morse%20function.md) of a [critical point](critical%20point)

- Theorem (Smale, [h-cobordism theorem](h-cobordism%20theorem.md))
  - If $X^n$ is a smooth [[cobordism]], $n\geq 6$, $\pi_1(X) = 0$, and $X$ "looks like" a product in algebraic topology, then $X$ is a product [cobordism](cobordism.md).

- Corollary (High-Dimensional [Poincare Conjecture](../Poincare%20Conjecture.md))
  - If $X_1^n, X_2^n \cong_{\diff} S^n$, then there exists an [h-cobordism](h-cobordism) between them.
  - Proof: use algebraic topology to eliminate (cancel) critical points.

- Definition: [Morse function](Morse%20function) and [index](index%20of%20a%20Morse%20function.md)
  - Look at coordinate-free def?
  - Standard form at critical points
  - Alternatively: Hessian is non-singular at every critical point.
  - $f\inv\bd Y) = \bd X$

- Definition: Stable and generic

- Definition: [cobordism](cobordism.md)
  - Example: (pair of pants)
  - Category: Objects are manifolds, morphisms are cobordisms between them

- Consequence of theorem 3: $M_0 \cong_{\text{Diff}} M_1$ is a diffeomorphism, useful to show two things are diffeomorphic, used in higher-dimensional Poincare.
	- Recall that this is proved by constructing a [vector field](vector%20field) $V$ on $W$, then using a diffeomorphism $\phi:I \cross M_0 \to W$ by flowing along $V$.
	- Can we do gradient flow in the case of a Riemannian metric? 
	

## Unsorted

[Cool video](https://youtu.be/mIUi1zIUQJw?t=42)

![](attachments/Pasted%20image%2020210501235429.png)
![](attachments/Pasted%20image%2020210501235456.png)

[Gradient Descent](https://youtu.be/vWFjqgb-ylQ?t=5)

- **Theorem**: If $X$ is closed and admits a Morse function with exactly 2 critical points, $X$ is homeomorphic to $S^n$.
  - Possibly used in Milnor's [exotic](exotic%20sphere) 7-sphere (show a diffeomorphism invariant differs but admits such a Morse function)

- Diffeomorphism type depends on [isotopy](isotopy) classes of attaching maps.

See [handle decomposition](handle%20decomposition)

# Intro Video

[Link](https://www.youtube.com/watch?v=78OMJ8JKDqI)

Morse theory: handles nice singularities. Can have worse ones, covered by [catastrophe theory](catastrophe%20theory)  (dynamical systems).

Fact: $M$ is homotopy equivalent to a CW complex with one cell of dimension $k$ for each critical point of $f$ of [index](index%20of%20a%20Morse%20function.md) $k$.

![](attachments/Pasted%20image%2020210501235532.png)

Importance of CW complexes: triangulations of surfaces.

See [Morse lemma](Morse%20lemma.md)

**Morse Theorem 1:**
If there are no critical points, $M_A \homotopic M_B$.

![](attachments/Pasted%20image%2020210501235559.png)

Stable vs unstable manifolds:

![](attachments/Pasted%20image%2020210501235734.png)

Consider height function on torus.
Circles are index 0 critical points, triangle is index 1.

![](attachments/Pasted%20image%2020210501235700.png)

Cancellation:

![](attachments/Pasted%20image%2020210501235757.png)
![](attachments/Pasted%20image%2020210501235820.png)

Can use persistent homology to measure "importance" of critical points.

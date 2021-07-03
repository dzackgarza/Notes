---
aliases: ["curve"]
---

[algebraic curve](algebraic%20curve.md)
[elliptic curve](elliptic%20curve.md)

Variety: an integral separated scheme of finite type over $k$.
Dimension: dimension as a Noetherian topological space.
Curve: a complete (proper over $k$) variety of dimension 1.
Singular: for $\mfm \normal \OO_{X, x}$ the maximal ideal of the local ring at a closed point $x$, $X$ is singular if $\dim_{\kappa(x)} \mfm/\mfm^2 \neq 1$ where $\kappa(x)$ is the residue field at $x$. 
Valuation: for $f \in \OO_{X, x}$, $v_p(f)$ is the largest $n$ such that $f\in \mfm^n$.
	- Zero: $v_p(f)  > 0$
	- Pole: $v_p(f) < 0$
	- Nonvanishing: $v_p(f) = 0$.
Function field: the local ring $K(X) \da \OO_{X, \tilde x}$ for $\tilde x$ the generic point.
- Degree: for $f:X\to Y$, the degree of the field extension $[K(X) : f^* K(Y)]$.
- Ramification index: $e_f(x)$ defined as the largest $n$ such that $f^* \mfm_{f(x)} \subseteq \mfm_x^n$.
- Ramified: $e_f(x) > 1$.
- Structure map: for a scheme $X$ over $k$, the map $S: X\to \spec k$
- Geometric point: a section to the structure map, $s: \spec k \to X$ so that $\spec k \mapsvia{s} X \mapsvia{S} \spec k$ is the identity on $\spec k$
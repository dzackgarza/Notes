---
title: Differential Geometry
---

*Definition 1 (Tangent Vector):*

Let $M$ be a differentiable manifold and let $C^\infty(M)$ be the algebra of real-valued differentiable functions on $M$. 
Then the tangent vector to $M$ at a point $\vector x$ in the manifold is given by a linear *derivation* 
$$
D_{v}: C^\infty (M)\rightarrow {\mathbb  {R}}.
$$

which satisfies the Leibniz property
$$ 
{\displaystyle D_{v}(f g)(x) =D_{v}(f)\cdot g(x)+f(x)\cdot D_{v}(g)\,.}
$$

> Note: this is the derivation property.

> Note: tangent vectors are in $C^\infty(M)\dual$


Example: 
Let $f: \RR^n \to \RR$ be differentiable and $\vector v \in \RR^n$. The *directional derivative* of $\vector x$ in the direction $\vector b$ is defined as
$$
D_vf (\vector x) = \dd{}{t}f(\vector x + t\vector v) \Bigm|_{t=0}
= \sum_{i=1}^n v_i \dd{f}{x_i}(\vector{x}) \in \RR^n
$$

and the *tangent vector* at $\vector x$ is defined as 
$$
\vector v: C^\infty(\RR^n) \to \RR^n \\
f \mapsto (D_{v} \circ f) (\vector x)
$$


*Definition 2 (Tangent Vector):*

Let $M$ be a smooth manifold and $p\in U \subseteq M$ a point. Let $(U, \phi: U \to \RR^n)$ be a chart, let $\gamma_1, \gamma_2: \RR \to \MM$ be two paths satisfying $p = \gamma_1(0) = \gamma_2(0)$  and define 
$$
\gamma'(0) \definedas \theset{\gamma: \RR \to M \mid \gamma \in C^1(\RR)}/\sim
$$

where $\gamma \sim \gamma'$ iff $d(\phi \circ \gamma) = d(\phi \circ \gamma')$

Then each equivalence class is a *tangent vector* at $p$. and define a map
$$
d\phi: T_p M \to \RR^n \\
\gamma'(0) \mapsto \dd{}{t} (\phi \circ \gamma)\Bigm|_{t=0}
$$

*Definition (Flow Curve):*

Given $X: M \to TM$ a vector field on a manifold $M$, a *flow curve* of $X$ at a point $p\in X$ is a curve $\gamma: \RR \to M$ defined by the ordinary differential equation
$$
\dd{}{t}\gamma(t) = X(\gamma(t)) \\
\gamma(0) = p
$$

which (by Picard-Lindelof, if $X$ is Lipschitz) has a unique $C^1(\RR)$ solution at each point $\gamma_p: \RR \to M$ for some interval $I_p \definedas (-\varepsilon, \varepsilon) \in \RR$ depending on $p$.

> Note: these are also called *integral curves*?

Definition (Complete):
A vector field is $X$ *complete* iff every flow curve of $X$ exists for all time.


*Example: An Incomplete Vector Field*

Let $M = \RR$, and $X: M \to TM \cong \RR$ be defined by $X(p) = p^2$. Then if $\gamma'(p) = X(\gamma(p))$

**Theorem**
Let $M$ be a compact manifold without boundary. Then every smooth vector field on $M$ is complete.
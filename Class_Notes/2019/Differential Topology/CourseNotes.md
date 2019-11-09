---
title: Differential Geometry
---

*Definition 1 (Tangent Vector):*

Let $M$ be a differentiable manifold and let $C^\infty(M)$ be the algebra of real-valued differentiable functions on $M$. 
Then the tangent vector to $M$ at a point $\vector x$ in the manifold is given by the *derivation* 
$$
D_{v}: C^\infty (M)\rightarrow {\mathbb  {R}}
$$ 
which shall be linear -- i.e. we have

$$
f,g \in C^\infty(M) \implies D_{v}(af+bg)=aD_{v}(f)+bD_{v}(g)
$$
Note that the derivation will by definition have the Leibniz property

$$ 
{\displaystyle D_{v}(f\cdot g)(x) =D_{v}(f)\cdot g(x)+f(x)\cdot D_{v}(g)\,.}
$$


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
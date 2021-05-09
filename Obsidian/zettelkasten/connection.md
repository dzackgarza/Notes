---
aliases: ["Levi-Cevita connection"]
---

- Connects nearby tangent spaces, so it permits tangent vector fields to be differentiated as if they were functions on the manifold with values in a fixed vector space $V$
- The main invariants of an affine connection are its [torsion of a connection](torsion%20of%20a%20connection.md) and its curvature
	- 
- Can define a [covariant derivative](covariant%20derivative)

# Definition

Defined as
$$
\nabla: \Gamma(\mathrm{T} M)^{\tensor 2} & \to \Gamma(\mathrm{T} M) \\(X, Y) & \mapsto \nabla_{X} Y 
,$$
where $\Gamma$ denotes taking smooth global sections, such that for all $f\in C^\infty(M; \RR)$

- $C^\infty(M; \RR)$ linear in the first variable: 
$$
\nabla_{f \mathrm{X}} \mathrm{Y}=f \nabla_{\mathrm{X}} \mathrm{Y}
$$
-  Leibniz rule in the second variable:
$$
\nabla_{\mathrm{X}}(f \mathrm{Y})=\partial_{X} f \mathrm{Y}+f \nabla_{\mathrm{X}} \mathrm{Y}
$$ 
where $\partial_X$ is the directional derivative.


Alternatively, a principal $\GL_n(\RR)$ connection on the frame bundle $\Frame(M)$

The **Levi-Cevita connection**: the unique affine torsion-free connection for which [parallel transport](parallel%20transport) is an isometry.
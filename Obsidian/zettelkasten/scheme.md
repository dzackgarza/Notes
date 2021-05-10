---
aliases: ["schemes"]
---

- Definition: An **affine scheme**  $X\in \Sch(\Aff)$ is a locally ringed space $X\congas{\Ringedspace}\spec R$ for some $R\in \CRing$. 
	- A **scheme** $X\in \Sch$ is a locally ringed space $X \in \Ringedspace$ with an open cover $\mathcal{U} \covers X$ with each $U_i \in \Sch(\Aff)$ an affine scheme.
- Closed points: ?
- Geometric points: ?
- Reduced scheme: ?
- Smooth scheme: If $X\in \Sch(\ft)$ then there is a closed immersion $X\injects \AA^N_{/k}$ and $X = V(f_1, \cdots, f_m)$ for some $f_i\in \kx{N}$ . Then $X$ is **smooth of dimension $n$** iff 
	- There exist neighborhoods of each point $U_x\ni x$ with $\dim U_x \geq n$, and
	- $\rank Df \geq N-n$ everywhere, where $Df = \tv{ \dd{f_i}{x_j}}$ is the matrix of partial derivatives.
	- Equivalently, the dimension of the [Zariski tangent space](Zariski%20tangent%20space) at every point is *equal* to $n$.
	- At singular points, the dimension of the tangent space *increases*.
- [finite type](finite%20type)
- Regular: 
- Separated
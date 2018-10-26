## Plane Geometry
- Useful to know: rotation matrices
 	$$
	\mathbf{R}_\theta = \left[ \begin{array} { l l } { \cos \theta } & { - \sin \theta } \\ { \sin \theta } & { \cos \theta } \end{array} \right] \implies \mathbf{R}_\frac{\pi}{2} = \left[ \begin{array} { l l } { 0 } & { - 1 } \\ { 1 } & { 0 } \end{array}\right] \implies \mathbf{R}_\frac{\pi}{2} \begin{bmatrix}x \\ y\end{bmatrix} = \begin{bmatrix}{-y \\ x}\end{bmatrix}
	$$
	- Example use: given $\mathbf{v}, \mathbf{R}_\frac{\pi}{2}\mathbf v \perp \mathbf v$, so useful to obtain normals or other perpendicular vectors in the plane.
- Useful trick: given $\mathbf v = [a,b,c]$, one perpendicular vector is $\mathbf v^\perp = [c,c, -(a+b)]$ as long as $\mathbf v \neq [-1,-1,0]$ - in this case, choose $\mathbf v^\perp = [-(b+c), a, a]$.
- Slope of a line in $\RR^2$: $$\mathbf{v} = [x, y] \in \RR^2 \implies  m = \frac{y}{x}$$
- Normal to a line in $\RR^2$: $$m^\perp = \frac{-1}{m} \implies \mathbf{v}^\perp = [-y, x]$$

## Lines
$$
Ax + By + C = 0
\hspace{8em}
\mathbf x = \mathbf p + t\mathbf v \\ \\
\mathbf x \in L \iff \inner[\mathbf x]{\mathbf n} = 0 ?
$$

- Determined by a point $\mathbf p$ and a vector $\mathbf v$ on the line.
	- Also determined by two points $\mathbf p_0, \mathbf p_1$ by taking $\mathbf v = \mathbf p_1 - \mathbf p_0$
- Symmetric Equation (sometimes useful)
	- Obtained by isolating $t$ in each component and setting results equal:
$$
(x, y, z) \in L \iff \frac{x-p_{x}}{v_x} = \frac{y-p_{y}}{v_y} = \frac{z-p_{z}}{v_z}
$$
	(Note that the denominators are just the coefficients of $t$ in the parametric equation.)

## Planes
$$
A x + B y + C z + D = 0
\hspace{4em}
ax + by + cz = d
\hspace{4em}
\mathbf x(t,s) = \mathbf p + t\mathbf v_1 + s\mathbf v_2 \\ \\
\mathbf x \in P \iff \inner[\mathbf n]{\mathbf x - \mathbf p_0} = 0
$$

- Determined by a point $\mathbf p_0$ and a normal vector $\mathbf n$
	- Also determined by two points $\mathbf p_0, \mathbf p_1$ using $\mathbf n = \mathbf p_0 \times \mathbf p_1$

- **Normal vector to a plane**
	- Can read normal off of equation: $\mathbf n = [a,b,c]$

- Other Facts
	$$
	d =  \inner[\mathbf n]{\mathbf p_0} = n_1p_1 + n_2p_2 + n_3p_3
	$$

	- Useful trick: once you compute $\mathbf n$, you can compute $d = \inner[\mathbf n]{\mathbf p}$ for _any_ point in the plane (don't necessarily need to use the one you started with, so pick any point that's convenient to calculate)

## Surfaces
$$
S = \theset{(x,y,z) \mid f(x,y, z) = 0} \hspace{10em} z = f(x,y)
$$
- **Tangent plane to a surface**:
	- Need a point $\mathbf{p}$ and a normal $\mathbf{n}$. By cases:
	- $f(x,y, z) = 0$
		- $\nabla f$ is a normal vector.
		- Write the tangent plane equation $\inner[\mathbf n]{\mathbf x - \mathbf p_0}$, done.
	- $z = g(x,y)$:
		- Let $f(x, y, z) = g(x,y) - z$, then $\mathbf p \in S \iff \mathbf p$ is in a level set of $f$.
		- $\nabla f$ is normal to level sets (and thus the surface), so compute $\nabla f = [g_x, g_y, -1]$
		- Proceed as in previous case


- **Surfaces of revolution**:
	- Given $f(x_1 ,x_2) = 0$, can be revolved around either the $x_1$ or $x_2$ axis.
		- $f(x,y)$ around the $x$ axis yields $f(x, \pm \sqrt{y^2 + z^2})=0$
		- $f(x,y)$ around the $y$ axis yields $f(\pm\sqrt{x^2 + z^2}, y)=0$
		- Remaining cases proceed similarly - leave the axis variable alone, replace other variable with square root involving missing axis.

- Equations of lines tangent to an intersection of surfaces $f(x,y,z) = g(x,y,z)$:
	- Find two normal vectors and take their cross product, e.g. $n = \nabla f \times \nabla g$, then
	$$L = \theset{\mathbf x\mid \mathbf x = \mathbf p + t \mathbf n}$$

- Level curves:
	- Given a surface $f(x,y,z) = 0$, the level curves are obtained by looking at e.g. $f(x,y,c) = 0$.

## Curves
$$
\mathbf r(t) = [x(t), y(t), z(t)]
$$

- **Tangent line to a curve**
	- Use the fact that $\mathbf r'(t)$ is a tangent vector to $\mathbf r(t)$
$$
\mathbf T(t) = \mathbf r(t_0) + t\mathbf{r}'(t)
$$

- **Normal line to a curve**
	- Use the fact that $\mathbf{r}''(t) \perp \mathbf{r}'(t)$
$$
\mathbf N(t) = \mathbf r(t_0) + t \mathbf r''(t)
$$
	- Special case: Planar Curves and Lines: $y = f(x)$,
		- Let $g(x, y) = f(x) - y$, then
		$$\nabla g = [f_x(x), -1]\implies m = -\frac{1}{f_x(x)}$$



---

## Tangent Lines / Planes
- Key insight: just need a point and a normal vector, and the gradient is normal to level sets.
**The Tangent Plane Equation**: for any locus $f(\mathbf x) = 0$, we have
$$\mathbf{x} \in T_f(\mathbf p_0) \implies \inner[\nabla f(\mathbf p_0)]{\mathbf x-\mathbf p_0} = 0 $$


## Normal Lines
Key insight: the gradient is normal.

To find a normal line, you just need a single point $\mathbf{p}$ and a normal vector $\mathbf n$; then $$
L = \theset{\mathbf x \mid \mathbf x = \mathbf p + t\mathbf v}
$$



## Minimal Distances
Fix a point $\mathbf p$. Big idea: project onto subspaces or orthogonal complements.

Key equations: projection and orthogonal projection of $\mathbf b$ onto $\mathbf a$:
	$$
	\mathrm{proj}_\mathbf{a}(\mathbf b) = \inner[\mathbf b]{\mathbf a}\mathbf{\hat a}
	\hspace{8em}
	\mathrm{proj}_{\mathbf a}^\perp(\mathbf b) = \mathbf b - \mathrm{proj}_\mathbf{a}(\mathbf{b})
	$$

- **Point to plane**:
	- Given a plane $S = \theset{\mathbf{x} \in \RR^3 \mid n_0x + n_1y + n_2z = d}$, project onto $S^\perp$ using

	$$
	d = \norm{\mathrm{proj}_{\mathbf n}(\mathbf p)}
	$$

	- Given just two vectors $\mathbf u, \mathbf v$: manufacture a normal vector $\mathbf n = \mathbf u \times \mathbf v$ and continue as above.

- **Point to line**:

	- Given a line $L: \mathbf x(t) = t\mathbf v$ for some fixed $\mathbf v$, use
	$$
	d = \norm{\mathrm{proj}_\mathbf{v}^\perp(\mathbf{p})}
	$$
	- Given a line $L: \mathbf x(t) = \mathbf w_0 + t\mathbf w$, let $\mathbf v = \mathbf x(1) - \mathbf x(0)$ and proceed as above.

- **Line to line**:
	- Given $\mathbf{r}_1(t) = \mathbf p_1 + t\mathbf v_2$ and $\mathbf{r}_2(t) = \mathbf p_2 + t\mathbf v_2$:
		- Let $\mathbf n = \mathbf v_1 \times \mathbf v_2$, which is normal to both lines. Then
	$$
	d= \norm{\mathrm{proj}_{\mathbf n}(\mathbf p_2 - \mathbf p_1)}
	$$

## Plane Geometry
- Useful to know: rotation matrices
$$
\vector{R}_\theta = \left[ \begin{array} { l l } { \cos \theta } & { - \sin \theta } \\ { \sin \theta } & { \cos \theta } \end{array} \right] \implies \vector{R}_\frac{\pi}{2} = \left[ \begin{array} { l l } { 0 } & { - 1 } \\ { 1 } & { 0 } \end{array}\right] \implies \vector{R}_\frac{\pi}{2} \begin{bmatrix}x \\ y\end{bmatrix} = \begin{bmatrix}{-y \\ x}\end{bmatrix}
$$

  - Example use: given $\vector{v}$, the rotated vector $\vector{R}_\frac{\pi}{2}\vector v$ is orthogonal to $\vector v$, so this can be used to obtain normals and other orthogonal vectors in the plane.

- Useful trick: given $\vector v = [a,b,c]$, one perpendicular vector is $\vector v^\perp = [c,c, -(a+b)]$ as long as $\vector v \neq [-1,-1,0]$ - in this case, choose $\vector v^\perp = [-(b+c), a, a]$.

- Slope of a line in $\RR^2$: 
$$
\vector{v} = [x, y] \in \RR^2 \implies  m = \frac{y}{x}
$$

- Normal to a line in $\RR^2$: 
$$
m^\perp = -\frac{1}{m} \implies \vector{v}^\perp = [-y, x]
$$

- Circle in polar coordinates: centered at $(0, a) \implies r= a\sin\theta$

## Projections
For a subspace given by a single vector $\vector a$:
$$
\mathrm{proj}_\vector{a}(\wait) = \inner{\wait }{\vector a}\vector{\hat a}
\hspace{8em}
\mathrm{proj}_{\vector a}^\perp(\wait) = (\wait) - \mathrm{proj}_\vector{a}(\wait) = (\wait) - \inner{\wait}{\vector a}\hat{\vector a}
$$

In general, for a subspace $A = \theset{\vector a_1, \cdots \vector a_n}$:
$$
\mathrm{proj}_A(\wait) = \sum_{i=1}^n \inner{\wait}{\vector a_i}\vector{\hat a_i} = A(A^T A)^{-1}A^T(\wait)
$$

## Lines

$$
Ax + By + C = 0
\hspace{8em}
\vector x = \vector p + t\vector v \\ \\
\vector x \in L \iff \inner{\vector x}{\vector n} = 0
$$

- Determined by a point $\vector p$ and a vector $\vector v$ on the line.
	- Also determined by two points $\vector p_0, \vector p_1$ by taking $\vector v = \vector p_1 - \vector p_0$
- Symmetric Equation (sometimes useful)
	- Obtained by isolating $t$ in each component and setting results equal:
$$
(x, y, z) \in L \iff \frac{x-p_{x}}{v_x} = \frac{y-p_{y}}{v_y} = \frac{z-p_{z}}{v_z}
$$
	(Note that the denominators are just the coefficients of $t$ in the parametric equation.)

## Planes
$$
A x + B y + C z + D = 0
\hspace{8em}
\vector x(t,s) = \vector p + t\vector v_1 + s\vector v_2 \\ \\
\vector x \in P \iff \inner{\vector x - \vector p_0}{\vector n} = 0
$$

- Determined by a point $\vector p_0$ and a normal vector $\vector n$
	- Also determined by two points $\vector v_0, \vector v_1$ using $\vector n = \vector v_0 \cross \vector v_1$

- **Normal vector to a plane**
	- Can read normal off of equation: $\vector n = [a,b,c]$
- Computing $D$:
  - $D =  \inner{\vector p_0}{\vector n} = p_1n_1 + p_2n_2 + p_3n_3$
	- Useful trick: once you have $\vector n$, you can let $\vector p_0$ be _any_ point in the plane (don't necessarily need to use the one you started with, so pick any point that's convenient to calculate)
- **Distance from origin to plane**
  - Given by $D/ \norm{\vector n} = \inner{\vector p_0}{\vector{\hat n}}$. Gives a signed distance.
- **Distance from point to plane**
  - Given by $\inner{\wait}{\vector{\hat n}}$
- Finding vectors in the plane
  - Given $P = [A, B, C] \cdot [x, y, z] = 0$, can take $[-\frac{B}{A},1,0], [-\frac{C}{A},0,1]$

## Surfaces
$$
S = \theset{(x,y,z) \mid f(x,y, z) = 0} \hspace{10em} z = f(x,y)
$$
**Tangent plane to a surface**:

- Need a point $\vector{p}$ and a normal $\vector{n}$. By cases:
- $f(x,y, z) = 0$
  - $\nabla f$ is a normal vector.
  - Write the tangent plane equation $\inner{\vector n}{\vector x - \vector p_0}$, done.
- $z = g(x,y)$:
  - Let $f(x, y, z) = g(x,y) - z$, then $\vector p \in S \iff \vector p$ is in a level set of $f$.
  - $\nabla f$ is normal to level sets (and thus the surface), so compute $\nabla f = [g_x, g_y, -1]$
  - Proceed as in previous case


**Surfaces of revolution**:

- Given $f(x_1 ,x_2) = 0$, can be revolved around either the $x_1$ or $x_2$ axis.
  - $f(x,y)$ around the $x$ axis yields $f(x, \pm \sqrt{y^2 + z^2})=0$
  - $f(x,y)$ around the $y$ axis yields $f(\pm\sqrt{x^2 + z^2}, y)=0$
  - Remaining cases proceed similarly - leave the axis variable alone, replace other variable with square root involving missing axis.

- Equations of lines tangent to an intersection of surfaces $f(x,y,z) = g(x,y,z)$:
  - Find two normal vectors and take their cross product, e.g. $n = \nabla f \times \nabla g$, then
	$$
	L = \theset{\vector x\mid \vector x = \vector p + t \vector n}
	$$

- Level curves:
  - Given a surface $f(x,y,z) = 0$, the level curves are obtained by looking at e.g. $f(x,y,c) = 0$.

## Curves
$$
\vector r(t) = [x(t), y(t), z(t)]
$$

- **Tangent line to a curve**
	- Use the fact that $\vector r'(t)$ is a tangent vector to $\vector r(t)$
$$
\vector T(t) = \vector r(t_0) + t\vector{r}'(t)
$$

- **Normal line to a curve**
	- Use the fact that $\vector{r}''(t) \perp \vector{r}'(t)$
$$
\vector N(t) = \vector r(t_0) + t \vector r''(t)
$$
	- Special case: Planar Curves and Lines: $y = f(x)$,
		- Let $g(x, y) = f(x) - y$, then
		$$\nabla g = [f_x(x), -1]\implies m = -\frac{1}{f_x(x)}$$



---

## Tangent Lines / Planes
Key idea: just need a point and a normal vector, and the gradient is normal to level sets.

**The Tangent Plane Equation**: 
For any locus $f(\vector x) = 0$, we have
$$
\vector{x} \in T_f(\vector p) \implies \inner{\nabla f(\vector p)}{\vector x-\vector p} = 0 
$$


## Normal Lines
Key idea: the gradient is normal.

To find a normal line, you just need a single point $\vector{p}$ and a normal vector $\vector n$; then $$
L = \theset{\vector x \mid \vector x = \vector p + t\vector v}
$$



## Minimal Distances
Fix a point $\vector p$. Key idea: find a subspace and project onto it.

Key equations: projection and orthogonal projection of $\vector b$ onto $\vector a$:
	$$
	\mathrm{proj}_\vector{a}(\vector b) = \inner{\vector b}{\vector a}\vector{\hat a}
	\hspace{8em}
	\mathrm{proj}_{\vector a}^\perp(\vector b) = \vector b - \mathrm{proj}_\vector{a}(\vector{b}) = \vector b - \inner{\vector b}{\vector a}\hat{\vector a}
	$$

- **Point to plane**:
	- Given a point $\vector p$ and a plane $S = \theset{\vector{x} \in \RR^3 \mid n_0x + n_1y + n_2z = d}$, let $\vector n = [n_1, n_2, n_3]$, find any point $\vector q \in S$, and project $\vector q -\vector p$ onto $S^\perp = \mathrm{Span}(\vector n)$ using

	$$
	d = \norm{\mathrm{proj}_{\vector n}(\vector q - \vector p)} = \norm{\inner{\vector q - \vector p}{\vector n} \hat{\vector n}} = \inner{\vector q - \vector p}{\vector n}
	$$

	- Given just two vectors $\vector u, \vector v$: manufacture a normal vector $\vector n = \vector u \times \vector v$ and continue as above.

	- Special case: if $\vector p = \vector 0$ (i.e. **distance from plane to origin**)
	$$
	d = \norm{\mathrm{proj}_{\vector n}(\vector q)} = \norm{\inner{\vector p}{\vector n} \hat{\vector n}} = \inner{\vector p}{\vector n}.
	$$

- **Point to line**:

	- Given a line $L: \vector x(t) = t\vector v$ for some fixed $\vector v$, use
	$$
	d = \norm{\mathrm{proj}_\vector{v}^\perp(\vector{p})} = \norm{\vector p - \inner{\vector p}{\vector v}\hat{\vector v }}
	$$

	- Given a line $L: \vector x(t) = \vector w_0 + t\vector w$, let $\vector v = \vector x(1) - \vector x(0)$ and proceed as above.

- **Point to a Curve**
	- Todo

- **Line to line**:
	- Given $\vector{r}_1(t) = \vector p_1 + t\vector v_2$ and $\vector{r}_2(t) = \vector p_2 + t\vector v_2$:
		- Let $\vector n = \vector v_1 \times \vector v_2$, which is normal to both lines.
		- Then project the vector between any two points onto this normal:
	$$
	d= \norm{\mathrm{proj}_{\vector n}(\vector p_2 - \vector p_1)}
	= \norm{\inner{\vector p_2 -\vector p_1}{\vector n}\hat{\vector n}} = \inner{\vector p_2 - \vector p_1}{\vector v_1 \cross \vector v_2}
	$$

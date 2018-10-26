## Basics
- Unit tangent: $\mathbf{\hat T}(t) = \mathbf{\hat r}'(t)$
- Unit normal: $\mathbf{\hat N}(t) = \mathbf{\hat T}'(t) = \mathbf{\hat r}''(t)$
	- Follows from fact that $\norm{\mathbf{v}(t)} = c \implies \inner[\mathbf{v}(t)]{\mathbf{v}'(t)} = 0$
- Useful to know: rotation matrices
 	$$
	\mathbf{R}_\theta = \left[ \begin{array} { l l } { \cos \theta } & { - \sin \theta } \\ { \sin \theta } & { \cos \theta } \end{array} \right] \implies \mathbf{R}_\frac{\pi}{2} = \left[ \begin{array} { l l } { 0 } & { - 1 } \\ { 1 } & { 0 } \end{array}\right] \implies \mathbf{R}_\frac{\pi}{2} \begin{bmatrix}x \\ y\end{bmatrix} = \begin{bmatrix}{-y \\ x}\end{bmatrix}
	$$
	- Example use: given $\mathbf{v}, \mathbf{R}_\frac{\pi}{2}\mathbf v \perp \mathbf v$, so useful to obtain normals or other perpendicular vectors in the plane.
- Useful trick: given $\mathbf v = [a,b,c]$, one perpendicular vector is $\mathbf v^\perp = [c,c, -(a+b)]$ as long as $\mathbf v \neq [-1,-1,0]$ - in this case, choose $\mathbf v^\perp = [-(b+c), a, a]$.
- Projection onto a vector of $\mathbf b$ onto $\mathbf a$:
	$$\mathrm{proj}_\mathbf{a}(\mathbf b) = \inner[\mathbf b]{\mathbf a}\mathbf{\hat a}$$
- Orthogonal projection of $\mathbf b$ onto $\mathbf a$:
	$$\mathrm{proj}_{\mathbf a}^\perp(\mathbf b) = \mathbf b - \mathrm{proj}_\mathbf{a}(\mathbf{b}) = \mathbf b - \inner[\mathbf b]{\mathbf a}\mathbf{\hat a}$$

## Lines
Equations of a line $L \subset \RR^3: A\hat x + B\hat y + C = 0$
- Key insights:
$$
\mathbf x \in L \iff \inner[\mathbf x]{\mathbf n} = 0 \quad \text{ or } \\
\mathbf x = (x, y, z) \in L \iff \exists t: \mathbf x = \mathbf p_0 + t(\mathbf p_1 - \mathbf p_0) \\
\implies x = p_{0x} + t(p_{1x} - p_{0x}) \\
\implies y = p_{0y} + t(p_{1y} - p_{0y}) \\
\implies z = p_{0z} + t(p_{1z} - p_{0z})
$$
- Determined by a point $\mathbf p$ and a normal $\mathbf n = [n_0, n_1, 0]:~ n_0x + n_2y = d$
- Also determined by a point $\mathbf p$ and a vector $\mathbf v$ on the line.
- Also determined by two points $\mathbf p_0, \mathbf p_1$
- Symmetric Equation (sometimes useful) obtained by isolating $t$ in each component and setting equal:
$$
\mathbf x = (x, y, z) \in L \iff \frac{x-p_{0x}}{p_{1x}-p_{0x}} = \frac{y-p_{0y}}{p_{1y}-p_{0y}} = \frac{z-p_{0z}}{p_{1z}-p_{0z}}
$$
	Note that the denominators are just the coefficients of $t$ in the parametric equations.
- Slope of a line in $\RR^2$: $$\mathbf{v} = [x, y] \in \RR^2 \implies  m = \frac{y}{x}$$
- Normal to a line in $\RR^2$: $$m^\perp = \frac{-1}{m} \implies \mathbf{v}^\perp = [-y, x]$$

## Planes
Equations of a plane $P \subset \RR^3: A\hat x + B\hat y + C\hat y + D = 0$
- Key insight:
	$$
	\mathbf x \in P \iff \inner[\mathbf n]{\mathbf x - \mathbf p_0} = 0 \\
	\implies n_0 x + n_1 y + n_2 z = d \\
	(d = n_1p_1 + n_2p_2 + n_3p_3)
	$$
- Determined by a point $\mathbf p_0$ and a normal vector $\mathbf n$
- Also determined by two points $\mathbf p_0, \mathbf p_1$ using $\mathbf n = \mathbf p_0 \times \mathbf p_1$
- Useful trick: once you compute $\mathbf n$, you can compute $d = \inner[\mathbf n]{\mathbf p}$ for _any_ point in the plane (don't necessarily need to use the one you started with, so pick any point that's convenient to calculate)

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

- **Planar Curve/Line**: For any planar curve given by $y = g(x)$, let $f(x, y) = g(x) - y$ to obtain the normal vector $\nabla f = [g_x(x), -1]$ with slope $-\frac{1}{g_x(x)}$.

- **General Curve/Line**: for a curve $\mathbf{r}(t)$, just use the fact that $ \mathbf r'(t) = \dd{}{t} \mathbf r(t)$ is tangent to $\mathbf r(t)$ and $\mathbf r''(t) = \dd{t}$.

### Surfaces
- Tangent plane to a surface $z = g(x,y)$: let $f(x, y, z) = g(x,y) - z$ and $\mathbf x = [x,y,z]$. Now $\mathbf p$ is on the surface $\iff \mathbf p$ is in a level set of $f$. The gradient of $f$ is normal to the level sets (and thus the surface) so compute $\nabla f = [g_x, g_y, -1]$ and you can proceed to write down the tagent plane equation to obtain an implicit relation that can be solved for $z$.

- **Surface**: For any surface $S$ give by a level set $f(x,y, z) = 0$ and any $\mathbf p_0 \in S$, the gradient is a normal vector, i.e. $\nabla f({\mathbf p_0}) \perp {T}_S({\mathbf p_0})$ (the tangent plane to $S$ at $\mathbf p_0$)

- Surfaces of revolution:
	- Given $f(x_1 ,x_2) = 0$, can be revolved around either the $x_1$ or $x_2$ axis.
		- $f(x,y)$ around the $x$ axis yields $f(x, \pm \sqrt{y^2 + z^2})=0$
		- $f(x,y)$ around the $y$ axis yields $f(\pm\sqrt{x^2 + z^2}, y)=0$
		- Remaining cases proceed similarly - leave the axis variable alone, replace other variable with square root involving missing axis.
- Equations of lines tangent to an intersection of surfaces $f(x,y,z) = g(x,y,z)$:
	- Find two normal vectors and take their cross product, e.g. $n = \nabla f \times \nabla g$, then
	$$L = \theset{\mathbf x\mid \mathbf x = \mathbf p + t \mathbf n}$$

### Curves
- Tangent line to a curve: given $\mathbf{r}(t)$ and $\mathbf{p}_0$, use the fact that $\inner[\mathbf{r}'(t)]{\mathbf{r}(t)} = 0$ to obtain
$$
T_r(t) = \mathbf{p}_0 + t\mathbf{r}(t)
$$
- Level curves:
	- Given a surface $f(x,y,z) = 0$, the level curves are obtained by looking at $f(x,y,c) = 0$.


### Minimal Distances
Fix a point $\mathbf p$. Big idea: project onto subspaces or orthogonal complements.

- Point to plane:
	- Given a plane $S = \theset{\mathbf{x} \in \RR^3 \mid n_0x + n_1y + n_2z = d}$, project onto $S^\perp$ using
	$$
	d = \norm{\inner[\mathbf p]{\mathbf{n}}\mathbf{\hat n}}
	$$
	where we can read off the normal vector $\mathbf{n} = [n_0, n_1, n_2]$ directly from the equation.
	- Given just two vectors $\mathbf u, \mathbf v$: manufacture a normal vector $\mathbf n = \mathbf u \times \mathbf v$ and continue as above.

- Point to line:
	- Given a line $L = \theset{t\mathbf v: t\in \RR}$ for some fixed $\mathbf v$
	$$d = \norm{\mathrm{proj}_\mathbf{v}^\perp(\mathbf{p})} = \norm{\mathbf p - \inner[\mathbf p]{\mathbf v}\mathbf{\hat v}}.$$
	- Equivalently,for any point $\mathbf v_0 \in L$, $$d = \norm{(\mathbf p - \mathbf v_0)\times \mathbf{\hat v}}$$

- Line to line:
	- Given $\mathbf{r}_1(t) = \mathbf p_1 + t\mathbf v_2$ and $\mathbf{r}_2(t) = \mathbf p_2 + t\mathbf v_2$, then the minimal line connecting these will lie along $\mathbf n = \mathbf v_1 \times \mathbf v_2$ which is normal to both lines. Then
	$$
	d(t) = \norm{\inner[\mathbf r_1(t)]{\mathbf n}\mathbf{\hat n} - \inner[\mathbf r_2(t)]{\mathbf n}\mathbf{\hat n}} \\ \implies d = \norm{\inner[\mathbf p_1 - \mathbf p_2]{\mathbf n}\mathbf{\hat n}}
	$$

Notation:

$\phi: \RR^n \to \RR,~ \quad \phi(x_1, x_2, \cdots) = \cdots$

$\mathbf{F}: \RR^n \to \RR^n,~ \mathbf{F}(x_1,x_2,\cdots) = [\mathbf{F}_1(x_1, x_2, \cdots), \mathbf{F}_2(x_1, x_2, \cdots), \cdots, \mathbf{F}_n(x_1, x_2, \cdots)]$

$\vec{v} = [v_1, v_2, \cdots]$

$R$ is a region, $S$ is a surface, $V$ is a solid.

$$	\oint _ { \partial S } \mathbf { F } \cdot d \mathbf { r } = 	\oint _ { \partial S } [\mathbf{F}_1, \mathbf{F}_2, \mathbf{F}_3] \cdot [dx, dy, dz] = \oint_{\del S} \mathbf{F}_1dx + \mathbf{F}_2dy + \mathbf{F}_3dz$$

## Big Theorems:
- $\nabla\cross(\nabla\phi) = 0$
- $\nabla\cdot(\nabla\cross \mathbf{F}) = 0$
- Green's Theorem:
	$$
	\oint _ { \del R } ( L ~d x + M ~d y ) = \iint _ { R } \left( \frac { \partial M } { \partial x } - \frac { \partial L } { \partial y } \right) d x d y
	$$
- Divergence Theorem:
	$$
	\iint_ { \partial V } \mathbf { F } \cdot d \mathbf { S } = \iiint _ { V } ( \nabla \cdot \mathbf { F } ) ~d V
	$$
- Stokes' Theorem:
	$$
	\oint _ { \partial S } \mathbf { F } \cdot d \mathbf { r } = \iint _ { S } ( \nabla \times \mathbf { F } ) \cdot d \mathbf { S }
	$$
	- Equals zero if $S$ is a closed surface.
- Recovering Green's Theorem from Stokes' Theorem:
	- Let $\mathbf{F} = [L, M, 0]$, then $\nabla\cross \mathbf{F} = [0, 0, \frac{\partial M}{\partial x} - \frac{\partial L}{\partial y}]$
- Computing Areas with Green's Theorem:
	$$
	A(R) = \oint _ { \del R } x ~d y = - \oint _ { \del R } y ~d x = \frac { 1 } { 2 } \oint _ { \del R } - y ~d x + x ~d y
	$$

## Geometry
- Slope of a vector
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

### Lines
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
- Symmetric Equation (sometimes useful) obtained by eliminating $t$:
$$
\mathbf x = (x, y, z) \in L \iff \frac{x-p_{0x}}{p_{1x}-p_{0x}} = \frac{y-p_{0y}}{p_{1y}-p_{0y}} = \frac{z-p_{0z}}{p_{1z}-p_{0z}}
$$
- Slope of a line in $\RR^2$: $$\mathbf{v} = [x, y] \in \RR^2 \implies  m = \frac{y}{x}$$
- Normal to a line in $\RR^2$:

### Planes
Equations of a plane $P \subset \RR^3: A\hat x + B\hat y + C\hat y + D = 0$
- Key insight:
	$$
	\mathbf x \in P \iff \inner[\mathbf n]{\mathbf x - \mathbf p_0} = 0 \\
	\implies n_0 x + n_1 y + n_2 z = d \\
	(d = n_1p_1 + n_2p_2 + n_3p_3)
	$$
- Determined by a point $\mathbf p_0$ and a normal vector $\mathbf n$
- Also determined by two points $\mathbf p_0, \mathbf p_1$ using $\mathbf n = \mathbf p_0 \times \mathbf p_1$

### Tangent and Normal Spaces
- Key insight: the gradient is perpendicular to level sets and thus a normal vector.
$$\mathbf{x} \in T_g(\mathbf p_0) \implies \inner[\nabla f]{\mathbf x-\mathbf p_0} = 0 $$

### Surfaces
- Tangent plane to a surface $z = g(x,y):$ let $f(x, y, z) = g(x,y) - z$ and $\mathbf x = [x,y,z]$,then $\nabla f = [g_x, g_y, -1]$ and
$$
z_x(x_0, y_0)(x-x_0) + z_y(x_0, y_0)(y-y_0) -1(z-z_0) = 0
$$
- **Surface**: For any surface $S$ give by a level set $f(x,y, z) = 0$ and any $\mathbf p_0 \in S$, the gradient is a normal vector, i.e. $\nabla f({\mathbf p_0}) \perp {T}_S({\mathbf p_0})$ (the tangent plane to $S$ at $\mathbf p_0$)

#### Curves
- Tangent line to a curve: given $\mathbf{r}(t)$ and $\mathbf{p}_0$, use the fact that $\inner[\mathbf{r}'(t)]{\mathbf{r}(t)} = 0$ to obtain
$$
T_r(t) = \mathbf{p}_0 + t\mathbf{r}(t)
$$

### Normal Spaces
Key insight: the gradient is normal

- **General Curve/Line**: for a curve $\mathbf{r}(t)$, the normal vector at a point is given by $$T_r'(t) = $$
- **Planar Curve/Line**: For any planar curve given by $y = g(x)$, let $f(x, y) = g(x) - y$ to obtain the normal vector $\nabla f = [g_x(x), -1]$ with slope $-\frac{1}{g_x(x)}$. Then $$N(x,y) = [x, y] + t \nabla f(x, y) \text{ where } f(x,y) = g(x) - y$$

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
---

## Partial Derivatives
- Chain rule #todo

## Vector Calculus
- Scalar field on $X$: a function $\phi: X \to \RR$
- Vector field on $X$: a function $\mathbf{F}: X\to \RR^n$
- Gradient field on $X$: a vector field $\mathbf{F}: X \to \RR^n$ such that there exists a scalar field $\phi: X\to \RR$ where $\nabla \phi = \mathbf{F}$

- Dot product: $\vec a \cdot \vec b = \norm{a}\norm{b}\cos\theta_{a,b}$

- Cross product: $\vec a \cross \vec b = \hat n \norm{a}\norm{b}\sin\theta_{a,b}$
	- $\vec x \cross y \perp \vec x, \vec y$

- Spherical Coordinates: $$ x = r\cos\theta = \rho\sin\phi\cos\theta \\ y = r\sin\theta = \rho\sin\phi\sin\theta$$
- The Del Operator:
	$$
	\nabla \definedas \sum_{i=1}^n \frac{\partial}{\partial x_i} \mathbf{e}_i
	= \left[\frac{\partial}{\partial x_1}, \frac{\partial}{\partial x_2}, \cdots, \frac{\partial}{\partial x_n}\right]
	$$

- The Gradient: takes scalar fields to vector fields
	$$ \nabla: (\RR^n \to \RR) \to (\RR^n \to \RR^n) \\
	\phi \mapsto \nabla \phi
	\definedas \sum_{i=1}^n \frac{\partial \phi}{\partial x_i} ~\mathbf{e}_i
	= [\frac{\partial \phi}{\partial x_1}, \frac{\partial \phi}{\partial x_2}, \cdots, \frac{\partial \phi}{\partial x_n}]$$
	- $n=3 \implies \nabla \phi = [\phi_x, \phi_y, \phi_z]$

- The Directional Derivative: $D_\mathbf{v}(\phi) = \mathbf{v} \cdot \nabla \phi$

- Divergence: takes
	$$
	\mathrm{div}(\mathbf{F}): (\RR^n \to \RR^n) \to (\RR^n \to \RR) \\
	\mathbf{F} \mapsto \nabla \cdot \mathbf{F}
	\definedas \sum_{i=1}^n \frac{\partial \mathbf{F}_i}{\partial x_i} = \frac{\partial \mathbf{F}_1}{\partial x_1} + \frac{\partial \mathbf{F}_2}{\partial x_2} + \cdots + \frac{\partial \mathbf{F}_n}{\partial x_n}$$
	- $n=3\implies \nabla \cdot \mathbf{F} = (\mathbf{F}_1)_x + (\mathbf{F}_2)_y + (\mathbf{F}_3)_z$

- Curl: $$
\mathrm{curl}(\mathbf{F}): (\RR^3 \to \RR^3) \to (\RR^3 \to \RR^3) \\
\mathbf{F} \mapsto \nabla \cross \mathbf{F}
\definedas \nabla \times \mathbf { F }
= \left| \begin{array} { c c c } { \mathbf { e }_1 } & { \mathbf { e }_2 } & { \mathbf { e }_3 } \\ { \frac { \partial } { \partial x } } & { \frac { \partial } { \partial y } } & { \frac { \partial } { \partial z } } \\ { \mathbf{F} _ { 1 } } & { \mathbf{F} _ { 2 } } & { \mathbf{F} _ { 3 } } \end{array} \right| \\
= \left[ \frac { \partial \mathbf{F} _ { z } } { \partial y } - \frac { \partial \mathbf{F} _ { y } } { \partial z },\quad \frac { \partial \mathbf{F} _ { x } } { \partial z } - \frac { \partial \mathbf{F} _ { z } } { \partial x },\quad  \frac { \partial \mathbf{F} _ { y } } { \partial x } - \frac { \partial \mathbf{F} _ { x } } { \partial y } \right]
$$

- Computing Flux: #todo $$ \iint_S \mathbf{F}\cdot d\mathbf{S} = \iint_S \mathbf{F}\cdot \mathbf{\hat n} ~dS$$

- Line Integrals: for a path $C$ parameterized as $\theset{\mathbf{r}(t): t\in[a,b]\subseteq \RR}$
	$$\int_C f ~ds = \int_a^b f(\mathbf{r}(t)) ~\norm{\mathbf{r}'(t)}~dt$$
Some Results

- $\nabla \cdot \mathbf{F} = 0 \not \implies \exists G:~ \mathbf{F} = \nabla\cross G$
	- Counterexample$$\mathbf{F}(x,y,z) =\frac{1}{\sqrt{x^2+y^2+z^2}}[x, y, z]~,\quad S = S^2 \subset \RR^3 \\ \implies \nabla \mathbf{F} = 0 \text{ but } \iint_{S^2}\mathbf{F}\cdot d\mathbf{S} = 4\pi \neq 0$$
	Where by Stokes' theorem, $$\mathbf{F} = \nabla\cross\mathbf{G}\implies\iint_{S^2} \mathbf{F} = \iint_{S^2} \nabla\cross\mathbf{G} \equalsbecause{Stokes} \oint_{\del S^2}\mathbf{G}~d\mathbf{r} = 0$$
	since $\del S^2 = \emptyset$.  
	- Sufficient condition: $\mathbf{F}$ is everywhere $C^1$


- $$\exists \mathbf{G}:~ \mathbf{F} = \nabla \cross \mathbf{G} \iff \forall \text{ closed } S, \iint_S \mathbf{F}\cdot d\mathbf{S} = 0$$

## Approximation and Optimization
- Linear Approximation:
	- $z = f(x,y):$ use Tangent plane formulation to obtain
	$$f(x,y) \approx f(x_0, y_0) + f_x(x_0, y_0)(x-x_0) + f_y(x_0, y_0)(y-y_0)$$
- Optimization
	- Critical points of $f(\vec x)$ given by points $\vec p_0$ such that $\nabla f\mid_{\vec p_0} = 0$
	- Second derivative test: compute $H_f(p_0) \definedas  \left| \begin{array} { l l } { f _ { x x } } & { f _ { x y } } \\ { f _ { y x } } & { f _ { y y } } \end{array} \right| ({ \vec p _ { 0 } })$. By cases:
		- $H(\vec p_0) = 0$: No conclusion
		- $H(\vec p_0) < 0$: Saddle point
		- $H(\vec p_0) > 0$:
			- $f_{xx}(\vec p_0) > 0 \implies $ local min
			- $f_{xx}(\vec p_0) < 0 \implies $ local max
- Constrained Optimization: **Lagrange Multipliers**
	- The setup:
	$$ \text{Optimize } f(\vec x) \\ \text{subject to } g(\vec x) = c \\ \implies \nabla f = \lambda \nabla g$$
	- Use this formula to obtain a system of equations in the components of $x$ and the parameter $\lambda$.
	- Generally solve for lambda and substitute to obtain relations between equations, then substitute back into constraint to find a number of candidate critical points.
	- Test all critical points by just plugging back into $f$.

## Notation
$R$ is a region, $S$ is a surface, $V$ is a solid.

$$	\oint _ { \partial S } \mathbf { F } \cdot d \mathbf { r } = 	\oint _ { \partial S } [\mathbf{F}_1, \mathbf{F}_2, \mathbf{F}_3] \cdot [dx, dy, dz] = \oint_{\del S} \mathbf{F}_1dx + \mathbf{F}_2dy + \mathbf{F}_3dz$$

## Big Theorems:
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
	- Equals zero if $S$ is a closed surface $(\del S = \emptyset$)
- Computing Areas with Green's Theorem:
	$$
	A(R) = \oint _ { \del R } x ~d y = - \oint _ { \del R } y ~d x = \frac { 1 } { 2 } \oint _ { \del R } - y ~d x + x ~d y
	$$
- $\nabla\cross(\nabla\phi) = 0$
- $\nabla\cdot(\nabla\cross \mathbf{F}) = 0$


## Definitions

$$\begin{align}
\mathbf a \cdot \mathbf b
= \inner[\mathbf x]{\mathbf y}
= \sum_{i=1}^n {x_i y_i} = x_1y_1 + x_2y_2 + \cdots
&& \text{inner/dot product}
\\
\norm{\mathbf x} = \sqrt{\inner[\mathbf x]{\mathbf x}}
= \sqrt{\sum_{i=1}^n x_i^2}
= \sqrt{x_1^2 + x_2^2 + \cdots}
&& \text{norm}
\\
\mathbf a \cross \mathbf b
= \mathbf{\hat n} \norm{\mathbf a}\norm{\mathbf b}\sin\theta_{\mathbf a,\mathbf b}
= \left| \begin{array}{ccc}
	\mathbf{\hat x} & \mathbf{\hat y} & \mathbf{\hat z} \\
	a_1 & a_2 & a_3 \\
	b_1 & b_2 & b_3
\end{array}\right|
&& \text{cross product}
\\
\nabla
\definedas \sum_{i=1}^n \frac{\partial}{\partial x_i} \mathbf{e}_i
= \left[\frac{\partial}{\partial x_1}, \frac{\partial}{\partial x_2}, \cdots, \frac{\partial}{\partial x_n}\right]
&& \text{del operator}
\\
\nabla \phi
\definedas \sum_{i=1}^n \frac{\partial \phi}{\partial x_i} ~\mathbf{e}_i
= [\frac{\partial \phi}{\partial x_1}, \frac{\partial \phi}{\partial x_2}, \cdots, \frac{\partial \phi}{\partial x_n}]
&& \text{gradient}
\\
D_\mathbf{u}(\phi) = \nabla \phi \cdot \mathbf{\hat u}
&& \text{directional derivative}
\\
\nabla \cdot \mathbf{F}
\definedas \sum_{i=1}^n \frac{\partial \mathbf{F}_i}{\partial x_i} = \frac{\partial \mathbf{F}_1}{\partial x_1} + \frac{\partial \mathbf{F}_2}{\partial x_2} + \cdots + \frac{\partial \mathbf{F}_n}{\partial x_n}
&& \text{divergence}
\\
\nabla \times \mathbf { F }
= \left| \begin{array} { c c c } { \mathbf { e }_1 } & { \mathbf { e }_2 } & { \mathbf { e }_3 } \\ { \frac { \partial } { \partial x } } & { \frac { \partial } { \partial y } } & { \frac { \partial } { \partial z } } \\ { \mathbf{F} _ { 1 } } & { \mathbf{F} _ { 2 } } & { \mathbf{F} _ { 3 } } \end{array} \right|  = [\mathbf{F}_{3y} - \mathbf{F}_{2z}, \mathbf{F}_{1z}- \mathbf{F}_{3x}, \mathbf{F}_{2x} -\mathbf{F}_{1y}]
&& \text{curl}
\\
\end{align}$$
- Note that the directional derivative uses a normalized direction vector!


- Function Types
$$\begin{align}
\nabla: (\RR^n \to \RR) &\to (\RR^n \to \RR^n) \\
\phi &\mapsto \nabla \phi \definedas \sum_{i=1}^n \frac{\partial \phi}{\partial x_i} ~\mathbf{e}_i \\ \\
\text{}
\mathrm{div}(\mathbf{F}): (\RR^n \to \RR^n) &\to (\RR^n \to \RR) \\
\mathbf{F} &\mapsto \nabla \cdot \mathbf{F}
\definedas \sum_{i=1}^n \frac{\partial \mathbf{F}_i}{\partial x_i} \\ \\
\text{}
\mathrm{curl}(\mathbf{F}): (\RR^3 \to \RR^3) &\to (\RR^3 \to \RR^3) \\
\mathbf{F} &\mapsto \nabla \cross \mathbf{F} \\ \\
\text{}
\end{align}$$

- Some terminology:
$$\begin{align}
\text{Scalar Field} && \phi:&~ X \to \RR \\
\text{Vector Field} && \mathbf{F}:&~ X\to \RR^n\\
\text{Gradient Field} && \mathbf{F}:&~ X \to \RR^n \mid \exists \phi: X\to \RR \mid \nabla \phi = F
\end{align}$$

- The Gradient: lifts scalar fields on $\RR^n$ to vector fields on $\RR^n$
- Divergence: drops vector fields on $\RR^n$ to scalar fields on $\RR^n$
- Curl: takes vector fields on $\RR^3$ to vector fields on $\RR^3$


- Spherical Coordinates: $$ x = r\cos\theta = \rho\sin\phi\cos\theta \\ y = r\sin\theta = \rho\sin\phi\sin\theta$$

## Computations

- **Line Integrals Of Curves**:
	- For a path $C$ parameterized as $\theset{\mathbf{r}(t): t\in[a,b]}$
	$$\begin{align}
	\int_C f ~ds
	&= \int_a^b f(\mathbf{r}(t)) ~\norm{\mathbf{r}'(t)}~dt \\
	&= \int_a^b f(x(t), y(t), z(t)) \sqrt{x_t^2 + y_t^2 + z_t^2} ~dt
	\end{align}$$

- **Flux Integrals**:
	$$ \iint_S \mathbf{F}\cdot d\mathbf{S} = \iint_S \mathbf{F}\cdot \mathbf{\hat n} ~dS$$


- Recovering Green's Theorem from Stokes' Theorem:
	- Let $\mathbf{F} = [L, M, 0]$, then $\nabla\cross \mathbf{F} = [0, 0, \frac{\partial M}{\partial x} - \frac{\partial L}{\partial y}]$
Some Results

## Other Results
- $\nabla \cdot \mathbf{F} = 0 \not \implies \exists G:~ \mathbf{F} = \nabla\cross G$
	- Counterexample$$\mathbf{F}(x,y,z) =\frac{1}{\sqrt{x^2+y^2+z^2}}[x, y, z]~,\quad S = S^2 \subset \RR^3 \\ \implies \nabla \mathbf{F} = 0 \text{ but } \iint_{S^2}\mathbf{F}\cdot d\mathbf{S} = 4\pi \neq 0$$
	Where by Stokes' theorem, $$\mathbf{F} = \nabla\cross\mathbf{G}\implies\iint_{S^2} \mathbf{F} = \iint_{S^2} \nabla\cross\mathbf{G} \equalsbecause{Stokes} \oint_{\del S^2}\mathbf{G}~d\mathbf{r} = 0$$
	since $\del S^2 = \emptyset$.  
	- Sufficient condition: $\mathbf{F}$ is everywhere $C^1$
$$\exists \mathbf{G}:~ \mathbf{F} = \nabla \cross \mathbf{G} \iff \forall \text{ closed } S, \iint_S \mathbf{F}\cdot d\mathbf{S} = 0$$

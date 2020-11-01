# Vector Calculus

\todo[inline]{Need lots of pictures}

Notation:
\[  
\vector v, \vector a, \cdots 
&& \text{vectors in }\RR^n \\
\vector{R}, \vector{A}, \cdots 
&& \text{matrices} \\
\vector{r}(t) 
&& \text{A parameterized curve }\vector r: \RR\to \RR^n \\ \\
\hat{\vector v} 
&& {\vector v \over \norm{\vector v}}
.\]

## Plane Geometry

:::{.proposition title="Slope of a vector in $\RR^2$"}
\[  
\vector{v} = [x, y] \in \RR^2 \implies  m = \frac{y}{x}
.\]
:::


:::{.proposition title="Rotation matrices in $\RR^2$"}
\[  
\vector{R}_\theta = 
\left[ \begin{array} { l l } 
{ \cos \theta } & { - \sin \theta } \\ 
{ \sin \theta } & { \cos \theta } 
\end{array} \right] \implies \vector{R}_{\frac{\pi}{2}}
= \left[ \begin{array} { l l } 
{ 0 } & { - 1 } \\ 
{ 1 } & { 0 } 
\end{array}\right] 
.\]
:::

:::{.corollary title="?"}
\[  
\vector{R}_{\frac{\pi}{2}} \vector x \da 
\vector{R}_{\frac{\pi}{2}} 
\begin{bmatrix} 
x \\ y 
\end{bmatrix} 
= 
\begin{bmatrix} 
-y \\ x 
\end{bmatrix} \in \vector \RR \vector x\perp
.\]
Thus if a planar line is defined by the span of $\tv{x, y}$ and a slope of $m = y/x$, a normal vector is given by the span of $\tv{-y, x}$ of slope $-{1 \over m} = -x/y$.
:::

:::{.example title="?"}
Given $\vector{v}$, the rotated vector $\vector{R}_{\frac{\pi}{2}} \vector v$ is orthogonal to $\vector v$, so this can be used to obtain normals and other orthogonal vectors in the plane.
:::

:::{.proposition}
There is a direct way to come up with one orthogonal vector to any given vector:
\[  
\vector v = [a,b,c] \implies \vector y \da 
\begin{cases}
\vector [-(b+c), a, a] 
& \vector v = [-1,-1,0], \\
[c,c, -(a+b)] 
& \text{else}
\end{cases}
\in \RR \vector v\perp
.\]
:::


## Projections

For a subspace given by a single vector $\vector a$:
\[
\mathrm{proj}_\vector{a}( \vecc{Aquamarine} x ) = \inner{\vecc{Aquamarine} x }{\vector a}\vector{\hat a}
\hspace{8em}
\mathrm{proj}_{\vector a}\perp(\vecc{Aquamarine} x) 
= \vecc{Aquamarine} x - \mathrm{proj}_\vector{a}(\vecc{Aquamarine} x) 
= \vecc{Aquamarine} x - \inner{\vecc{Aquamarine} x}{\vector a}\hat{\vector a}
\]

In general, for a subspace $\colspace(A) = \theset{\vector a_1, \cdots \vector a_n}$,

\[
\mathrm{proj}_A(\vecc{Aquamarine} x) 
= \sum_{i=1}^n \inner{\vecc{Aquamarine}x }{\vector a_i}\vector{\hat a_i} = A(A^T A)^{-1}A^T\vecc{Aquamarine} x
\]

## Lines

\[  
\text{General Equation}
&& Ax + By + C = 0 \\ \\
\text{Parametric Equation}
&& \vector r(t) = t\vector x + \vector b 
.\]

Characterized by an equation in inner products:
\[
\vector y \in L \iff \inner{\vector y}{\vector n} = 0
\]

:::{.proposition title="Equation for a line between two points"}
Given $\vector p_0, \vector p_1$, take $\vector x = \vector p_1 - \vector p_0$ and $\vector b = \vector p_i$ for either $i$:
\[  
\vector r(t) = t(\vector p_1 - \vector p_0) + \vector p_0 
&& = t\vector p_1 + (1-t) \vector p_0
.\]
:::

:::{.proposition title="Symmetric equation of a line"}
If a line $L$ is given by 
\[
\vector r(t) = t \tv{x_1, x_2, x_3} + \tv{p_1, p_2, p_3}
,\]
then
\[
(x, y, z) \in L \iff \frac{x-p_1}{x_1} = \frac{y-p_{2}}{x_2} = \frac{z-p_{3}}{x_3}
.\]

:::


:::{.example title="?"}
The symmetric equation of the line through $\tv{2,1,-3}$ and $\tv{1,4,-3}$ is given by
\[  
\frac{x-2}{1}=\frac{y+1}{-5}=\frac{z-3}{6}
.\]

:::

### Tangent Lines / Planes

Key idea: just need a point and a normal vector, and the gradient is normal to level sets.

:::{.theorem title="The Tangent Plane Equation"}
For any locus $f(\vector x) = 0$, we have
\[  
\vector{x} \in T_f(\vector p) \implies \inner{\nabla f(\vector p)}{\vector x-\vector p} = 0 
.\]
:::


### Normal Lines

Key idea: the gradient is normal.

To find a normal line, you just need a single point $\vector{p}$ and a normal vector $\vector n$; then 
\[  
L = \theset{\vector x \mid \vector x = \vector p + t\vector v}
.\]



## Planes
\[  
\text{General Equation}
&& A x + B y + C z + D = 0 \\ \\ 
\text{Parametric Equation}
&&\vector y(t,s) = t\vector x_1 + s\vector x_2  + \vector b \\ \\
.\]

Characterized by an equation in inner products:
\[
\vector y \in P \iff \inner{\vector y - \vector p_0}{\vector n} = 0
\]

:::{.proposition title="Writing equation from a point and a normal"}
Determined by a point $\vector p_0$ and a normal vector $\vector n$
:::

:::{.proposition title="Writing equation from two vectors"}
Given $\vector v_0, \vector v_1$, set $\vector n = \vector v_0 \cross \vector v_1$.
:::

### Finding a Normal Vector

- **Normal vector to a plane**
  - Can read normal off of equation: $\vector n = [a,b,c]$

- Computing $D$:
  - $D =  \inner{\vector p_0}{\vector n} = p_1n_1 + p_2n_2 + p_3n_3$
  - Useful trick: once you have $\vector n$, you can let $\vector p_0$ be _any_ point in the plane (don't necessarily need to use the one you started with, so pick any point that's convenient to calculate)

### Distance from origin to plane

- Given by $D/ \norm{\vector n} = \inner{\vector p_0}{\vector{\hat n}}$. Gives a signed distance.

\todo[inline]{Distance from origin to plane.}

### Distance from point to plane

- Given by $\inner{\wait}{\vector{\hat n}}$
- Finding vectors in the plane
- Given $P = [A, B, C] \cdot [x, y, z] = 0$, can take 
$\tv{-\frac{B}{A},1,0}, \tv{-\frac{C}{A},0,1}$

\todo[inline]{Distance from point to plane.}

## Curves
\[  
\vector r(t) = [x(t), y(t), z(t)]
.\]

### Tangent line to a curve

We have an equation for the tangent vector at each point:
\[  
\hat{ \vector{T} }(t) = \hat{\vector r'}(t)
,\]
so we can write
\[  
\vector L_{T}(t) 
= \vector r(t_0) + t \hat{ \vector T}(t_0)
\da \vector r(t_0) + t \hat{\vector{r}'}(t_0)
.\]


### Normal line to a curve

- Use the fact that $\vector{r}''(t) \in \RR \vector{r}'(t)\perp$, so we have an equation for a normal vector at each point:
\[  
\hat{\vector N}(t) = \hat{\vector r''}(t)
.\]
Thus we can write
\[  
\vector L_N(t) 
= \vector r(t_0) + t \hat{ \vector{N} }(t_0)  
= \vector r(t_0) + t \hat{ \vector r''} (t_0)
.\]

#### Special case: planar graphs of functions

Suppose $y = f(x)$.
Set $g(x, y) = f(x) - y$, then
\[
\nabla g = [f_x(x), -1]\implies m = -\frac{1}{f_x(x)}
\]


## Minimal Distances

Fix a point $\vector p$. Key idea: find a subspace and project onto it.

Key equations: projection and orthogonal projection of $\vector b$ onto $\vector a$:
\[
\mathrm{proj}_\vector{a}(\vector b) = \inner{\vector b}{\vector a}\vector{\hat a}
\hspace{8em}
\mathrm{proj}_{\vector a}\perp(\vector b) = \vector b - \mathrm{proj}_\vector{a}(\vector{b}) = \vector b - \inner{\vector b}{\vector a}\hat{\vector a}
\]

### Point to plane

  - Given a point $\vector p$ and a plane $S = \theset{\vector{x} \in \RR^3 \mid n_0x + n_1y + n_2z = d}$, let $\vector n = [n_1, n_2, n_3]$, find any point $\vector q \in S$, and project $\vector q -\vector p$ onto $S\perp = \mathrm{Span}(\vector n)$ using

\[  
d = \norm{\mathrm{proj}_{\vector n}(\vector q - \vector p)} = \norm{\inner{\vector q - \vector p}{\vector n} \hat{\vector n}} = \inner{\vector q - \vector p}{\vector n}
.\]

  - Given just two vectors $\vector u, \vector v$: manufacture a normal vector $\vector n = \vector u \times \vector v$ and continue as above.

#### Origin to plane

Special case: if $\vector p = \vector 0$,
\[  
d = \norm{\mathrm{proj}_{\vector n}(\vector q)} = \norm{\inner{\vector p}{\vector n} \hat{\vector n}} = \inner{\vector p}{\vector n}.
.\]

### Point to line


- Given a line $L: \vector x(t) = t\vector v$ for some fixed $\vector v$, use
\[  
d = \norm{\mathrm{proj}_\vector{v}\perp(\vector{p})} = \norm{\vector p - \inner{\vector p}{\vector v}\hat{\vector v }}
.\]

- Given a line $L: \vector x(t) = \vector w_0 + t\vector w$, let $\vector v = \vector x(1) - \vector x(0)$ and proceed as above.

### Point to curve

\todo[inline]{todo}

### Line to line

Given $\vector{r}_1(t) = \vector p_1 + t\vector v_2$ and $\vector{r}_2(t) = \vector p_2 + t\vector v_2$, let $d$ be the desired distance.

- Let $\hat{ \vector n} = \hat{\vector v_1 \times \vector v_2}$, which is orthogonal to both lines.

- Then project the vector connecting the two fixed points $\vector p_i$ onto this subspace and take its norm:
\[
d 
&= \norm{\mathrm{proj}_{\vector n}(\vector p_2 - \vector p_1)} \\
&= \norm{\inner{\vector p_2 -\vector p_1}{\vector n}\hat{\vector n}} \\
&= \inner{\vector p_2 - \vector p_1}{\vector n} \\
&\da \inner{\vector p_2 - \vector p_1}{\vector v_1 \cross \vector v_2}
.\]

## Surfaces
\[
S = \theset{(x,y,z) \mid f(x,y, z) = 0} \hspace{10em} z = f(x,y)
\]

### Tangent plane to a surface

- Need a point $\vector{p}$ and a normal $\vector{n}$. By cases:
- $f(x,y, z) = 0$
  - $\nabla f$ is a normal vector.
  - Write the tangent plane equation $\inner{\vector n}{\vector x - \vector p_0}$, done.
- $z = g(x,y)$:
  - Let $f(x, y, z) = g(x,y) - z$, then $\vector p \in S \iff \vector p$ is in a level set of $f$.
  - $\nabla f$ is normal to level sets (and thus the surface), so compute $\nabla f = [g_x, g_y, -1]$
  - Proceed as in previous case


### Surfaces of revolution

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


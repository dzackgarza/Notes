
# Differential Calculus

##  Big Theorems / Tools:

:::{.proposition title="Fundamental Theorem of Calculus I"}
\[
\frac{\partial}{\partial x} \int_a^x f(t) dt = f(x) \\ \\
\]
:::

:::{.proposition title="Generalized Fundamental Theorem of Calculus"}

\[
\frac{\partial}{\partial x} \int_{a(x)}^{b(x)} f(x, t) dt - \int_{a(x)}^{b(x)} \frac{\partial}{\partial x} f(x, t) dt &=
f(x, t) \cdot \frac{\partial}{\partial x}(t) \bigg\rvert_{t=a(x)}^{t=b(x)} \\ \\
&= f(x, b(x))\cdot b'(x) - f(x, a(x))\cdot a'(x) \\ \\
\]

If \(f(x,t) = f(t)\) doesn't depend on $x$, then $\dd{f}{x} = 0$ and the second integral vanishes:

\[
\frac{\partial}{\partial x} \int_{a(x)}^{b(x)} f(t) dt 
&= f(b(x))\cdot b'(x) - f(a(x))\cdot a'(x)
\]
:::

\todo[inline]{Find examples.}

:::{.remark}
Note that you can recover the original FTC by taking
\[  
a(x) &= c \\
b(x) &= x \\
f(x,t) &= f(t)
.\]
:::

:::{.corollary title="?"}
\[
	\frac{\partial}{\partial x} \int_{1}^{x} f(x, t) dt = \int_{1}^{x} \frac{\partial}{\partial x} f(x, t) dt + f(x, x)
\]
:::

:::{.proposition title="Extreme Value Theorem"}
Todo
:::

\todo[inline]{Todo}

:::{.proposition title="Mean Value Theorem"}
\[  
f \in C^0(I) &\implies \exists p\in I: f(b) - f(a) = f'(p)(b-a) \\
          &\implies \exists p\in I: \int_a^b f(x)~dx = f(p)(b-a)
.\]
:::

:::{.proposition title="Rolle's Theorem"}

:::

\todo[inline]{todo}

:::{.proposition title="L'Hopital's Rule"}
If

- \(f(x)\) and \(g(x)\) are differentiable on $I - \pt$, and

\[
  \lim_{x\to \pt} f(x) = \lim_{x\to \pt} g(x) \in \theset{0, \pm \infty}, &&
  \forall x \in I, g'(x) \neq 0, && 
  \lim_{x\to\pt} \frac{ f'(x)}{\ g'(x)} \text{ exists}, \\
\]

Then it is necessarily the case that
\[
\lim _ { x \rightarrow \pt } \frac { f ( x ) } { g ( x ) } 
= \lim _ { x \rightarrow \pt } \frac { f ^ { \prime } ( x ) } { g ^ { \prime } ( x ) }.
\]

:::

:::{.remark}
Note that this includes the following indeterminate forms:
\[  
\frac{0}{0}, \quad \frac{\infty}{\infty}, \quad 0 \cdot \infty, \quad 0^{0}, \quad \infty^{0}, \quad 1^{\infty}, \quad \infty-\infty
.\]


For $0\cdot \infty$, can rewrite as ${0 \over {1\over \infty}} = {0\over 0},$ or alternatively ${\infty \over {1\over 0}} = {\infty \over \infty}.$

For $1^\infty, \infty^0,$ and $0^0$, set 
\[
L \da \lim f^g \implies \ln L = \lim g \ln(f)
\]
to recover $\infty\cdot 0, 0 \cdot \infty,$ or $0\cdot 0$.
:::


:::{.proposition title="Taylor Expansion"}
\[
T(a, x) &= \sum _ { n = 0 } ^ { \infty } \frac { f ^ { ( n ) } ( a ) } { n ! } ( x - a ) ^ { n }  \\
&= f ( a ) + f'(a)( x - a ) + \frac { 1 } { 2 }f ^ { \prime \prime } ( a ) ( x - a ) ^ { 2 } \\ 
& \quad \quad + \frac { 1} { 6 } f ^ { \prime \prime \prime } ( a ) ( x - a ) ^ { 3 } + \frac{1}{24}f^{(4)}(a)(x-a)^4 + ~\cdots
\]
There is a bound on the error: 
\[
\abs{f(x) - T_k(a,x)} \leq \abs{\frac{f^{(k+1)}(a)}{(k+1)!}}
\]
where 
$T_k(a, x) = \sum _ { n = 0 } ^ { k } \frac { f ^ { ( n ) } ( a ) } { n ! } ( x - a ) ^ { n }$ is the $k$th truncation.

:::

:::{.remark}
Approximating change: $\Delta y \approx f'(x) \Delta x$
:::


## Limits


## Tools for finding limits

\todo[inline]{Examples}

How to find $\lim_{x\to a} f(x)$in order of difficulty:

- Plug in: if $f$ is continuous, \(\lim_{x\to a} f(x) =  f(a)\).

- Check for indeterminate forms and apply L'Hopital's Rule.


- Algebraic rules

- Squeeze theorem

- Expand in Taylor series at \(a\)

- Monotonic + bounded

- One-sided limits: $\lim_{x\to a^-} f(x) = \lim_{\varepsilon \to 0} f(a-\varepsilon)$

- Limits at zero or infinity: 
\[
\lim_{x\to\infty} f(x) = \lim_{\frac{1}{x}\to 0} f\qty{\frac{1}{x}} \text{ and } 
\lim_{x\to 0} f(x) = \lim_{x\to\infty} f\qty{1 \over x}
\]

	- Also useful: if $p(x) = p_nx^n + \cdots$ and $q(x) = q_nx^m + \cdots$,
\[
\lim_{x\to\infty} \frac{p(x)}{q(x)} = 
\begin{cases}
  0 & \deg p < \deg q \\
  \infty & \deg p > \deg q \\
  \frac{p_n}{q_n} & \deg p = \deg q
\end{cases}
\]

:::{.warning}
Be careful: limits may not exist!!
Example $:\lim_{x\to 0} \frac{1}{x} \neq 0$.
:::

## Asymptotes

- Vertical asymptotes: at values \(x=p\) where $\lim_{x\to p} = \pm\infty$
- Horizontal asymptotes: given by points \(y=L\) where $L \lim_{x\to\pm\infty} f(x) < \infty$
- Oblique asymptotes: for rational functions, divide - terms without denominators yield equation of asymptote (i.e. look at the asymptotic order or "limiting behavior").
  - Concretely: 

\[
f(x) = \frac{p(x)}{q(x)} = r(x) + \frac{s(x)}{t(x)} \sim r(x)
\]


## Recurrences

- Limit of a recurrence: $x_n = f(x_{n-1}, x_{n-2}, \cdots)$
	- If the limit exists, it is a solution to \(x = f(x)\)

## Derivatives

:::{.proposition title="Chain Rule"}
\[
\dd{}{x}(f\circ g) = (f' \circ g) \cdot g'
\]
:::

:::{.proposition title="Product Rule"}
\[
\dd{}{x} f\cdot g =f'\cdot g + g' \cdot f
\]
:::

:::{.proposition title="Quotient Rule"}
\[
\dd{}{x} \frac{f(x)}{g(x)} = \frac{f'g - g'f}{g^2}
\]

> Mnemonic: Low d-high minus high d-low

:::

:::{.proposition title="Inverse Rule"}
\[
\dd{f^{-1}}{x}(f(x_0)) = \left( \dd{f}{x} \right)^{-1}(x_0) = 1/f'(x_0)
\]
:::

## Implicit Differentiation

\[
(f(x))' = f'(x)~dx, (f(y))' = f'(y)~dy
\]
- Often able to solve for $\dd{y}{x}$ this way.

- Obtaining derivatives of inverse functions: if \(y = f^{-1}(x)\) then write \(f(y) = x\) and implicitly differentiate.


## Related Rates
General series of steps: want to know some unknown rate \(y_t\)

- Lay out known relation that involves \(y\)
- Take derivative implicitly (say w.r.t \(t\)) to obtain a relation between \(y_t\) and other stuff.
- Isolate $y_t = \text{ known stuff }$

:::{.example title="?"}
Example: ladder sliding down wall

- Setup: \(l, x_t\) and \(x(t)\) are known for a given \(t\), want \(y_t\).
\[
x(t)^2 + y(t)^2 = l^2 \implies 2xx_t +2yy_t = 2ll_t = 0
\]
(noting that $l$ is constant)
  - So $y_t = -\frac{x(t)}{y(t)}x_t$
  - \(x(t)\) is known, so obtain $y(t) = \sqrt{l^2 - x(t)^2}$ and solve.


:::


# Integral Calculus

## Average Values

:::{.proposition title="Integral formula for average value"}
\[
\mu_f = \frac{1}{b-a}\int_a^b f(t) dt
\]
:::

:::{.proof title="?"}
Apply MVT to \(F(x)\).
:::

## Area Between Curves

Area in polar coordinates: 
$$
A = \int_{r_1}^{r_2} \frac{1}{2}r^2(\theta) ~d\theta
$$

## Solids of Revolution

\[  
\text{Disks} && A = \int \pi r(t)^2 ~dt \\
\text{Cylinders} && A = \int 2\pi r(t)h(t) ~dt
.\]

## Arc Lengths

\[
L 
&= \int ~ds  && ds = \sqrt{dx^2 + dy^2} \\
&= \int_{x_0}^{x_1}\sqrt{1 + \dd{y}{x}}~dx \\
&= \int_{y_0}^{y_1}\sqrt{\dd{x}{y} + 1}~dy
\]

\[
SA = \int 2 \pi r(x) ~ds
\]

## Center of Mass

Given a density $\rho(\mathbf x)$ of an object $R$, the $x_i$ coordinate is given by
\[
x_i = 
\frac
{\displaystyle\int_R x_i\rho(x) ~dx}
{\displaystyle\int_R \rho(x)~dx}
\]

## Big List of Integration Techniques

Given $f(x)$, we want to find an antiderivative $F(x) = \int f$ satisfying $\frac{\partial}{\partial x}F(x) = f(x)$

- Guess and check: look for a function that differentiates to \(f\).
- $u\dash$ substitution
  - More generally, any change of variables
  \[
  x = g(u) \implies \int_a^b f(x)~dx = \int_{g^{-1}(a)}^{g^{-1}(b)} (f\circ g)(x) ~g'(x)~dx
  \]

###  Integration by Parts:

The standard form:
\[
\int u dv = uv - \int v du
\]

- A more general form for repeated applications: let $v^{-1} = \int v$, $v^{-2} = \int\int v$, etc.
\[
\int_a^b uv &= uv^{-1}\bigg\rvert_a^b  - \int_a^b u^{1} v^{-1}\\
&= uv^{-1} - u^1v^{-2}\bigg\rvert_a^b + \int_a^b u^2v^{-2} \\
&= uv^{-1} - u^1v^{-2} + u^2v^{-3}\bigg\rvert_a^b - \int_a^b u^3v^{-3} \\
&\quad\vdots \\
\implies \int_a^b uv &= \sum_{k=1}^n (-1)^k u^{k-1}v^{-k} \bigg\rvert_a^b + (-1)^n\int_a^b u^nv^{-n} 
\]
- Generally useful when one term's \(n\)th derivative is a constant.

### Shoelace Method

- Note: you can choose \(u\) or \(v\) equal to 1! Useful if you know the derivative of the integrand.

Derivatives | Integrals    | Signs    | Result
---         | ---          | --       | ---             | ---
$u$         | $v$          | NA       | NA
$u'$        | $\int v$     | $+$      | $u\int v$
$u''$       | $\int\int v$ | $-$      | $-u'\int\int v$
$\vdots$    | $\vdots$     | $\vdots$ | $\vdots$

Fill out until one column is zero (alternate signs). Get the result column by multiplying diagonally, then sum down the column.


### Differentiating under the integral
\[
\frac{\partial}{\partial x} \int_{a(x)}^{b(x)} f(x, t) dt - \int_{a(x)}^{b(x)} \frac{\partial}{\partial x} f(x, t) dt 
&= f(x, \cdot)\frac{\partial}{\partial x}(\cdot) \bigg\rvert_{a(x)}^{b(x)} \\
&= f(x, b(x))~b'(x) - f(x, a(x))~a'(x)
\]


:::{.proof title="?"}
Let \(F(x)\) be an antiderivative and compute \(F'(x)\) using the chain rule.

\todo[inline]{
For constants, this should allow differentiating under the integral when \(f, f_x\) are "jointly continuous"
}

- LIPET: Log, Inverse trig, Polynomial, Exponential, Trig: generally let \(u\) be whichever one comes first.

- The ridiculous trig sub: for any integrand containing only trig terms

  - Transforms *any* such integrand into a rational function of \(x\)

  - Let $u = 2\tan^{-1}x, ~du = \frac{2}{x^2+1}$, then
  \[
  \int_a^b f(x)~dx = \int_{\tan\frac{a}{2}}^{\tan\frac{b}{2}} f(u)~du
  \]
:::

:::{.example title="?"}
\[
\int_0^{\pi/2} \frac{1}{\sin \theta}~d\theta = 1/2
\]
:::



- Trigonometric Substitution
\[
\sqrt{a^2-x^2} && \Rightarrow && x = a\sin(\theta) &&dx = a\cos(\theta)~d\theta \\
\sqrt{a^2+x^2} && \Rightarrow && x = a\tan(\theta) &&dx = a\sec^2(\theta)~d\theta \\
\sqrt{x^2 - a^2} && \Rightarrow && x = a \sec(\theta) &&dx = a\sec(\theta)\tan(\theta)~d\theta
\]

### Partial Fractions

### Trigonometric Substitution

\todo[inline]{Completing the square}

- Trig Formulas
  \[
  \sin^2(x) && = && \frac{1}{2}(1-2\cos x) \\
  && = && \\
  && = && \\
  && = && \\
  && = && \\
  \]
\todo[inline]{
Trig functions, double angle formulas.
}

- Products of trig functions
  - Setup: $\int \sin^a(x) \cos^b(x) ~dx$
    - Both \(a,b\) even: $\sin(x)\cos(x) = \frac{1}{2} \sin(x)$
    - \(a\) odd: $\sin^2 = 1-\cos^2,~u=\cos(x)$
    - \(b\) odd: $\cos^2 = 1-\sin^2,~u=\sin(x)$
  - Setup: $\int \tan^a(x) \sec^b(x) ~dx$
    - \(a\) odd: $\tan^2 = \sec^2 - 1,~ u = \sec(x)$
    - \(b\) even: $\sec^2 = \tan^2 - 1, u = \tan(x)$




Other small but useful facts:
\[  
\int_0^{2\pi} \sin \theta~d\theta = \int_0^{2\pi} \cos \theta~d\theta = 0
.\]


## Optimization

- Critical points: boundary points and wherever \(f'(x) = 0\)
- Second derivative test:
  - $f''(p) > 0 \implies p$ is a min
  - $f''(p) < 0 \implies p$ is a max


- Inflection points of \(h\) occur where the _tangent_ of \(h'\) changes sign. (Note that this is where \(h'\) itself changes sign.)

- Inverse function theorem: The slope of the inverse is reciprocal of the original slope

- If two equations are equal at exactly one real point, they are tangent to each other there - therefore their derivatives are equal. Find the \(x\) that satisfies this; it can be used in the original equation.


- Fundamental theorem of Calculus: If 
\[  
\int f(x) dx = F(b) - F(a) \implies F'(x) = f(x)
.\]

- Min/maxing - either derivatives of Lagranage multipliers!

- Distance from origin to plane: equation of a plane 
\[  
P: ax+by+cz=d
.\]

  - You can always just read off the normal vector $\vector{n} = (a,b,c)$. 
  So we have $\mathbf{n}\mathbf{x} = d$. 
  
  - Since $\lambda \mathbf{n}$ is normal to $P$ for all $\lambda$, solve $\mathbf{n}\lambda \mathbf{n} = d$, which is $\lambda = \frac{d}{ \norm{\vector n}^2}$

- A plane can be constructed from a point \(p\) and a normal \(n\) by the equation \(np = 0\).

- In a sine wave $f(x) = \sin(\omega x)$, the period is given by $2\pi/\omega$. If $\omega > 1$, then the wave makes exactly $\omega$ full oscillations in the interval $[0, 2\pi]$.

- The directional derivative is the gradient dotted against a _unit vector_ in the direction of interest

- Related rates problems can often be solved via implicit differentiation of some constraint function

- The second derivative of a parametric equation is not exactly what you'd intuitively think!

- For the love of god, remember the FTC! 
\[
\frac{\partial}{\partial x} \int_0^x f(y) dy = f(x)
\]

- Technique for asymptotic inequalities: WTS \(f < g\), so show \(f(x_0) < g(x_0)\) at a point and then show $\forall x > x_0, f'(x) < g'(x)$. Good for big-O style problems too.

- Inflection points of \(h\) occur where the _tangent_ of \(h'\) changes sign. (Note that this is where \(h'\) itself changes sign.)

- Inverse function theorem: The slope of the inverse is reciprocal of the original slope

- If two equations are equal at exactly one real point, they are tangent to each other there - therefore their derivatives are equal. Find the \(x\) that satisfies this; it can be used in the original equation.

- Fundamental theorem of Calculus: If 
\[  
\int f(x) dx = F(b) - F(a) \implies F'(x) = f(x)
.\]
- Min/maxing - either derivatives of Lagranage multipliers!

- Distance from origin to plane: equation of a plane 
\[  
P: ax+by+cz=d
.\]

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


# Multivariable Calculus

:::{.theorem title="Key Theorem"}
Given a function $f: \RR^n \to \RR$, let $S_k \da \ts{\vector p\in \RR^n \st f(\vector p) = k}$ denote the level set for $k\in \RR$.
Then
\[  
\nabla f(\vector p) \in S_k\perp
.\]
:::

## Notation
\[
\vector{v} &= [v_1, v_2, \cdots] 
&& \text{a vector} \\ \\
\vector{e}_i &= [0, 0, \cdots, \overbrace{1}^{i \text{th term}}, \cdots, 0] 
&& \text{the } i \text{th standard basis vector} \\ \\
\phi: \RR^n &\to \RR 
&& \text{a functional on } \RR^n\\
\phi(x_1, x_2, \cdots) &= \cdots  && \\ \\
\mathbf{F}: \RR^n &\to \RR^n 
&& \text{a multivariable function}\\
\mathbf{F}(x_1,x_2,\cdots) &= 
[\mathbf{F}_1(x_1, x_2, \cdots), \mathbf{F}_2(x_1, x_2, \cdots), \cdots, \mathbf{F}_n(x_1, x_2, \cdots)]
\]


## Partial Derivatives

:::{.definition title="Partial Derivative"}
For a functional $f:\RR^n\to \RR$, the **partial derivative** of $f$ with respect to $x_i$ is
\[
\dd{f}{x_i}(\mathbf p) 
\da \lim_{h\to 0}\frac{f(\mathbf p + h\mathbf e_i)  - f(\mathbf p)}{h}
\]

:::

:::{.example title="$n= 2$"}
\[
f: \RR^2 &\to \RR \\
\dd{f}{x}(x_0,y_0) 
&= \lim_{h \to 0} \frac{f(x_0+h, y_0) - f(x_0,y_0)}{h}
\]
:::

## General Derivatives

:::{.definition title="General definition of differentiability"}
A function $f: \RR^n \to \RR^m$ is **differentiable** iff there exists a linear transformation $D_f: \RR^n \to \RR^m$ such that the following limit exists
\[  
\lim _ { \mathbf x \rightarrow \vector{p} } \frac { \left\| f (\mathbf x ) - f (\vector{p} ) - D_f (\mathbf x - \vector{p} ) \right\| } { \| \mathbf x - \vector{p} \| } = 0
.\]
:::

:::{.remark}
$D_f$ is the "best linear approximation" to $f$.
:::


:::{.definition title="Jacobian"}
When $f$ is differentiable, $D_f$ can be given in coordinates by  
\[
(D_f)_{ij} = \dd{f_i}{x_j}
\]


This yields the **Jacobian** of $f$:
\[
D_f(\vector \vector p) 
\begin{bmatrix}
\vertbar & \vertbar & & \vertbar \\
\nabla f_1(\vector p) & \nabla f_2(\vector p) & \cdots & \nabla f_m(\vector p) \\
\vertbar & \vertbar & & \vertbar
\end{bmatrix}^T
= \left[ \begin{array} { c c c c } { \frac { \partial f _ { 1 } } { \partial x _ { 1 } } ( \vector{p} ) } & { \frac { \partial f _ { 1 } } { \partial x _ { 2 } } ( \vector{p} ) } & { \ldots } & { \frac { \partial f _ { 1 } } { \partial x _ { n } } ( \vector{p} ) } \\ { \frac { \partial f _ { 2 } } { \partial x _ { 1 } } ( \vector{p} ) } & { \frac { \partial f _ { 2 } } { \partial x _ { 2 } } ( \vector{p} ) } & { \dots } & { \frac { \partial f _ { 2 } } { \partial x _ { n } } ( \vector{p} ) } \\ { \vdots } & { \vdots } & { \ddots } & { \vdots } \\ { \frac { \partial f _ { m } } { \partial x _ { 1 } } ( \vector{p} ) } & { \frac { \partial f _ { m } } { \partial x _ { 2 } } ( \vector{p} ) } & { \cdots } & { \frac { \partial f _ { m } } { \partial x _ { n } } ( \vector{p} ) } \end{array} \right].
\]
:::

:::{.remark}
This is equivalent to 

- Taking the gradient of each component $f_i$ of $f$, 
- Evaluating $\nabla f_i$ at $\vector p$, 
- Forming a matrix using these as the columns, and 
- Transposing the resulting matrix. 
:::

:::{.definition title="Hessian"}
For a function $f: \RR^n \to \RR$, the **Hessian** is a generalization of the second derivative, and is given in coordinates by 
\[
(H_f)_{ij} = \dd{^2f}{x_i x_j}
\]

Explicitly, we have
\[
H_f(\vector p) 
=
\begin{bmatrix}
\vertbar & \vertbar & & \vertbar \\
D \nabla f_1(\vector p) & D\nabla f_2(\vector p) & \cdots & D\nabla f_m(\vector p) \\
\vertbar & \vertbar & & \vertbar
\end{bmatrix}^T
=
\left[ \begin{array} { c c c } { \frac { \partial ^ { 2 } f } { \partial x _ { 1 } \partial x _ { 1 } } ( \mathbf { a } ) } & { \dots } & { \frac { \partial ^ { 2 } f } { \partial x _ { 1 } \partial x _ { n } } ( \mathbf { a } ) } \\ { \vdots } & { \ddots } & { \vdots } \\ { \frac { \partial ^ { 2 } f } { \partial x _ { n } \partial x _ { 1 } } ( \mathbf { a } ) } & { \cdots } & { \frac { \partial ^ { 2 } f } { \partial x _ { n } \partial x _ { n } } ( \mathbf { a } ) } \end{array} \right].
\]

:::

:::{.remark}
Mnemonic: make matrix with $\nabla f$ as the columns, and then differentiate variables left to right.
:::

## The Chain Rule

:::{.example title="How to expand a partial derivative"}
Write out tree of dependent variables:

\begin{tikzcd}
 & u \arrow[dd] \arrow[rr] \arrow[rrdd] &  & x \\
z \arrow[rd] \arrow[ru] \arrow[rrru] \arrow[rrrd] &  &  &  \\
 & v \arrow[rr] \arrow[rruu] &  & y
\end{tikzcd}

Then sum each possible path.

Let subscripts denote which variables are held constant, then
\[
\left(\dd{z}{x}\right)_y &= \left(\dd{z}{x}\right)_{u,y,v} \\
& + \left(\dd{z}{v}\right)_{x,y,u} \left(\dd{v}{x}\right)_y \\
& + \left(\dd{z}{u}\right)_{x,y,v} \left(\dd{u}{x}\right)_{v,y}  \\
& + \left(\dd{z}{u}\right)_{x,y,v} \left(\dd{u}{v}\right)_{x,y} \left(\dd{v}{x}\right)_y
\]

:::

## Approximation

Let $z = f(x,y)$, then to approximate near $\vector p_0 = \tv{x_0, y_0}$,
\[  
f(\vecc{Aquamarine} x) &\approx f(\vector p) + \nabla f (\vecc{Aquamarine} x - \vector p_0) \\
\implies f(x,y) &\approx f(\vector p) + f_x(\vector p)(x-x_0) + f_y(\vector p)(y-y_0) \\
.\]


## Optimization

### Classifying Critical Points

:::{.definition title="Critical Points"}
Critical points of $f$ given by points $\vector p$ such that the derivative vanishes: 
\[
\crit(f) = \ts{\vector p\in \RR^n \st D_f({\mathbf p}) = 0}
\]
:::

:::{.proposition title="Second Derivative Test"}
\envlist
1. Compute 
  \[
  \abs{H_f(\mathbf p)} \definedas  \left| \begin{array} { l l } { f _ { x x } } & { f _ { x y } } \\ { f _ { y x } } & { f _ { y y } } \end{array} \right| ({ \mathbf p  })
  \]
2. Check by cases:

  - $\abs{H(\mathbf p)} = 0$: No conclusion
  - $\abs{H(\mathbf p)} < 0$: Saddle point
  - $\abs{H(\mathbf p)} > 0$:
    - $f_{xx}(\mathbf p) > 0 \implies$ local min
    - $f_{xx}(\mathbf p) < 0 \implies$ local max

:::

:::{.remark}
What's really going on?

- Eigenvalues have same sign $\iff$ positive definite or negative definite

  - Positive definite $\implies$ convex $\implies$ local min

  - Negative definite $\implies$ concave $\implies$ local max
:::

- Extrema occur on boundaries, so parameterize each boundary to obtain a function in one less variable and apply standard optimization techniques to yield critical points. Test all critical points to find extrema.
- If possible, use constraint to just reduce equation to one dimension and optimze like single-variable case.

\todo[inline]{Add examples}

### Lagrange Multipliers

The setup:
$$ 
\text{Optimize } f(\mathbf x) &\quad \text{subject to } g(\mathbf x) = c \\ \implies \nabla f &= \lambda \nabla g
$$
1. Use this formula to obtain a system of equations in the components of $x$ and the parameter $\lambda$.

2. Use $\lambda$ to obtain a relation involving only components of $\mathbf{x}$.

3. Substitute relations **back into constraint** to obtain a collection of critical points.

4. Evaluate $f$ at critical points to find max/min.

\todo[inline]{Add examples}

## Change of Variables

For any $f: \RR^n \to \RR^n$ and region $R$,
\[
\int _ { g ( R ) } f ( \mathbf { x } ) ~d V = \int _ { R } (f  \circ g) ( \mathbf { x } )  \cdot \abs{D_g  ( \mathbf { x })} ~d V
\]

# Vector Calculus

## Notation

$R$ is a region, $S$ is a surface, $V$ is a solid.

$$	
\oint _ { \partial S } \mathbf { F } \cdot d \mathbf { r } = 	
\oint _ { \partial S } [\mathbf{F}_1, \mathbf{F}_2, \mathbf{F}_3] \cdot [dx, dy, dz] 
= \oint_{\del S} \mathbf{F}_1dx + \mathbf{F}_2dy + \mathbf{F}_3dz
$$

The main vector operators
\[
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
\]
Some terminology:
\[
\text{Scalar Field} && \phi:&~ X \to \RR \\
\text{Vector Field} && \mathbf{F}:&~ X\to \RR^n\\
\text{Gradient Field} && \mathbf{F}:&~ X \to \RR^n \mid \exists \phi: X\to \RR \mid \nabla \phi = F
\]

- The Gradient: lifts scalar fields on $\RR^n$ to vector fields on $\RR^n$
- Divergence: drops vector fields on $\RR^n$ to scalar fields on $\RR^n$
- Curl: takes vector fields on $\RR^3$ to vector fields on $\RR^3$

\[
\mathbf x \cdot \mathbf y
= \inner{\mathbf x}{\mathbf y}
= \sum_{i=1}^n {x_i y_i} = x_1y_1 + x_2y_2 + \cdots
&& \text{inner/dot product}
\\
\norm{\mathbf x} = \sqrt{\inner{\mathbf x}{\mathbf x}}
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
&& \text{cross product} \\ \\
D_\mathbf{u}(\phi) = \nabla \phi \cdot \mathbf{\hat u}
&& \text{directional derivative} \\ \\
\nabla
\definedas \sum_{i=1}^n \frac{\partial}{\partial x_i} \mathbf{e}_i
= \left[\frac{\partial}{\partial x_1}, \frac{\partial}{\partial x_2}, \cdots, \frac{\partial}{\partial x_n}\right]
&& \text{del operator}
\\ \\
\nabla \phi
\definedas \sum_{i=1}^n \frac{\partial \phi}{\partial x_i} ~\mathbf{e}_i
= \tv{ \frac{\partial \phi}{\partial x_1}, \frac{\partial \phi}{\partial x_2}, \cdots, \frac{\partial \phi}{\partial x_n}}
&& \text{gradient} \\ \\
\Delta \phi \definedas \nabla\cdot\nabla \phi \definedas \sum_{i=1}^n \frac{\partial^2 \phi}{\partial x_i^2}
= \frac{\partial^2 \phi}{\partial x_1^2} + \frac{\partial^2 \phi}{\partial x_2} + \cdots + \frac{\partial^2 \phi}{\partial x_n^2}
&& \text{Laplacian}
\\ \\
\nabla \cdot \mathbf{F}
\definedas \sum_{i=1}^n \frac{\partial \mathbf{F}_i}{\partial x_i} = \frac{\partial \mathbf{F}_1}{\partial x_1} + \frac{\partial \mathbf{F}_2}{\partial x_2} + \cdots + \frac{\partial \mathbf{F}_n}{\partial x_n}
&& \text{divergence} \\ \\
\nabla \times \mathbf { F }
= \left| \begin{array} { c c c } { \mathbf { e }_1 } & { \mathbf { e }_2 } & { \mathbf { e }_3 } \\ { \frac { \partial } { \partial x } } & { \frac { \partial } { \partial y } } & { \frac { \partial } { \partial z } } \\ { \mathbf{F} _ { 1 } } & { \mathbf{F} _ { 2 } } & { \mathbf{F} _ { 3 } } \end{array} \right|  = [\mathbf{F}_{3y} - \mathbf{F}_{2z}, \mathbf{F}_{1z}- \mathbf{F}_{3x}, \mathbf{F}_{2x} -\mathbf{F}_{1y}]
&& \text{curl}
\\
\iint _ { S } ( \nabla \times \mathbf { F } ) \cdot d \mathbf { S } = \iint _ { S } ( \nabla \times \mathbf { F } ) \cdot \mathbf { n } ~dS
&& \text{surface integral}
\]




## Big Theorems

### Stokes' and Consequences


:::{.theorem title="Stokes' Theorem"}
\[  
\oint _ { \partial S } \mathbf { F } \cdot d \mathbf { r } = \iint _ { S } ( \nabla \times \mathbf { F } ) \cdot d \mathbf { S }
.\]

:::

:::{.remark}

Note that if $S$ is a closed surface, so $\del S = \emptyset$, this integral vanishes.
:::

:::{.corollary title="Green's Theorem"}
\[  
\oint _ { \del R } ( L ~d x + M ~d y ) = \iint _ { R } \left( \frac { \partial M } { \partial x } - \frac { \partial L } { \partial y } \right) d x d y
.\]
:::

:::{.proof title="?"}
Recovering Green's Theorem from Stokes' Theorem:

Let $\mathbf{F} = [L, M, 0]$, then $\nabla\cross \mathbf{F} = [0, 0, \frac{\partial M}{\partial x} - \frac{\partial L}{\partial y}]$
:::

:::{.corollary title="Divergence Theorem"}
\[  
\iint_ { \partial V } \mathbf { F } \cdot d \mathbf { S } = \iiint _ { V } ( \nabla \cdot \mathbf { F } ) ~d V
.\]
:::


:::{.remark}
\envlist
- $\nabla\cross(\nabla\phi) = 0$
- $\nabla\cdot(\nabla\cross \mathbf{F}) = 0$
:::

### Directional Derivatives

:::{.definition title="Directional Derivative"}
\[  
D_{\vector v} f(\vector p) \da \dd{f}{t}(\vector p + t\vector v) \evalfrom_{t=0}
.\]
:::

:::{.remark}
Note that the directional derivative uses a normalized direction vector!
:::

:::{.theorem title="Dot product expression of directional derivative"}
Suppose $f:\RR^n\to \RR$ and $\vector v\in \RR^n$. Then
\[  
D_{\vector v}f(\vector p) = \inner{\nabla f(\vector p)}{\vector v}
.\]
:::

:::{.proof title="?"}
We first use the fact that we can find $L$, the best linear approximation to $f$:
\[  
L(\vector x) &\da f(\vector p) + D_f(\vector p)(\vector x - \vector p) \\ \\ 
D_{\vector v}f(\vector p)
&= D_{\vector v} L(\vector p) \\
&= \lim_{t\to 0} {L(\vector p + t\vector v) - L(\vector p) \over t}\\
&= \lim_{t\to 0} {
f(\vector p) + D_f(\vector p)(\vector p + t\vector v - \vector p)
-\qty{f(\vector p) + D_f(\vector p)(\vector p - \vector p)}
\over t
}\\
&= \lim_{t\to 0} { D_f(\vector p)(t\vector v) \over t} \\
&= D_f(\vector p)\vector v \\
&\da \nabla f(\vector p) \cdot \vector v
.\]

\todo[inline]{Need a better proof, not clear that this works.}
:::


## Computing Integrals

### Changing Coordinates

#### Multivariable Chain Rule

\todo[inline]{todo}


#### Polar and Cylindrical Coordinates
\[
x = r\cos\theta \\
y = r\sin\theta \\
dV \mapsto r \quad dr~d\theta
\]

#### Spherical Coordinates

\[
x = r\cos\theta = \rho\sin\phi\cos\theta \\
y = r\sin\theta = \rho\sin\phi\sin\theta \\
dV \mapsto r^2 \sin\phi \quad dr~d\phi~d\theta
\]

### Line Integrals

#### Curves

- Parametrize the path $C$ as $\theset{\mathbf{r}(t): t\in[a,b]}$, then

\[
\int_C f ~ds
&\definedas \int_a^b (f\circ \mathbf{r})(t) ~\norm{\mathbf{r}'(t)}~dt \\
&= \int_a^b f(x(t), y(t), z(t)) \sqrt{x_t^2 + y_t^2 + z_t^2} ~dt
\]

#### Vector Fields

- If exact:
\[
\dd{}{y} \mathbf{F_1} = \dd{}{x} \mathbf{F_2} \implies
\int \mathbf{F_1} ~dx + \mathbf{F_2} ~dy = \phi(\mathbf{p_1}) - \phi(\mathbf{p_0})
\]

The function $\phi$ can be found using the same method from ODEs.

- Parametrize the path $C$ as $\theset{\mathbf{r}(t): t\in[a,b]}$, then
\[
\int_C \mathbf F \cdot d\mathbf r
& \definedas \int_a^b (\mathbf F \circ \mathbf r)(t) \cdot \mathbf r'(t) ~dt \\
&= \int_a^b [\mathbf F_1(x(t), y(t), \cdots), \mathbf F_2(x(t), y(t), \cdots)]\cdot[x_t, y_t, \cdots] ~dt \\
&= \int_a^b \mathbf F_1(x(t), y(t) \cdots)x_t + \mathbf F_2(x(t), y(t), \cdots)y_t + \cdots ~dt
\]

- Equivalently written:

\[
\int_a^b \mathbf F_1 ~dx + \mathbf F_2 ~dy + \cdots
\definedas \int_C \mathbf F \cdot d\mathbf r
\]
  in which case $[dx, dy, \cdots] \definedas [x_t, y_t, \cdots] = \mathbf r'(t)$.

- _Remember to substitute dx back into the integrand!!_

### Flux
\[  
\iint_S \mathbf{F}\cdot d\mathbf{S} = \iint_S \mathbf{F}\cdot \mathbf{\hat n} ~dS
.\]

### Area

:::{.proposition title="Areas can be computed with Green's Theorem"}
Given $R$ and $f(x,y) = 0$,
\[  
A(R) = \oint _ { \del R } x ~d y = - \oint _ { \del R } y ~d x = \frac { 1 } { 2 } \oint _ { \del R } - y ~d x + x ~d y
.
\]
:::

:::{.proof title="?"}
Compute
\[
\oint_{\del R} x ~dy = - \oint_{\del R} y ~dx \\
= \frac{1}{2} \oint_{\del R} -y~dx + x~dy
= \frac{1}{2} \iint_R 1 - (-1) ~dA   
=\iint_R 1 ~dA 
\]
:::


### Surface Integrals

- For a paramterization $\mathbf r(s,t): U \to S$ of a surface $S$ and any function $f: \RR^n \to \RR$,
\[
\iint _ { S } f ~dA = \iint _ { U } ( f \circ \mathbf r) ( s , t )~\norm{\mathbf n}  ~dA
\]
- Can obtain a normal vector $\mathbf n = T _ { u } \times T _ { v }$

## Other Results

:::{.example title="?"}
$\nabla \cdot \mathbf{F} = 0 \not \implies \exists G:~ \mathbf{F} = \nabla\cross G$. A counterexample 

$$
\mathbf{F}(x,y,z) =\frac{1}{\sqrt{x^2+y^2+z^2}}[x, y, z]~,\quad S = S^2 \subset \RR^3 \\ 
\implies \nabla \mathbf{F} = 0 \text{ but } \iint_{S^2}\mathbf{F}\cdot d\mathbf{S} = 4\pi \neq 0
$$
Where by Stokes' theorem, 
\[
\mathbf{F} 
= \nabla\cross\mathbf{G}\implies
\iint_{S^2} \mathbf{F} 
&= \iint_{S^2} \nabla\cross\mathbf{G}  \\ \\
&= \oint_{\del S^2}\mathbf{G}~d\mathbf{r}  && \text{by Stokes}\\
&= 0
\]
  since $\del S^2 = \emptyset$.  

:::

:::{.proposition title="Sufficient Conditions"}
Sufficient condition: if $\mathbf{F}$ is everywhere $C^1$,
\[
\exists \mathbf{G}:~ \mathbf{F} 
= \nabla \cross \mathbf{G} 
\iff \iint_S \mathbf{F}\cdot d\mathbf{S} = 0 \text{ for all closed surfaces }S
.\]
:::



# Linear Algebra

:::{.remark}
The underlying field will be assumed to be $\RR$ for this section.
:::

## Notation
\[  
\mat(m, n) && \text{the space of all } m\times n\text{ matrices} \\
T && \text{a linear map } \RR^n \to \RR^m \\
A\in \mat(m, n)&& \text{an } m\times n \text{ matrix representing }T \\
A^t\in \mat(n, m) && \text{an } n\times m \text{ transposed matrix} \\
\vector{a} && \text{a } 1\times n \text{ column vector} \\
\vector{a}^t && \text{an } n\times 1 \text{ row vector} \\
A = \tv{\vector a_1, \cdots, \vector a_n} && \text{a matrix formed with } \vector a_i \text{ as the columns} \\
V, W && \text{vector spaces} \\
|V|, \dim(W) && \text{dimensions of vector spaces} \\
\det(A) && \text{the determinant of }A \\
\begin{bmatrix}
A &\aug& \vector b
\end{bmatrix}
\da \thevector{\vector a_1, \vector a_2, \cdots \vector a_n, \vector b} && \text{augmented matrices} \\
\begin{bmatrix}
A &\aug& B
\end{bmatrix}
\da \thevector{\vector a_1, \cdots \vector a_n, \vector b_1, \cdots, \vector b_m} && \text{block matrices}\\
\spec(A) && \text{the multiset of eigenvalues of } A \\
A\vector x = \vector b && \text{a system of linear equations} \\
r\da \rank(A) && \text{the rank of }A\\
r_b = \rank\qty{ 
\begin{bmatrix}
A &\aug& \vector b \\
\end{bmatrix}
} && \text{the rank of }A\text{ augmented by }\vector b
.\]


## Big Theorems

:::{.theorem title="Rank-Nullity"}
\[  
\abs{\ker(A)} + \abs{\im(A)} = \abs{\dom(A)}
,\]
where $\nullity(A) = \abs{\im{A}}, \rank(A) = \abs{\im(A)},$ and $n$ is the number of columns in the corresponding matrix. 


Generalization: the following sequence is always exact:
\[
0 \to \ker(A) \injectsvia{\id} \dom(A) \surjectsvia{A} \im(A) \to 0
.\]
Moreover, it always splits, so $\dom A = \ker A \oplus \im A$ and thus $\abs{\dom(A)} = \abs{\ker(A)} + \abs{\im(A)}$.

:::

:::{.remark}
We also have
\[  
\dim(\rowspace(A)) = \dim(\colspace(A)) = \rank(A)
.\]
:::


## Big List of Equivalent Properties

Let $A$ be an $m\times n$ matrix. TFAE:
- $A$ is invertible and has a unique inverse $A^{-1}$
- $A^T$ is invertible
- $\det(A) \neq 0$
- The linear system $A\vector{x} = \vector{b}$ has a unique solution for every $b\ \in \RR^m$
- The homogeneous system $A\vector{x} = 0$ has only the trivial solution $\vector{x} = 0$
- $\rank(A) = n$ 
  - i.e. $A$ is full rank
- $\mathrm{nullity}(A) \definedas \dim\mathrm{nullspace}(A) = 0$
- $A = \prod_{i=1}^k E_i$ for some finite $k$, where each $E_i$ is an elementary matrix.
- $A$ is row-equivalent to the identity matrix $I_n$
- $A$ has exactly $n$ pivots
- The columns of $A$ are a basis for $\RR^n$
	- i.e. $\colspace(A) = \RR^n$
- The rows of $A$ are a basis for $\RR^m$
	- i.e. $\mathrm{rowspace}(A) = \RR^m$
- $\left(\colspace(A)\right)\perp = \left(\mathrm{rowspace}A\right)\perp = \theset{\vector 0}$
- Zero is not an eigenvalue of $A$.
- $A$ has $n$ linearly independent eigenvectors
- The rows of $A$ are coplanar.

Similarly, by taking negations, TFAE:

- $A$ is not invertible
- $A$ is singular
- $A^T$ is not invertible
- $\det A = 0$
- The linear system $A \vector x = \vector b$ has either no solution or infinitely many solutions.
- The homogeneous system $A \vector x = \vector 0$ has nontrivial solutions
- $\rank A < n$
- $\dim \mathrm{nullspace}~ A > 0$
- At least one row of $A$ is a linear combination of the others
- The $RREF$ of $A$ has a row of all zeros.

Reformulated in terms of linear maps $T$, TFAE:
- $T^{-1}: \RR^m \to \RR^n$ exists
- $\im(T) = \RR^n$
- $\ker(T) = 0$
- $T$ is injective
- $T$ is surjective
- $T$ is an isomorphism
- The system $A\vector{x} = 0$ has infinitely many solutions

## Vector Spaces

### Linear Transformations


:::{.definition title="Linear Transformation"}
\todo[inline]{todo}
:::

:::{.remark}
It is common to want to know the range and kernel of a specific linear transformation $T$. $T$ can be given in many ways, but a general strategy for deducing these properties involves:
	
- Express an arbitrary vector in $V$ as a linear combination of its basis vectors, and set it equal to an arbitrary vector in $W$.

- Use the linear properties of $T$ to make a substitution from known transformations

- Find a restriction or relation given by the constants of the initial linear combination.
:::

:::{.remark}
Useful fact: if $V\leq W$ is a subspace and $\dim(V) \geq \dim(W)$, then $V=W$.
:::

:::{.definition title="Kernel"}
\todo[inline]{todo}
:::

:::{.proposition title="Two-step vector subspace test"}
If $V\subseteq W$, then $V$ is a subspace of $W$ if the following hold:

\[  
(1) && \vector 0\in V \\
(2) && \vector a, \vector b\in V\implies t\vector a + \vector b\in V
.\]

:::

### Linear Independence



:::{.proposition title="?"}
Any set of two vectors $\theset{\vector v, \vector w}$ is linearly **dependent** $\iff \exists \lambda :~\vector v = \lambda \vector w$, i.e. one is not a scalar multiple of the other.

:::

### Bases

:::{.definition title="Basis and dimension"}
A set $S$ forms a **basis** for a vector space $V$ iff

1. $S$ is a set of linearly independent vectors, so $\sum \alpha_i \vec{s_i} = 0 \implies \alpha_i = 0$ for all $i$.
2. $S$ spans $V$, so $\vec{v} \in V$ implies there exist $\alpha_i$ such that $\sum \alpha_i \vec{s_i} = \vec{v}$

In this case, we define the **dimension** of $V$ to be $\abs{S}$.
:::


\todo[inline]{Show how to compute basis of kernel.}

\todo[inline]{Show how to compute basis of row space (nonzero rows in $\ref(A)$?)}


\todo[inline]{Show how to compute basis of column space: leading ones.}


### The Inner Product

The point of this section is to show how an inner product can induce a notion of "angle", which agrees with our intuition in Euclidean spaces such as $\RR^n$, but can be extended to much less intuitive things, like spaces of functions.

:::{.definition title="The standard inner product"}
The **Euclidean inner product** is defined as
\[
\inner{\vector a}{\vector b} = \sum_{i=1}^n a_i b_i = a_1b_1 + a_2b_2 + \cdots + a_nb_n
.\]

Also sometimes written as $\vector a^T\vector b$ or $\vector a \cdot \vector b$. 
:::

:::{.proposition title="Inner products induce norms and angles"}
Yields a norm 
\[
\norm{\vector x} \da \sqrt{\inner{\vector x}{\vector x}}
\]


which has a useful alternative formulation
\[
\inner{\vector x}{\vector x} = \norm{\vector x}^2
.\]

This leads to a notion of angle:
\[
\inner{\vector x}{\vector y} = \norm{\vector x} \norm{\vector y} \cos\theta_{x,y}
\implies \cos \theta_{x,y} \definedas \frac{\inner{\vector x}{\vector y}}{\norm{\vector x} \norm{\vector y}} = \inner{\hat{\vector x}}{\hat{\vector y}}
\]
where $\theta_{x,y}$ denotes the angle between the vectors $\vector x$ and $\vector y$.
:::

:::{.remark}
Since $\cos \theta=0$ exactly when $\theta = \pm \frac \pi 2$, we can can declare two vectors to be **orthogonal** exactly in this case:
\[  
\vector x \in \vector y\perp \iff \inner{\vector x}{\vector y} = 0
.\]

Note that this makes the zero vector orthogonal to everything.
:::


:::{.definition title="Orthogonal Complement/Perp"}
Given a subspace $S \subseteq V$, we define its **orthogonal complement**
\[
S\perp = \theset{\vector v\in V \suchthat \forall \vector s\in S,~ \inner{\vector v}{\vector s} = 0}.
\]
:::

:::{.remark}
Any choice of subspace $S\subseteq V$ yields a decomposition $V = S \oplus S\perp$. 
:::

:::{.proposition title="Formula expanding a norm and 'Pythagorean theorem'"}
A useful formula is
\[  
\norm{\vector x + \vector y}^2 = \norm{\vector x}^2 + 2\inner{\vector x}{\vector y} + \norm{\vector y}^2,
.\]

When $\vector x\in \vector y\perp$, this reduces to
\[  
\norm{\vector x + \vector y}^2 = \norm{\vector x}^2 + \norm{\vector y}^2
.\]
:::


:::{.proposition title="Properties of the inner product"}
\envlist
1. **Bilinearity:** 
\[
\inner{\sum_j \alpha_j \vector a_j}{\sum_k \beta_k \vector b_k} = \sum_j \sum_i \alpha_j \beta_i \inner{\vector a_j}{\vector b_i}.
\]

2. **Symmetry**: 
\[
\inner{\vector a}{\vector b} = \inner{\vector b}{\vector a}
\]

3. **Positivity**: 
\[
\vector a \neq \vector 0 \implies \inner{\vector a}{\vector a} > 0
\]

4. **Nondegeneracy**:
\[
\vector a = \vector 0 \iff \inner{\vector a}{\vector a} = 0
\]
:::


\todo[inline]{Proof of Cauchy-Schwarz: See Goode page 346.}

### Gram-Schmidt Process

Extending a basis $\theset{\mathbf{x}_i}$ to an orthonormal basis $\theset{\vector u_i}$

\[
\vector u_1 &= N(\vector{x_1}) \\
\vector u_2 &= N(\vector x_2 - \inner{\vector x_2}{\vector u_1}\vector u_1)\\
\vector u_3 &= N(\vector x_3 - \inner{\vector x_3}{\vector u_1}\vector u_1 - \inner{\vector x_3}{\vector u_2}\vector u_2 ) \\
\vdots & \qquad \vdots \\
\vector u_k &= N(\vector x_k - \sum_{i=1}^{k-1} \inner{\vector x_k}{\vector u_i}\vector u_i)
\]

where $N$ denotes normalizing the result.



#### In more detail

The general setup here is that we are given an orthogonal basis $\theset{\vector x_i}_{i=1}^n$ and we want to produce an **orthonormal** basis from them.

Why would we want such a thing? Recall that we often wanted to change from the standard basis $\mathcal{E}$ to some different basis $\mathcal{B} = \theset{\vector b_1, \vector b_2, \cdots}$. We could form the change of basis matrix $B = [\vector b_1, \vector b_2, \cdots]$ acts on vectors in the $\mathcal{B}$ basis according to
\[  
B[\vector x]_\mathcal{B} = [\vector x]_{\mathcal{E}}
.\]

But to change from $\mathcal{E}$ to $\mathcal{B}$ requires computing $B^{-1}$, which acts on vectors in the standard basis according to
\[  
B^{-1}[\vector x]_\mathcal{E} = [\vector x]_{\mathcal{B}}
.\]

If, on the other hand, the $\vector b_i$ are orthonormal, then $B^{-1} = B^T$, which is much easier to compute. We also obtain a rather simple formula for the coordinates of $\vector x$ with respect to $\mathcal B$. This follows because we can write
\[  
\vector x = \sum_{i=1}^n \inner{\vector x}{\vector b_i} \vector b_i \definedas \sum_{i=1}^n c_i \vector b_i,
.\]

and we find that 
\[  
[\vector x]_\mathcal{B} = \vector c \definedas [c_1, c_2, \cdots, c_n]^T.
.\]

This also allows us to simplify projection matrices. Supposing that $A$ has orthonormal columns and letting $S$ be the column space of $A$, recall that the projection onto $S$ is defined by
\[  
P_S = Q(Q^TQ)^{-1}Q^T
.\]

Since $Q$ has orthogonal columns and satisfies $Q^TQ = I$, this simplifies to
\[  
P_S = QQ^T.
.\]

#### The Algorithm

Given the orthogonal basis $\theset{\vector x_i}$, we form an orthonormal basis $\theset{\vector u_i}$ iteratively as follows. 

First define 
\[
N: \RR^n &\to S^{n-1} \\
\vector x &\mapsto \hat{\vector x} \definedas \frac {\vector x} {\norm{\vector  x}}
\]

which projects a vector onto the unit sphere in $\RR^n$ by normalizing. Then,

\[
\vector u_1 &= N(\vector{x_1}) \\
\vector u_2 &= N(\vector x_2 - \inner{\vector x_2}{\vector u_1}\vector u_1)\\
\vector u_3 &= N(\vector x_3 - \inner{\vector x_3}{\vector u_1}\vector u_1 - \inner{\vector x_3}{\vector u_2}\vector u_2 ) \\
\vdots & \qquad \vdots \\
\vector u_k &= N(\vector x_k - \sum_{i=1}^{k-1} \inner{\vector x_k}{\vector u_i}\vector u_i)
\]

In words, at each stage, we take one of the original vectors $\vector x_i$, then subtract off its projections onto all of the $\vector u_i$ we've created up until that point. This leaves us with only the component of $\vector x_i$ that is orthogonal to the span of the previous $\vector u_i$ we already have, and we then normalize each $\vector u_i$ we obtain this way.

**Alternative Explanation**:

Given a basis
\[
  S = \left\{\mathbf{v_1, v_2, \cdots v_n}\right\},
\]

the Gram-Schmidt process produces a corresponding orthogonal basis
\[
  S' = \left\{\mathbf{u_1, u_2, \cdots u_n}\right\}
\]
that spans the same vector space as $S$.

$S'$ is found using the following pattern:
\[
\mathbf{u_1} &= \mathbf{v_1} \\
\mathbf{u_2} &= \mathbf{v_2} - \text{proj}_{\mathbf{u_1}} \mathbf{v_2}\\
\mathbf{u_3} &= \mathbf{v_3} - \text{proj}_{\mathbf{u_1}} \mathbf{v_3} - \text{proj}_{\mathbf{u_2}} \mathbf{v_3}\\
\]

where
\[
\text{proj}_{\mathbf{u}} \mathbf{v} = (\text{scal}_{\mathbf{u}} \mathbf{v})\frac{\mathbf{u}}{\mathbf{\norm{u}}}
= \frac{\langle \mathbf{v,u} \rangle}{\norm{\mathbf{u}}}\frac{\mathbf{u}}{\mathbf{\norm{u}}}
= \frac{\ip{\vector{v}}{\vector{u}}}{\norm{\vector{u}}^2}\vector{u}
\]
is a vector defined as the \textit{orthogonal projection of $\vector{v}$ onto $\vector{u}$.}


![Image](figures/image_2020-11-10-01-22-34.png)

The orthogonal set $S'$ can then be transformed into an orthonormal set $S''$ by simply dividing the vectors $s\in S'$ by their magnitudes. The usual definition of a vector's magnitude is
\[
\norm{\vector{a}} = \sqrt{\ip{\vector{a}}{\vector{a}}} \text{ and } \norm{\vector{a}}^2 = \ip{\vector{a}}{\vector{a}}
\]

As a final check, all vectors in $S'$ should be orthogonal to each other, such that
\[
\ip{\vector{v_i}}{\vector{v_j}} = 0 \text{ when } i \neq j
\]

and all vectors in $S''$ should be orthonormal, such that
\[
\ip{\vector{v_i}}{\vector{v_j}} = \delta_{ij}
\]

### The Fundamental Subspaces Theorem

Given a matrix $A \in \mathrm{Mat}(m, n)$, and noting that
\[
A &: \RR^n \to \RR^m,\\
A^T &:  \RR^m \to \RR^n
\]

We have the following decompositions:
\[
&\RR^n &\cong  \ker A &\oplus \im A^T &\cong \mathrm{nullspace}(A) &\oplus~ \mathrm{colspace}(A^T) \\
&\RR^m &\cong  \im A &\oplus \ker A^T &\cong \mathrm{colspace}(A) &\oplus~ \mathrm{nullspace}(A^T)
\]

### Computing change of basis matrices

\todo[inline]{todo}

## Matrices

:::{.remark}
An $m\times n$ matrix is a map from $n$-dimensional space to $m$-dimensional space. 
The number of _rows_ tells you the dimension of the codomain, the number of _columns_ tells you the dimension of the _domain_.
:::

:::{.warning}
The space of matrices is not an integral domain!
Counterexample: if $A$ is singular and nonzero, there is some nonzero $\vector v$ such that $A \vector v = \vector 0$.
Then setting $B = \tv{\vector v, \vector v, \cdots}$ yields $AB = 0$ with $A\neq 0, B\neq 0$.
:::

:::{.definition title="Rank of a matrix"}
The **rank** of a matrix $A$ representing a linear transformation $T$ is $\dim \colspace(A)$, or equivalently $\dim \im T$.
:::

:::{.proposition title="?"}
$\rank(A)$ is equal to the number of nonzero rows in $\rref(A)$.
:::

:::{.definition title="Trace of a Matrix"}
\[
\mathrm{Trace}(A) = \sum_{i=1}^m A_{ii}
\]
:::

:::{.definition title="Elementary Row Operations"}
The following are **elementary row operations** on a matrix:

- Permute rows
- Multiple a row by a scalar
- Add any row to another
:::

:::{.proposition title="Formula for matrix multiplication"}
If $A = \thevector{\vector a_1, \vector a_2, \cdots} \in \mathrm{Mat}(m, n)$ and $B = \thevector{\vector b_1, \vector b_2, \cdots} \in\mathrm{Mat}(n, p)$, then
\[
C \definedas AB \implies c_{ij} = \sum_{k=1}^n a_{ik}b_{kj} = \inner{\mathbf{a_i}}{\mathbf{b_j}}
\]
where $1\leq i \leq m$ and $1\leq j \leq p$.
In words, each entry $c_{ij}$ is obtained by dotting *row* $i$ of $A$ against *column* $j$ of $B$.
:::

### Systems of Linear Equations


:::{.definition title="Consistent and inconsistent"}
A system of linear equations is **consistent** when it has at least one solution.
The system is **inconsistent** when it has no solutions.
:::

:::{.definition title="Homogeneous Systems"}
?
:::

:::{.remark}
Homogeneous systems are always consistent, i.e. there is always at least one solution.
:::

:::{.remark}
\envlist
- Tall matrices: more equations than unknowns, *overdetermined*
- Wide matrices: more unknowns than equations, *underdetermined*
:::

:::{.proposition title="Characterizing solutions to a system of linear equations"}

There are three possibilities for a system of linear equations:

1. No solutions (inconsistent)
2. One unique solution (consistent, square or tall matrices)
3. Infinitely many solutions (consistent, underdetermined, square or wide matrices)

![](figures/solution_sets.png)

These possibilities can be check by considering $r\da \rank(A)$:

- $r < r_b$: case 1, no solutions.
- $r = r_b$: case 1 or 2, at least one solution. 
  - $r_b = n$: case 2, a unique solution.
  - $r_b < n:$ case 3, infinitely many solutions.
:::


### Determinants

:::{.proposition title="?"}
\[
\det{(A \mod p}) \mod p \equiv (\det{A}) \mod p
\]
:::

:::{.proposition title="Inverse of a $2\times 2$ matrix"}
For $2\times 2$ matrices,
$$
A^{-1} = \left( \begin{array}{cc} a & b \\ c & d \end{array}\right)^{-1} = \frac{1}{\det{A}}\left( \begin{array}{cc} d & -b \\ -c & a \end{array}\right)
$$
In words, swap the main diagonal entries, and flip the signs on the off-diagonal.
:::



:::{.proposition title="Properties of the determinant"}
Let $A \in \mathrm{Mat}(m, n)$, then there is a function
\[
\det: \mat(m, m) &\to \RR \\
A &\mapsto \det(A)
\]
satisfying the following properties:

- $\det$ is a group homomorphism onto $(\RR, \cdot)$: 
\[
\det(AB) = \det(A) \det(B)
\]
  - Some corollaries:
  \[  
  \det{A^k} &= k\det{A} \\
  \det(A^{-1}) &= (\det A)^{-1}
  \det(A^t) &= \det(A)
  .\]

- Invariance under adding scalar multiples of any row to another:
\[
\det 
\begin{bmatrix}
& \vdots & \\
\horzbar & \vecc{Aquamarine}a_i & \horzbar \\
& \vdots & \\
\end{bmatrix}
=
\det
\begin{bmatrix}
& \vdots & \\
\horzbar & \vecc{Aquamarine}a_i + t\vector{a_j} & \horzbar \\
& \vdots & \\
\end{bmatrix}
\]

- Sign change under row permutation:
\[
\det 
\begin{bmatrix}
& \vdots & \\
\horzbar & \vecc{Aquamarine}a_i & \horzbar \\
& \vdots & \\
\horzbar & \vector a_j & \horzbar \\
& \vdots & \\
\end{bmatrix}
=
(-1) \det
\begin{bmatrix}
& \vdots & \\
\horzbar & \vector a_j & \horzbar \\
& \vdots & \\
\horzbar & \vecc{Aquamarine}a_i & \horzbar \\
& \vdots & 
\end{bmatrix}
\]

  - More generally, for a permutation $\sigma\in S_n$,
\[
\det 
\begin{bmatrix}
& \vdots & \\
\horzbar & \vector a_i & \horzbar \\
& \vdots & \\
\horzbar & \vector a_j & \horzbar \\
& \vdots & \\
\end{bmatrix}
=
(-1)^{\sgn(\sigma)} \det
\begin{bmatrix}
& \vdots & \\
\horzbar & \vector a_{\sigma(j)} & \horzbar \\
& \vdots & \\
\horzbar & \vector a_{\sigma(i)} & \horzbar \\
& \vdots & 
\end{bmatrix}
\]

- Multilinearity in rows:
\[  
\det 
\begin{bmatrix}
& \vdots & \\
\horzbar & t \vecc{Aquamarine}a_i & \horzbar \\
& \vdots & \\
\end{bmatrix}
&= t \det
\begin{bmatrix}
& \vdots & \\
\horzbar & \vecc{Aquamarine}a_i & \horzbar \\
& \vdots & \\
\end{bmatrix} \\
\det 
\begin{bmatrix}
\horzbar & t \vector a_1 & \horzbar \\
\horzbar & t \vector a_2 & \horzbar \\
& \vdots & \\
\horzbar & t \vector a_m & \horzbar \\
\end{bmatrix}
&= t^m \det
\begin{bmatrix}
\horzbar & \vector a_1 & \horzbar \\
\horzbar & \vector a_2 & \horzbar \\
& \vdots & \\
\horzbar & \vector a_m & \horzbar \\
\end{bmatrix} \\
\det 
\begin{bmatrix}
\horzbar & t_1 \vector a_1 & \horzbar \\
\horzbar & t_2 \vector a_2 & \horzbar \\
& \vdots & \\
\horzbar & t_m \vector a_m & \horzbar \\
\end{bmatrix}
&= \prod_{i=1}^m t_i \det
\begin{bmatrix}
\horzbar & \vector a_1 & \horzbar \\
\horzbar & \vector a_2 & \horzbar \\
& \vdots & \\
\horzbar & \vector a_m & \horzbar \\
\end{bmatrix}
.\]

- Linearity in each row:
\[  
\det
\begin{bmatrix}
& \vdots & \\
\horzbar & \vecc{Aquamarine}a_i + \vecc{red} a_j & \horzbar \\
& \vdots & \\
\end{bmatrix}
=\det
\begin{bmatrix}
& \vdots & \\
\horzbar & \vecc{Aquamarine}a_i & \horzbar \\
& \vdots & \\
\end{bmatrix} +
\det
\begin{bmatrix}
& \vdots & \\
\horzbar & \vecc{red}a_j & \horzbar \\
& \vdots & \\
\end{bmatrix} 
.\]

- $\det(A)$ is the volume of the parallelepiped spanned by the columns of $A$.
- If any row of $A$ is all zeros, $\det(A) = 0$.
:::

:::{.proposition title="Characterizing singular matrices"}
TFAE:

- $\det(A) = 0$
- $A$ is singular.
:::

### Computing Determinants

Useful shortcuts:

- If $A$ is upper or lower triangular, $\det(A) = \prod_i a_{ii}$.

:::{.definition title="Minors"}
The **minor** $M_{ij}$ of $A\in \mat(n, n)$ is the *determinant* of the $(n-1) \times (n-1)$ matrix obtained by deleting the $i$th row and $j$th column from $A$.
:::

:::{.definition title="Cofactors"}
\label{def:cofactor}
The **cofactor** $C_{ij}$ is the scalar defined by
\[  
C_{ij} \da (-1)^{i+j} M_{ij}
.\]
:::

:::{.proposition title="Laplace/Cofactor Expansion"}
For any fixed $i$, there is a formula
\[  
\det(A) = \sum_{j=1}^n a_{ij} C_{ij}
.\]
:::

:::{.example title="?"}
Let
\[  
A = 
\left[\begin{array}{lll}
1 & 2 & 3 \\
4 & 5 & 6 \\
7 & 8 & 9
\end{array}\right]
.\]

Then
\[  
\det A =
1 \cdot\left|\begin{array}{ll}
5 & 6 \\
8 & 9
\end{array}\right|-2 \cdot\left|\begin{array}{ll}
4 & 6 \\
7 & 9
\end{array}\right|+3 \cdot\left|\begin{array}{ll}
4 & 5 \\
7 & 8
\end{array}\right|
= 1 \cdot(-3)-2 \cdot(-6)+3 \cdot(-3)
= 0
.\]

:::

:::{.proposition title="Computing determinant from RREF"}
$\det(A)$ can be computed by reducing $A$ to $\rref(A)$ 
(which is upper triangular) and keeping track of the following effects:

- $R_i \mapsfrom R_i \pm t R_j$: no effect.
- $R_i \tofrom R_j$: multiply by $(-1)$. 
- $R_i \mapsfrom tR_i$: multiply by $t$.
:::


### Inverting a Matrix


:::{.proposition title="Cramer's Rule"}
Given a linear system $A\vector x = \vector b$, writing $\vector x = \tv{x_1, \cdots, x_n}$, there is a formula
\[
x_i = \frac{\det(B_i)}{\det(A)}
\]
where $B_i$ is $A$ with the $i$th column deleted and replaced by $\vector{b}$.
:::

:::{.proposition title="Gauss-Jordan Method for inverting a matrix"}
Under the equivalence relation of elementary row operations, there is an equivalence of augmented matrices:
\[
\begin{bmatrix}
A &\aug& I
\end{bmatrix}
\sim
\begin{bmatrix}
I &\aug& A^{-1}
\end{bmatrix}
\]
where $I$ is the $n\times n$ identity matrix.
:::

:::{.proposition title="Cofactor formula for inverse"}
\[  
A^{-1} = {1\over \det(A)} \tv{C_{ij}}^t
.\]
where $C_{ij}$ is the *cofactor*(\cref{def:cofactor}) at position $i,j$.[^adjugate_note]

[^adjugate_note]: Note that the matrix appearing here is sometimes called the *adjugate*.

:::

:::{.example title="Inverting a $2\times 2$ matrix"}
\[
\left(\begin{array}{cc} 
a& b \\ 
c& d 
\end{array}\right)^{-1} 
= 
{1 \over a d - b c} 
\left(\begin{array}{rr} 
d  & -b \\ 
-c & a 
\end{array}\right)
\quad 
\text{ where } ad-bc \ne 0
\]

What's the pattern?

1. Always divide by determinant
2. Swap the diagonals
3. Hadamard product with checkerboard 

:::

:::{.example title="Inverting a $3\times 3$ matrix"}
\[
\begin{bmatrix}
+ & - \\
- & +
\end{bmatrix}
\]

\[
A^{-1} \da
\begin{bmatrix}
a & b & c \\
d & e & f \\
g & h & i
\end{bmatrix}
^{-1} 
= 
{1 \over {\det A}} 
\begin{bmatrix}
e i - f h & -(b i - c h) & b f - c e \\ 
-(d i - f g) &a i - c g &-(a f -c d) \\ 
d h - e g & -(a h - b g)& a e - b d 
\end{bmatrix}
.\]

The pattern:

1. Divide by determinant
2. Each entry is determinant of submatrix of $A$ with corresponding col/row deleted
3. Hadamard product with checkerboard

\[
\begin{bmatrix}
+ & - & + \\ 
- & + & - \\  \
+ & - & + 
\end{bmatrix}
\]

4. Transpose at the end!!


:::

### Bases for Spaces of a Matrix

Let $A\in \mat(m, n)$ represent a map $T:\RR^n\to \RR^m$.

\todo[inline]{Add examples.}

:::{.definition title="Pivot"}
?
:::
\todo[inline]{todo}

:::{.proposition}
\[  
\dim \rowspace(A) = \dim \colspace(A)
.\]
:::

#### The row space

\[
\im(T)\dual = \rowspace(A) \subset \RR^n
.\]

Reduce to RREF, and take nonzero rows of $\mathrm{RREF}(A)$.

#### The column space

\[
\im(T) = \colspace(A) \subseteq \RR^m
\]

Reduce to RREF, and take columns with pivots from original $A$.

:::{.remark}
Not enough pivots implies columns don't span the entire target domain
:::

#### The nullspace

\[
\ker(T) = \nullspace(A) \subseteq \RR^n
\]

Reduce to RREF, zero rows are free variables, convert back to equations and pull free variables out as scalar multipliers.

#### Eigenspaces

For each $\lambda \in \spec(A)$, compute a basis for $\ker(A - \lambda I)$.


### Eigenvalues and Eigenvectors

:::{.definition title="Eigenvalues, eigenvectors, eigenspaces"}
A vector $\vector v$ is said to be an **eigenvector** of $A$ with **eigenvalue** $\lambda\in \spec(A)$ iff
\[
A\vector v = \lambda \vector v
\]
For a fixed $\lambda$, the corresponding **eigenspace** $E_\lambda$ is the span of all such vectors.
:::

:::{.remark}
\envlist
- Similar matrices have identical eigenvalues and multiplicities.

- Eigenvectors corresponding to distinct eigenvalues are **always** linearly independent

- $A$ has $n$ distinct eigenvalues $\implies A$ has $n$ linearly independent eigenvectors.

- A matrix $A$ is diagonalizable $\iff A$ has $n$ linearly independent eigenvectors.
:::

:::{.proposition title="How to find eigenvectors"}
For $\lambda\in \spec(A)$,
\[  
\vector v\in E_\lambda \iff \vector v \in \ker(A-I\lambda)
.\]

:::


:::{.remark}
Some miscellaneous useful facts:

- $\lambda \in \spec(A) \implies \lambda^2 \in \spec(A^2)$ with the same eigenvector.

- $\prod \lambda_i = \det A$

- $\sum \lambda_i = \mathrm{Tr}~A$

:::

#### Finding generalized eigenvectors

\todo[inline]{todo}

#### Diagonalizability

:::{.remark}
An $n\times n$ matrix $P$ is diagonalizable iff its eigenspace is all of $\mathbb{R}^n$ (i.e. there are $n$ linearly independent eigenvectors, so they span the space.) 
:::

:::{.remark}
$A$ is diagonalizable if there is a basis of eigenvectors for the range of $P$.
:::

### Useful Counterexamples

$$
A \da \left[ \begin{array} { c c } { 1 } & { 1 } \\ { 0 } & { 1 } \end{array} \right] 
&\implies A^n = 
\left[ \begin{array} { c c } { 1 } & { n } \\ { 0 } & { 1 } \end{array} \right], 
&& \spec(A) = [1,1] \\
A \da \left[ \begin{array} { c c } { 1 } & { 1 } \\ { 0 } & { - 1 } \end{array} \right] 
&\implies A^2 = I_2,
&& \spec(A) = [1, -1]
$$



## Example Problems

:::{.problem title="?"}
Determine a basis for
\[
S = \left\{a_0 + a_1 x + a_2 x^2\mid a_0,a_1,a_2 \in \mathbb{R} \land a_0 - a_1 -2a_2 =0\right\}.
\]
:::

\hrulefill

:::{.solution}
Let $a_2=t, a_1=s, a_0=s+2t$, then
\[
S 	  &= \left\{ (s+2t) + (sx+tx^2)\mid s,t\in\mathbb{R} \right\} \\
&= \left\{ (s+sx) + (2t+tx^2)\mid s,t\in\mathbb{R} \right\} \\
&= \left\{ s(1+x) + t(2+x^2)\mid s,t\in\mathbb{R} \right\} \\
&= \text{span}\left\{(1+x),(2+x^2)\right\}
\]

and a basis for $S$ is
\[
\left\{(1+x), (2+x^2)\right\}
\]

:::


:::{.problem title="?"}
\textbf{T/F}: If $V$ is an $n$-dimensional vector space, then every set $S$ with fewer than $n$ vectors can be extended to a basis for $V$.



:::

:::{.solution}
\textbf{False.} Only \textit{linearly independent} sets with fewer than $n$ vectors can be extended to form a basis for $V$.
:::

:::{.problem title="?"}
\textbf{T/F}: The set of all 3 x 3 \textit{upper triangular} matrices forms a three-dimensional subspace of $M_{3}(\mathbb{R})$.
:::

:::{.solution}
\textbf{False.} This set forms a 6-dimensional subspace. A basis for this space would require six elements.
:::


:::{.problem title="?"}
Given $A=$
\[\begin{bmatrix}
  1 	& 3 `	\\
  -2 	& -6
\end{bmatrix}\]
what is the dimension of the null space of $A$?
:::

:::{.solution}
The augmented matrix for the system $A\mathbf{x} = \mathbf{0}$ is
\[\begin{bmatrix}[cc|c]
1 & 3 & 0	\\
0 & 0 & 0
\end{bmatrix}\]
which has one free variable.

Writing one variable in terms of another results in $x_1 + 3x_2 = 0 \Rightarrow x_1 = 3x_2$.

Let $x_2 = r$ where $r \in R$, then $S = \left\{ x \in \mathbb{R}^2 : \mathbf{x} = r(3,1), r \in \mathbb{R}\right\} = \text{span}\left\{(3,1)\right\}$.

So, the set $B = \left\{(3,1)\right\}$ is a basis for the null space of $A$ and\\ \underline{the dimension of the null space is 1}.


:::

:::{.problem title="?"}
Let $S$ be the subspace of $\mathbb{R}^3$ that consists of all solutions to the equation $x-3y+z = 0$. Determine a basis for $S$, and find dim[$S$].
:::

:::{.solution}
The first goal is to find a way to express the set of 3-tuples that satisfy this equation.

Let $y=r$ and $z=s$, then $x=r-s$. Then vectors $\mathbf{v}$ that satisfy the equation are all of the form
\[
\mathbf{v} = (3r-s, r, s) = (3r,r,0)+(-s,0,s) = r(3,1,0) + s(-1,0,1).
\]
(Note - the goal here is to separate the dependent variables into different vectors so they can be written as a linear combination of something.)

The set $S$ that satisfies this equation is then
\[
S &= \left\{ \mathbf{v} \in \mathbb{R}^3 : \mathbf{v} =r(3,1,0) + s(-1,0,1) \land r,s\in\mathbb{R} \right\} \\
&= \text{span}\left\{ (3,1,0), (-1,0,1)\right\}
\]

All that remains is to check that the vectors in this span are linearly independent. This can be done by showing that \textbf{if}
\[
a(3,1,0) + b(-1,0,1) = (0,0,0)
\]
\textbf{then} $a=b=0$.

Since the two vectors are linearly independent and span the solution set $S$, they form a basis for $S$ of dimension 2.


:::


:::{.problem title="?"}
Determine a basis for the subspace of $M_2(\mathbb{R})$ spanned by
\[\begin{bmatrix}
-1 & 3 \\
-1 & 2
\end{bmatrix}\]

\[\begin{bmatrix}
0 & 0 \\
0 & 0
\end{bmatrix}\]

\[\begin{bmatrix}
-1 & 4 \\
1 & 1
\end{bmatrix}\]

\[\begin{bmatrix}
5 & 6 \\
-5 & 1
\end{bmatrix}\].\
:::

:::{.solution}
Note that because the set contains the zero matrix, it is linearly dependent. So only consider the other three, as they span the same subspace as the original set.

First, determine if $\left\{ A_1, A_2, A_3\right\}$ is linearly independent. Start with the equation
\[
c_1A_1 + c_2A_2 + c_3A_3 = 0_2
\]

which gives
\[
c_1 - 	c_2 + 	5c_3 	&= 0 \\
3c_1 + 	4c_2 -	6c_3 	&= 0 \\
-c_1 +	c_2 - 	5c_3 	&= 0 \\
2c_1 + 	c_2 + 	c_3 	&= 0
\]

which has the solution $(-2r,3r,r)$. So the set is linearly dependent by the relation
\[
-2A_1 + 3A_2 + A_3 = 0 \text{ or }\\
A_3 = 2A_1 - 3A_2
\]

So $\left\{A_1, A_2\right\}$ spans the same subspace as the original set. It is also linearly independent, and therefore forms a basis for the original subspace.

:::


:::{.problem title="?"}
Let $A, B, C \in M_2 (\mathbb{R})$. Define $\langle A,B\rangle = a_{11}b_{11}+2a_{12}b{12}+3a_{21}b_{21}$. Does this define an inner product on $M_2 (\mathbb{R})$?
::: 

:::{.problem title="?"}
Instead, let $\langle A,B\rangle = a_{11} + b_{22}$. Does this define an inner product on $M_2(\mathbb{R})$?
::: 

:::{.problem title="?"}
Let $p=a_0 + a_1 x + a_2 x^2$ and $q=b_0 + b_1 x + b_2 x^2$.
Define $\langle p,q\rangle = \sum_{i=0}^{2}(i+1)a_i b_i$. Does this define an inner product on $P_2$?
::: 




# Linear Algebra: Advanced Topics

## Changing Basis

:::{.proposition title="Changing to the standard basis"}
The transition matrix from a given basis $\mathcal{B} = \ts{\vector b_i}_{i=1}^n$ to the standard basis is given by 
\[  
A\da
\begin{bmatrix}
\vertbar    & \vertbar    &        & \vertbar \\
\vector b_1 & \vector b_2 & \cdots & \vector b_n \\
\vertbar    & \vertbar    &        & \vertbar \\
\end{bmatrix}
,\]
and the transition matrix from the standard basis to $\mathcal{B}$ is $A\inv$.
:::



## Orthogonal Matrices

Given a notion of orthogonality for vectors, we can extend this to matrices. A square matrix is said to be orthogonal iff $QQ^T = Q^TQ = I$. For rectangular matrices, we have the following characterizations:
\[
QQ^T = I \implies &\text{The rows of } Q \text { are orthogonal,} \\
Q^TQ = I \implies &\text{The columns of } Q \text{ are orthogonal.}
\]

To remember which condition is which, just recall that matrix multiplication $AB$ takes the inner product between the **rows** of $A$ and the **columns** of $B$. So if, for example, we want to inspect whether or not the columns of $Q$ are orthogonal, we should let $B=Q$ in the above formulation -- then we just note that the rows of $Q^T$ are indeed the columns of $Q$, so $Q^TQ$ computes the inner products between all pairs of the columns of $Q$ and stores them in a matrix.



## Projections

:::{.remark}
A projection $P$ induces a decomposition
\[  
\dom(P) = \ker(P) \oplus \ker(P)\perp
.\]
:::
\todo[inline]{Check! Domain or range..?}


Distance from a point $\vector p$ to a line $\vector a + t\vector b$: let $\vector w = \vector p - \vector a$, then: $\norm{\vector w - P(\vector w, \vector v)}$

:::{.proposition title="Projection onto range"}
\[  
\projection_{\range(A)}(\vector x) = A(A^t A)^{-1} A^t \vector x
.\]

Mnemonic: 
\[  
P \approx {A^t A \over AA^t}
.\]
:::


With an inner product in hand and a notion of orthogonality, we can define a notion of **orthogonal projection** of one vector onto another, and more generally of a vector onto a subspace spanned by multiple vectors.

### Projection Onto a Vector
 Say we have two vectors $\vector x$ and $\vector y$, and we want to define "the component of $\vector x$ that lies along $\vector y$", which we'll call $\vector p$. We can work out what the formula should be using a simple model:


We notice that whatever $p$ is, it will in the direction of $\vector y$, and thus $\vector p = \lambda \hat {\vector y}$ for some scalar $\lambda$, where in fact $\lambda = \norm {\vector p}$ since $\norm{\hat{\vector y}} = 1$. 
We will find that $\lambda = \inner{\vector x}{\hat{\vector y}}$, and so
\[  
\vector p = \inner{\vector x}{\hat{\vector y}}\hat{\vector y} = \frac{\inner{\vector x}{\vector y}}{\inner{\vector y}{\vector y}} \vector y
.\]

Notice that we can then form a "residual" vector $\vector r = \vector x - \vector p$, which should satisfy $\vector r \perp \vector p$. If we were to let $\lambda$ vary as a function of a parameter $t$ (making $\vector r$ a function of $t$ as well) we would find that this particular choice minimizes $\norm{\vector r (t)}$.

### Projection Onto a Subspace

In general, supposing one has a subspace $S = \mathrm{span}\theset{\vector y_1, \vector y_2, \cdots, \vector y_n}$ and (importantly!) the $\vector y_i$ are orthogonal, then the projection of $\vector p$ of $x$ onto $S$ is given by the sum of the projections onto each basis vector, yielding

\[
\vector p = \sum_{i=1}^n \frac{\inner{\vector x}{\vector y_i}}{\inner{\vector y_i}{\vector y_i}} \vector y_i = \sum_{i=1}^n \inner{\vector x}{\vector y_i} \hat{\vector y_i}
.\]

> Note: this is part of why having an orthogonal basis is desirable!

Letting $A = [\vector y_1, \vector y_2, \cdots]$, then the following matrix projects vectors onto $S$, expressing them in terms of the basis $\vector y_i$[^projmatrix]:
$$
\tilde P_A = (AA^T)^{-1}A^T,
$$

while this matrix performs the projection and expresses it in terms of the standard basis:
$$
P_A = A(AA^T)^{-1}A^T.
$$

Equation of a plane: given a point $\vector p_0$ on a plane and a normal vector $\vector n$, any vector $\vector x$ on the plane satisfies
$$
\inner{\vector x - \vector p_0}{\vector n} = 0
$$

To find the distance between a point $\vector a$ and a plane, we need only project $\vector a$ onto the subspace spanned by the normal $\vector n$:
\[  
d = \inner{\vector a}{\vector n}
.\]


One important property of projections is that for any vector $\vector v$ and for any subspace $S$, we have $\vector v - P_S(\vector v) \in S\perp$. 
Moreover, if $\vector v \in S\perp$, then $P_s(\vector v)$ must be zero. 
This follows by noting that in equation $\ref{projection_equation}$, every inner product appearing in the sum vanishes, by definition of $\vector v \in S\perp$, and so the projection is zero.


### Least Squares

:::{.proposition title="Normal Equations"}
$\vector x$ is a least squares solution to 
$A\vector x = \vector b$ iff
\[
A^t A \vector x = A^t \vector b
\]
:::

\todo[inline]{Derivation of normal equations.}


The general setup here is that we would like to solve $A\vector x = \vector b$ for $\vector x$, where $\vector b$ is not in fact in the range of $A$. We thus settle for a unique "best" solution $\tilde{\vector x}$ such that the error $\norm{A\tilde{\vector x} - \vector b}$ is minimized.

Geometrically, the solution is given by projecting $\vector b$ onto the column space of $A$. To see why this is the case, define the residual vector $\vector r = A\tilde{\vector x} - \vector b$. We then seek to minimize $\norm{\vector r}$, which happens exactly when $\vector r \perp \im A$. But this happens exactly when $\vector r \in (\im A)\perp$, which by the fundamental subspaces theorem, is equivalent to $\vector r \in \ker A^T$.

From this, we get the equation
$$
A^T \vector r = \vector 0 \\
\implies A^T(A \tilde{\vector x} - \vector b) = \vector 0\\
\implies A^TA\tilde{\vector x} = A^T \vector b,
$$

where the last line is described as the **normal equations**.

If $A$ is an $m\times n$ matrix and is of full rank, so it has $n$ linearly independent columns, then one can show that $A^T A$ is nonsingular, and we thus arrive at the least-squares solution
$$
\tilde{\vector x} = (A^TA)^{-1}A^T \vector b \qed
$$

These equations can also be derived explicitly using Calculus applied to matrices, vectors, and inner products. This requires the use of the following formulas:
\[
\dd{}{\vector x} \inner{\vector x}{\vector a} &= \vector a \\
\dd{}{\vector x} \inner{\vector x}{\vector A\vector x} &= (A+A^T)\vector x
\]

as well as the adjoint formula
\[  
\inner{A\vector x}{\vector x} = \inner{\vector x}{A^T \vector x}.
.\]

From these, by letting $A=I$ we can derive
\[  
\dd{}{\vector x} \norm{\vector x}^2 = \dd{}{\vector x} \inner{\vector x}{\vector x} = 2\vector x\\
.\]

The derivation proceeds by solving the equation
\[  
\dd{}{\vector x} \norm{\vector b - A\vector x}^2 = \vector 0.
.\]

## Normal Forms

:::{.remark}
Every square matrix is similar to a matrix in Jordan canonical form.
:::


[^projmatrix]: For a derivation of this formula, see the section on least-squares approximations.


## Decompositions

### The QR Decomposition

Gram-Schmidt is often computed to find an orthonormal basis for, say, the range of some matrix $A$. With a small modification to this algorithm, we can write $A = QR$ where $R$ is upper triangular and $Q$ has orthogonal columns.

Why is this useful? One reason is that this also allows for a particularly simple expression of least-squares solutions. If $A=QR$, then $R$ will be invertible, and a bit of algebraic manipulation will show that 
\[  
\tilde{\vector x} = R^{-1}Q^T\vector b.
.\]

How does it work? You simply perform Gram-Schmidt to obtain $\theset{\vector u_i}$, then $$Q = [\vector u_1, \vector u_2, \cdots ].$$

The matrix $R$ can then be written as 

\[
r_{ij} = \begin{cases}
\inner{\vector u_i}{\vector x_j}, & i\leq j, \\
0, & \text{else}.
\end{cases}
\]

Explicitly, this yields the matrix
\[
R = 
\begin{bmatrix}
\inner{\vector u_1}{\vector x_1} & \inner{\vector u_1}{\vector x_2} & \inner{\vector u_1}{\vector x_3} & \cdots & \\
0 & \inner{\vector u_2}{\vector x_2} & \inner{\vector u_2}{\vector x_3} & \cdots & \\
0 & 0 & \inner{\vector u_3}{\vector x_3} & \cdots & \\
\vdots & \vdots & \vdots & \ddots \\
\end{bmatrix}
\]

\todo[inline]{Explain shortcut for diagonal.}

# Appendix: Lists of things to know

> Textbook: Leon, *Linear Algebra with Applications*

## Topics

- 1.6: Partition Matrices
- 3.5: Change of Basis
- 4.1: Linear Transformations
- 4.2: Matrix Representations
- 4.3: Similarity
  - *Exam 1*   
- 5.1: Scalar Product in $\RR^n$
- 5.2: Orthogonal Subspaces
- 5.3: Least Squares
- 5.4: Inner Product Spaces
- 5.5: Orthonormal Sets
- 5.6: Gram-Schmidt
- 6.1: Eigenvalues and Eigenvectors
  - *Exam 2*
- 6.2: Systems of Linear Differential Equations
- 6.3: Diagonalization
- 6.6: Quadratic Forms
- 6.7: Positive Definite Matrices
- 6.5: Singular Value Decomposition
- 7.7: The Moore-Penrose Pseudo-Inverse
  - *Final Exam*

## Definitions

- System of equations
- Homogeneous system
- Consistent/inconsistent system
- Matrix
- Matrix (i.e. $A \vector x = \vector b$)
- Inverse matrix
- Singular matrix
- Determinant
- Trace
- Rank
- Elementary row operation
- Row equivalence
- Pivot
- Row Echelon Form
- Reduced Row Echelon Form
- Gaussian elimination
- Block matrix
- Vector space
- Vector subspace
- Linear transformation
- Span
- Linear independence
- Basis
- Change of basis
- Dimension
- Row space
- Column space
- Image
- Null space
- Kernel
- Direct sum
- Projection
- Orthogonal subspaces
- Orthogonal complement
- Normal equations
- Least-squares solution
- Orthonormal 
- Eigenvalue
- Eigenvector
- Characteristic polynomial
- Similarity
- Diagonalizable
- Inner product
- Bilinearity
- Multilinearity
- Defective
- Singular value decomposition
- QR factorization
- Gram-Schmidt process
- Spectral theorem
- Symmetric matrix
- Orthogonal matrix
- Positive-definite
- Quadratic form

## Lower-division review

- Systems of linear equations
  - Consistent vs. Inconsistent
  - Possibilities for solutions
  - Geometric interpretation
- Matrix Inverses
  - Detecting if a matrix is singular
  - Computing the inverse
    - Formula for 2x2 case
    - Augment with the identity
    - Cramer's Rule
- Vector Spaces
  - Definition in terms of closures
  - Span
  - Linear Independence
  - Subspace and the subspace test
  - Basis
- Common Computations
  - Reduction to RREF
  - Eigenvalues and eigenvectors
  - Basis for the column space
  - Basis for the nullspace
  - Basis for the eigenspace
  - Construct matrix from a given linear map
  - Construct change of basis matrix
  - Construct matrix projection onto subspace
  - Convert a basis to an orthonormal basis

## Things to compute

- Construct a matrix representing a linear map
  - With respect to the standard basis in both domain and range
  - With respect to a nonstandard basis in the range
  - With respect to a nonstandard basis in the domain
  - With respect to nonstandard bases in both the domain and range
- Construct a change of basis matrix
- Check that a map is a linear transformation
- Compute the following spaces of a matrix and their orthogonal complements:
  - Row space
  - Column space
  - Null space
- Compute the shortest distance between a point and a plane
- Compute the least squares solution to linear system
- Prove that something is a vector space
- Prove that a map is an inner product
- Compute determinants
- Compute the RREF of a matrix
- Compute characteristic polynomials, eigenvalues, and eigenvectors
- Diagonalize a matrix
- Solve a system of ODEs resulting arising from tank mixing
- Compute the singular value decomposition of a matrix
- Compute the rank and nullity of a matrix
- Convert a set of vectors to a basis
- Convert a basis to an orthonormal basis
- Determine if a matrix is diagonalizable 
- Compute the matrix for a projection onto a subspace
- Find the QR factorization of a matrix

## Things to prove

- Prove facts about block matrices
- Prove facts about injective linear maps
- Prove facts about similar matrices
- Prove facts about orthogonal spaces and orthogonal complements
- Prove facts about inner products
- Prove facts about orthonormal sets
- Prove facts about eigenvalues/eigenvectors
- Understand when a matrix can be diagonalized
- Prove facts about diagonalizable matrices
- Prove facts about the orthogonal decomposition theorem

# Ordinary Differential Equations

## Techniques Overview
\[
p(y)y' = q(x) && \hspace{10em} \text{separable} \\ \\
y'+p(x)y = q(x) && \text{integrating factor} \\ \\
y' = f(x,y), f(tx,ty) = f(x,y) && y = xV(x)\text{ COV reduces to separable} \\ \\
y' +p(x)y = q(x)y^n && \text{Bernoulli, divide by $y^n$ and COV $u = y^{1-n}$} \\ \\
M(x,y)dx + N(x,y)dy = 0 && M_y = N_x: \phi(x,y) = c (\phi_x =M, \phi_y = N) \\ \\
P(D)y = f(x,y) && x^ke^{rx} \text{ for each root }
\]

*Where $e^{zx}$ yields $e^{ax}\cos bx, e^{ax}\sin bx$*

## Types of Equations

- Separable equations:
$$p(y)\frac{dy}{dx} - q(x) = 0 \implies \int p(y) dy = \int q(x) dx + C$$
$$
\frac{dy}{dx} = f(x)g(y) \implies \int \frac{1}{g(y)}dy = \int f(x) dx + C
$$
	- Population growth: $$\frac{dP}{dt} = kP \implies \qquad P = P_0 e^{kt}$$
	- Logistic growth:
		- General form: $\frac{dP}{dt} =(B(t) - D(t))P(t)$
		- Assume birth rate is constant $B(t) = B_0$ and death rate is proportional to instantaneous population $D(t) = D_0 P(t)$. Then let $r = B_0, C = B_0/D_0$ be the *carrying capacity*:
		$$\frac{dP}{dt} = r\left( 1 - \frac{P}{C} \right)P \implies \qquad P(t) = \frac{P_0}{\frac{P_0}{C} + e^{-rt}(1 - \frac{P_0}{C})}$$
- First order linear: $$\frac{dy}{dx} + p(x)y = q(x) \implies I(x) = e^{\int p(x) dx},\qquad y(x) = \frac{1}{I(x)}\left(\int q(x)I(x) dx + C\right)$$
- Exact:
	- $M(x,y)dx + N(x,y)dy = 0 \text{ is exact } \iff \exists \phi: \frac{\partial\phi}{\partial x} = M(x, y),~\frac{\partial\phi}{\partial y} = N(x, y) \\ \iff \frac{\partial M}{\partial y} = \frac{\partial N}{x}$
	- General solution: $$\phi(x, y) = \int^x M(s, y) ds + \int^y N(x, t) dt - \int^y \frac{\partial}{\partial t} \left(\int^x M(s, t) ds\right)dt$$
	(where $\int^x f(t) dt$ means take the antiderivative of $f$ and consider it a function of $x$)
- Cauchy Euler: #todo
- Bernoulli: todo

## Linear Homogeneous

General form:
$$
y^{(n)} + c_{n-1} y^{(n-1)} + \cdots + c_2y'' + cy' + cy = 0 \\
p(D)y = \prod (D-r_i)^{m_i} y= 0
$$
where $p$ is a polynomial in the differential operator $D$ with roots $r_i$:

- Real roots: contribute $m_i$ solutions of the form
	$$e^{rx}, xe^{rx}, \cdots, x^{m_i-1}e^{rx}$$

- Complex conjugate roots: for $r=a+bi$, contribute $2m_i$ solutions of the form
	$$e^{(a\pm bi)x}, xe^{(a\pm bi)x}, ~\cdots,~ x^{m_i-1}e^{(a\pm bi)x} \\
	= e^{ax}\cos(bx), e^{ax}\sin(bx),~ xe^{ax}\cos(bx), xe^{ax}\sin(bx),~ \cdots,~
	$$


Example: by cases, second order equation of the form $$ay'' + by' + cy = 0$$
- Two distinct roots: $c_1 e^{r_1 x} + c_2 e^{r_2 x}$
- One real root: $c_1 e^{rx} + c_2 x e^{rx}$
- Complex conjugates $\alpha \pm i \beta$: $e^{\alpha x}(c_1 \cos \beta x + c_2 \sin \beta x)$

## Linear Inhomogeneous

General form:
$$
y^{(n)} + c_{n-1} y^{(n-1)} + \cdots + c_2y'' + cy' + cy = F(x) \\
p(D)y = \prod (D-r_i)^{m_i} y= 0
$$

Then solutions are of the form $y_c + y_p$, where $y_c$ is the solution to the associated homogeneous system and $y_p$ is a particular solution.

Methods of obtaining particular solutions

### Undetermined Coefficients

- Find an operator $p(D)$ the annihilates $F(x)$ (so $q(D)F = 0$)
- Find solution of $q(D)p(D) = 0$, subtract of known solutions from homogeneous part to obtain the form of the trial solution $A_0f(x)$, where $A_0$ is the undetermined coefficient
- Substitute trial solution into original equation to determine $A_0$

Useful Annihilators:
\[
&F(x) = p(x): & D^{\deg(p)+1} \\
&F(x) = p(x)e^{ax}: & (D-a)^{\deg(p)+1}\\
&F(x) = \cos(ax) + \sin(ax): & D^2 + a^2\\
&F(x) = e^{ax}(a_0\cos(bx) + b_0\sin(bx)): & (D-z)(D-\conjugate{z}) = D^2 -2aD + a^2 + b^2 \\
&F(x) = p(x)e^{ax}\cos(bx) + p(x)e^{ax}\cos(bx): & \left( (D-z)(D-\conjugate{z})\right)^{\max(\deg(p), \deg(q))+ 1}
\]


### Variation of Parameters

\todo[inline]{todo}

### Reduction of Order

\todo[inline]{todo}

## Systems of Differential Equations

General form: 
$$
\frac{\partial \vector{x}(t) }{\partial t} = A\vector {x}(t) + \vector {b}(t) \iff \vector{x}'(t) = A\vector{x}(t) + \vector{b}(t)
$$

General solution to homogeneous equation:
$$
c_1\vector{x_1}(t) + c_2\vector{x_2}(t)+ \cdots +c_n\vector{x_n}(t) = \vector X(t)\vector{c}
$$


If $A$ is a matrix of constants: $\vector{x}(t) = e^{\lambda_i t}~\vector{v}_i$ is a solution for each eigenvalue/eigenvector pair $(\lambda_i, \vector v_i)$
- If $A$ is defective, you'll need generalized eigenvectors.

Inhomogeneous Equation: particular solutions given by 
$$
\vector{x}_p(t) = \vector X(t) \int^t \vector X^{-1}(s)\vector{b}(s) ~ds
$$

## Laplace Transforms

Definitions:
\[
H_ { a } ( t ) \da \left\{ \begin{array} { l l } { 0 , } & { 0 \leq t < a } \\ { 1 , } & { t \geq a } \end{array} \right.\\
\delta(t): \int_\RR \delta(t-a)f(t)~dt &= f(a),\quad \int_\RR \delta(t-a)~dt = 1\\
(f \ast g )(t) &= \int_0^t f(t-s)g(s)~ds \\
L[f(t)] &= L[f] =\int_0^\infty e^{-st}f(t)dt = F(s)
.\]
Useful property: for $a\leq b$, $H_a(t) - H_b(t) = \indic{[a,b]}$.
\[
t^n, n\in\NN \quad&\iff  &\frac{n!}{s^{n+1}},\quad &s > 0 \\
t^{-\frac{1}{2}} \quad&\iff &\sqrt{\pi} s^{-\frac{1}{2}}\quad & s>0\\
e^{at} \quad&\iff &\frac{1}{s-a},\quad &s > a \\
\cos(bt) \quad&\iff &\frac{s}{s^2+b^2},\quad &s>0 \\
\sin(bt) \quad&\iff &\frac{b}{s^2+b^2},\quad &s>0 \\
\cosh(bt) \quad&\iff &\frac{s}{s^2 - b^2},\quad &? \\
\sinh(bt) \quad&\iff &\frac{b}{s^2-b^2},\quad &? \\
\delta(t-a) \quad&\iff &e^{-as} \quad& \\
H_a(t) \quad&\iff &s^{-1}e^{-as}\quad& \\
e^{at}f(t) \quad&\iff &F(s-a)\quad & \\
H_a(t)f(t-a) \quad&\iff &e^{-as}F(s)& \\
f'(t) \quad&\iff & sL(f) - f(0) & \\
f''(t) \quad&\iff &s^2L(f) -sf(0) - f'(0) &\\
f^{(n)}(t) \quad&\iff & s^nL(f) - \sum_{i=0}^{n-1} s^{n-1-i}f^{(i)}(0) & \\
f(t)g(t) \quad&\iff &F(s) \ast G(s)\quad &
\]

- For $f$ periodic with period $T$, $L(f) = \frac{1}{1+e^{-sT}}\int_0^T e^{-st}f(t)~dt$

\[
p(y)y' = q(x)                  &  & \hspace{10em} \text{separable} \\ \\
y'+p(x)y = q(x)                &  & \text{integrating factor} \\ \\
y' = f(x,y), f(tx,ty) = f(x,y) &  & y = xV(x)\text{ COV reduces to separable} \\ \\
y' +p(x)y = q(x)y^n            &  & \text{Bernoulli, divide by $y^n$ and COV $u = y^{1-n}$} \\ \\
M(x,y)dx + N(x,y)dy = 0        &  & M_y = N_x: \phi(x,y) = c (\phi_x =M, \phi_y = N) \\ \\
P(D)y = f(x,y)                 &  & x^ke^{rx} \text{ for each root }
\]

:::{.theorem title="First Shifting Theorem"}
\[  
L[e^{at} f(t)] = \int_0^\infty e^{(a-s)}f(t)dt = F(s-a),
.\]
:::

:::{.remark}
The general technique for solving differential equations with Laplace Transforms:
- Take the Laplace Transform of all terms on both sides.
- Solve for $L[y]$ in terms of $s$.
- Attempt an inverse Laplace Transformations
  - This may involve partial fraction decomposition, completing the square, and splitting numerators to match terms with known inverse transformations.
:::

## Systems of Differential Equations 

:::{.definition title="Wronksian"}
For a collection of $n$ functions $f_i: \RR^n \to \RR$, define the $n\times 1$ column vector 
\[
W(f_i)(\vector p) \da 
\begin{bmatrix}
f_i(\vector p) \\
f_i'(\vector p) \\
f_i''(\vector p) \\
\vdots \\
f^{(n-1)}(\vector p)
\end{bmatrix}
.\]

The **Wronskian** of this collection is defined as
\[  
W(f_1, \cdots, f_n)(\vector p) \da
\det 
\begin{bmatrix}
\vertbar & \vertbar & & \vertbar \\
W(f_1)(\vector p) & W(f_2)(\vector p) & \cdots & W(f_n)(\vector p)\\
\vertbar & \vertbar & & \vertbar \\
\end{bmatrix}
.\]
:::

:::{.proposition title="Wronskian detects linear dependence of functions"}
A set of functions $\theset{f_i}$ is linearly independent on $I \iff \exists x_0 \in I: W(x_0) \neq 0$.
:::

:::{.warning}
$W \equiv 0$ on $I$ does *not* imply that $\theset{f_i}$ is linearly dependent!
Counterexample: $\theset{x, x+x^2, 2x-x^2}$ where $W \equiv 0$ but $x+x^2 = 3(x) + (2x-x^2)$ is a linear combination of the other two functions.
:::

\todo[inline]{Sufficient condition: each $f_i$ is the solution to a linear homogeneous ODE $L(y) = 0$.}


### Linear Equations of Order $n$

The standard form of such equations is
\begin{align*}
	y^{(n)} + a_1y^{(n-1)} + a_2y^{(n-2)} + \cdots +a_ny'' + a_{n-1}y' + y = F(x).
\end{align*}

All solutions will be the sum of the solution to the associated homogeneous equation and a single particular solution.

In the homogeneous case, examine the discriminant of the characteristic polynomial. Three cases arise:
\begin{enumerate}
	\item $D>0 \Rightarrow$ 2 Real solutions, $c_1e^{r_1x} + c_2e^{r_2x}$
	\item $D=0 \Rightarrow$ 1 Real, 1 Complex, $(c_1 +c_2x)e^{r_1x}$
	\item $D<0 \Rightarrow$ 2 Complex, $e^{ax}(c_1\cos bx + c_2\sin bx)$
\end{enumerate}
That is, every real root contributes a term of $ce^{rx}$, while a multiplicity of $m$ multiplies the solution by a polynomial in $x$ of degree $m-1$.

Every pair of complex roots contributes a term $ce^r(a\cos \omega x + b\sin \omega x)$, where $r$ is the real part of the roots and $\omega$ is the complex part.

In the nonhomogeneous case, assume a solution in the most general form of $F(x)$, and substitute it into the equation to solve for constant terms. For example,
\begin{enumerate}
	\item $F(x) = P(x^n) \Rightarrow y_p = a+bx+cx^2+\cdots+(n+1)x^n$
	\item $F(x) = e^x \Rightarrow y_p = Ae^x$
	\item $F(x) = A\cos (\omega x) \Rightarrow y_p = a\cos(\omega x) + b\sin(\omega x)$
\end{enumerate}

\subsection{Annihilators}
Use to reduce a nonhomogeneous equation to a homogeneous one as a polynomial in the operator $D$.
\begin{enumerate}
	\item $(D-a) \Rightarrow e^{ax}$
	\item $(D-a)^{k+1} \Rightarrow x^k e^{ax}, x^{k-1}e^{ax}, \cdots, e^{ax}$
	\item $D^{k+1} \Rightarrow x^k, x^{k-1}, \cdots,C$
	\item $D^2-2aD+a^2+b^2 \Rightarrow e^{ax}\cos(bx), e^{ax}\sin(bx)$
	\item $(D^2-2aD+a^2+b^2)^{k+1} \Rightarrow x^k e^{ax}\cos(bx), x^{k-1} e^{ax}\cos(bx), x^k e^{ax}\sin(bx), x^{k-1}e^{ax}\sin(bx),\cdots$
\end{enumerate}

\subsection{Complex Solutions}
$F(x)$ of the form $e^{ax}sin(kx)$ can be rewritten as $e^{(a+ki)x}$

# Algebra

\todo[inline]{This section is very sketchy!}

## To Sort

- Burnside's Lemma
- Cauchy's Theorem
	- If $\abs{G} = n = \prod p_i^{k_i}$, then for each $i$ there exists a subgroup $H$ of order $p_i$.
- The Sylow Theorems
	- If $\abs{G} = n = \prod p_i^{k_i}$, for each $ii$ and each $1 \leq k_j \leq k_i$ then there exists a subgroup $H$ of order $p_i^{k_j}$.
- Galois Theory
- More terms: [http://mathroughguides.wikidot.com/glossary:abstract-algebra](http://mathroughguides.wikidot.com/glossary:abstract-algebra)

- Order $p$: One, $Z_p$
- Order $p^2$: Two abelian groups, $Z_{p^2}, Z_p^2$
- Order $p^3$:

  - 3 abelian $Z_{p^3}, Z_p \times Z_{p^2}. Z_p^3$,
  - 2 others $Z_p \rtimes Z_{p^2}$.

    - The other is the quaternion group for p = 2 and a group of exponent p for p > 2.

- Order $pq$:

  - $p \mid q-1$: Two groups, $Z_{pq}$ and $Z_q \rtimes Z_p$
  - Else cyclic, $Z_{pq}$

- Every element in a permutation group is a product of disjoint cycles, and the order is the lcm of the order of the cycles.

- The product ideal $IJ$ is _not_ just elements of the form $ij$, it is all sums of elements of this form! The product alone isn't enough.

- The intersection of any number of ideals is also an ideal


## Big List of Notation

\[
C(x) 			= && \theset{g\in G : gxg^{-1} = x} 				&& \subseteq G 			&& \text{Centralizer} \\
C_G(x) 			= && \theset{gxg^{-1} : g\in G} 					&& \subseteq G 			&& \text{Conjugacy Class} \\
G_x 			= && \theset{g.x : x\in X} 							&& \subseteq X 			&& \text{Orbit} \\
x_0 			= && \theset{g\in G : g.x = x} 						&& \subseteq G 			&& \text{Stabilizer} \\
Z(G) 			= && \theset{x\in G: \forall g\in G,~ gxg^{-1} = x} && \subseteq G 			&& \text{Center} \\
\mathrm{Inn}(G) = && \theset{\phi_g(x) = gxg^{-1} } 				&& \subseteq \Aut(G) 	&& \text{Inner Aut.} \\
\mathrm{Out}(G) = && \Aut(G) / \mathrm{Inn}(G) 						&& \injects \Aut(G) 	&& \text{Outer Aut.} \\
N(H) 			= && \theset{g\in G: gHg^{-1} = H} 					&& \subseteq G 			&& \text{Normalizer}
\]


## Group Theory

Notation: $H < G$ a subgroup, $N < G$ a normal subgroup, concatenation is a generic group operation.

- $\ZZ_n$ the unique cyclic group of order $n$
- $\mathbf{Q}$ the quaternion group
- $G^n = G\times G \times \cdots G$
- $Z(G)$ the center of $G$
- $o(G)$ the order of a group
- $S_n$ the symmetric group
- $A_n$ the alternating group
- $D_n$ the dihedral group of order $2n$

- Group Axioms
	- Closure: $a,b \in G \implies ab \in G$
	- Identity: $\exists e\in G \mid a\in G \implies ae = ea = a$
	- Associativity: $a,b,c \in G \implies (ab)c = a(bc)$
	- Inverses: $a\in G \implies \exists b \in G \mid ab =ba = e$

- Definitions:
	- Order
		- Of a group: $o(G) = \abs{G}$, the cardinality of $G$
		- Of an element: $o(g) = \min\theset{n\in \NN : g^n = e}$
	- Index
	- Center: the elements that commute with everything
	- Centralizer: all elements that commute with a given element/subgroup.
	- Group Action: a function $f: X\times G \to G$ satisfying
		- $x\in X, g_1,g_2 \in G \implies g_1.(g_2.x) = (g_1g_2). x$
		- $x\in X \implies e.x = x$
	- Orbits partition any set
	- Transitive Action
	- Conjugacy Class: $C \subset G$ is a conjugacy class $\iff$
		- $x\in C, g\in G \implies gxg^{-1} \in C$
		- $x,y \in C \implies \exists g\in G : gxg^{-1} = y$
		- i.e. subsets that are closed under $G$ acting on itself by conjugation and on which the action is transitive
		- i.e. orbits under the conjugation action
		- The order of any conjugacy class divides the order of $G$
	- $p$-group: Any group of order $p^n$.
	- Simple Group: no nontrivial normal subgroups
	- Normal Series: $0 \normal H_0 \normal H_1 \cdots \normal G$
	- Composition Series: The successive quotients of the normal series
	- Solvable: $G$ is solvable $\iff$ $G$ has an abelian composition series.

- One step subgroup test:
\[  
a,b \in H \implies a b^{-1} \in H \\
.\]

- Useful isomorphism invariants:
	- Order profile of elements: $n_1$ elements of order $p_1$, $n_2$ elements of order $p_2$, etc
		- Useful to look at elements of order $2$!
	- Order profile of subgroups
	- $Z(A) \cong Z(B)$
	- Number of generators (generators are sent to generators)
	- Number and size of conjugacy classes
	- Number of Sylow$\dash p$ subgroups.
	- Commutativity
	- "Being cyclic"
	- Automorphism Groups
	- Solvability
	- Nilpotency

- Useful homomorphism invariants
	- $\phi(e) = e$
	- $\abs{g} = m < \infty \implies \abs{\phi(g)} = m$
	- Inverses, i.e. $\phi(a)^{-1} = \phi(a^{-1})$
	- $H < G \implies \phi(H) < G'$
		- $H' < G' \implies \phi^{-1}(H') < G$
	- $\abs{G} < \infty \implies \phi(G)$ divides $\abs{G}, \abs{G'}$

## Big Theorems
- Classification of Abelian Groups
\[  
G \cong \ZZ_{p_1^{k_1}} \oplus \ZZ_{p_2^{k_2}} \oplus \cdots \oplus \ZZ_{p_n^{k_n}}
,\]
where $(p_i, k_i)$ are the set of elementary divisors of $G$.


- Isomorphism Theorems
  
\[
\phi: G \to G’ \implies 			&& \frac{G}{\ker{\phi}} \cong 		&~ \phi(G) \\
H \normal G,~ K < G \implies 		&& \frac{K}{H\intersect K} \cong 	&~ \frac{HK}{H} \\
H,K \normal G,~ K < H \implies 	&& \frac{G/K}{H/K} \cong 			&~ \frac{G}{H}
\]
  

- Lagrange's Theorem: $H < G \implies o(H) \mid o(G)$
  - Converse is false: $o(A_4) = 12$ but has no order 6 subgroup.

- The $GZ$ Theorem: $G/Z(G)$ cyclic implies that $G \in \mathbf{Ab}$.

- Orbit Stabilizer Theorem: $G / x_0 \cong Gx$

- The Class Equation
  - Let $G\actson X$ and $\mathcal{O}_i \subseteq X$ be the nontrivial orbits, then
  \[  
  \abs{X} = \abs{ X_0 } + \sum_{[x_i] \in X/G} \abs{Gx} 
  .\]
  - The right hand side is the number of fixed points, plus a sum over all of the orbits of size greater than 1, where any representative within the orbit is chosen and we look at the index of its stabilizer in $G$.
  - Let $G\actson G$ and for each nontrivial conjugacy class $C_G$ choose a representative $[x_i] = C_G = C_G(x_i)$ to obtain

  \[  
  \abs{G} = \abs{Z(G)} + \sum_{[x_i] = C_G(x_i)} \left[ G: [x_i] \right]
  .\]


- Useful facts:
	- $H < G \in \mathbf{Ab} \implies H \normal G$
		- Converse doesn't hold, even if all subgroups are normal. Counterexample: $\mathbf{Q}$
	- $G / Z(G) \cong \mathrm{Inn}(G)$
	- $H, K < G$ with $H \cong K \not\implies G/H \cong G/K$
		- Counterexample: $G = \ZZ_4 \cross \ZZ_2, H = <(0,1)>, K = <(2,0)>$. Then $G/H \cong \ZZ_4 \not\cong \ZZ_2^2 \cong G/K$
	- $G\in\mathbf{Ab} \implies$ for each $p$ dividing $o(G)$, there is an element of order $p$
	- Any surjective homomorphism $\phi: A \surjects B$ where $o(A) = o(B)$ is an isomorphism
	- If $G$ is abelian, for each $d\mid \abs{G}$ there is exactly one subgroup of order $d$.

- Sylow Subgroups:
	- Todo


- Big List of Interesting Groups
	- $\ZZ_4, \ZZ_2^2$
	- $D_4$
	- $Q = \langle a , b | a ^ { 4 } = 1 , a ^ { 2 } = b ^ { 2 } , a b = b a ^ { 3 } \rangle$ the quaternion group
	- $S^3$, the smallest nonabelian group

- Chinese Remainder Theorem: 
\[
\ZZ_{pq} \cong \ZZ_p \oplus \ZZ_q \iff (p,q) = 1
\]
  - Fundamental Theorem of Finitely Generated Abelian Groups:
  - $G = \ZZ^n \oplus \bigoplus \ZZ_{q_i}$

- Finding all of the unique groups of a given order: #todo

### Cyclic Groups
- Generated by ?
- For each $d$ dividing $o(G)$, there exists a subgroup $H$ of order $d$.
	- If $G = <a>$, then take $H = <a^{\frac{n}{d}}>$

### The Symmetric Group
- Generated by:
	- Transpositions
	- #todo
- Cycle types: characterized by the number of elements in the cycle.
	- Two elements are in the same conjugacy class $\iff$ they have the same cycle type.
- Inversions: given $\tau = (p_1 \cdots p_n)$, a pair $p_i, p_j$ is *inverted* iff $i < j$ but $p_j < p_i$
- Can count inversions $N(\tau)$
	- Equal to minimum number of transpositions to obtain non-decreasing permutation
- Sign of a permutation: $\sigma(\tau) = (-1)^{N(\tau)}$
- Parity of permutations $\cong (\ZZ, +)$
	- even $\circ$ even = even
	- odd $\circ$ odd = even
	- even $\circ$ odd = odd

## Ring Theory

\todo[inline]{Ring Axioms}

- Examples:
- Non-Examples:
- Definition of an Ideal
- Definitions of types of rings:
  - Field
  - Unique Factorization Domain (UFD)
  - Principal Ideal Domain (PID)
  - Euclidean Domain:
  - Integral Domain
  - Division Ring
\[  
\text{field} \implies \text{Euclidean Domain} \implies \text{PID} \implies \text{UFD} \implies \text{integral domain}
.\]

- Counterexamples to inclusions are strict:
	- An ED that is not a field:
	- A PID that is not an ED: $\QQ[\sqrt {19}]$
	- A UFD that is not a PID:
	- An integral domain that is not a UFD:

- Integral Domains
- Unique Factorization Domains
- Prime Elements
- Prime Ideals
- Field Extensions
- The Chinese Remainder Theorem for Rings
- Polynomial Rings
	- Irreducible Polynomials
		- Over $\ZZ_2$: 
\[  
x,~ x+1,~ x^2+x+1,~ x^3+x+1,~ x^3+x^2+1 
.\]
		- Eisenstein's Criterion
- Gauss' Lemma


\todo[inline]{When is $\QQ(\sqrt d)$ a field?}

# Number Theory

## Notation and Basic Definitions

\[  
(a, b) \da \gcd(a, b) && \text{the greatest common divisor} \\
\ZZ_n && \text{the ring of integers} \mod n \\
\ZZ_n\units && \text{the group of units}\mod n
.\]

:::{.definition title="Multiplicative Functions"}
A function $f:\ZZ \to \ZZ$ is said to be **multiplicative** iff
\[  
(a, b) = 1 \implies f(ab) = f(a) f(b)
.\]
:::

## Big Theorems

\todo[inline]{Link to theorems.}

## Primes

:::{.theorem title="The fundamental theorem of arithmetic"}
Every $n\in \ZZ$ can be written uniquely as 
\[
n = \prod_{i=1}^m p_i^{k_i}
\]
where the $p_i$ are the $m$ distinct prime divisors of $n$.
:::

:::{.remark}
Note that the number of distinct prime factors is $m$, while the total number of factors is $\prod_{i=1}^m(k_i + 1)$.
:::



## Divisibility

:::{.definition title="Divisibility"}
\[
a\divides b \iff b \equiv 0 \mod a \iff \exists k \text{ such that } ak = b
\]
:::

### $\gcd, \lcm$

:::{.remark}
$\gcd(a, b)$ can be computed by taking prime factorizations of $a$ and $b$, intersecting the primes occurring, and taking the lowest exponent that appears.
Dually, $\lcm(a, b)$ can be computed by taking the *union* and the *highest* exponent.
\todo[inline]{Check}
:::

:::{.proposition title="Relationship between $\gcd$ and $\lcm$"}
\[
xy = \gcd{(x,y)}~\mathrm{lcm}{(x,y)}
\]
:::

:::{.proposition title="?"}
If $d\mid x$ and $d\mid y$, then 
\[
\gcd(x,y) &= d\cdot \gcd\qty{ \frac x d, \frac y d} \\
\lcm(x,y) &= d\cdot \lcm \qty{ \frac x d, \frac y d}
\]
\todo[inline]{Check}
:::


:::{.proposition title="Useful properties of $\gcd$"}
\[  
\gcd(x, y, z) &= \gcd(\gcd(x,y), z) \\
\gcd(x, y)    &= \gcd(x\bmod y, y) \\
\gcd(x,y)     &= \gcd(x-y, y)
.\]
:::

### The Euclidean Algorithm

$\gcd(a, b)$ can be computed via the Euclidean algorithm, taking the final bottom-right coefficient.

\todo[inline]{Example of Euclidean algorithm,}



## Modular Arithmetic

Generally concerned with the multiplicative group $(\ZZ_n, \times)$.

:::{.theorem title="The Chinese Remainder Theorem"}
The system
\[
\begin{array} { c } { x \equiv a _ { 1 }   \mod m _ { 1 }  } \\ { x \equiv a _ { 2 }   \mod m _ { 2 }  } \\ { \vdots } \\ { x \equiv a _ { r }   \mod m _ { r }  } \end{array}
\]

has a unique solution $x \mod \prod m_i \iff (m_i, m_j) = 1$ for each pair $i,j$, given by
\[  
x = \sum_{j=1}^r a_j \frac{\prod_i m_i}{m_j} \left[ \frac{\prod_i m_i}{m_j} \right]^{-1}_{\mod m_j}
.\]
:::

:::{.theorem title="Euler's Theorem"}
\[  
a^{\phi(p)} \equiv 1 \mod n
.\]
:::

:::{.theorem title="Fermat's Little Theorem"}
\[
x^{p}  &\equiv x \mod p \\
x^{p-1} &\equiv 1 \mod p \quad \text{ if } p \notdivides a
\]

:::

### Diophantine Equations 

:::{.proposition title="Solutions to linear Diophantine equations"}
Consider $ax + by = c$.
This has solutions iff 
$c = 0 \mod (a,b) \iff \gcd(a,b) \text{ divides } c$.

\todo[inline]{How to obtain solutions.}
:::


### Computations

:::{.proposition title="?"}
If $x\equiv 0 \mod n$, then $x\equiv 0 \mod p^k$ for all $p^k$ appearing in the prime factorization of $n$.
:::


:::{.remark}
If there are factors of the modulus in the equation, peel them off with addition, using the fact that $nk \equiv 0 \mod n$.
\[
x 
&\equiv nk + r \mod n  \\
&\equiv r \mod n
\]

So take $x=463, n = 4$, then use $463 = 4\cdot 115 + 4$ to write
\[  
463 &\equiv y \mod 4 \\
\implies 4\cdot 115 + 3 &\equiv y \mod 4 \\
\implies  3&\equiv y\mod 4
.\]

:::

:::{.proposition title="Repeated square/fast exponentiation"}
For any $n$,
\[  
x^k \mod n \equiv (x^{k/d} \bmod n)^d \mod n
.\]
:::

:::{.example title="?"}
\[
2^{25} 
&\equiv (2^5 \mod 5)^5 \mod 5 \\
&\equiv 2^5  \mod 5 \\
&\equiv 2 \mod 5 
\]
:::

:::{.remark}
Make things easier with negatives!
For example, $\mod 5$,
\[
4^{25} 
&\equiv (-1)^{25} \mod 5\\
&\equiv (-1) \mod 5\\
&\equiv 4 \mod 5
\]
:::


### Invertibility

:::{.proposition title="Reduction of modulus"}
\[  
xa = xb \mod n \implies a = b \mod \frac{n}{(x,n)}
.\]
:::

:::{.proposition title="Characterization of invertibility"}
\[  
x\in \ZZ_n\units \iff (x, n) = 1
,\]
and thus 
\[
\ZZ_n^\times = \theset{1\leq x \leq n : (x,n) = 1}
\]
and $\abs{\ZZ_n^\cross} = \phi(n)$.
:::

:::{.example title="Using invertibility"}
One can reduce equations by dividing through by a unit.
Pick any $x$ such that $x\divides a$ and $x\divides b$ with $(x,n) = 1$, then
\[  
a =b \mod n \implies \frac a x = \frac b x \mod n
.\]

:::



## The Totient Function

:::{.definition title="Euler's Totient Function"}
\[
\phi(n) = \abs{\theset{1\leq x \leq n : (x,n) = 1}}
\]
:::

:::{.example title="?"}
\[
\phi(1) & = \abs{\theset{1}} = 1 \\
\phi(2) & = \abs{\theset{1}} = 1 \\
\phi(3) & = \abs{\theset{1,2}} = 2 \\
\phi(4) & = \abs{\theset{1,3}} = 2 \\
\phi(5) & = \abs{\theset{1,2,3,4}} = 4
\]
:::

:::{.proposition title="Formulas involving the totient"}
\[
\phi(p)   & = p-1 \\
\phi(p^k) & = p^{k-1}(p-1) \\
\phi(n) &= n\prod_{i=1}^{?} \qty{1 - {1\over p_i}} \\
n &= \sum_{\tiny d\divides n} \phi(d) 
\]


:::

:::{.proof title="?"}
All numbers less than $p$ are coprime to $p$; there are $p^k$ numbers less than $p^k$ and the only numbers _not_ coprime to $p^k$ are multiples of $p$, i.e. $\theset{p, p^2, \cdots p^{k-1}}$ of which there are $k-1$, yielding $p^k - p^{k-1}$

Along with the fact that $\phi$ is multiplicative, so $(p,q) = 1 \implies \phi(pq) = \phi(p)\phi(q)$, compute this for any $n$ by taking the prime factorization.

With these properties, one can compute:
\[
\phi(n) 
&= \phi\qty{ \prod_i p_i^{k_i}} \\
&= \prod_i p_i^{k_i-1}(p_i-1) \\ 
&= n \left(\frac{\prod_i (p_i-1)}{\prod_i p_i}\right) \\ 
&= n\prod_i \qty{ 1 - \frac{1}{p_i}}
\]

\\todo[inline]{Check and explain}
:::


## Quadratic Residues

:::{.definition title="Quadratic Residue"}
$x$ is a **quadratic residue** $\bmod n$ iff there exists an $a$ such that $a^2 = x \mod n$.
:::

:::{.proposition title="?"}
In $\ZZ_p$, exactly half of the elements (even powers of generator) are quadratic residues.
:::

:::{.proposition title="?"}
\[  
-1\text{ is a quadratic residue in } \ZZ_p \iff p = 1 \mod 4
.\]
:::


:::{.definition title="The Jacobi Symbols"}
\todo[inline]{todo}
:::

:::{.definition title="The Legendre Symbol"}
\todo[inline]{todo}
:::

## Primality Tests

:::{.proposition title="Fermat Primality Test"}
If $n$ is prime, then 
\[
a^{n-1} = 1 \mod n
\]
:::

:::{.proposition title="Miller-Rabin Primality Test"}
$n$ is prime iff 
\[
x^2 = 1 \mod n \implies x = \pm 1
\]
:::

## Sequences in Metric Spaces

:::{.theorem title="Bolzano-Weierstrass"}
Every bounded sequence has a convergent subsequence.
:::

:::{.theorem title="Heine-Borel"}
In $\RR^n, X$ is compact $\iff X$ is closed and bounded.
:::

:::{.remark}
Necessity of $\RR^n$: $X = (\ZZ, d(x,y) = 1)$ is closed, complete, bounded, but not compact since $\theset{1,2,\cdots}$ has no convergent subsequence
:::

:::{.proposition title="Converse of Heine-Borel"}
Converse holds iff bounded is replaced with totally bounded
:::

# Sequences

Notation: $\theset{a_n}_{n\in\NN}$ is a **sequence**, $\displaystyle\sum_{i\in\NN} a_i$ is a **series**.


## Known Examples

- Known sequences: let \(c\) be a constant.
\[
c, c^2, c^3, \ldots 
&= \theset{c^n}_{n=1}^\infty \to 0 
&& \forall \abs{c} < 1 \\ \\ 
\frac{1}{c},\frac{1}{c^2},\frac{1}{c^3},\ldots 
&= \theset{\frac{1}{c^n}}_{n=1}^\infty \to 0 
&&\forall  \abs{c} > 1 \\ \\
1,\frac{1}{2^c},\frac{1}{3^c},\ldots 
&= \theset{\frac{1}{n^c}}_{n=1}^\infty \to 0 
&& \forall c > 0
\]


## Convergence

:::{.definition title="Convergence of a Sequence"}
A sequence $\ts{x_j}$ **converges** to $L$ iff 
\[  
\forall \varepsilon > 0,\, \exists N > 0 \text{ such that } \quad n\geq N \implies \abs{x_n - L} < \eps
.\]
:::


:::{.theorem title="Squeeze Theorem"}
\[
b_n \leq a_n \leq c_n \text{ and } b_n,c_n \to L \implies a_n \to L
\]
:::

:::{.theorem title="Monotone Convergence Theorem for Sequences"}
If $\theset{a_j}$ monotone and bounded, then $a_j \to L = \lim\sup a_i < \infty$.
:::

:::{.theorem title="Cauchy Criteria"}
$\abs{a_m - a_n} \to 0 \in \RR \implies \theset{a_i}$ converges.
:::

### Checklist


- Is the sequence bounded?
	- $\theset{a_i}$ not bounded $\implies$ not convergent
	- If bounded, is it monotone?
		- $\theset{a_i}$ bounded and monotone $\implies$ convergent
- Use algebraic properties of limits

- Epsilon-delta definition

- Algebraic properties and manipulation: 

  - Limits commute with $\pm, \times, \div$ and $\lim C = C$ for constants.

	- E.g. Divide all terms by \(n\) before taking limit

	- Clear denominators



# Sums ("Series")

:::{.definition title="Series"}
A **series** is an function of the form
\[  
f(x) = \sum_{j=1}^\infty c_j x^j
.\]
:::

## Known Examples

### Conditionally Convergent
\[
\sum_{k=1}^\infty k^p &< \infty 
&&\iff p \leq 1 \\
\sum_{k=1}^\infty \frac{1}{k^p} &< \infty 
&&\iff p > 1 \\
\sum_{k=1}^\infty \frac{1}{k} &= \infty 
&&
\]

### Convergent
\[
\sum_{n=1}^\infty \frac{1}{n^2}           & < \infty \\
\sum_{n=1}^\infty \frac{1}{n^3}           & < \infty \\
\sum_{n=1}^\infty \frac{1}{n^\frac{3}{2}} & < \infty \\
\sum_{n=1}^\infty \frac{1}{n!}            & = e \\
\sum_{n=1}^\infty \frac{1}{c^n}           & = \frac{c}{c-1} \\
\sum_{n=1}^\infty (-1)^n \frac{1}{c^n}    & = \frac{c}{c+1} \\
\sum_{n=1}^\infty (-1)^n \frac{1}{n}      & = \ln 2
\]

### Divergent

\[
\sum_{n=1}^\infty \frac{1}{n} = \infty \\
\sum_{n=1}^\infty \frac{1}{\sqrt n} = \infty 
\]

## Convergence

> Useful reference: <http://math.hawaii.edu/~ralph/Classes/242/SeriesConvTests.pdf>

:::{.definition title="Absolutely Convergent"}
\todo[inline]{todo}
:::

:::{.remark}
$a_n\to 0$ does not imply $\sum a_n < \infty$. 
Counterexample: the harmonic series.
:::

:::{.proposition title="?"}
Absolute convergence $\implies$ convergence
:::


:::{.proposition title="The Cauchy Criterion"}
\[
\limsup a_i \to 0 \implies \sum a_i \text{ converges }
\]
:::

### The Big Tests

:::{.theorem title="Comparison Test"}
\envlist
- $a_n < b_n \and \sum b_n < \infty \implies \sum a_n < \infty$
- $b_n < a_n \and \sum b_n = \infty \implies \sum a_n = \infty$
:::

:::{.theorem title="Ratio Test"}
\[
R =\lim_{n\to\infty} \abs{\frac{a_{n+1}}{a_n}}
\]

- \(R < 1\): absolutely convergent
- \(R > 1\): divergent
- \(R = 1\): inconclusive

:::

:::{.theorem title="Root Test"}
\[
R = \limsup_{n \to \infty} \sqrt[n]{\abs{a_n}}
\]
- \(R < 1\): convergent
- \(R > 1\): divergent
- \(R = 1\): inconclusive
:::

:::{.theorem title="Integral Test"}
\[
f(n) = a_n \implies \sum a_n < \infty \iff \int_1^\infty f(x) dx < \infty
\]
:::

:::{.theorem title="Limit Test"}
\[
\lim_{n\to\infty}\frac{a_n}{b_n} = L < \infty \implies \sum a_n < \infty \iff \sum b_n < \infty
\]
:::

:::{.theorem title="Alternating Series Test"}
\[
a_n \downarrow 0 \implies \sum (-1)^n a_n < \infty
\]
:::

:::{.theorem title="Weierstrass $M\dash$Test"}
\[
\sum_{n=1}^\infty \norm{f_n}_\infty < \infty 
\implies \exists f\text{ such that } \norm{ \sum_{n=1}^\infty f_n - f}_\infty \to 0
\]
In other words, the series converges uniformly.

> Slogan: Convergence of the sup norms implies uniform convergence"

:::

:::{.remark}
The \(M\) in the name comes from defining $\sup\theset{f_k(x)} \da M_n$ and requiring $\sum \abs{M_n} < \infty$.
:::


  


### Checklist 

- Do the terms tend to zero?
	- $a_i \not\to 0 \implies \sum a_i = \infty$.
		- Can check with L'Hopital's rule
- There are exactly 6 tests at our disposal:
	- Comparison, root, ratio, integral, limit, alternating
- Is the series alternating?
	- If so, does $a_n \downarrow 0$?
		- If so, **convergent**
- Is this series bounded above by a known convergent series?
	- \(p\) series with \(p>1\), i.e. : $\sum a_n \leq \sum \frac{1}{n^p} < \infty$
	- Geometric series with $\abs{x} < 1$, i.e. $\sum a_n \leq \sum x^n$
- Is this series bounded below by a known divergent series?
	- \(p\) series with $p\leq 1$, i.e. $\infty = \sum \frac{1}{n^p} \leq \sum a_i$
- Are the ratios strictly less than or greater than 1?
	- $<1 \implies$ **convergent**
	- $>1 \implies$ **convergent**
- Does the integral analogue converge?
	- Integral converges $\iff$ sum converges
- Try the root test
	- $<1 \implies$ **convergent**
	- $>1 \implies$ **convergent**
- Try the limit test
	- Attempt to divide each term to obtain a known convergent/divergent series

Some Pattern Recognition:

- $(\text{stuff})!$: Ratio test (only test that will work with factorials!!)
- $(\text{stuff})^n$: Root test or ratio test
- Replace \(a_n\) with an \(f(x)\) that's easy to integrate - integral test
- \(p(x)\) or $\sqrt{p(x)}$: comparison or limit test

## Radius of Convergence

:::{.proposition title="Finding the radius of convergence"}
Use the fact that 
\[
\lim_{k\to\infty} \abs{\frac{a_{k+1}x^{k+1}}{a_kx^k}} 
= \abs{x}\lim_{k\to\infty} \abs{\frac{a_{k+1}}{a_k}} < 1 
\implies \sum a_k x^k < \infty
,\]
so take $L \da \lim_{k\to\infty} \frac{a_{k+1}}{a_k}$ and then obtain the radius as 
\[
R = \frac{1}{L} = \lim_{k\to\infty} {a_k \over a_{k+1}}
\]
:::

:::{.remark}
\envlist
- Note $L=0 \implies$ absolutely convergent everywhere
- $L = \infty \implies$ convergent only at $x=0$.
- Also need to check endpoints \(R, -R\) manually.
:::


# Real Analysis

## Notation

:::{.definition title="Continuously Differentiable"}
A function is **continuously differentiable** iff $f$ is differentiable and $f'$ is continuous.

Conventions:

- *Integrable* means *Riemann integrable*.

:::
\[  
f && \text{a functional }\RR^n \to \RR \\
\vector{f} && \text{a function } \RR^n\to \RR^m \\
A, E, U, V && \text{open sets} \\
A' && \text{the limit points of }A \\
\bar{A} && \text{the closure of }A \\
A\interior\da A\sm A' && \text{the interior of }A \\
K && \text{a compact set} \\
\mathcal{R}_A && \text{the space of Riemann integral functions on }A \\
C^j(A) && \text{the space of }j\text{ times continuously differentiable functions }f: \RR^n \to \RR \\
\ts{f_n} && \text{a sequence of functions} \\
\ts{x_n} && \text{a sequence of real numbers}\\
f_n \to f && \text{pointwise convergence} \\
f_n \uniformlyconverges f && \text{uniform convergence} \\
x_n \increasesto x && x_i\leq x_j \text{ and }x_j\text{ converges to }x \\
x_n \decreasesto x && x_i\geq x_j \text{ and }x_j\text{ converges to }x \\
\sum_{k\in \NN} f_k && \text{a series}\\
D(f) && \text{the set of discontinuities of }f
.\]


## Big Ideas

Summary for GRE:

- Limits,
- Continuity,
- Boundedness,
- Compactness,
- Definitions of topological spaces,
- Lipschitz continuity
- Sequences and series of functions.


- Know the interactions between the following major operations:
  - Continuity (pointwise limits)
  - Differentiability
  - Integrability
  - Limits of sequences
  - Limits of series/sums
- The derivative of a continuous function need not be continuous
- A continuous function need not be differentiable
- A uniform limit of differentiable functions need not be differentiable
- A limit of integrable functions need not be integrable
- An integrable function need not be continuous
- An integrable function need not be differentiable


:::{.theorem title="Generalized Mean Value Theore"}
\[
f,g\text{ differentiable on } [a,b] \implies \exists c\in[a,b] :
\left[f ( b ) - f ( a ) \right] g' ( c ) = \left[g ( b ) - g ( a )\right] f' ( c )
\]
:::

:::{.corollary title="Mean Value Theorem"}
?
\todo[inline]{todo}
:::





## Important Examples


## Limits

\todo[inline]{todo}

## Commuting Limits


- Suppose $f_n \to f$ (pointwise, not necessarily uniformly)
- Let $F(x) = \int f(t)$ be an antiderivative of $f$
- Let $f'(x) = \frac{\partial f}{\partial x}(x)$ be the derivative of $f$.

Then consider the following possible ways to commute various limiting operations:

Does taking the derivative of the integral of a function always return the original function?
\[
[\frac{\partial}{\partial x}, \int dx]:\qquad\qquad \frac{\partial}{\partial x}\int f(x, t)dt =_? \int \frac{\partial}{\partial x} f(x, t)dt\\
\text{}
\]

**Answer**: Sort of (but possibly not).

**Counterexample**: 
\[
f(x) = 
\begin{cases}
1 & x > 0 \\ 
-1 & x \leq 0
\end{cases}
\implies \int f \approx \abs{x},
\]
which is not differentiable. (This is remedied by the so-called "weak derivative")

**Sufficient Condition**: If $f$ is continuous, then both are always equal to $f(x)$ by the FTC.

---

Is the derivative of a continuous function always continuous?
\[
[\frac{\partial}{\partial x}, \lim_{x_i\to x}]:\qquad\qquad
\lim_{x_i \to x} f'(x_n) =_? f'(\lim_{x_i\to x} x)
\]
**Answer**: No.

**Counterexample**:
\[
f ( x ) = \left\{ \begin{array} { l l } { x ^ { 2 } \sin ( 1 / x ) } & { \text { if } x \neq 0 } \\ { 0 } & { \text { if } x = 0 } \end{array} \right.
\implies f ^ { \prime } ( x ) = \left\{ \begin{array} { l l } { 2 x \sin \left( \frac { 1 } { x } \right) - \cos \left( \frac { 1 } { x } \right) } & { \text { if } x \neq 0 } \\ { 0 } & { \text { if } x = 0 } \end{array} \right.
\]
which is discontinuous at zero.

**Sufficient Condition**: There doesn't seem to be a general one (which is perhaps why we study $C^k$ functions).


---

Is the limit of a sequence of differentiable functions differentiable **and** the derivative of the limit?

\[
[\frac{\partial}{\partial x}, \lim_{f_n \to f}]:\qquad\qquad \lim_{f_n \to f}\frac{\partial}{\partial x}f_n(x) =_? \frac{\partial }{\partial x}\lim_{f_n \to f} f_n(x)
\]
**Answer**: *Super* no -- even the uniform limit of differentiable functions need not be differentiable!

**Counterexample**: $f_n(x) = \frac{\sin(nx)}{\sqrt{n}} \rightrightarrows f = 0$ but $f_n' \not\to f' = 0$

**Sufficient Condition**: $f_n \rightrightarrows f$ and $f_n \in C^1$.

---

Is the limit of a sequence of integrable functions integrable **and** the integral of the limit?

\[
[\int dx, \lim_{f_n \to f}](f):\qquad\qquad
\lim_{f_n \to f}\int f_n(x) dx =_? \int \lim_{f_n \to f} f_n(x) dx
\]

**Answer**: No.

**Counterexample**: Order $\QQ\intersect[0,1]$ as $\theset{q_i}_{i\in\NN}$, then take
\[
f_n(x) = \sum_{i=1}^n \indic{q_n} \to \indic{{\QQ\intersect[0,1]}}
\]
where each $f_n$ integrates to zero (only finitely many discontinuities) but $f$ is not Riemann-integrable.

**Sufficient Condition**:
- $f_n \rightrightarrows f$, or
- $f$ integrable and $\exists M: \forall n, \abs{f_n} < M$ ($f_n$ uniformly bounded)

---

Is the integral of a continuous function also continuous?

\[
[\int dx, \lim_{x_i \to x}]:\qquad\qquad
\lim_{x_i \to x} F(x_i) =_? F(\lim_{x_i \to x} x_i)
\]

**Answer**: Yes.

**Proof**: $|f(x)| < M$ on $I$, so given $c$ pick a sequence $x\to c$. Then 
\[
\abs{f(x)} < M \implies \left\vert \int_c^x f(t)dt \right\vert < \int_c^x M dt \implies \abs{F(x) - F(c)} < M(b-a) \to 0
\]

---

Is the limit of a sequence of continuous functions also continuous?

\[
[\lim_{x_i \to x}, \lim_{f_n \to f}]: \qquad\qquad
\lim_{f_n \to f}\lim_{x_i \to x} f(x_i) =_? \lim_{x_i \to x}\lim_{f_n \to f} f_n(x_i)\\
\text{}\\
\]

**Answer**: No.

**Counterexample**: $f_n(x) = x^n \to \delta(1)$

**Sufficient Condition**: $f_n \rightrightarrows f$

---

Does a sum of differentiable functions necessarily converge to a differentiable function?

\[
\left[\frac{\partial}{\partial x}, \sum_{f_n}\right]: \qquad\qquad
\frac{\partial}{\partial x} \sum_{k=1}^\infty f_k =_? \sum_{k=1}^\infty \frac{\partial}{\partial x} f_k \\
\text{} \\
\text{}\\
\]

**Answer**: No.

**Counterexample**: $f_n(x) = \frac{\sin(nx)}{\sqrt{n}} \rightrightarrows 0 \definedas f$, but $f_n' = \sqrt{n}\cos(nx) \not\to 0 = f'$ (at, say, $x=0$)

**Sufficient Condition**: When $f_n \in C^1, \exists x_0: f_n(x_0) \to f(x_0)$ and $\sum \norm{f_n'}_\infty < \infty$ (continuously differentiable, converges at a point, and the derivatives absolutely converge)

---

## Continuity


:::{.definition title="Limit definition of continuity"}
\[
f\text{ continuous } \iff \lim_{x \to p} f(x) = f(p)
\]
:::

:::{.definition title="$\eps\dash\delta$ definition of continuity"}
\[
f:(X, d_X) \to (Y, d_Y) \text{ continuous } \iff \forall \varepsilon,~ \exists \delta \mid ~
d_X(x,y) < \delta \implies d_Y(f(x), f(y)) < \varepsilon
\]
:::

:::{.example title="A nonobviously discontinuous function"}
\[
f(x) = \sin\qty{ \frac{1}{x} } \implies 0\in D(f)
\]
:::

:::{.proof title="?"}
\todo[inline]{todo}
:::

:::{.example title="The Dirichlet function"}
The Dirichlet function is nowhere continuous:
\[
f(x) = \indic{\QQ}
\]
:::


:::{.proposition title="Thomae's function: the set of points of continuity and of discontinuity can both be infinite"}
The following function continuous at infinitely many points and discontinuous at infinitely many points:
\[
f(x) = 
\begin{cases}
0 & x\in\RR\sm\QQ \\
\frac{1}{q} & x = \frac{p}{q} \in \QQ
\end{cases}
\]
Then $f$ is discontinuous on $\QQ$ and continuous on $\RR\sm\QQ$.
:::

:::{.proof title="?"}
\envlist
**$f$ is continuous on $\QQ$**:

- Fix $\varepsilon$, let $x_0 \in \RR-\QQ$, choose $n: \frac{1}{n} < \varepsilon$ using Archimedean property.
  - Define $S = \theset{x\in\QQ: x\in (0,1), x=\frac{m}{n'}, n' < n}$
  - Then $\abs{S} \leq 1+2+\cdots (n-1)$, so choose $\delta = \min_{s\in S}\abs{s-x_0}$
  - Then 
\[
x \in N_\delta(x_0) \implies f(x) < \frac{1}{n} < \varepsilon
.\]

**$f$ is discontinuous on $\RR\sm\QQ$**:

- Let $x_0 = \frac{p}{q} \in \QQ$ and $\theset{x_n} = \theset{x-\frac{1}{n\sqrt 2}}$. Then 
\[
x_n \uparrow x_0\text{ but } f(x_n) = 0 \to 0 \neq \frac{1}{q} = f(x_0)
\]
:::


:::{.remark}
There are no functions that are continuous on $\QQ$ but discontinuous on $\RR-\QQ$
:::


:::{.definition title="Uniform Continuity"}
\todo[inline]{todo}
:::

:::{.definition title="Absolute Continuity"}

:::

:::{.theorem title="Extreme Value Theorem"}
A continuous function on a compact space attains its extrema.
:::


### Lipschitz Continuity

## Differentiability

\[
f'(p) \definedas \frac{\partial f}{\partial x}(p) = \lim_{x\to p} \frac{f(x) - f(p)}{x-p}
\]

- For multivariable functions: existence **and continuity** of $\frac{\partial \mathbf{f}}{\partial x_i} \forall i \implies \mathbf{f}$ differentiable
	- Necessity of continuity: example of a continuous functions with all partial and directional derivatives that is not differentiable:
\[  
f(x, y) = 
\begin{cases}
\frac{y^3}{x^2+y^2} & (x,y) \neq (0,0) \\ 
0 & \text{else}
\end{cases}
.\]

### Properties, strongest to weakest
\[  
C^\infty \subsetneq C^k \subsetneq \text{ differentiable } \subsetneq C^0 \subset \mathcal{R}_K
.\]

- Example showing $f\in C^0 \notimplies f$ is differentiable **and** $f$ not differentiable $\notimplies f \not\in C^0$.
	- Take $f(x) = \abs{x}$ at $x=0$.
- Example showing that $f$ differentiable $\notimplies f \in C^1$:
	- Take 
\[
f(x) = 
\begin{cases}
x^2\sin\qty{ \frac{1}{x} } & x \neq 0 \\ 
0 & x =0
\end{cases}
\implies f'(x) = 
\begin{cases}
-\cos\qty{\frac{1}{x}} + 2x\sin\qty{ \frac{1}{x} } & x \neq 0 \\ 
0 & x=0
\end{cases}
\]
  but $\lim_{x\to 0}f'(x)$ does not exist and thus $f'$ is not continuous at zero.

Proof that $f$ differentiable $\implies f \in C^0$:
\[
f(x) - f(p) = \frac{f(x)-f(p)}{x-p}(x-p) \stackrel{\tiny\mbox{hypothesis}}{=} f'(p)(x-p) \stackrel{\tiny\mbox{$x\to p$}}\rightrightarrows 0
\]

## Giant Table of Relations

Bold are assumed hypothesis, regular text is the strongest conclusion you can reach, strikeout denotes implications that aren't necessarily true.

\[
f' && f && \therefore f && F \\
\hline \\
\cancel{\text{exists}} && \mathbf{continuous} &&  \text{K-integrable} && \text{exists} \\
\cancel{\text{continuous}} && \mathbf{differentiable}  && \text{continuous} && \text{exists} \\
\cancel{\text{exists}} && \mathbf{integrable} && \cancel{\text{continuous}} && \text{differentiable} \\
\]

Explanation of items in table:

- K-integrable: compactly integrable.
- $f$ integrable $\implies F$ differentiable $\implies F \in C_0$
	- By definition and FTC, and differentiability $\implies$ continuity
- $f$ differentiable and $K$ compact $\implies f$ integrable on $K$.
	- In general, $f$ differentiable $\notimplies f$ integrable. Necessity of compactness: 
  \[  
  f(x) = e^x \in C^\infty(\RR)\text{ but }\int_\RR e^x dx \to \infty
  .\]
- $f$ integrable $\notimplies f$ differentiable
	- An integrable function that is not differentiable: $f(x) = |x|$ on $\RR$
- $f$ differentiable $\implies f$ continuous a.e.

## Integrability

- Sufficient criteria for Riemann integrability:
	- $f$ continuous
	- $f$ bounded and continuous almost everywhere, or
	- $f$ uniformly continuous
- $f$ integrable $\iff$ bounded and continuous a.e.

:::{.theorem title="FTC for the Riemann Integral"}
If $F$ is a differentiable function on the interval $[a,b]$, and $F'$ is bounded and continuous a.e., then $F' \in L_R([a, b])$ and 
\[
\forall x\in [a,b]: \int_a^x F'(t)~dt=F(x)-F(a)
\]

Suppose $f$ bounded and continuous a.e. on $[a,b]$, and define 
\[
F(x) \definedas \int_a^x f(t)~dt
\]
Then $F$ is absolutely continuous on $[a,b]$, and for $p \in [a,b]$,
\[
f \in C^0(p) \implies F \text{ differentiable at } p,~ F'(p) = f(p), \text{ and } F' \stackrel{\tiny\mbox{a.e}}{=} f.
\]
:::

:::{.proposition}
The Dirichlet function is Lebesgue integrable but not Riemann integrable:
\[
f(x) = \indic{x \in \QQ}
\]
:::

:::{.proof title="?"}
\todo[inline]{todo}
:::



## List of Free Conclusions:

- $f$ integrable on $U \implies$:
	- $f$ is bounded
	- $f$ is continuous a.e. (finitely many discontinuities)
	- $\int f$ is continuous
	- $\int f$ is differentiable
- $f$ continuous on $U$:
	- $f$ is integrable on compact subsets of $U$
	- $f$ is bounded
	- $f$ is integrable
- $f$ differentiable at a point $p$:
	- $f$ is continuous
- $f$ is differentiable in $U$
	- $f$ is continuous a.e.

- Defining the Riemann integral: #todo

## Convergence

### Sequences and Series of Functions

:::{.definition title="Convergence of an infinite series"}
Define 
\[
s_n(x) \da \sum_{k=1}^n f_k(x)
\]
and 
\[
\sum_{k=1}^\infty f_k(x) \da \lim_{n\to\infty} s_n(x),
\]
which can converge pointwise, absolutely, uniformly, or not all.
:::

:::{.proposition title="?"}
If $\limsup_{k\in \NN} \abs{f_k(x)} \neq 0$ then $f_k$ is not convergent.
:::

:::{.proposition title="?"}
If $f$ is injective, then $f'$ is nonzero in some neighborhood of ???
:::



### Pointwise convergence

\[  
f_n \to f = \lim_{n\to\infty} f_n
.\]
Summary:
\[  
\lim_{f_n \to f} \lim_{x_i \to x} f_n(x_i) \neq \lim_{x_i \to x} \lim_{f_n \to f} f_n(x_i)
.\]

\[  
\lim_{f_n \to f} \int_I f_n \neq \int_I \lim_{f_n \to f} f_n
.\]

:::{.proposition title="?"}
Pointwise convergence is strictly weaker than uniform convergence.
:::
:::{.proof title="?"}
$f_n(x) = x^n$ on $[0, 1]$ converges pointwise but not uniformly.

- Towards a contradiction let $\varepsilon = \frac{1}{2}$. 
- Let $n = N\qty{\frac{1}{2} }$ and $x = \left(\frac{3}{4}\right)^\frac{1}{n}$.
- Then $f(x) = 0$ but 
\[
\abs{f_n(x) - f(x)} = x^n = \frac{3}{4} > \frac{1}{2}
\]
:::

:::{.proposition title="A pointwise limit of continuous functions is not necessarily continuous."}
\[  
f_n \text{ continuous} \notimplies f\da \lim_n f_n \text{ is continuous}
.\]
:::

:::{.proof title="?"}
Take 
\[  
f_n(x) = x^n,\quad f_n(x) \to \indic[x = 1]
.\]
:::

:::{.proposition title="The limit of derivatives need not equal the derivative of the limit"}
\[  
f_n \text{ differentiable} &\notimplies  f'_n \text{ converges} \\
f'_n \text{ converges} &\not\implies \lim f'_n = f'
.\]
:::

:::{.proof title="?"}
Take 
\[  
f_n(x) = \frac{1}{n}\sin(n^2 x) \to 0,&& \text{but }
f'_n = n\cos(n^2 x) \text{ does not converge}
.\]
:::

:::{.proposition title="?"}
\[  
f_n\in \mathcal{R}_I \notimplies \lim_{f_n \to f} \int_I f_n \neq \int_I \lim_{f_n \to f} f_n
.\]
:::

:::{.proof title="?"}
May fail to converge to same value, take 
\[  
f_n(x) = \frac{2n^2x}{(1+n^2x^2)^2} \to 0 && \text{but }\int_0^1 f_n = 1 - \frac{1}{n^2 + 1} \to 1\neq 0
.\]

:::




### Uniform Convergence

Notation:
\[  
f_n \rightrightarrows f= \lim_{n\to\infty} f_n \text{ and } \sum_{n=1}^\infty f_n \rightrightarrows S
.\]

Summary:
\[  
\lim_{x_i \to x} \lim_{f_n \to f} f_n(x_i) = \lim_{f_n \to f} \lim_{x_i \to x} f_n(x_i) = \lim_{f_n \to f} f_n(\lim_{x_i \to x} x_i)
.\]

\[  
\lim_{f_n \to f} \int_I f_n = \int_I \lim_{f_n \to f} f_n
.\]

\[  
\sum_{n=1}^\infty \int_I f_n = \int_I \sum_{n=1}^\infty f_n
.\]

"The uniform limit of a(n) $x$ function is $x$", for $x \in$ {continuous, bounded}

- Equivalent to convergence in the uniform metric on the metric space of bounded functions on $X$: 
\[  
f_n \rightrightarrows f \iff \sup_{x\in X} \abs{f_n(x) - f(x)} \to 0
.\]
	- $(B(X,Y), \norm{}_\infty)$ is a metric space and $f_n \rightrightarrows f \iff \norm{f_n - f}_\infty \to 0$
(where $B(X,Y)$ are bounded functions from $X$ to $Y$ and $\norm{f}_\infty = \sup_{x\in I}\theset{f(x)}$

- $f_n \rightrightarrows f \implies f_n \to f$ pointwise

- $f_n$ continuous $\implies f$ continuous
	- i.e. "the uniform limit of continuous functions is continuous"

- $f_n \in C^1$, $\exists x_0: f_n(x_0) \to f(x_0)$, and $f'_n \rightrightarrows g$ $\implies f$ differentiable and $f' = g~$ (i.e. $f'_n \to f'$)

	- Necessity of $C^1$ -- look at failures of $f'_n$ to be continuous:
		- Take $f_n(x) = \sqrt{\frac{1}{n^2} + x^2} \rightrightarrows |x|$, not differentiable
		- Take $f_n(x) = n^{-\frac{1}{2}}\sin(nx) \rightrightarrows 0$ but $f'_n \not\to f' = 0$ and $f' \neq g$

- $f_n$ integrable $\implies f$ integrable and $\int f_n \to \int f$
- $f_n$ bounded $\implies f$ bounded
- $f_n \rightrightarrows f_n \notimplies f'_n$ converges
	- Says nothing about it general
- $f_n' \rightrightarrows f' \notimplies f_n \rightrightarrows f$
	- Unless $f$ converges at one or more points.



:::{.proposition title="All subsequences of a convergent sequence share a limit"}
$\theset{x_i} \to p \implies$ every subsequence also converges to $p$.
:::

:::{.definition title="Cauchy Sequence"}
\todo[inline]{todo}
:::


:::{.proposition title="?"}
Every convergent sequence in $X$ is a Cauchy sequence.
:::

:::{.remark}
The converse need not hold in general, but if $X$ is complete, every Cauchy sequence converges.
An example of a Cauchy sequence that doesn't converge: take $X=\QQ$ and set $x_i = \pi$ truncated to $i$ decimal places.
:::

:::{.remark}
If any subsequence of a Cauchy sequence converges, the entire sequence converges.
:::

:::{.definition title="Metric"}
\[  
d(x,y) &\geq 0 && \text{Positive}\\
d(x,y) &= 0 \iff x = y && \text{Nondegenerate}\\
d(x,y) &= d(y,x) && \text{Symmetric}\\
d(x,y) &\leq d(x,p) + d(p,y) \quad \forall p && \text{Triangle Inequality}
.\]
:::

:::{.definition title="Complete"}
? \todo[inline]{todo}
:::

:::{.definition title="Bounded"}
? \todo[inline]{todo}
:::

## Topology


:::{.definition title="Axioms for a Topology"}
**Open Set Characterization**:
Arbitrary unions and finite intersections of open sets are open. 


**Closed Set Characterization**:
Arbitrary intersections and finite unions of closed sets are closed.

:::


:::{.remark}
The best source of examples and counterexamples is the open/closed unit interval in $\mathbb{R}$. Always test against these first!
:::

:::{.remark}
If $f$ is a continuous function.
the preimage of every open set is open and
the preimage of every closed set is closed.
:::

:::{.proposition title="?"}
In $\RR$, singleton sets and finite discrete sets are closed.
:::

:::{.proof title="?"}
A singleton set can be written
\[  
\ts{p_0} = (-\infty, p) \union (p, \infty)
.\]
A finite discrete set $\ts{p_0}$, which wlog (by relabeling) can be assumed to satisfy $p_0 < p_1 < \cdots$, can be written
\[  
\ts{p_0, p_1, \cdots, p_n} = (-\infty, p_0) \union (p_0, p_1) \union \cdots \union (p_n, \infty)
.\]
:::

:::{.proposition title="?"}
This yields a good way to produce counterexamples to continuity.
:::

In $\mathbb{R}$, singletons are closed. This means any finite subset is closed, as a finite union of singleton sets! 

:::{.proposition title="?"}
If $X$ is a compact metric space, then $X$ is complete and bounded.
:::

:::{.proposition title="?"}
If $X$ complete and $X \subset Y$, then $X$ closed in $Y$.
:::

:::{.remark}
The converse generally does not hold, and completeness is a necessary condition.
Counterexample: $\QQ\subset \QQ$ is closed but $\QQ\subset\RR$ is not.
:::

:::{.proposition title="?"}

If $X$ is compact, then $Y \subset X \implies Y$ is compact $\iff$ $Y$ closed.
:::

:::{.definition title="Sequential Compactness"}
A topological space $X$ is **sequentially compact** iff every sequence $\ts{x_n}$ has a subsequence converging to a point in $X$.
:::

:::{.proposition title="Compactness and sequential compactness"}
If $X$ is a metric space, $X$ is compact iff $X$ is sequentially compact.
:::

:::{.remark}
Note that in general, neither form of compactness implies the other.
:::


## Counterexamples

:::{.proposition title="?"}
There are functions differentiable only at a single point.
Example:
\[  
f(x) = 
\begin{cases}
x^2 & x\in QQ\\
-x^2 & x\in \RR\sm\QQ
\end{cases}
.\]

This is discontinuous everywhere except for $x=0$, and you can compute
\[  
\lim_{h\to 0} {f(x+h) - f(x) \over h}\evalfrom_{x=0} = 
\lim_{h\to 0}
\begin{cases}
h & x\in \QQ \\
-h & x\in \RR\sm\QQ 
\end{cases}
=0
.\]
:::

:::{.proposition title="?"}
The product of two non-differentiable functions can be differentiable: take $f(x) = g(x) = \abs{x}$ which are not differentiable at $x=0$, then $fg(x) = \abs{x}^2$ is differentiable at $x=0$.
:::

:::{.proposition title="?"}
A continuous function that is zero on a dense set $A\subset X$ is identically zero.

:::{.proof title="?"}
Since $A$ is dense, for any $x\in X\sm A$ take a sequence $\ts{x_n}$ in $A$ converging to $x$.
Then $0 = f(x_n) \to f(x)$ implies $f(x) = 0$.
:::
:::

# Point-Set Topology

## Definitions

\todo[inline]{Bring in Rudin's list}

- Epsilon-neighborhood
	- $N_r(p) = \theset{q \mid d_X(p,q) < r}$

- Limit Point
	- $p$ is a limit point of $E$ iff $\forall N_r(p),~ \exists q\neq p \mid q \in N_r(p)$
	- Equivalently, $\forall N_r(p),~ N_r(p) \cap E \neq \emptyset$
	- Let $L(E)$ be the set of limit points of $E$.
	- Example: $E = (0,1) \implies 0 \in L(E)$

- Isolated Point
	- $p$ is an isolated point of $E$ iff $p$ is not a limit point of $E$
	- Equivalently, $\exists N_r(p) \mid N_r(p) \cap E = \emptyset$
	- Equivalently, $E - L(E)$

- Perfect
	- $E$ is perfect iff $E$ is closed and $E \subseteq L(E)$
	- Equivalently, $L(E) = E$

- Interior
	- $p$ is an interior point of $E$ iff $\exists N_r(p) \mid N_r(p) \subsetneq E$
	- Denote the interior of $E$ by $E^\circ$

- Exterior

- Closed sets
	- $E$ is closed iff $p$ a limit point of $E \implies p \in E$
	- Equivalently if $L(E) \subseteq E$
	- Closed under finite unions, arbitrary intersections

- Open sets
	- $E$ is open iff $p\in E \implies p \in E^\circ$
	- Equivalently, if $E \subseteq E^\circ$
	- Closed under arbitrary unions, finite intersections

- Boundary

- Closure

- Dense
	- $E$ is dense in $X$ iff $X \subseteq E \cup L(E)$

- Connected
	- Space of connected sets closed under union, product, closures
	- Convex $\implies$ connected

- Disconnected

- Path Connected
	- $\forall x,y \in X \exists f: I \to X \mid f(0) = x, f(1) = y$
	- Path connected $\implies$ connected

- Simply Connected

- Totally Disconnected

- Hausdorff

- Compact
	- Every covering has a finite subcovering.
	- $X$ compact and $U \subset X: (U \text{ closed } \implies U \text{ compact })$
		- $U \text{ compact } \implies U \text{ closed }$ iff $X$ is Hausdorff
	- Closed under products

:::{.example title="?"}
The space $\theset{\frac{1}{n}}_{n\in \NN}$.
:::

List of properties preserved by continuous maps:

- Connectedness
- Compactness

Checking if a map is homeomorphism:

- $f$ continuous, $X$ compact and Hausdorff $\implies f$ is a homeomorphism.

# Probability 

## Definitions
\[
L^2(X) &= \theset{f: X \to \RR: \int_\RR f(x) ~dx < \infty} 
&&\text{square integrable functions}\\
\inner{g}{f}_{2} &= \int_\RR g(x)f(x) ~dx 
&&\text{the } L^2 \text{ inner product}\\
\norm{f}_2^2 &= \inner{f}{f} = \int_\RR f(x)^2 ~dx
&&\text{norm}\\
E[\wait] &= \inner{\wait}{f} 
&&\text{expectation}\\
(\tau_{p}f)(x) &= f(p- x) 
&&\text{translation}\\
(f \ast g)(p) &= \int_\RR f(t)g(p-t)~dt = \int_\RR f(t)(T_{p}g)(t) ~dt = \inner{T_pg}{f} 
&&\text{convolution}\\
\]

:::{.definition title="Random Variable"}
For $(\Sigma, E, \mu)$ a probability space with sample space $\Sigma$ and probability measure $\mu$, a random variable is a function $X: \Sigma \to \RR$
:::

:::{.definition title="Probability Density Function (PDF)"}
For any $U \subset \RR$, given by the relation
\[
P(X \in U) = \int_U f(x) ~dx \\
\implies P(a \leq X \leq b) = \int_a^b f(x) ~dx
\]
:::

:::{.definition title="Cumulative Distribution Function (CDF)"}
The antiderivative of the PDF
\[  
F(x) = P(X \leq x) = \int_{-\infty}^x f(x) ~dx
.\]
Yields $\dd{F}{x} = f(x)$
:::

:::{.definition title="Mean/Expected Value"}
\[  
E[X] \definedas \inner{\id}{f} = \int_\RR x f(x) ~dx
.\]
Also denoted $\mu_X$.
:::

:::{.proposition title="Linearity of Expectation"}
\[  
E\left[\sum_{i\in\NN} a_i X_i\right] = \sum_{i\in\NN} a_i E[X_i]
.\]
Does not matter whether or not the $X_i$ are independent.
:::


:::{.definition title="Variance"}
\[
\mathrm{Var}(X) &= E[(X - E[X])^2] \\
&= \int (x - E[X])^2 f(x) ~dx \\
&= E[X^2] - E[X]^2 \\
&\definedas \sigma^2(X)
\]
where $\sigma$ is the standard deviation.
Can also defined as $\inner{(\id - \inner{\id}{f})^2}{f}$
Take the portion of the id function in the orthogonal complement of $f$, squared, and project it back onto $f$?
\todo[inline]{???}
:::

:::{.proposition title="Properties of Variance"}
\[  
\mathrm{Var}(aX + b) &= a^2\mathrm{Var}(X) \\
\mathrm{Var}\qty{ \sum_\NN X_i } &= 
\sum_i \mathrm{Var}(X_i) + 2 \sum_{i < j}\mathrm{Cov}(X_i, X_j)
.\]
:::
	
:::{.definition title="Covariance"}
\[
\mathrm{Cov}(X,Y) &= E[(X-\mu_X)(Y-\mu_Y)] \\
 &= E[XY] - E[X]E[Y]
\]
:::

:::{.proposition title="Properties of Covariance"}
\[  
\mathrm{Cov}(X, X) &= \mathrm{Var}(X) \\
\mathrm{Cov}(aX, Y) &= a\mathrm{Cov}(X,Y) \\
\mathrm{Cov}(\sum_{\NN} X_i, \sum_\NN Y_j) 
&= \sum_i \sum_j\mathrm{Cov}(X_i, Y_j) \\
.\]
:::

:::{.proposition title="Stirling's Approximation"}
\[
k! \sim k^\frac{k+1}{2}e^{-k} \sqrt{2\pi}
.\]
:::

:::{.proposition title="Markov Inequality"}
\[
P(X \geq a) \leq \frac 1 a E[X]
\]

One-sided Markov: 
\[
P(X \in N_\varepsilon(\mu)) = 2\frac{\sigma^2}{\sigma^2 + a^2}
.\]
:::

:::{.proposition title="Chebyshev's Inequality"}
\[
P(\abs{X - \mu} \geq a) \leq \left( \frac \sigma k \right)^2
\]
:::

:::{.proof title="?"}
Apply Markov to the variable $(X-\mu)^2$ and $a=k^2$
:::

:::{.theorem title="Central Limit Theorem"}
For $X_i$ i.i.d.,
\[  
\lim_n \frac{\sum_{i=1}^n X_i - n\mu}{\sigma \sqrt n} \sim N(0, 1)
.\]
:::

:::{.theorem title="Strong Large of Large Numbers"}
\[  
P(\frac{1}{n} \sum X_i \rightarrow \mu) = 1
.\]
:::

:::{.proposition title="Chernoff Bounds"}
For all $t > 0$,
\[  
P(X \in N_\varepsilon(a)^c) \leq 2 e^{-at}M_X(t) \\
.\]
:::

:::{.proposition title="Jensen's Inequality"}
\[
E[f(X)] \geq f(E[X])
\]
:::


:::{.definition title="Entropy"}
\[
H(X) = - \sum p_i \ln p_i
\]
:::


## Theory and Background

:::{.definition title="Axioms for a Probability Space"}
Given a sample space $\Sigma$ with events $S$,
1. $\mu(\Sigma) = 1$
1. Yields $S \in \Sigma \implies 0 \leq P(S) \leq 1$
2. For mutually exclusive events, $P(\union_\NN S_i) = \sum_\NN P(S_i)$
1. Yields $P(\emptyset) = 0$
:::

:::{.proposition title="Properties that follow from axioms"}
\envlist
- $P(S^c) = 1 - P(S)$
- $E \subseteq F \implies P(E) \leq P(F)$
- Proof: $E \subseteq F \implies F = E \union (E^c \intersect F)$, which are disjoint, so $P(E) \leq P(E) + P(E^c \intersect F) = P(F)$.
- $P(E \union F) = P(E) + P(F) - P(E \intersect F)$
:::

:::{.definition title="Conditional Probability"}
\[
P(F)P(E \mid F) = P(E \intersect F) = P(E)P(F \mid E)
\]
Generalization: 
\[
P(\intersect_\NN E_i) = P(E_1) P(E_2 \mid E_1)P(E_3\mid E_1 \intersect E_2) \cdots
\]
:::


:::{.theorem title="Bayes' Rule"}
\[
P(E) = P(F)P(E \mid F) + P(F^c)P(E \mid F^c) \\
P(E) = \sum_i P(A_i) P(E \mid A_i)
\]
Generalization: for $\coprod_{i=1}^n A_i = \Sigma$ and $A=A_i$ for some $i$,
\[  
P(A \mid B) = \frac{P(A)P(B\mid A)}{\sum_{j = 1}^n P(B \mid A_j)}
.\]
The LHS: the posterior probability, while $P(A_i)$ are the priors.
:::

:::{.definition title="Odds"}
\[
P(A) / P(A^c)
\]
Conditional odds: 
\[
\frac{P(A \mid E)}{P(A^c \mid E)} = \frac{P(A)}{P(A^c)} \frac{P(E \mid A)}{P(E \mid A^c)}
\]
:::

:::{.definition title="Independence"}
\[
P(A \intersect B) = P(A) P(B)
\]
:::

:::{.proposition title="Change of Variables for PDFs"}
If $g$ is differentiable and monotonic and $Y=g(X)$, then
\[
f_Y(y) = 
\begin{cases}
(f_X \circ g^{-1})(y) \abs{\dd{}{y} g^{-1}(y)} & y \in \im(g) \\
0 & \text{else} 
\end{cases}
\]
:::

:::{.proposition title="PDF for a sum of independent random variables"}
\[
f_{X+Y} = (F_X \ast f_y)
\]
:::


## Distributions

Let $X$ be a random variable, and $f$ be its probability density function satisfying $f(k) = P(X = k)$

### Uniform

- Consider an event with $n$ mutually exclusive outcomes of equal probability, and let $X \in \theset{1,2,\ldots, n}$ denote which outcome occurs. Then,
\[
f(k) 			&= \quad \frac 1 n \\
\mu 			&= \frac n 2 \\
\sigma^2 	&= a
\]
- Examples:
  - Dice rolls where $n=6$.
  - Fair coin toss where $n=2$.
- Continuous: $\mu = (1/2)(b+a), \sigma^2 = (1/12)(b-a)^2$

### Bernoulli

- Consider a trial with either a positive or negative outcome, and let $X \in\theset{0,1}$ where $1$ denotes a success with probability $p$. Then,

\[
f(k) 			&= 
\begin{cases}
1-p, 		& k = 0 \\
p, 			& k = 1
\end{cases} \\
\mu 			&= \quad p \\
\sigma^2 	&= \quad p(1-p)
\]
- Examples:
  - A weighted coin with $P(\text{Heads}) = p$

### Binomial

- Consider a sequence of independent Bernoulli trials, let $X \in \theset{1,\ldots, n}$ denote the number of successes occurring in $n$ trials. Then,
\[
f(k) 			&= \quad {n \choose k} p^k (1-p)^{n-k} \\
\mu 			&= \quad np \\
\sigma^2 	&= \quad np(1-p)
\]
- Examples:
  - A sequence of coin flips and the numbers of total heads occurring.

### Poisson

- Given a parameter $\lambda > 0$ that denotes the rate per unit time of an event occurring and $X$ the number of times the event occurs in one unit of time,
\[
f(k) 			&= \quad \frac{\lambda^k}{k!}e^{-\lambda} \\
\mu 			&= \quad \lambda \\
\sigma^2 	&= \quad \lambda^2
\]
- Approximates binomial when $n >> 1$  and $p << 1$ by using $\lambda = np$

### Negative Binomial

- $B^- (r, p)$: similar to binomial, where $X$ is the number of trials it takes to accumulate $r$ successes
\[
f(k) &= \quad {k-1 \choose r-1}p^r(1-p)^{k-r} \\
\mu &= \quad \frac r p \\
\sigma^2 &= \quad \frac{r (1-p)}{p^2}
\]

### Geometric

- Consider a sequence of independent Bernoulli trials, let $X \in \theset{1,\ldots, n}$ where $X=k$ denotes the first success happening on the $k\dash$th trial. Then,
\[
f(k) 			&= \quad (1-p)^{k-1} p \\
\mu 			&= \quad \frac 1 p \\
\sigma^2 	&= \quad \frac{1-p}{p^2}
\]
- Note this is equal to $B^-(1, p)$
- Examples:
  - A sequence of coin flips and the number of flips before the first heads appears.

### Hypergeometric

- $H(n, m, s)$ An urn filled with $n$ balls, where $m$ are white and $n-m$ are black; pick a sample of size $s$ and let $X$ denote the number of white balls:
\[
f(k) 			&= \quad {m \choose k} {n-m \choose s-k} {n \choose s}^{-1} \\
\mu 			&= \quad \frac{ms}{n} \\
\sigma^2 	&= \quad \frac{ms}{n}(1- \frac{m}{n})\left( 1 - \frac{s-1}{n-1} \right)
\]

### Normal
\[
f(x) = \frac{1}{\sigma \sqrt{2\pi}}e^{-\frac{(x-\mu)^2}{2\sigma^2}}
\]

$z$   | $\Phi(z)$
--    | --
$0$   | $0.5$
$1$   | $0.69$
$1.5$ | $0.84$
$2$   | $0.93$
$2.5$ | $0.97$
$>3$  | $0.99$


## Table of Distributions

Table: let $q = 1-p$.


\[
\text{Distribution} & f(x)                                                                            &  & \mu              & \sigma^2            & M(t) \\
\hline \\
B(n, p)             & {n\choose x}p^x q^{n-x}                                                         &  & np               & npq                 & (pe^t + q)^n
\\
P(\lambda)          & \frac{\lambda^x}{x!}e^{-\lambda}                                                &  & \lambda          & \lambda             & e^{\lambda(e^t-1)}
\\
G(p)                & q^{x-1}p                                                                        &  & \frac{1}{p}      & \frac{q}{p^2}       & \frac{pe^t}{1-qe^t}
\\
B^-(r, p)           & {n-1 \choose r-1}p^rq^{n-r}                                                     &  & \frac{r}{p}      & \frac{rq}{p^2}      & \left(\frac{pe^t}{1-qe^t}\right)^r
\\
U(a, b)             & \indic{a\leq x\leq b}\frac 1 {b-a}                                          &  & \frac{1}{2}(a+b) & \frac{1}{12}(b-a)^2 & \frac{e^{tb} - e^{ta}}{t(b-a)}
\\
Exp(\lambda)        & \indic{0 \leq x}\lambda e^{-\lambda x}                                      &  & \frac 1 \lambda  & \frac 1 {\lambda^2} & \frac \lambda {\lambda - t}
\\
\Gamma(s, \lambda)  & \indic{0 \leq x} \frac{\lambda e^{-\lambda x} (\lambda x)^{s-1}}{\Gamma(s)} &  & \frac s \lambda  & \frac s {\lambda^2} & \left( \frac{\lambda}{\lambda - t} \right)^s \\
N(\mu, \sigma^2)    & \frac{1}{\sigma \sqrt{2\pi}}e^{-\frac{(x-\mu)^2}{2\sigma^2}}                    &  & \mu              & \sigma^2            & e^{\mu t + \frac{1}{2}\sigma^2 t^2}
\]


- Why you need the Stieltjes Integral: let $X \sim B(n, \frac 1 2), Y \sim U(0, 1),$ and
\[
Z = 
\begin{cases}
X, & $X = 1$ \\
Y, & else
\end{cases}
\]
then $\abs{Z} = \abs{\RR}$ so $Z$ is not discrete, but $P(X = 1) = \frac 1 2 \neq 0$ so $Z$ is not continuous. Definition:
\[  
\int _ { a } ^ { b } g ( x ) ~d F ( x ) = \lim \sum _ { i = 1 } ^ { n } g \left( x _ { i } \right) \left( F \left( x _ { i } \right) - F \left( x _ { i - 1 } \right) \right)
.\]

## Common Problems

- Birthday Paradox
- Coupon Collectors
	- Given $X = \theset{1, \cdots n}$, what is the expected number of draws until all $n$ outcomes are seen?

## Notes, Shortcuts, Misc

- When computing expected values, variation, etc, just insert a parameter $k$ and compute the moments $E[X^k]$. Then with a solution in terms of $k$, let $k=1,2$ etc.
- Neat property of pdfs: $P(X \in N_\varepsilon(a)) \approx \varepsilon f(a)$


:::{.definition title="The Gamma Function"}

\[  
\Gamma(x+1) = \int_{\RR^{>0}} e^{-t} t^x ~dt
.\]
Integrate by parts to obtain functional relation $\Gamma(x+1) = x\Gamma(x)$
:::

:::{.proposition title="Boole's Inequality"}
\[
P(\union_\NN A_i) \leq \sum_\NN P(A_i)
\]
:::

- For any function $f:X \to \RR$, there is a lower bound: $\max_{x\in X}f(x) \geq E[f(x)]$


:::{.definition title="Moment Generating Functions"}
Define
\[
M(t) = E[e^{Xt}]
\]

- Then $M^{(n)}(0)$ is the $n\dash$th moment, i.e. $M'(0) = E[X], M''(0) = E[X^2]$, etc.
- $M_{X+Y}(t) = M_X(t)M_Y(t)$ (if independent)
- $M_{aX + b}(t) = e^{bt} M_X(at)$
- $f_X = \mathcal{F}^{-1}(M_X(it))$, denoting the inverse Fourier transform,
:::


# Combinatorics

## Notation
\[
S_n                                & = \theset{1,2,\ldots n}                                   &  & \text{the symmetric group} \\
{n\choose k}                       & = \frac{n!}{k!(n-k)!}                                     &  & \text{binomial coefficient}\\
n^{\underline k}                   & = n(n-1) \cdots (n-k+1) = k!{n\choose k}                  &  & \text{falling factorial}\\
n^{\overline k}                    & = n(n+1) \cdots (n+k-1) = k!{n + n - 1 \choose n}         &  & \text{rising factorial}\\
{n \choose {m_1, m_2, \cdots m_k}} & = \frac{n!}{\prod_{i=1}^k m_i!}                           &  & \text{multinomial coefficient}
\]

Note that the rising and falling factorials always have exactly $k$ terms.

Multinomial: A set of $n$ items divided into $k$ distinct, disjoint subsets of sizes $m_1 \cdots m_k$.
Multinomial theorem: 
\[
(x_1 + x_2 + \cdots x_k )^n 
= \sum_{\substack{m_1, m_2, \cdots, m_k \\ ~~~\sum m_i = n}} 
{n \choose m_1,m_2,\cdots, m_k}
x_1^{m_1}x_2^{m_2}\cdots x_k^{m_k}
\]
which contains $n + r - 1 \choose r - 1$ terms.

Inclusion-Exclusion: 
\[
\abs{\union_{i=1}^n A_i} 
= \sum_i \abs A_i - \sum_{i_1 < i_2}^{n\choose 2^2} \abs{A_{i_1} \intersect A_{i_2}} + 
\sum_{i_1 < i_2 < i_3}^{n \choose 2^3} \abs{A_{i_1} \intersect A_{i_2} \intersect A_{i_3}} + 
\cdots +(-1)^{n+1} \abs{\intersect_{i=1}^n A_i} \\ 
= \sum_{k=1}^n ~\sum_{i_1 < \cdots < i_k}  (-1)^{k+1} \abs{\intersect_{j=1}^k A_{i_j}}
\]

## The Important Numbers

- Binomial Coefficients
	- The Binomial Theorem: 
    \[
    (x+y)^n = \sum_{k=0}^n {n\choose k}x^ky^{n-k}
    \]
	- Choosing:$n \choose k$
	- Choosing with repetition allowed: ${n+k-1}\choose k$
- Signed Stirling Numbers of the First Kind: $s(n,k)$
	- Count the number of permutations of $n$ elements with $k$ disjoint cycles, i.e. the number of elements elements in $S_n$ that are the product of $k$ disjoint cycles (including trivial cycles that fix a point).
	- Recurrence relation:
    \[  
		s(n,k) = s(n-1, k-1) + ks(n-1, k)
    .\]
	- Relation to falling factorial: $x^{\underline n} = \sum_{k=1}^n s(n,k)x^k$
- Stirling Numbers of the Second Kind: $\stirling{n}{k}$
	- Counts the number of ways to partition a set $N$ into $k$ non-empty subsets $S_i$ (i.e. such that $S_i \cap S_j = \emptyset,~\coprod_{i=1}^k S_i = N$)
	- Recurrence relation:
	  \[
		\stirling{n+1}{k} = k\stirling{n}{k} + \stirling{n}{k-1} \\ 
		\stirling 0 0 = 1,
		\quad \stirling n 0 = \stirling 0 n = 0
		\]
	- Explicit formula: $\stirling n k = \frac 1 {k!} \sum_{i=0}^k (-1)^{k-i} {k \choose i} i^n$
	- $B_n = \sum_{i=0}^n \stirling n i$
- Betti Numbers
- Bell Numbers
- Compositions
	- A composition of $n$ is a way of writing $n$ as a sum of strictly positive integers, ie. $k_1 + k_2 + \cdots k_i = n$ where each $0 < k_i \leq n$, where order matters (and distinct orders count as distinct compositions).
	- Weak compositions: identical, but some terms are allowed to be zero.
	- Number of compositions of $n$ into $k$ parts: $n-1 \choose k - 1$
	- Number of _weak_ compositions of $n$ into $k$ parts: $n+k-1 \choose n$
	- Total number of compositions of $n$ (into any number of parts): $2^{n-1}$
- Partitions
	- A partition of $n$ is a composition of $n$ quotiented by permutations of the ordering of terms.
		- Example: 2 compositions of $5$ involving $1$ and $4$, given by $4+1$ and $1+4$, whereas there is only one such partition of $5$ given by $4+1$.
	- Visualize with Young diagrams

### Common Problems

- Stars and Bars
	- No two bars adjacent: $n-1\choose k-1$
	- Allowing adjacent bars: $n+k-1 \choose k-1$

Coupon Collectors Problem


### The Twelvefold Way

Consider a function $f: N \to K$ where $\abs{N}=n, \abs{K} = k$.

A number of valid interpretations:
- $f$ labels elements of $N$ by elements of $K$
- For each element of $N$, $f$ chooses an element of $K$
- $f$ partitions $N$ into classes that are mapped to the same element of $K$
- Throw each of $N$ balls into some of $K$ boxes

Dictionary:
- No restrictions:
	- Assign $n$ labels, repetition allowed
	- Form a multiset of $K$ of size $n$
- Injectivity
	- Assign $n$ labels without repetition
	- Select $n$ distinct elements from $K$
	- Number of $n\dash$combinations of $k$ elements
	- No more than one ball per box
- Surjectivity:
	- Use every label at least once
	- Every element of $K$ is selected at least once
- "Indistinguishable"
	- Quotient by the action of $S_n$ or $S_k$
- $n\dash$permutations = injective functions
- $n\dash$combinations = injective functions / $S_n$
- $n\dash$multisets = all functions / $S^n$
- Partitions of $N$ into $k$ subsets = surjective functions / $S_k$
- Compositions of $n$ into $k$ parts = surjective functions / $S_n$

\[
\begin{array}{c|c|c|c}
\text{Permutations \ Restrictions}  & N \mapsvia{f} K & N \injects K & N \surjects K
\\ \hline
f 															& k^n & k^{\underline{n}} & k! \stirling{n}{k}  \\
f \circ \sigma_N 								& {n+k-1}\choose n & k\choose n & {n-1}\choose{n-k} \\
\sigma_X \circ f 								& \sum_{i=0}^k \stirling{n}{i} & \indic{n \leq k} & \stirling{n}{k}\\
\sigma_X \circ f \circ \sigma_N & p_k(n+k) & \indic{n \leq k} & p_k(n)
\end{array}
\]

In words (todo: explain)

Perm. / Rest.       | ---                                     | Injective                                   | Surjective
--                  | ---                                     | ---                                         | --
---                 | A sequence of any $n$ elements of $K$   | Sequences of $n$ _distinct_ elements of $K$ | Compositions of $N$ with exactly $k$ subsets
Permutations of $N$ | Multisets of $K$ with $n$ elements      | An $n\dash$element subset of $K$            | Compositions of $n$ with $k$ terms
Permutations of $X$ | Partitions of $N$ into $\leq k$ subsets | ?                                           | Partitions of $N$ into exactly $k$ nonempty subsets
Both                | Partitions of $n$ into $\leq k$ parts   | ?                                           | Partitions of $n$ into exactly $k$ parts

Proofs/Explanations: todo


- Counting non-isomorphic things: Pick a systematic way. Can descend my maximum vertex degree, or ascend by adding nodes/leaves.

# Complex Analysis

- $\lim_{z\rightarrow z_0} f(z) = x_0 + iy_0$ iff the component functions limit to $x_0$ and $y_0$ respectively. Moreover, both ways are equal!


Notation: $z = a + ib, f(z) = u(x, y) + iv(x, y)$

## Useful Equations and Definitions
\[
\abs{z} &= \sqrt{a^2 + b^2} \\
\abs{z}^2 = z\conjugate{z} &= a^2 + b^2 \\
\frac{z\conjugate{z}}{\abs{z}^2} &= \frac{(a+ib)(a-ib)}{a^2 + b^2} = 1 \\
\frac{1}{z} &= \frac{\conjugate{z}}{\abs{z}^2} = \frac{a-ib}{a^2+b^2}
\\
e^{zx} = e^{(a+ib)x} &= e^{ax}(\cos(bx) + i\sin(bx)) \\
x^z &\definedas e^{z\ln x} \\
\mathrm{Log}(z) &= \ln\abs{z} + i~\mathrm{Arg}(z) \\
\cos z &= \frac{1}{2}(e^{iz} + e^{-iz}) \\
\sin z &= \frac{1}{2i}(e^{iz} - e^{-iz}) \\
(x-z)(x-\conjugate{z}) &= x^2 - 2\realpart{z}x + (a^2+b^2)
\\
\frac { \partial } { \partial z } &= \frac { 1 } { 2 } \left( \frac { \partial } { \partial x } - i \frac { \partial } { \partial y } \right)
\\
\frac { \partial } { \partial \overline { z } } &= \frac { 1 } { 2 } \left( \frac { \partial } { \partial x } + i \frac { \partial } { \partial y } \right)
\]

## Complex Arithmetic and Calculus

- $n\dash$th roots:
$$e^{\frac{ki}{2\pi n}}, \qquad k = 1, 2, \cdots n-1$$

### Complex Differentiability
$$
z' = \lim_{h\to 0} \frac{f(z+h)-f(z)}{h}
$$
- A complex function that is not differentiable at a point: $f(z) = z/\bar{z}$ at $z=0$

- Cauchy-Riemann Equations
$$
u_x = v_y \hspace{4em}u_y = -v_x
$$
- Alternatively:
	- $\dd[f]{\bar z} = 0$
	- $\inner{\nabla u}{\nabla v}  = 0$
	- $\Delta u = \Delta v = 0$ (both components are harmonic)



## Complex Integrals

The main theorem:
$$
\oint_C f(z)~dz = 2\pi i \sum_k \mathrm{Res}(f, z_k)
$$

Computing residues:
$$
\operatorname { Res } ( f , c ) = \frac { 1 } { ( n - 1 ) ! } \lim _ { z \rightarrow c } \frac { d ^ { n - 1 } } { d z ^ { n - 1 } } \left( ( z - c ) ^ { n } f ( z ) \right) \\
f(z) = \frac{g(z)}{h(z)} \implies \operatorname { Res } ( f , c ) = \frac{g(c)}{h'(c)}
$$

Definitions

- Analytic: differentiable everywhere
- Entire
- Holomorphic
- Meromorphic

Complex Analytic $\implies$ smooth and all derivatives are analytic

> Not true in real case, take the everywhere differentiable but not $C^1$ function
\[
f(x) = 
\begin{cases}
-\frac{1}{2}x^2 & x < 0 \\ 
\frac{1}{2}x^2 & x \geq 0
\end{cases}
\]

## Definitions

In these notes, $C$ generally denotes some closed contour, $\mathbb{H}$
is the upper half-plane, $C_R$ is a semicircle of radius $R$ in
$\mathbb{H}$, $f$ will denote a complex function.

1.  **Analytic**

    $f$ is analytic at $z_0$ if it can be expanded as a convergent power
    series in some neighborhood of $z_0$.

2.  **Holomorphic**

    A function $f$ is holomorphic at a point $z_0$ if $f'(z_0)$ exists
    in a neighborhood of $z_0$.

    (Note - this is more than just being differentiable at a single
    point!)

    *Big Theorem*: $f$ is a holomorphic complex function iff $f$ is
    analytic.

3.  **Meromorphic**

    Holomorphic, except for possibly a finite number of singularities.

4.  **Conformal**

    $f$ is conformal at $z_0$ if $f$ is analytic at $z_0$ and
    $f'(z_0) \neq 0$.

5.  **Harmonic**

    A function $u(x,y)$ is harmonic if it satisfies Laplace's equation,
    $$\Delta u = u_{xx} + u_{yy} = 0$$


Some other notions to look up:

- Conformal maps
- Analytic
- Theorem: Analytic $\implies$ conformal
- The Sterographic projection. Is it conformal?
- Branch points and branch cuts
- Loxodromic transformations
- Horocycles
- Analytic Continuation
- The complex logarithm
- Mobius transformations
- Curvature
- Angular Excess

## Preliminary Notions

### What is the Complex Derivative?

In small neighborhoods, the derivative of a function at a point rotates
it by an angle $\Delta\theta$ and scales it by a real number $\lambda$
according to $$\Delta\theta = \arg f'(z_0), ~\lambda = |f'(z_0)|$$

### $n$th roots of a complex number

The $n$th roots of $z_0$ are given by writing $z_0 = re^{i\theta}$, and
are
\[
\zeta = \ts{ \sqrt[n]{r} \oldexp\left[{i\left( \frac{\theta}{n} + \frac{2k\pi}{n}\right)}\right] \st k = 0,1,2, \ldots, n-1 }
\]

or equivalently

$$\zeta = \left\{ \sqrt[n]{r}\omega_n^k \mid k = 0,1,2,\ldots, n-1\right\}~\text{where}~\omega_n = e^{\frac{2\pi i}{n}}$$

This can be derived by looking at
$\left( re^{i\theta + 2k\pi}\right)^{\frac{1}{n}}$.

It is also useful to immediately recognize that
$z^2+a = (z-i\sqrt{a})(z+i\sqrt{a})$.

### The Cauchy-Riemann Equations

If $f(x+iy) = u(x,y) + iv(x,y)$ or
$f(re^{i\theta}) = u(r,\theta) + iv(r,\theta)$, then $f$ is complex
differentiable if $u,v$ satisfy

$$\begin{aligned}
    u_x &= v_y &\quad u_y &= -v_x \\
    r u_r &= v_\theta &\quad u_\theta &= -r v_r\end{aligned}$$

In this case, $$f'(x+iy) = u_x(x,y) + iv_x(x,y)$$ or in polar
coordinates,
$$f'(re^{i\theta}) = e^{i\theta}(u_r(r,\theta) + iv_r(r,\theta))$$

## Integration

### The Residue Theorem

If $f$ is meromorphic inside of a closed contour $C$, then
$$\oint_C f(z) dz = 2\pi i \sum_{z_k} \underset{z=z_k}{\text{Res}} f(z)$$

where $\underset{z=z_k}{\text{Res}} f(z)$ is the coefficient of $z^{-1}$
in the Laurent expansion of $f$.

If $f$ is analytic everywhere in the interior of $C$, then
$\oint_C f(z) dz = 0$.

If $f$ is meromorphic inside of a contour $C$ and analytic everywhere
else, one can equivalently calculate the residue at infinity

$$\oint_C f(z) dz = 2\pi i \sum_{z_k} \underset{z=0}{\text{Res}} ~z^{-2}f(z^{-1})$$

### Computing Residues

### Simple Poles

If $z_0$ is a pole of order $m$, define $g(z) := (z-z_0)^m f(z)$.

[If $g(z)$ is analytic and $g(z_0) \neq 0$]{style="color: Blue"}, then
$$\underset{z=z_0}{\text{Res}} f(z) = \frac{\phi^{(m-1)}(z_0)}{(m-1)!}$$

In the case where $m=1$, this reduces to
$$\underset{z=z_0}{\text{Res}} f(z) = \phi(z_0)$$

To compute residues this way, attempt to write $f$ in the form

$$f(z) = \frac{\phi(z)}{(z-z_0)^m}$$

where $\phi$ only needs to be analytic at $z_0$.

### Rational Functions

If $f(z) = \frac{p(z)}{q(z)}$ where

1.  $p(z_0) \neq 0$

2.  $q(z_0) = 0$

3.  $q'(z_0) \neq 0$

then the residue can be computed as

$$\underset{z=z_0}{\text{Res}} \frac{p(z)}{q(z)} = \frac{p(z_0)}{q'(z_0)}$$

### Computing Integrals

When computing real integrals, the following contours can be useful:

One often needs bounds, which can come from the following lemmas

**The Arc Length Bound** If $|f(z)| \leq M$ everywhere on $C$, then
$$|\oint_C f(z) dz | \leq M L_C$$ where $L_C$ is the length of $C$.

**Jordan's Lemma:** If $f$ is analytic outside of a semicircle $C_R$ and
$|f(z)| \leq M_R$ on $C_R$ where $M_R \rightarrow 0$, then
$$\int_{C_R} f(z) e^{iaz} dz \rightarrow 0$$.

Can also be used for integrals of the form $\int f(z) \cos az dz$ or
$\int f(z) \sin az dz$, just take real/imaginary parts of $e^{iaz}$
respectively.

## Conformal Maps

1.  Linear Fractional Transformations:

\[
f(z) = \frac{az+b}{cz+d}\qquad f^{-1}(z) = \frac{-dz+b}{cz-a}
\]

2.  $[z_1, z_2, z_3] \mapsto [w_1, w_2, w_3]$

    Every linear fractional transformation is determined by its action
    on three points. Given 3 pairs points $z_i \mapsto w_i$, construct
    one using the implicit equation

\[
\frac{(w-w_1)(w_2-w_3)}{(w-w_3)(w_2-w_1)} = \frac{(z-z_1)(z_2-z_3)}{(z-z_3)(z_2-z_1)}
\]

3.  $z^k: \text{Wedge} \mapsto \mathbb{H}$

    Just multiplies the angle by $k$. If a wedge makes angle $\theta$,
    use $z^\frac{\pi}{\theta}$.

    It is useful to know that $z\mapsto z^2$ is equivalent to
    $(x,y) \mapsto (x^2-y^2, 2xy)$.

4.  $e^z: \mathbb{C} \mapsto \mathbb{C}$

      ------------------ ----------- ----------------------------
      Horizontal lines    $\mapsto$  rays from origin
      Vertical lines      $\mapsto$  circles at origin
      Rectangles          $\mapsto$  portions of wedges/sectors
      ------------------ ----------- ----------------------------

    ![image](figures/ez-line.png){width="\\linewidth"}

    ![image](figures/ez-grid.png){width="\\linewidth"}

    ![image](figures/ez-rect.png){width="\\linewidth"}

5.  $\log: \mathbb{H} \mapsto \mathbb{R} + i[0, \pi]$

    Just the inverse of what the exponential map does.

      -------- ----------- -------------------
      Rays      $\mapsto$  Horizontal Lines
      Wedges    $\mapsto$  Horizontal Strips
      -------- ----------- -------------------

    ![$z \mapsto \log z$](figures/log.png){width="\\linewidth"}

6.  $\sin: [0, \pi/2] + i\mathbb{R} \mapsto \mathbb{H}_{\mathcal{R}(z)>0}$

    Maps the infinite strip to the first quadrant.

    ![$z \mapsfrom \sin w$](figures/sin.png){width="\\linewidth"}

7.  $z\mapsto\frac{i-z}{i+z}: \mathbb{H} \mapsto D^\circ$.

      ------------------- ----------- --------------------------
      $\mathbb{R}_{>0}$    $\mapsto$  Upper half of $D^\circ$
      $\mathbb{R}_{<0}$    $\mapsto$  Bottom half of $D^\circ$
      ------------------- ----------- --------------------------

    Has inverse $w \mapsto i\frac{1-w}{1+w}$

8.  $z\mapsto z + z^{-1}: \partial D \mapsto \mathbb{R}$

    ![$z \mapsto z+z^{-1}$](figures/fluid-cylinder.png){width="0.5\\linewidth"}

    Maps the boundary of the circle to the real axis, and the plane to
    $\mathbb{H}$.

### Applications

It is mostly important to know that composing a harmonic function on one
domain with an analytic function produces a new harmonic function on the
new domain.

Similarly, composing the solution to a boundary value problem on a
domain with a conformal map produces a new solution to a new boundary
problem in the new domain, where the new boundary is given by the
conformal image of the old one.

The general technique is use solutions to the boundary value problem on
a simple domain $D$, and compose one or several conformal maps to map a
given problem into $D$, then pull back the solution.

#### Heat Flow: Steady Temperatures

Generally interested in finding a harmonic function $T(x,y)$ which
represents the steady-state temperature at any point. Usually given as a
Dirichlet problem on a domain $D$ of the form

![image](figures/heat-eqn.png){width="35%"}

\[
\Delta T &= 0 \\
T(\partial D) &= f(\partial D)
\]

where $f$ is a given function that prescribes values on $\partial D$,
the boundary of $D$.

Embed this in an analytic function with its harmonic conjugate to yield
solutions of the form $F(x+iy) = T(x,y) + iS(x,y)$.

The **isotherms** are given by $T(x,y) = c$.

The **lines of flow** are given by $S(x,y) = c$.

![image](figures/sin.png){width="35%"}

Any easy solution on the domain $\mathbb{R} \times i[0,\pi]$ in the
$u,v$ plane, where

\[
T(x, 0) &= 0 \\
T(x, \pi) &= 1 
\] 
is given by $T(u,v) = \frac{1}{\pi}v$.

It is harmonic, as the imaginary part of the analytic
$F(u+iv) = \frac{1}{\pi}(u+iv)$, since every analytic function has
harmonic component functions.

Similar methods work with different domains, just pick a smooth
interpolation between the boundary conditions.

#### Fluid Flow

![image](figures/fluid.png){width="35%"}

Write $F(z) = \phi(x,y) + i\psi(x,y)$. Then $F$ is the complex potential
of the flow, $\overline{F'}$ is the velocity, and setting
$\psi(x,y) = c$ yields the streamlines.

A solution in $\mathbb{H}$ is $F(z) = Az$ some some velocity $A$. Apply
conformal mapping appropriately.

![image](figures/fluid-cylinder.png){width="35%"}

### Theorems

#### General Theorems

1.  **Liouville's Theorem**:

    If $f$ is entire and bounded on $\mathbb{C}$, then $f$ is constant.

2.  If $f$ is continuous in a region $D$, $f$ is bounded in $D$.

3.  If $f$ is differentiable at $z_0$, $f$ is continuous at $z_0$.

    Note - the converse need not hold!

4.  If $f = u + iv$ , where $u,v$ satisfy the Cauchy-Riemann equations
    **and** have continuous partials, then $f$ is differentiable.

    Note - continuous partials are not enough, consider $f(z) = |z|^2$.

5.  Rouché's Theorem

    If $p(z) = f(z) + g(z)$ and $|g(z)| < |f(z)|$ everywhere on $C$,
    then $f$ and $p$ have the same number of zeros with $C$.

6.  **The Argument Principle**

    If $f$ is analytic on a closed contour $C$ and meromorphic within
    $C$, then 
  \[
  W \da \frac{1}{2\pi}\Delta_C \arg f(z) = Z - P
  \]

    *Proof:* Evaluate the integral $\oint_C \frac{f'(z)}{f(z)} dz$ first
    by parameterizing, changing to polar, and using the FTC, and second
    by using residues directly from the Laurent series.

7.  **The Main Story**: The following are equivalent

    -   $f$ is continuous

    -   $f'$ exists

    -   $f$ is analytic

    -   $f$ is conformal

    -   $f$ satisfies the Cauchy-Riemann equations

#### Theorems About Analytic Functions

1.  If $f$ is analytic on $D$, then $\oint_C f(z) dz = 0$ for any closed
    contour $C \subset D$.

    Note: this does not require $f$ to be $f'$ to be continuous on $C$.

2.  **Maximum Modulus Principle**

    If $f$ is analytic in a region $D$ and not constant, then $|f(z)|$
    attains its maximum on $\partial D$.

3.  If $f$ is analytic, then $f^{(n)}$ is analytic for every $n$. If
    $f = u(x,y) + iv(x,y)$, then all partials of $u,v$ are continuous.

4.  If $f$ is analytic at $z_0$ and $f'(z_0) \neq 0$, then $f$ is
    conformal at $z_0$.

5.  If $f = u+iv$ is analytic, then $u,v$ are harmonic conjugates.

6.  If $f$ is holomorphic, $f$ is $C_\infty$ (smooth).

7.  If $f$ is analytic, $f$ is holomorphic.

    *Proof:* Since $f$ has a power series expansion at $z_0$, its
    derivative is given by the term-by-term differentiation of this
    series.

### Some Useful Formulae

\[
  f_{x_0}(x) = f(x_0) + f'(x_0)(x-x_0) + \frac{1}{2!}f''(x_0)(x-x_0)^2 + \ldots
  \]

\[
\frac{1}{1-z} = \sum_k z^k
\]

\[
  e^z = \sum_k \frac{1}{k!} z^k
  \]

  \[
    \left(\sum_i a_i z^i \right) \left( \sum_j b_j z^j\right) = \sum_n \left( \sum\limits_{i+j=n}a_ib_j \right) z^n
    \]

$$\begin{aligned}
%   
\cos z 
&= \frac{1}{2}(e^{iz} + e^{-iz})
&
&= 1 - \frac{z^2}{2!} + \frac{z^4}{4!} - \ldots \\
%
\cosh z 
&= \frac{1}{2}(e^{z} + e^{-z}) 
&= \cos iz 
&= 1 + \frac{z^2}{2!} + \frac{z^4}{4!} + \ldots \\
%
\sin z 
&= \frac{1}{2i}(e^{iz} - e^{-iz}) 
&
&= z - \frac{z^3}{3!} + \frac{z^4}{4!} - \ldots \\
%
\sinh z 
&= \frac{1}{2}(e^{z} - e^{-z}) 
&= -i\sin iz 
&= z + \frac{z^3}{3!} + \frac{z^4}{4!} + \ldots \\\end{aligned}$$
Mnemonic: just remember that cosine is an even function, and that the
even terms of $e^z$ are kept. Similarly, sine is an odd function, so
keep the odd terms of $e^z$.

**Harmonic Conjugate**
$$v(x,y) = \int_{(0,0)}^{(x,y)} -u_t(s,t)ds + u_s(s,t)dt$$

**The Gamma Function** $$\Gamma(z) = \int_0^\infty x^{z-1} e^{-x} dx$$

Useful to know: $\Gamma(\frac{1}{2}) = \sqrt\pi$.



## Questions

1.  True or False: If $f$ is analytic and bounded in $\mathbb{H}$, then
    $f$ is constant on $\mathbb{H}$.

    

    False: Take $f(z) = e^{-z}$, where $|f(z)| \leq 1$ in $\mathbb{H}$.

    

2.  Compute $\int_{-\infty}^{\infty} \frac{\sin x}{x(x^2+a^2)}dx$

    

    Two semicircles needed to avoid singularity at zero. Limit equals
    the residue at zero, solution is
    $\pi (\frac{1}{a^2} - \frac{e^{-a}}{a^2})$.

    

3.  Compute $\int_0^{2\pi} \frac{1}{2+\cos\theta}d\theta$

    

    Cosine sub, solution is $\frac{2\pi}{\sqrt{3}}$

    

4.  Find the first three terms of the Laurent expansion of
    $\frac{e^z+1}{e^z-1}$.

    

    Equals $2z^{-1} + 0 + 6^{-1}z + \ldots$

    

5.  Compute $\int_{S_1} \frac{1}{z^2+z-1}dz$

    

    Equals $i\frac{2\pi}{5}$

    

6.  True or false: If f is analytic on the unit disk
    $E = \{z : |z| < 1\}$, then there exists an $a \in E$ such that
    $|f (a)| \geq |f (0)|$.

    

    True, by the maximum modulus principal. Suppose otherwise. Then
    $f(0)$ is a maximum of $f$ inside $S_1$. But by the MMP, $f$ must
    attain its maximum on $\partial S_1$.

    

7.  Prove that if $f(z)$ and $f (\bar{z})$ are both analytic on a domain
    D, then f is constant on D

    

    Analytic $\implies$ Cauchy-Riemann equations are satisfied. Also
    have the identity $f' = u_x + iv_x$, and $f' = 0$ $\implies$ $f$ is
    constant.

    

# Common Mistakes

\[
-x^{-2} &\neq \int x^{-1} = \int \frac{1}{x} = \ln x \\ 
\frac{1}{x} &\neq \int \ln x = x\ln x - x \\
\int x^{-k} = \frac{1}{-k+1}x^{-k+1} &\neq \frac{1}{-(k+1)}x^{-(k+1)} \\
\text{ e.g. } \int x^{-2} = -x^{-1} &\neq -\frac{1}{3}x^{-3}
\lim_{n\to\infty} \frac{n}{n+1} = 1 \neq 0\\
\frac{\partial}{\partial x}a^x = \frac{\partial}{\partial x}e^{x\ln a} = e^{x\ln a} \ln a = a^x \ln a.
\]

Exponentials: when in doubt, write $a^b = e^{b\ln a}$

\[
\frac{\partial}{\partial x} x^{f(x)} = ?
\]

\[
\sum x^k = \frac{1}{1-x} \neq \frac{1}{1+x} = \sum (-1)^k x^k
\]











# Appendix 1

## Neat Tricks

- Commuting differentials and integrals:

$$
\frac{d}{dx} \int_{a(x)}^{b(x)} f(x,t) dt = f(x, b(x))\frac{d}{dx}b(x) - f(x, a(x))\frac{d}{dx}a(x) + \int_{a(x)}^{b(x)} \frac{\partial}{\partial x} f(x, t) dt
$$

  - Need $f,dfdxf, \frac{df}{dx}$ to be continuous in both variables. Also need $a(x),b(x)∈C1a(x),b(x) \in C_1$.
  - If $a,b$ are constant, boundary terms vanish.
  - Recover the fundamental theorem with $a(x)=a,b(x)=ba(x) = a, b(x) = b$, and $f(x,t)=f(t)f(x,t) = f(t)$.


## Big Derivative / Integral Table

\[
\frac{\partial f}{\partial{x}}\Leftarrow && f                           && \Rightarrow\int f dx   \\
\hline \\
\frac{1}{2\sqrt{x}}                      && \sqrt{x}                    && \frac{2}{3}x^{\frac{3}{2}} \\
nx^{n-1}                                 && x^n, n \neq -1              && \frac{1}{n+1}x^{n+1} \\
-nx^{-(n+1)}                             && \frac{1}{x^n}, n \neq 1     && -\frac{1}{n-1}x^{-(n-1)} \\
\frac{1}{x}                              && {\ln(x)}       && x\ln(x) - x \\
a^x\ln(a)                                && a^x                         && \frac{a^x}{\ln a} \\
\cos(x)                                  && \sin(x)                     && -\cos(x) \\
-\csc(x)\cot(x)                          && \csc(x)                     && \ln\abs{\csc(x)-\cot(x)} \\
-\sin(x)                                 && \cos(x)                     && \sin(x) \\
\sec(x)\tan(x)                           && \sec(x)                     && \ln\abs{\sec(x) + \tan(x)} \\
\sec^2(x)                                && \tan(x)                     && \ln\abs{\frac{1}{\cos x}} \\
-\csc^2(x)                               && \cot(x)                     && \ln \abs{\sin x} \\
\frac{1}{1+x^2}                          && {\tan^{-1}(x)} && x\tan^{-1}x - \frac{1}{2}\ln(1+x^2) \\
\frac{1}{\sqrt{1-x^2}}                   && {\sin^{-1}(x)} && x\sin^{-1}x+ \sqrt{1-x^2} \\
-\frac{1}{\sqrt{1-x^2}}                  && {\cos^{-1}(x)} && x\cos^{-1}x -\sqrt{1-x^2} \\
\frac{1}{\sqrt{x^2+a}}                   && \ln\abs{x+\sqrt{x^2+a}}     && \cdot\\
2\sin x\cos x                            && \sin^2(x)                   && \frac{1}{2}(x - \sin x \cos x) \\
-2\sin x\cos x                           && \cos^2(x)                   && \frac{1}{2}(x + \sin x \cos x) \\
2\csc^2(x)\cot(x)                        && \csc^2(x)                   && -\cot(x) \\
2\sec^2(x)\tan(x)                        && \sec^2(x)                   && \tan(x) \\
?                                        && ?                           && ? \\
?                                        && ?                           && ? \\
?                                        && ?                           && ? \\
?                                        && ?                           && ? \\
?                                        && ?                           && ? \\
?                                        && ?                           && ? \\
?                                        && ?                           && ? \\
(ax+1)e^{ax}                             && xe^{ax}                     && \frac { 1 } { a ^ { 2 } } ( a x - 1 ) e ^ { a x } \\
?                                        && e^{ax}\sin(bx)              && \frac { 1 } { a ^ { 2 } + b ^ { 2 } } e ^ { a x } ( a \sin b x - b \cos b x ) \\
?                                        && e^{ax}\cos(bx)              && \frac { 1 } { a ^ { 2 } + b ^ { 2 } } e ^ { a x } ( a \sin b x + b \cos b x ) \\
?                                        && ?                           && ? \\
\]

## Useful Series and Sequences

Notation: $\uparrow, \downarrow$: monotonically converges from below/above.

- Taylor Series:

$$
f ( x ) = \sum _ { n = 0 } ^ { \infty } \frac { f ^ { ( n ) } \left( x _ { 0 } \right) } { n ! } \left( x - x _ { 0 } \right) ^ { n }
$$

- Cauchy Product:

$$
\left( \sum_{k=0}^\infty a_k x^k \right)\left( \sum_{k=0}^\infty b_i x^n \right) = \sum_{k=0}^\infty \left( \sum_{i=0}^k a_{n} b_{n} \right)x^k
$$

- Differentiation:

$$
\frac{\partial}{\partial x} \sum_{k=i}^\infty a_kx^k = \sum_{k=i+1}^\infty k\,a_k x^{k-1}
$$

- Common Series
\[
&\sum_{k=0}^{N} x^k                                                                                                                        &=  \frac{1-x^{N+1}}{1-x} &\\
&\sum_{k=1}^\infty x^k                                                                                                                     &=  \frac{1}{1-x}& \quad\text{ for } \abs{x} < 1 \\
&\sum_{k=1}^{\infty } k x ^ {k - 1 }                                                                                                       &=  \frac{1}{( 1 - x ) ^ { 2 } }& \quad \text { for } | x | < 1 \\
&\sum_{k=2}^{\infty } k ( k - 1 ) x ^ {k - 2 }                                                                                             &=  \frac{2}{( 1 - x ) ^ { 3 } } & \quad \text { for } | x | < 1  \\
&\sum_{k=3}^{\infty } k ( k - 1 ) ( k - 2 ) x ^ {k - 3 }                                                                                   &=  \frac{6}{( 1 - x ) ^ { 4 } } & \quad \text { for } | x | < 1   \\
&\sum_{k=1}^\infty {n\choose k} x^k y^{n-k}                                                                                                &=  (x+y)^n& \\
&\sum_{k=1}^{\infty } \frac{x ^ {k } } {k }                                                                                                &=  -\log ( 1 - x )& \\
&\sum_{k=0}^{\infty } \frac{x ^ {k } } {k ! }                                                                                              &=  e^x & \\
&\sum_{ n = 0}^{\infty } \frac{( - 1 ) ^ {k }}{( 2 n + 1 ) ! } x ^ { 2 k + 1 } \quad = x - \frac{x ^ { 3 }}{3 ! } + \frac{x ^ { 5 }}{5 ! } &=  \sin(x) & \\
&\sum_{k=0}^{\infty } \frac{( - 1 ) ^ {k }}{( 2 n ) ! } x ^ { 2 k } \quad = 1 - \frac{x ^ { 2 }}{2 ! } + \frac{x ^ { 4 }}{4 ! }            &=  \cos(x)& \\
&\sum_{k=0}^{\infty } \frac{( - 1 ) ^ {k }}{2 n + 1 } x ^ { 2 k + 1 } \quad = x - \frac{x ^ { 3 }}{3 } + \frac{x ^ { 5 }}{5 }              &=  \arctan(x) & \\
&\sum_{k=0}^{\infty } \frac{1}{( 2 k + 1 ) ! }x ^ { 2 n + 1 } \quad = x + \frac{x ^ { 3 }}{3 ! } + \frac{x ^ { 5 }}{5 ! } + \cdots         &=  \sinh(x) & \\
&\sum_{k=0}^{\infty } \frac{1}{( 2 k ) ! }x ^ { 2 k } \quad = 1 + \frac{x ^ { 2 }}{2 ! } + \frac{x ^ { 4 }}{4 ! } + \cdots                 &=  \cosh(x) & \\
&\sum_{k=0}^{\infty } \frac{x ^ { 2 k + 1 }}{2 k + 1 }                                                                                     &=  \operatorname { arctanh } x  & \\
&\sum_{k=1}^\infty \frac{1}{k}                                                                                                             &=  \infty &\\
&\sum_{k=1}^\infty (-1)^k \frac{1}{k}                                                                                                      &=  \ln (2) & \\
&\sum_{k=1}^N \frac{1}{k}                                                                                                                  &= _\approx \ln(N) + \gamma + \frac{1}{2N} & \\
&\sum_{k=1}^{\infty } \frac{1 } {k ^ { 2 } }                                                                                               &=  \frac{\pi ^ { 2 }}{6 }& \\
\]

## Partial Fraction Decomposition

Given $R(x) = \frac{p(x)}{q(x)}$, factor $q(x)$ into $\prod q_i(x)$.

- Linear factors of the form $q_i(x) = (ax+b)^n$ contribute
$$
r_i(x) = \sum_{k=1}^n \frac{A_k}{(ax+b)^k} = \frac{A_1}{ax+b} + \frac{A_2}{(ax+b)^2} + \cdots
$$
- Irreducible quadratics of the form $q_i(x) = (ax^2+bx+c)^n$ contribute
$$
r_i(x) = \sum_{k=1}^n \frac{A_k x + B_k}{(ax^2+bx+c)^k} = \frac{A_1x+B_1}{ax^2+bx+c} + \frac{A_2x+B_2}{(ax^2+bx+c)^2} + \cdots
$$
	- Note: $ax^2+bx+c$ is irreducible $\iff b^2 < 4ac$

- Write $R(x) = \frac{p(x)}{\prod q_i(x)} = \sum r_i(x)$, then solve for the unknown coefficients $A_k, B_k$.

	- IMPORTANT SHORTCUT: don't try to solve the resulting linear system: for each $q_i(x)$, multiply through by that factor and evaluate at its root to zero out many terms!

	- For linear terms $q_i(x) = (ax+b)^n$, define $P(x) = (ax+b)^nR(x)$; then
$$
A_{k} =  \frac{1}{(n-k)!}P^{(n-k)}(a), \quad k = 1,2,\cdots n \\ \implies A_n= P(a),~ A_{n-1} = P'(a),~ \cdots,~ A_1 = \frac{1}{(n-1)!}P^{(n-1)}(A)
$$
	- Note: #todo check, might need to evaluate at $-b/a$ instead, extend to quadratics.

## Properties of Norms
\[
\norm{t\mathbf x}                  & = \abs{t} \norm{\mathbf x} \\
\abs{\inner{\mathbf x}{\mathbf y}} & \leq \norm{\mathbf x} \norm{\mathbf y} \\
\norm{\mathbf x+\mathbf y}         & \leq \norm{\mathbf x} + \norm{\mathbf y} \\
\norm{\mathbf x-\mathbf z}         & \leq \norm{\mathbf x-\mathbf y} + \norm{\mathbf y-\mathbf z}
\]

## Logic Identities

- $P \implies Q \iff Q \orr \lnot P$
- $P \implies Q \iff \lnot Q \implies \lnot P$
- $P \orr(Q \annd S) \iff (P \orr Q) \annd (P \orr S)$
- $P \annd(Q \orr S) \iff (P \annd Q) \orr (P \annd S)$
- $\lnot (P \annd Q) \iff \lnot P \orr \lnot Q$
- $\lnot (P \orr Q) \iff \lnot P \annd \lnot Q$

## Set Identities
\[
A \union B 							&& = && A \union (A^c \intersect B) \\
A 									&& = && (B\intersect A) \union (B^c \intersect A) \\
(\union_\NN A_i)^c 					&& = && \intersect_\NN A_i^c \\
(\intersect_\NN A_i)^c 				&& = && \union_\NN A_i^c \\
A - B 								&& = && A \cap B^c \\
(A-B)^c 							&& = && A^c \cup B \\
(A\cup B) - C 						&& = && (A-C) \cup (B-C) \\
(A\cap B) - C 						&& = && (A-C) \cap (B-C) \\
A - (B \cup C) 						&& = && (A - B) \cap (A - C) \\
A - (B \cap C) 						&& = && (A-B) \cup (A-C) \\
A - (B - C) 						&& = && (A-B) \cup (A \cap C) \\
(A-B) \cap C 						&& = && (A \cap C) - B && = && A \cap (C-B) \\
(A-B) \cup C 						&& = && (A \cup C) - (B-C) \\
A\cup(B\cap C) 						&& = && (A\cup B) \cap (A\cup C) \\
A\cap(B\cup C) 						&& = && (A\cap B) \cup (A \cap C) \\
A \subseteq C \annd B \subseteq C 	&&\implies && A \cup B \subseteq C \\
C \subseteq A \annd C \subseteq B 	&&\implies && C \subseteq A \cup B \\
A_k ~\text{countable} 				&&\implies && \prod_{k=1}^n A_k, ~ \union_{k=1}^\infty A_k \quad\text{countable}
\]


## Preimage Identities

Summary

- Injectivity: left cancellation
- Surjectivity: right cancellation
- Everything commutes with unions
- Preimage commutes with everything
- Image generally only results in an inequality

Preimage Equations

- $A \subseteq B \implies f(A) \subseteq f(B) \orr f^{-1}(A) \subseteq f^{-1}(B)$
- $f^{-1}(\union_{i\in I}A_i) = \union_{i\in I} f^{-1}(A_i)$
	- Also holds for $f(\union_{i\in I}A_i) = \union_{i\in I} f(A_i)$
- $f^{-1}(\intersect_{i\in I}A_i) = \intersect_{i\in I} f^{-1}(A_i)$
	- Also holds for $f(\intersect_{i\in I}A_i) = \intersect_{i\in I} f(A_i)$
- $f^{-1}(A) - f^{-1}(B)  = f^{-1}(A-B)$
	- BUT $f(A) - f(B) \subseteq f(A-B)$
- For $X\subset A, Y \subset B$:
	- $(\restrictionof{f}{X})^{-1} = X \intersect f^{-1}(Y)$
	- $(f\circ f^{-1})(Y) = Y \intersect f(A)$
- Summary: preimage commutes with:
	- Union
	- Intersection
	- Complements
	- Difference
	- Symmetric Difference

Image Equations

- $A \subset B \implies f(A) \subset f(B)$
- $f(\union A_i) = \union f(A_i)$
- $f(\intersect A_i) \subset \intersect f(A_i)$
- $f(A-B) \supset f(A) - f(B)$
- $f(A^c) = \im(f) - f(A)$

Equations Involving Both

- $A \subseteq f^{-1}(f(A))$
	- Equal $\iff f$ is injective
- $f(f^{-1}(A)) \subseteq A$
	- Equal $\iff f$ is surjective

## Pascal's Triangle:

$n$ | Sequence
--  | --
3   | $1,2,1$
4   | $1,3,3,1$
5   | $1,4,6,4,1$
6   | $1,5,10,10,5,1$
7   | $1,6,15,20,15,16,1$
8   | $1,7,21,35,35,21,7,1$

Obtain new entries by adding in $L$ pattern rotated by $\pi$ (e.g. 7 = 1+6, 12 = 6 + 15, etc).
Note that $n\choose i$ is given by the entry in the $n\dash$th row, $i\dash$th column.

## Table of Small Factorials

$n$ | $n!$
--  | --
2   | $2$
3   | $6$
4   | $24$
5   | $120$
6   | $720$
7   | $5040$
8   | $40320$
9   | $362880$
10  | $3628800$

$\pi \approx 3.1415926535$
$e \approx 2.71828$
$\sqrt{2} \approx 1.4142135$

## Primes Under 100:

\[
& 2, 3, 5, 7, \\
& 11, 13, 17, 19, \\
& 23, 29, \\
& 31, 37, \\
& 41, 43, 47, \\
& 53, 59, \\
& 61, 67, \\
& 71, 73, 79, \\
& 83, 89, \\
& 97, \\
& 101
\]

## Checking Divisibility by Small Numbers

Note that $n\mod 10^k$ yields the last $k$ digits. Let $d_i$ denote the $i\dash$th digit of $n$.

The recursive prime procedure (RPP): for each prime $p$, there exists a $k$ such recursive application of this procedure to $n$ yields the
same remainder mod $p$ as $n$ itself.

- Write $n_0 = 10x + y$ where $y = 0 \ldots 9$
- Let $n_1 = x + ky$, repeat until $n_i < 10$.

$p$ | $p \mid n \iff$                                     | Mnemonic
--  | --                                                  | --
2   | $n \equiv 2, 4, 6, 8 \mod 10$                       | Last digit is even
3   | $\sum d_i \equiv 0 \mod 3$                          | 3 divides the sum of digits (apply recursively)
4   | $n \equiv 4k \mod 10^2$                             | Last two digits are divisible by 4
5   | $n \equiv 0, 5 \mod 10$                             | Last digit is 0 or 5
6   | $n \equiv 0 \mod 2  \text{ and } n \equiv 0 \mod 3$ | Reduce to 2, 3 case
7   | RPP, $k=-2$                                         | $-20 \equiv 1 \mod 7 \implies 10x+y \equiv 10(x-2y) \mod 7$
8   | $n \equiv 8k \mod 10^3$                             | Manually divide the last 3 digits by 8 (or peel off factors of 2)
9   | $\sum d_i \equiv 0 \mod 9$                          | 9 divides the sum of digits (apply recursively)
10  | $n \equiv 0 \mod 10$                                | Last digit is 0
11  | $\sum (-1)^i d_i \equiv 0 \mod 11$ or               | 11 divides alternating sum
13  | RPP, $k=4$                                          | $40 \equiv 1 \mod 13 \implies 10x + y \equiv 10(x + 4y) \mod 13$
17  | RPP, $k=-5$                                         | $-50 \equiv 1 \mod 17 \implies 10x + y \equiv 10(x - 5y) \mod 19$
19  | RPP, $k=2$                                          | $20 \equiv 1 \mod 19 \implies 10x + y \equiv 10(x + 2y) \mod 19$


## Hyperbolic Functions

\[
\cosh(x)    & = \frac{1}{2}(e^x + e^{-x}) \\
\sinh(x)    & = \frac{1}{2}(e^x - e^{-x}) \\
\cos(iz)    & = \cosh z \\
\cosh(iz)   & = \cos z \\
\sin(iz)    & = \sinh z \\
\sinh(iz)   & = \sin z \\
\sinh^{-1}x & = ? \quad = \ln(x + \sqrt{x^2+1}) \\
\cosh^{-1}x & = ? \quad = \ln(x + \sqrt{x^2-1}) \\
\tanh^{-1}x & = \frac{1}{2}\ln(\frac{1+x}{1-x}) \\
\]

## Integral Tables

\[
\frac{\partial f}{\partial{x}}\Leftarrow &  & f                       &  & \Rightarrow\int f dx   \\
\hline \\
\frac{1}{2\sqrt{x}}                      &  & \sqrt{x}                &  & \frac{2}{3}x^{\frac{3}{2}} \\
nx^{n-1}                                 &  & x^n, n \neq -1          &  & \frac{1}{n+1}x^{n+1} \\
\frac{1}{x}                              &  & {\ln(x)}                &  & x\ln(x) - x \\
a^x\ln(a)                                &  & a^x                     &  & \frac{a^x}{\ln a} \\
\cos(x)                                  &  & \sin(x)                 &  & -\cos(x) \\
-\sin(x)                                 &  & \cos(x)                 &  & \sin(x) \\
2\sec^2(x)\tan(x)                        &  & \sec^2(x)               &  & \tan(x) \\
2\csc^2(x)\cot(x)                        &  & \csc^2(x)               &  & -\cot(x) \\
\sec^2(x)                                &  & \tan(x)                 &  & \ln\abs{\sec(x)} \\
\sec(x)\tan(x)                           &  & \sec(x)                 &  & \ln\abs{\sec(x) + \tan(x)} \\
-\csc(x)\cot(x)                          &  & \csc(x)                 &  & \ln\abs{\csc(x)-\cot(x)} \\
\frac{1}{1+x^2}                          &  & {\tan^{-1}(x)}          &  & x\tan^{-1}x - \frac{1}{2}\ln(1+x^2) \\
\frac{1}{\sqrt{1-x^2}}                   &  & {\sin^{-1}(x)}          &  & x\sin^{-1}x+ \sqrt{1-x^2} \\
-\frac{1}{\sqrt{1-x^2}}                  &  & {\cos^{-1}(x)}          &  & x\cos^{-1}x -\sqrt{1-x^2} \\
\frac{1}{\sqrt{x^2+a}}                   &  & \ln\abs{x+\sqrt{x^2+a}} &  & \cdot\\
-\csc^2(x)                               &  & \cot(x)                 &  & ? \\
?                                        &  & \cos^2(x)               &  & ? \\
?                                        &  & \sin^2(x)               &  & ? \\
?                                        &  & xe^{ax}                 &  & \frac { 1 } { a ^ { 2 } } ( a x - 1 ) e ^ { a x } \\
?                                        &  & e^{ax}\sin(bx)          &  & \frac { 1 } { a ^ { 2 } + b ^ { 2 } } e ^ { a x } ( a \sin b x - b \cos b x ) \\
?                                        &  & e^{ax}\cos(bx)          &  & \frac { 1 } { a ^ { 2 } + b ^ { 2 } } e ^ { a x } ( a \sin b x + b \cos b x ) \\
?                                        &  & ?                       &  & ?
\]

# Definitions

\[  
e^x = \lim_{n \to \infty} \left(1 + \frac{1}{n}\right)^n = \lim_{n \to \infty} \left( \frac{n+1}{n} \right)^n
.\]

## Set Theory

- Injectivity
\[  
f:X \to Y \text{ injective } \iff \forall x_1,x_2 \in X,\quad  f(x_1) = f(x_2) \implies x_1 = x_2 \\ \iff \forall x_1,x_2 \in X,\quad x_1 \neq x_2 \implies f(x_1) \neq f(x_2)
.\]

- Surjectivity
\[  
f:X \to Y \text{ surjective } \iff \forall y\in Y,~ \exists x\in X : f(x) = y
.\]

- Preimage
\[  
f:X \to Y, U \subseteq Y \implies f^{-1}(U) = \theset{x \in X : f(x) \in U}
.\]

## Calculus

- Limit
\[
\lim_{x \to p} f(x) = L \iff \forall\varepsilon,~\exists\delta:\\
d(x, p) < \delta\implies d(f(x), L) < \varepsilon
\]

- Continuity

	- Epsilon-delta definition:
\[
f:X \to Y \text{ continuous at } p \iff
\forall \varepsilon,~ \exists\delta:\\
d_X(x, p) < \delta \implies d_Y(f(x), f(p)) < \varepsilon
\]

	- Limit/Sequential definition:
\[
f:X \to Y \text{ continuous at } p \iff
\forall \theset{x_i}_{i\in \NN}\subseteq X: \theset{x_i}\to p,\\
\lim_{i\to\infty}f(x_i) = f(\lim_{i\to\infty}x_i) = f(p)
\]

	- Topological Definition:
\[  
f:X \to Y \text{ continuous } \iff U \text{ open in } \im(f) \subseteq Y \implies f^{-1}(U) \text{ open in } X  
.\]

- Differentiability and the Derivative

	- For single variable functions:
\[
f:\RR \to \RR ~\text{differentiable at } p \iff
\forall \theset{x_i}_{i\in \NN}\to p,\\
f'(p) \definedas \lim_{i\to\infty} \frac{f(x_i) - f(p)}{x_i - p}< \infty
\]

	- For multivariable functions:
\[
\mathbf{f}:\RR^n \to \RR^m ~\text{differentiable at } \mathbf{p} \iff \exists \text{ a linear map } \mathbf{J}:\RR^n \to \RR^m \text{ such that: } \\ \lim _ { \mathbf{h} \rightarrow 0 } \frac { \left\| \mathbf { f } \left( \mathbf{p} + \mathbf { h } \right) - \mathbf { f } \left( \mathbf { p } \right) - \mathbf { J } ( \mathbf { h } ) \right\|_ {\RR^n}} { \| \mathbf { h } \|_ {\RR^m} } = 0
\]

- Gradient
\[  
\nabla f = [f_x, f_y, f_z]
.\]

- Divergence

- Curl

- Taylor Series (at a point $a$)

	- Single Variable $\RR \to \RR$

  \[  
	T_a(x) = f ( a ) + \frac { f ^ { \prime } ( a ) } { 1 ! } ( x - a ) + \frac { f ^ { \prime \prime } ( a ) } { 2 ! } ( x - a ) ^ { 2 } + \frac { f ^ { \prime \prime \prime } ( a ) } { 3 ! } ( x - a ) ^ { 3 } + \cdots \\ \implies T_a(x) = \sum _ { n = 0 } ^ { \infty } \frac { f ^ { ( n ) } ( a ) } { n ! } ( x - a ) ^ { n }
  .\]
	- Multivariable $\RR^n \to \RR$:

  \[  
	T_a(\mathbf x) = f(\mathbf a) + (\mathbf x - \mathbf a)^T\nabla f(\mathbf a)
  .\]

	- Multivariable $\RR^n \to \RR^m$:

  \[  
	T_{(a,b)} ( x , y ) = f ( a , b ) + ( x - a ) f _ { x } ( a , b ) + ( y - b ) f _ { y } ( a , b ) + \\ \frac { 1 } { 2 ! } \left( ( x - a ) ^ { 2 } f _ { x x } ( a , b ) + 2 ( x - a ) ( y - b ) f _ { y y  } ( a , b ) + ( y - b ) ^ { 2 } f _ { y x } ( a , b ) \right) + \cdots
  .\]
	
  \[
	T_a ( \mathbf { x } ) = f ( \mathbf { a } ) + ( \mathbf { x } - \mathbf { a } ) ^ { \mathrm { T } } \mathbf{J} ( \mathbf { a } ) + \frac { 1 } { 2 ! } ( \mathbf { x } - \mathbf { a } ) ^ { \mathrm { T } } \mathbf{H} ( \mathbf { a } ) ( \mathbf { x } - \mathbf { a } ) + \cdots \\
	\implies T_a ( \mathbf { x } ) = \sum _ { | \alpha | \geq 0 } \frac { ( \mathbf { x } - \mathbf { a } ) ^ { \alpha } } { \alpha ! } \left( \partial ^ { \alpha } f \right) ( \mathbf { a } )
	\]

## Analysis

- Archimedean Property: $x \in \RR \implies \exists n\in \NN:~ x < n \annd x > 0 \implies \exists n:~ \frac{1}{n} < x$

- Upper Bound (for S $\subseteq \RR$)
\[  
\alpha\text{ is an upper bound for } S \iff s \in S \implies s < \alpha
.\]

- Triangle Inequality
	- ${ | a + b | \leq | a | + | b | }$
	- ${ | a - b | \leq | a | + | b | }$

- Reverse Triangle Inequality
	- ${\abs{| a | - | b |} \leq | a - b | }$

- Least Upper Bound / Supremum (for S $\subseteq \RR$)
\[  
\alpha\text{ is a LUB for } S \iff s \in S \implies s < \alpha \annd \forall t : (s \in S \implies s < t),~ \alpha < t
.\]

- Greatest Lower Bound / Infimum (for S $\subseteq \RR$)
\[  
\alpha\text{ is a GLB for } S \iff s \in S \implies \alpha < s \annd \forall t : (s \in S \implies t < s),~ t < \alpha
.\]

- Open Set
- Closed Set
- Limit Point
- Interior Point
- Closure of a Set
- Boundary
- Metric
- Cauchy Sequence:
\[  
\theset{a_i} \text{ is a cauchy sequence } \iff \forall \varepsilon~\exists N\in\NN: \quad m,n > N \implies d(x_m, x_n) < \varepsilon
.\]

- Connected:
  $S$ is connected $\iff$ $\not\exists U,V\subset S$ nonempty, open, disjoint such that $S = U \cup V$

- Compact:
  Every open cover has a finite subcover:
\[  
X \subseteq \union_{j\in J} V_j \implies \exists I \subseteq J: \abs{I} < \infty \annd X\subseteq \union_{i\in I} V_i
.\]

- Sequential Compactness
  Every sequence has a convergent subsequence:
\[  
\theset{x_i}_{i\in I}\subseteq X \implies \exists J\subseteq I,~ \exists p\in X: \quad \theset{x_j}_{j\in J} \to p
.\]

- Bounded (sequences, subsets, metric spaces)
\[  
U \subseteq X \text{ is bounded } \iff \exists x\in X, \exists M \in \RR :\quad u\in U \implies d(x, u) < M
.\]

- Totally Bounded
  \todo[inline]{todo}

- Pointwise Convergence
\[
\text{For}~\{f_n: X \to Y\}_{n\in\NN},\\ f_n \to f \iff
\forall \varepsilon > 0,~\forall x\in X,~ \exists N(x, \varepsilon)\in\NN :
\quad n > N \implies d_Y\left(f_n(x),f(x)\right) < \varepsilon
\]

- Uniform Convergence
\[
\text{For}~\{f_n: X \to Y\}_{n\in\NN}, \\
f_n \rightrightarrows f \iff \forall \varepsilon > 0,~ \exists N(\varepsilon)\in\NN :
\quad \forall x\in X,~ n > N \implies d_Y(f_n(x), f(x)) < \varepsilon
\]

- Generalized Mean Value Theorem
\[  
(f ( b ) - f ( a ) ) g' ( c ) = (g ( b ) - g ( a )) f' ( c )
.\]

## Linear Algebra

Convention: always over a field $k$, and $T: k^n \to k^m$ is a generic linear map (or $m\times n$ matrix).

- Consistent

	A system of linear equations is *consistent* when it has at least one solution.

- Inconsistent

	A system of linear equations is *inconsistent* when it has no solutions.

- Rank

	The number of nonzero rows in RREF

- Elementary Matrix

- Row Equivalent

- Pivot

- Cofactor

\[  
\mathrm{cofactor}(A)_{i,j} = (-1)^{i+j} M_{i, j}
\]
where $M_{i, j}$ is the minor obtained by deleting the $i\dash$th row and $j\dash$th column of $A$.

- Adjugate
\[  
\mathrm{adjugate}(A) = \mathrm{cofactor}(A)^T = (-1)^{i+j} M_{j, i}
.\]

- Vector Space Axioms
	- Let $k$ be a field and $\vector{u},\vector{v},\vector{w} \in V$ and $r,s,t\in k$. A vector space $V$ over $k$ satisfies:
		1. Closure under addition: $\vector{v} + \vector{w} \in V$
		2. Closure under scalar multiplication: $r\vector{v} \in V$
		3. Commutativity of addition: $\vector{v} + \vector{w} = \vector{w} + \vector{v}$
		4. Associativity of addition: $\vector{u} + (\vector{v} + \vector{w}) = (\vector{u}+\vector{v}) + \vector{w}$
		5. Existence of an additive zero $\vector{0}$ satisfying $\vector{v} + 0 = 0 + \vector{v} = \vector{v}$
		6. Existence of additive inverse $-\vector{v}$ satisfying $v + (-\vector{v}) = 0$
		7. Unit property: $1\vector{v} = \vector{v}$
		8. Associativity of scalar multiplication: $(rs)\vector{v} = r(s\vector{v})$
		9. Distribution of scalars multiplication over vector addition: $r(\vector{v} + \vector{w}) = r\vector{v} + r\vector{w}$
		10. Distribution of scalar multiplication over scalar addition: $(r+s)\vector{v} = r\vector{v} + s\vector{v}$

- Subspace

	- A nonempty subset $W \subseteq V$ that is a vector space and satisfies
\[  
\theset{ \sum_i c_i \vector x_i \mid c_i \in \FF,~ x_i \in W} \subseteq W
.\]

    - Quick counter-check: find $\vector x, \vector y$ such that $a\vector x + b\vector y \not\in W$

- Span
  Given a set of $n$ vectors $S = \theset{\vector x_i}_{i=1}^n$, defined as
  \[  
  \mathrm{Span}(S) = \theset{\sum_{i=1}^nc_i \vector x_i \mid c_i \in k}
  .\]

- Row Space
	- The range of the linear map $T$.
	- Given 
  $T = \begin{bmatrix} \vector x_1 \rightarrow \\ \vector x_2 \rightarrow \\ \vdots \\ \vector x_m \rightarrow \end{bmatrix}$, defined as
\[  
\mathrm{Span}(\theset{\vector x_i}_{i=1}^m) \subseteq k^m
.\]

	- $\mathrm{rowspace}(T)\perp = \mathrm{null}(T)$
	- $\abs{\mathrm{rowspace}(T)} = \mathrm{Rank}(T)$

- Column Space

- Null Space
	- Defined as $\mathrm{null}(T) = \theset{\vector{x} \in k^n \mid T(\vector{x}) = 0 \in k^m}$
	- $\mathrm{null}(T)\perp = \mathrm{rowspace}(T)$

- Eigenvalue
	- A value $\lambda$ such that $Ax = \lambda x$
	- Invariant under similarity.

- Eigenspace
	- For a linear map $T$ with eigenvalue $\lambda$, defined as $E_\lambda = \theset{\vector x \in k^n \mid T(\vector x) = \lambda \vector x}$

- Dimension
	- The cardinality of a basis of $V$

- Basis
	- A linearly independent set of vectors $S = \theset{\vector x_i} \subset V$ such that $\mathrm{Span}(S) = V$

- Linear independence
	- A set of vectors $\theset{\vector x_i}_{i=1}^n$ is linearly independent $\iff \sum_{i=1}^n c_i \vector x_i = 0 \implies c_i = 0$ for all $i$.
	- Can be detected by considering the matrix
  \[  
	T = [\vector x_1, \vector x_2, \cdots, \vector x_n]^T
  .\]
	(linearly independent iff $T$ is singular)

- Rank
	- Dimension of rowspace

- Rank-Nullity Theorem
	- $\abs{\mathrm{Nullspace}(A)} + \abs{\mathrm{Rank}(A)} = \abs{\mathrm{Codomain}(A)}$

- Nullspace
	- $\mathrm{nullspace}(A) = \theset{\vector{x}\in \RR^n : A \vector{x} = \vector 0}$

- Singular
	- A square $n\times n$ matrix $T$ is singular iff $\mathrm{Rank}(T) < n$

- Similarity
	- Two matrices $A, B$ are similar iff there exists an invertible matrix $S$ such that $B = SAS^{-1}$

- Diagonalizable
	- A matrix $X$ is diagonalizable if it can be written $X = EDE^{-1}$ where $D$ is diagonal.
	- If $X$ is $n\times n$ and has $n$ linearly independent eigenvectors $\vector\lambda_i$, then $D_{ii} = \vector\lambda_i$, and 
  $E  = \begin{bmatrix} \vector\lambda_1 & \vector\lambda_2 & \cdots  & \vector \lambda_n \\ \downarrow & \downarrow &\cdots & \downarrow \end{bmatrix}$

- Positive Definite
	- A matrix $A$ is positive definite iff $\forall \vector x \in k^n,$ we have the scalar inequality $\vector x^T A \vector x > 0$

- Projection
	- The projection of a vector $\vector v$ onto $\vector u$ is given by $P_{\vector u}(\vector v) = \left< \vector u, \vector v \right> \hat u$
	- The projection of a vector $\vector v$ onto a space $U = \mathrm{Span}(\theset{\vector u_i})$ is given by
  \[  
	P_U(\vector v) = \sum_i P_{\vector u_i}(\vector v) = \sum_i \left< \vector u_i, \vector v\right> \hat u_i
  .\]

- Orthogonal Complement
	- Given a subspace $U \subseteq V$, defined as $U\perp = \theset{\vector v \in V \mid \forall \vector u \in U, \left<\vector u, \vector v\right> = 0}$

- Determinant
\[  
\det(A) = \sum_{\tau \in S^n}\prod_{i=1}^n \sigma(\tau) a_{i, \tau(i)}
.\]

- Trace
\[  
\mathrm{Tr}(A) = \sum_{i=1}^n A_{ii}
.\]

- Characteristic Polynomial
	- $p_A(x) = \det(xI - A)$
	- Roots of $p_A$ are eigenvalues of $A$

- Symmetric: $A = A^T$

- Skew-Symmetric: $A = -A^T$

- Inner Product
	- $\inner{\vector x}{\vector x} \geq 0$
	- $\inner{\vector x}{\vector x} = 0 \iff \vector x = \vector 0$
	- $\inner{\vector x}{\vector y} = \conjugate{\inner {\vector y}{\vector x}}$
	- $\inner[k\vector x]{\vector y} = k\inner{\vector x}{\vector y} = \inner{\vector x}{k\vector y}$
	- $\inner{\vector x + \vector y}{\vector z} = \inner{\vector x}{\vector z} + \inner[y]{\vector z}$
	- $\inner[a\vector x]{b\vector y} = \inner{\vector x}{\vector x} + \inner{a\vector x}{y} + \inner{\vector x}{b\vector y} + \inner{\vector y}{\vector y}$
	- Defines a norm: $\norm{\vector x} = \sqrt{\inner{\vector x}{\vector x}} \implies \norm{\vector x}^2 = \inner{\vector x}{\vector x}$

- Cauchy-Schwarz Inequality: $\abs{\inner{\vector x}{\vector y}} \leq \norm{\vector x}\norm{\vector y}$

- Orthogonality:
	- For vectors: $\vector x \perp \vector y \iff \inner{\vector x}{\vector y} = 0$
	- For matrices: $A$ is orthogonal $\iff A^{-1} = A^T$

- Orthogonal Projection of $\vector x$ onto $\vector y$: 
  \[  
  P(\vector x, \vector y) = \inner{\vector x}{\vector y} \hat y = \inner{\vector x}{\vector y} \frac{\vector y}{\norm{\vector y}^2}
  .\]
	- Note $\norm{P(\vector x, \vector y)} = \norm{\vector x}\cos\theta_{x,y}$

- Defective: An $n\times n$ matrix $A$ is defective $\iff$ the number of linearly independent eigenvectors of $A$ is less than $n$.

## Differential Equations

- Homogeneous
\[  
f(x, y) \text{ homogeneous of degree } n \iff \exists n\in\NN : f(tx, ty) = t^nf(x, y).
.\]

- Separable
\[  
p(y)\frac{dy}{dx} - q(x) = 0
.\]

- Wronskian:
\[
W \left[ f _ { 1 } , f _ { 2 } , \ldots , f _ { k } \right] ( x ) = \left| \begin{array} { c c c c } { f _ { 1 } ( x ) } & { f _ { 2 } ( x ) } & { \dots } & { f _ { k } ( x ) } \\ { f _ { 1 } ^ { \prime } ( x ) } & { f _ { 2 } ^ { \prime } ( x ) } & { \dots } & { f _ { k } ^ { \prime } ( x ) } \\ { \vdots } & { \vdots } & { } & { \vdots } \\ { f _ { 1 } ^ { ( k - 1 ) } ( x ) } & { f _ { 2 } ^ { ( k - 1 ) } ( x ) } & { \dots } & { f _ { k } ^ { ( k - 1 ) } ( x ) } \end{array} \right|
\]

- Laplace Transform:
\[  
L_f(s) = \int_0^\infty e^{-st} f(t) ~dt
.\]

## Algebra

- Ring
- Group
- Subgroup
	- Two step subgroups test:
- Integral Domain
- Division Ring
- Principal Ideal Domain
- Tensor Product: #todo insert construction

## Complex Analysis

- Analytic
- Harmonic
- Cauchy-Euler Equations
- Holomorphic
- The Complex Derivative
- Meromorphic
- The Gamma Function: Satisfies $\Gamma(p+1) + p\Gamma(p)$ and $\Gamma(1) = 1$, defined as
\[  
\Gamma ( p ) = \int _ { 0 } ^ { \infty } t ^ { p - 1 } e ^ { - t } d t , \quad p > 0
.\]

## Algebra

- Looking at real roots:

  - Let $p$ be number of sign changes in $f(x)$;
  - Let $q$ be number of sign changes in $f(-x)$;
  - Let $n$ be the degree of $f$.
  - Then $p$ gives the maximum number of positive real roots, $q$ gives the maximum number of negative real roots, and $n-p-q$ gives the _minimum_ number of complex roots.
  - Rational Roots Theorem: If $p(x) = ax^n +\cdots + c$ and $r = \frac{p}{q}$ where $p(r) = 0$, then $p \mid c$ and $q \mid a$.



- Properties of logs:
	- $\ln(\prod) = \sum \ln$ but $\prod \ln \neq \ln \sum$
	- $\log_b x = \frac{\ln x}{\ln b}$

Be careful! $\frac{\ln x}{\ln y} \neq \ln\frac{x}{y} = \ln x - \ln y$

- Completing the square:
	- $p(x) = ax^2 + bx + c \implies p(x) =  a(x+\frac{b}{2a})^2 + -\frac{1}{2}\left(\frac{b^2-4ac}{2a}\right)$

## Geometry

- Generic Conic Sections

	$$A x ^ { 2 } + B x y + C y ^ { 2 } + D x + E y + F = 0$$

	$$\frac{(x-x_0)^2}{w_0} \pm \frac{(y-y_0)^2}{h_0} = c$$

- Circles: $$ Ax^2 + By^2 + C = 0 \hspace{5em} (x-x_0)^2 + (y-y_0)^2 = r^2$$
	- Defining trait: locus of points at a constant distance from the **center**
	- **Center** at $(x_0, y_0)$

- Parabolas: $$Ax^2 + Bx + Cy + D = 0 \hspace{5em} y = ax^2$$
	- Defining Trait:
		- Locus of points equidistant from the **focus** (a point) and the **directrix** (a line)
		- #todo add image
	- **Focus** at $(0, \frac{1}{4a})$
	- **Directrix** at the line $y = -\frac{1}{4a}$
		- For an arbitrary quadratic: complete the square to write in the form $y = a(x - w_0)^2 + h_0$, and translate points of interest by by $(x+w_0, y+h_0)$

- Ellipses: $$\frac{x^2}{w^2} + \frac{y^2}{h^2} = 1$$
	- Defining trait:
		- The locus of points where the *sum* of distances to two **focii** are constant.
	- **Center** at $(0,0)$ (can translate easily)
	- **Vertices** at $(\pm w, 0)$ and $(0, \pm h)$
	- **Focii** at $F_1 = (\sqrt{w^2-h^2}, 0), F_2 = (-\sqrt{w^2-h^2}, 0)$
	- Another useful shortcut form:

- Hyperbolas: $$\frac{x^2}{w^2}-\frac{y^2}{h^2} = 1$$
	- Defining trait:
		- Locus of points where the *difference* between the distances to two **focii** are constant.
	- **Vertices** at $(0, \pm h)$ and $(\pm w, 0)$
	- **Focii** at $F_1 = (\sqrt{w^2+h^2}, 0), F_2 = (-\sqrt{w^2+h^2}, 0)$

- Summary of Traits:
	- One point $p$:
		- Distance to $p$ is constant: circle
	- Two points $a,b$:
		- Distance to $a$ equal to distance to $b$ equals a constant: a line bisecting the midpoint of the line connecting them
		- Difference of distances constant: ellipse
		- Sum of differences constant: hyperbola
	- Point $p$ and a line $l$:
		- Distance to $p$ equals distance to $l$ equals a constant: parabola

- Areas of certain figures:

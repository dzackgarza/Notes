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

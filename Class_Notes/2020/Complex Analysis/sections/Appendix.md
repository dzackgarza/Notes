# Appendix

\begin{align*}
dz &= dx + i~dy \\
d\bar z &= dx - i~dy \\
f_z &= f_x = i\inv f_y \\
\int_{0}^{2 \pi} e^{i \ell x} d x=\left\{\begin{array}{ll}{2 \pi} & {(\ell=0)} \\ {0} & {(\ell \neq 0)}\end{array}\right.
.\end{align*}

- Holomorphic: once complex differentiable in neighborhoods of every point.
- Analytic: equal to its Taylor series expansion

**Cauchy Inequality:**
Given $z_0\in \Omega$, pick the largest disc $D_R(z_0) \subset \Omega$ and let $C_R = \bd D_R$.
Using the integral formula, defining $\norm{f}_{C_R} = \max_{\abs{z-z_0} = R} \abs{f(z)}$

\begin{align*}
\abs{ f^{(n)}(z_0) } \leq \frac{n!}{2\pi} \int_0^{2\pi} \frac{\norm{f}_{C_R}}{R^{n+1}} R~d\theta = \frac{n! \norm{f}_{C_R}}{R^{n}}
.\end{align*}


> Collection of facts used on problem sets


**Standard forms of conic sections:**

- Circle: $x^2 + y^2 = r^2$
- Ellipse: $\qty{\frac x a}^2  + \qty{\frac y b}^2 = 1$
- Hyperbola: $\qty{\frac x a}^2  - \qty{\frac y b}^2 = 1$
  - Rectangular Hyperbola: $xy = \frac{c^2}{2}$.
- Parabola: $-4ax + y^2 = 0$.

> Mnemonic: 
> Write $f(x, y) = Ax^2 + Bxy + Cy^2 + \cdots$, then consider the discriminant $\Delta = B^2 - 4AC$:
> 
> - $\Delta < 0 \iff$ ellipse
>   - $\Delta < 0$ and $A=C, B=0 \iff$ circle
> - $\Delta = 0 \iff$ parabola 
> - $\Delta > 0 \iff$ hyperbola

**Completing the square:**

\begin{align*}
x^2 - bx = (x - s)^2 - s^2 \quad\text{where} s = \frac{b}{2} \\
x^2 + bx = (x + s)^2 - s^2 \quad\text{where} s = \frac{b}{2}
.\end{align*}


**Useful Properties**

- $\Re(z) = \frac 1 2 (z + \bar z)$ and $\Im(z) = \frac{1}{2i}(z - \bar z)$.
- $z\bar z = \abs{z}^2$
- $\cos(\theta) = \frac 1 2 \qty{e^{i\theta} + e^{-i\theta}}$
- $\sin(\theta) = \frac{1}{2i}\qty{e^{i\theta} - e^{-i\theta}}$.

**Useful Series**

\begin{align*} 
\sum_{k=1}^{n} k &=\frac{n(n+1)}{2} \\ 
\sum_{k=1}^{n} k^{2} &=\frac{n(n+1)(2 n+1)}{6} \\ 
\sum_{k=1}^{n} k^{3} &=\frac{n^{2}(n+1)^{2}}{4}  \\
\log(z) &= \sum_{j=0}^\infty (-1)^j \frac{\qty{z-a}^j}{j}
\end{align*}


**Cauchy-Riemann Equations**

\begin{align*}
u_x = v_y \quad\text{and}\quad u_y = -v_x \\
\frac{\partial u}{\partial r}=\frac{1}{r} \frac{\partial v}{\partial \theta} \quad \text { and } \quad \frac{\partial v}{\partial r}=-\frac{1}{r} \frac{\partial u}{\partial \theta} \\
.\end{align*}



## Useful Techniques

**Showing a function is constant:**
Write $f = u + iv$ and use Cauchy-Riemann to show $u_x, u_y = 0$, etc.

**Deriving Polar Cauchy-Riemann:**
See [walkthrough here](https://users.math.msu.edu/users/shapiro/Teaching/classes/425/crpolar.pdf).
Take derivative along two paths, along a ray with constant angle $\theta_0$ and along a circular arc of constant radius $r_0$.
Then equate real and imaginary parts.
See problem set 1.

**Computing Arguments:**
$\Arg(z/w) = \Arg(z) - \Arg(w)$.

The sum of the interior angles of an $n\dash$gon is $(n-2)\pi$, where each angle is $\frac{n-2}{n}\pi$.

## Residues

If $p$ is a simple pole, $\Res(p, f) = \lim_{z\to p} (z-p)f(z)$.
Example: Let $f(z) = \frac{1}{1+z^2}$, then $\Res(i, f) = \frac{1}{2i}$.


Green's Theorem:
Todo

$\dd{}{z} \sum_{j=0}^\infty a_j z^j = \sum_{j=0}^\infty a_{j+1}z^j$.

## Pithy Statements

- Little Picard: $f$ misses at most one point and is a homeomorphism onto its image.
- Baire's Theorem: The intersection of open dense sets is open.
- Casorati-Weierstrass: The image of a disc punctured at an essential singularity is dense in $\CC$.
- Open Mapping: Holomorphic functions preserve open sets.
- Argument Principle: The logarithmic derivative measures the difference of zeros and poles.

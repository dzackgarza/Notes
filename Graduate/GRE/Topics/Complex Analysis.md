Notation: $z = a + ib, f(z) = u(x, y) + iv(x, y)$

## Useful Equations and Definitions
$$\begin{align*}
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
(x-z)(x-\conjugate{z}) &= x^2 - 2\Real{z}x + (a^2+b^2)
\\
\frac { \partial } { \partial z } &= \frac { 1 } { 2 } \left( \frac { \partial } { \partial x } - i \frac { \partial } { \partial y } \right)
\\
\frac { \partial } { \partial \overline { z } } &= \frac { 1 } { 2 } \left( \frac { \partial } { \partial x } + i \frac { \partial } { \partial y } \right)
\end{align*}$$

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
	- $\inner[\nabla u]{\nabla v}  = 0 $
	- $\Delta u = \Delta v = 0$ (both components are harmonic)


## Complex Integrals
The main theorem:
$$
\oint_C f(z)~dz = 2\pi i \sum_k \mathrm{Res}(f, z_k)
$$
- Computing residues:
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
$$
f(x) = \cases{
	-\frac{1}{2}x^2 & $x < 0$ \\ ~~~
	\frac{1}{2}x^2 & $x \geq 0$
}
$$

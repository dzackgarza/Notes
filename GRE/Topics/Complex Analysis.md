- Properties of modulus:
	- $z = a+ib \implies \abs{z} = \sqrt{a^2 + b^2}$
	- $\abs{z}^2 = z\conjugate{z} = a^2 + b^2$
	- $\frac{z\conjugate{z}}{\abs{z}^2} = \frac{(a+ib)(a-ib)}{a^2 + b^2} = 1$
- $\frac{1}{a+ib} = \frac{1}{z} = \frac{\conjugate{z}}{\abs{z}^2} = \frac{a-ib}{a^2+b^2}$
- $e^{zx} = e^{(a+ib)x} = e^{ax}(\cos(bx) + i\sin(bx))$
- Complex logarithm: $\mathrm{Log}(z) = \ln\abs{z} + i~\mathrm{Arg}(z)$
- Complex exponential: $x^z \definedas e^{z\ln x}$

- $n\dash$th roots:
$$e^{\frac{ki}{2\pi n}}, \qquad k = 1, 2, \cdots n-1$$

- For $z=a+bi$, $(x-z)(x-\conjugate{z}) = x^2 - 2\Real{z}x + (a^2+b^2)$

- Computing residues:
$$
\operatorname { Res } ( f , c ) = \frac { 1 } { ( n - 1 ) ! } \lim _ { z \rightarrow c } \frac { d ^ { n - 1 } } { d z ^ { n - 1 } } \left( ( z - c ) ^ { n } f ( z ) \right) \\
f(z) = \frac{g(z)}{h(z)} \implies \operatorname { Res } ( f , c ) = \frac{g(c)}{h'(c)}
$$

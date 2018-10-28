## Notation

$\phi: \RR^n \to \RR,~ \quad \phi(x_1, x_2, \cdots) = \cdots$

$\mathbf{F}: \RR^n \to \RR^n,~ \mathbf{F}(x_1,x_2,\cdots) = [\mathbf{F}_1(x_1, x_2, \cdots), \mathbf{F}_2(x_1, x_2, \cdots), \cdots, \mathbf{F}_n(x_1, x_2, \cdots)]$

$\vec{v} = [v_1, v_2, \cdots]$

## Partial Derivatives
- Definition:
$$
f: \RR^n \to \RR \\
\dd[f]{x_i}(\mathbf p)  = \lim_{h\to 0}\frac{f(\mathbf p + h\mathbf e_i)  - f(\mathbf p)}{h}
$$

Most common case:
$$
f: \RR^2 \to \RR \\
\dd{x} f(x,y) =
\lim_{h \to 0} \frac{f(x+h, y) - f(x,y)}{h}
$$

Most general case: Differentiable if there exists a linear transformation $D_f$ such that a limit exists; is the "best linear approximation to $f$".

$$
f: \RR^n \to \RR^m
\\
\lim _ { \mathbf x \rightarrow \mathbf a } \frac { \left\| f (\mathbf x ) - f (\mathbf a ) - D_f (\mathbf x - \mathbf a ) \right\| } { \| \mathbf x - \mathbf a \| } = 0
\\
D_f(\mathbf a) = \left[ \begin{array} { c c c c } { \frac { \partial f _ { 1 } } { \partial x _ { 1 } } ( \mathbf { a } ) } & { \frac { \partial f _ { 1 } } { \partial x _ { 2 } } ( \mathbf { a } ) } & { \ldots } & { \frac { \partial f _ { 1 } } { \partial x _ { n } } ( \mathbf { a } ) } \\ { \frac { \partial f _ { 2 } } { \partial x _ { 1 } } ( \mathbf { a } ) } & { \frac { \partial f _ { 2 } } { \partial x _ { 2 } } ( \mathbf { a } ) } & { \dots } & { \frac { \partial f _ { 2 } } { \partial x _ { n } } ( \mathbf { a } ) } \\ { \vdots } & { \vdots } & { \ddots } & { \vdots } \\ { \frac { \partial f _ { m } } { \partial x _ { 1 } } ( \mathbf { a } ) } & { \frac { \partial f _ { m } } { \partial x _ { 2 } } ( \mathbf { a } ) } & { \cdots } & { \frac { \partial f _ { m } } { \partial x _ { n } } ( \mathbf { a } ) } \end{array} \right]
$$

Generalization of the second derivative: the Hessian
$$
f: \RR^n \to \RR \\
H_f({ \mathbf { a } }) = \left[ \begin{array} { c c c } { \frac { \partial ^ { 2 } f } { \partial x _ { 1 } \partial x _ { 1 } } ( \mathbf { a } ) } & { \dots } & { \frac { \partial ^ { 2 } f } { \partial x _ { 1 } \partial x _ { n } } ( \mathbf { a } ) } \\ { \vdots } & { \ddots } & { \vdots } \\ { \frac { \partial ^ { 2 } f } { \partial x _ { n } \partial x _ { 1 } } ( \mathbf { a } ) } & { \cdots } & { \frac { \partial ^ { 2 } f } { \partial x _ { n } \partial x _ { n } } ( \mathbf { a } ) } \end{array} \right]
$$

- Chain Rule: Write out tree of dependent variables:
```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{standalone}
\usepackage{tikz}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usetikzlibrary{cd}
\begin{document}
\begin{tikzcd}
 & u \arrow[dd] \arrow[rr] \arrow[rrdd] &  & x \\
z \arrow[rd] \arrow[ru] \arrow[rrru] \arrow[rrrd] &  &  &  \\
 & v \arrow[rr] \arrow[rruu] &  & y
\end{tikzcd}
\end{document}
```

Then sum each possible path, e.g.

$$\begin{align}
\left(\dd[z]{x}\right)_y &= \left(\dd[z]{x}\right)_{u,y,v} \\
& + \left(\dd[z]{v}\right)_{x,y,u} \left(\dd[v]{x}\right)_y \\
& + \left(\dd[z]{u}\right)_{x,y,v} \left(\dd[u]{x}\right)_{v,y}  \\
& + \left(\dd[z]{u}\right)_{x,y,v} \left(\dd[u]{v}\right)_{x,y} \left(\dd[v]{x}\right)_y
\end{align}$$

Where the subscripts denote which variables are held constant.



## Approximation and Optimization
- Linear Approximation:
	- $z = f(x,y):$ use Tangent plane formulation to obtain
	$$f(x,y) \approx f(x_0, y_0) + f_x(x_0, y_0)(x-x_0) + f_y(x_0, y_0)(y-y_0)$$
- Optimization
	- Critical points of $f$ given by points $\vec p$ such that $\nabla f({\mathbf p}) = 0$
	- Second derivative test: compute $\abs{H_f(\mathbf p)} \definedas  \left| \begin{array} { l l } { f _ { x x } } & { f _ { x y } } \\ { f _ { y x } } & { f _ { y y } } \end{array} \right| ({ \mathbf p  })$.
	- By cases:
		- $\abs{H(\mathbf p)} = 0$: No conclusion
		- $\abs{H(\mathbf p)} < 0$: Saddle point
		- $\abs{H(\mathbf p)} > 0$: 
			- $f_{xx}(\mathbf p) > 0 \implies$ local min
			- $f_{xx}(\mathbf p) < 0 \implies$ local max
	- Mnemonic: make matrix with $\nabla f$ as the columns, and then differentiate variables left to right.
	- What's really going on:
		- Eigenvalues have same sign $\iff$ positive definite or negative definite
		- Positive definite $\implies$ convex $\implies$ local min
		- Negative definite $\implies$ concave $\implies$ local max
- Constrained by domain:
	- Extrema occur on boundaries, so parametrize each boundary to obtain a function in one less variable and apply standard optimization techniques to yield critical points. Test all critical points to find extrema.
- Constrained by an equation:
	- If possible, use constraint to just reduce equation to one dimension and optimze like single-variable case. Otherwise,
	- **Lagrange Multipliers**. The setup:
	$$ \text{Optimize } f(\mathbf x) \\ \text{subject to } g(\mathbf x) = c \\ \implies \nabla f = \lambda \nabla g$$
	1. Use this formula to obtain a system of equations in the components of $x$ and the parameter $\lambda$.
	2. Use $\lambda$ to obtain a relation involving only components of $\mathbf{x}$.
	3. Substitute relations **back into constraint** to obtain a collection of critical points.
	4. Evaluate $f$ at critical points to find max/min.

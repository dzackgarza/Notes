## Notation

$\phi: \RR^n \to \RR,~ \quad \phi(x_1, x_2, \cdots) = \cdots$

$\mathbf{F}: \RR^n \to \RR^n,~ \mathbf{F}(x_1,x_2,\cdots) = [\mathbf{F}_1(x_1, x_2, \cdots), \mathbf{F}_2(x_1, x_2, \cdots), \cdots, \mathbf{F}_n(x_1, x_2, \cdots)]$

$\vec{v} = [v_1, v_2, \cdots]$

## Partial Derivatives
- Definition:
$$
f: \RR^n \to \RR \\
\dd{f}{x_i}(\mathbf p)  = \lim_{h\to 0}\frac{f(\mathbf p + h\mathbf e_i)  - f(\mathbf p)}{h}
$$

Most common case:
$$
f: \RR^2 \to \RR \\
\dd{x} f(x,y) =
\lim_{h \to 0} \frac{f(x+h, y) - f(x,y)}{h}
$$

Most general case: a function $f: \RR^n \to \RR^m$ is differentiable if there exists a linear transformation $D_f$ such that a limit exists; is the "best linear approximation to $f$".

$$
\lim _ { \mathbf x \rightarrow \mathbf a } \frac { \left\| f (\mathbf x ) - f (\mathbf a ) - D_f (\mathbf x - \mathbf a ) \right\| } { \| \mathbf x - \mathbf a \| } = 0
$$

When this transformation exists, it can be given in coordinates by  $(D_f)_{ij} = \dd{f_i}{x_j}$. This amounts to taking the gradient of each component of $f$, evaluating at the point $\vector a$, forming a matrix using these as the columns, and then transposing the result. This yields
$$
D_f(\mathbf a) 
= [\nabla f_1(\vector a), ~\nabla f_2(\vector a), ~\cdots]^T 
= \left[ \begin{array} { c c c c } { \frac { \partial f _ { 1 } } { \partial x _ { 1 } } ( \mathbf { a } ) } & { \frac { \partial f _ { 1 } } { \partial x _ { 2 } } ( \mathbf { a } ) } & { \ldots } & { \frac { \partial f _ { 1 } } { \partial x _ { n } } ( \mathbf { a } ) } \\ { \frac { \partial f _ { 2 } } { \partial x _ { 1 } } ( \mathbf { a } ) } & { \frac { \partial f _ { 2 } } { \partial x _ { 2 } } ( \mathbf { a } ) } & { \dots } & { \frac { \partial f _ { 2 } } { \partial x _ { n } } ( \mathbf { a } ) } \\ { \vdots } & { \vdots } & { \ddots } & { \vdots } \\ { \frac { \partial f _ { m } } { \partial x _ { 1 } } ( \mathbf { a } ) } & { \frac { \partial f _ { m } } { \partial x _ { 2 } } ( \mathbf { a } ) } & { \cdots } & { \frac { \partial f _ { m } } { \partial x _ { n } } ( \mathbf { a } ) } \end{array} \right].
$$

Note that this is also sometimes referred to as the *Jacobian* matrix, and generalizes the first derivative. When $D_f$ exists, it is the best linear approximation to $f$ in a neighborhood of $\vector a$.

For a function $f: \RR^n \to \RR$, the **Hessian** is a generalization of the second derivative, and is given in coordinates by $(H_f)_{ij} = \dd{^2}{x_i x_j}f$. Explicitly, we have

$$
H_f({ \mathbf { a } }) = \left[ \begin{array} { c c c } { \frac { \partial ^ { 2 } f } { \partial x _ { 1 } \partial x _ { 1 } } ( \mathbf { a } ) } & { \dots } & { \frac { \partial ^ { 2 } f } { \partial x _ { 1 } \partial x _ { n } } ( \mathbf { a } ) } \\ { \vdots } & { \ddots } & { \vdots } \\ { \frac { \partial ^ { 2 } f } { \partial x _ { n } \partial x _ { 1 } } ( \mathbf { a } ) } & { \cdots } & { \frac { \partial ^ { 2 } f } { \partial x _ { n } \partial x _ { n } } ( \mathbf { a } ) } \end{array} \right].
$$

Concretely, this generalizes the 2nd derivative via the relationship $H_f(\vector a) = D_{\nabla f}(\vector a)$.
In general, for a function $f: \RR^n \to \RR^m$, the second derivative is given as a tensor and is more complicated to work with. It is given by $H_{\vector f} = [H_{f_1}, H_{f_2}, \cdots]$.

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

$$\begin{align*}
\left(\dd{z}{x}\right)_y &= \left(\dd{z}{x}\right)_{u,y,v} \\
& + \left(\dd{z}{v}\right)_{x,y,u} \left(\dd{v}{x}\right)_y \\
& + \left(\dd{z}{u}\right)_{x,y,v} \left(\dd{u}{x}\right)_{v,y}  \\
& + \left(\dd{z}{u}\right)_{x,y,v} \left(\dd{u}{v}\right)_{x,y} \left(\dd{v}{x}\right)_y
\end{align*}$$

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
	- Extrema occur on boundaries, so parameterize each boundary to obtain a function in one less variable and apply standard optimization techniques to yield critical points. Test all critical points to find extrema.
- Constrained by an equation:
	- If possible, use constraint to just reduce equation to one dimension and optimze like single-variable case. Otherwise,
	- **Lagrange Multipliers**. 
    	- The setup:
	$$ 
	\text{Optimize } f(\mathbf x) \\ \text{subject to } g(\mathbf x) = c \\ \implies \nabla f = \lambda \nabla g
	$$
	1. Use this formula to obtain a system of equations in the components of $x$ and the parameter $\lambda$.
	2. Use $\lambda$ to obtain a relation involving only components of $\mathbf{x}$.
	3. Substitute relations **back into constraint** to obtain a collection of critical points.
	4. Evaluate $f$ at critical points to find max/min.


## Change of Variables

For any $f: \RR^n \to \RR^n$ and region $R$,
$$
\int _ { g ( R ) } f ( \mathbf { x } ) ~d V = \int _ { R } (f  \circ g) ( \mathbf { x } )  \cdot \abs{D_g  ( \mathbf { x })} ~d V
$$

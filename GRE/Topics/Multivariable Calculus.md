## Notation

$\phi: \RR^n \to \RR,~ \quad \phi(x_1, x_2, \cdots) = \cdots$

$\mathbf{F}: \RR^n \to \RR^n,~ \mathbf{F}(x_1,x_2,\cdots) = [\mathbf{F}_1(x_1, x_2, \cdots), \mathbf{F}_2(x_1, x_2, \cdots), \cdots, \mathbf{F}_n(x_1, x_2, \cdots)]$

$\vec{v} = [v_1, v_2, \cdots]$

## Partial Derivatives
- Definition:
$$
\dd{x} f(x,y) =
\lim_{h \to 0} \frac{f(x+h, y) - f(x,y)}{h}
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
	- Critical points of $f(\vec x)$ given by points $\vec p_0$ such that $\nabla f\mid_{\vec p_0} = 0$
	- Second derivative test: compute $H_f(p_0) \definedas  \left| \begin{array} { l l } { f _ { x x } } & { f _ { x y } } \\ { f _ { y x } } & { f _ { y y } } \end{array} \right| ({ \vec p _ { 0 } })$.
	- By cases:
		- $H(\mathbf p_0) = 0$: No conclusion
		- $H(\mathbf p_0) < 0$: Saddle point
		- $H(\mathbf p_0) > 0$:
			- $f_{xx}(\mathbf p_0) > 0 \implies $ local min
			- $f_{xx}(\mathbf p_0) < 0 \implies $ local max
	- Mnemonic: make matrix with $\nabla f$ as the columns, and then differentiate variables left to right.
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

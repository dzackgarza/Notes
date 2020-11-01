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

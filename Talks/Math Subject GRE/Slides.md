---
presentation:
  margin: 0.0
  theme: serif.css
---

<!-- slide -->

# Mathematics Subject GRE Workshop

<!-- slide -->
# Agenda
- Description of Mathematics Subject GRE
- Topics it covers
- Exam logistics
- Recommended resources
- Study techniques/tips
- Review of topics + sample problems

<!-- slide -->

## What is the Mathematics Subject GRE?

- Different from the Math section of the *General* GRE
- Required of graduate student applicants to many Math Ph.D. programs
- Tests a breadth of undergraduate topics

![](./images/general_gre.png)

<!-- slide -->
# What topics does it cover?

- Calculus (50%)
  - Single Variable
  - Multivariable
  - Differential Equations

![calculus](http://pyvandenbussche.info/wp-content/uploads/2017/07/integral.png)

<!-- slide vertical=true-->
- "Algebra" (25%)
  - Linear Algebra
  - Abstract Algebra 
  - Number Theory

![algebra](http://www.math.colostate.edu/~jwilson/math/16/D16.gif)

<!-- slide vertical=true-->
- Mixed Topics (25%)
  - Real Analysis
  - Logic / Set Theory
  - Discrete Mathematics
  - Point-Set Topology
  - Complex Analysis
  - Combinatorics
  - Probability
  
![analysis](https://pbs.twimg.com/media/C29j_1BXEAAa0PN.jpg)

<!-- slide -->
# Logistics

- Multiple choice, 5 choices
- 66 questions, 170 minutes
- No downside to guessing
- Only offered 3x/year 
- Need to register ~2 months in advance

<!-- slide -->
# References

- Garrity, [All the Mathematics You Missed (But Need to Know for Graduate School)](https://www.amazon.com/All-Mathematics-You-Missed-Graduate/dp/0521797071)

![](https://i3.ebkimg.com/previews/000/000890/000890393/000890393-hq-168-80.jpg)

- The Princeton Review, [Cracking the Math GRE Subject Test](https://www.amazon.com/Cracking-GRE-Mathematics-Subject-Test/dp/0375429727)

![](https://images-na.ssl-images-amazon.com/images/I/51SwQs4zzdL._SX383_BO1,204,203,200_.jpg)

- Five Official Practice Exams
	- GR 1268
	- GR 0568
	- GR 9367
	- GR 8767
	- GR 9768

<!-- slide -->
# General Tips

![](https://pm1.narvii.com/6764/9db97da1ae788b05dd789270d71cd209239e1870v2_hq.jpg)

- Start early
- Speed is important
- Focus on lower div
- Drill *a lot* of problems
- Memorize formulas and definitions
- Spaced repetition
- Save actual exams
- Replicate exam conditions
- Self care!!

<!-- slide -->
# Single Variable Calculus

<!-- slide vertical=true -->
## Derivatives
- Computing limits
- Showing continuity
- Computing derivatives
- Mean Value Theorem
- Extreme Value Theorem
- Rolle's Theorem
- Implicit Differentiation
- Related Rates
- Optimization
- Computing Taylor expansions
- Computing linear approximations

<!-- slide vertical=true -->
## Integrals
- Riemann sum definition of the integral
- The fundamental theorem of Calculus (both forms)
- Computing antiderivatives
  - $u\dash$substitutions
  - Partial fraction decomposition
  - Trigonometric Substitution
  - Integration by parts
  - Specific integrands
- Computing definite integrals
- Solids of revolution
- Series (see real analysis section)


<!-- slide vertical=true -->
## Important Extras
Commuting a derivative with an integral
$$
\frac{d}{dx} \int_{a(x)}^{b(x)} f(x,t) dt = \int_{a(x)}^{b(x)} \frac{\partial}{\partial x} f(x, t) dt \\ + f(x, b(x))\frac{d}{dx}b(x) - f(x, a(x))\frac{d}{dx}a(x)
$$

(Derived from chain rule)

<!-- slide vertical=true -->
## Important Extras
The Fundamental Theorems of Calculus
$$\begin{align*}
\int_a^b \dd{}{x} f(x)~dx &= f(b) - f(a) \\ \\
\frac{d}{dx} \int_a^x f(t)~dt &= f(x)
\end{align*}$$
Set $a(x) = a, b(x) = b, f(x,t) = f(t)$ so $\dd{}{x} f(t) = 0$, then commute the derivative/integral

<!-- slide vertical=true -->
## Important Extras
Use simple techniques when possible

$$
\frac{a}{b+\sqrt{c}} = \frac{a}{b+\sqrt{c}} \left( \frac {b-\sqrt c} {b-\sqrt c} \right) = \frac {a(b-\sqrt c)} {b^2 - c} \\
\frac{1}{ax^2 + bx + c} = \frac{1}{(x-r_1)(x-r_2)} = \frac{A}{x-r_1} + \frac{B}{x-r_2}
$$

<!-- slide -->
# Multivariable Calculus

<!-- slide vertical=true -->
## Topics
- Vectors, div, grad, curl
- Equations of lines, planes, paramaterized curves
  - And finding intersections
- Multivariable Taylor series
- Computing linear approximations
- Lagrange Multipliers
- Multivariable optimization
- Arc lengths of curves
- Line integrals, surface integrals
- Green's Theorem
- The divergence theorem
- Stoke's Theorem

<!-- slide vertical=true -->
## Optimization
**Single variable:** solve $\dd{}{x} f(x) = 0$ to find critical points $c_i$ then check min/max by computing $\dd{^2}{x^2}f(c_i)$.

**Multivariable:** solve $\nabla f(\vector x) = 0$ for critical points $\vector c_i$, then check min/max by computing the determinant of the Hessian:
$$
H_f({ \mathbf { a } }) = \left[ \begin{array} { c c c } { \frac { \partial ^ { 2 } f } { \partial x _ { 1 } \partial x _ { 1 } } ( \mathbf { a } ) } & { \dots } & { \frac { \partial ^ { 2 } f } { \partial x _ { 1 } \partial x _ { n } } ( \mathbf { a } ) } \\ { \vdots } & { \ddots } & { \vdots } \\ { \frac { \partial ^ { 2 } f } { \partial x _ { n } \partial x _ { 1 } } ( \mathbf { a } ) } & { \cdots } & { \frac { \partial ^ { 2 } f } { \partial x _ { n } \partial x _ { n } } ( \mathbf { a } ) } \end{array} \right].
$$

<!-- slide vertical=true -->
## Optimization
**Lagrange Multipliers:**
$$ 
\text{Optimize } f(\mathbf x) \text{ subject to } g(\mathbf x) = c \\ \implies \nabla \vector f = \lambda \nabla \vector g
$$
Generally a system of nonlinear equations, but there are common tricks to solve.

<!-- slide vertical=true -->
## Multivariable Chain Rule
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

To get any one derivative, sum over all possible paths to it:
$$\begin{align*}
\left(\dd{z}{x}\right)_y &= \left(\dd{z}{x}\right)_{u,y,v} \\
& + \left(\dd{z}{v}\right)_{x,y,u} \left(\dd{v}{x}\right)_y \\
& + \left(\dd{z}{u}\right)_{x,y,v} \left(\dd{u}{x}\right)_{v,y}  \\
& + \left(\dd{z}{u}\right)_{x,y,v} \left(\dd{u}{v}\right)_{x,y} \left(\dd{v}{x}\right)_y
\end{align*}$$

*Subscripts denote variables held constant while differentiating.*

<!-- slide vertical=true -->
## Linear Approximation
Essentially just use Taylor expansions.

Single variable case:
$$
f(p) \approx f(p) + f'(p)(x-p) + f''(p)(x-a)^2 + o(x^3)
$$

Multivariable case:
$$
f(\vector p) \approx f(\vector p) + \nabla f(\vector p)(\vector x - \vector a) + (\vector x - \vector p )^T H_f(p)(\vector x - \vector p) + o(\norm{\vector x - \vector p}^3)
$$

<!-- slide -->
# Linear Algebra
- Rank Nullity:
$$
\abs{\ker(A)} + \abs{\im(A)} = \abs{\mathrm{domain}(A)}
$$
- Fundamental Subspace Theorems
$$
\im(A) \perp \ker(A^T), \qquad \ker(A) \perp \im (A^T)
$$
- Compute
  - Determinant, trace, inverse, subspaces, eigenvalues, etc
- Definitions
  - Vector space, subspace, singular, consistent system, etc

<!-- slide -->
## Fundamental Spaces
- Finding bases for various spaces of $A$:
  - $\mathrm{rowspace} A \subseteq \RR^n$
  	- Reduce to RREF, and take nonzero rows of $\mathrm{RREF}(A)$.
  - $\mathrm{colspace} A \subseteq \RR^m$:
    - Reduce to RREF, and take columns with pivots from original $A$.
  - $\mathrm{nullspace} A$: 
    - Reduce to RREF, zero rows are free variables, convert back to equations and pull free variables out as scalar multipliers.
  - Eigenspace: 
    - For each $\lambda \in \spec(A)$ Compute $\ker (A - \lambda I)$

<!-- slide vertical=true -->
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

<!-- slide vertical=true -->
## Big List of Equivalent Properties (cont)
- $A = \prod_{i=1}^k E_i$ for some finite $k$, where each $E_i$ is an elementary matrix.
- $A$ is row-equivalent to the identity matrix $I_n$
- $A$ has exactly $n$ pivots
- The columns of $A$ are a basis for $\RR^n$
	- i.e. $\mathrm{colspace}(A) = \RR^n$
- The rows of $A$ are a basis for $\RR^m$
	- i.e. $\mathrm{rowspace}(A) = \RR^m$
- $\left(\mathrm{colspace}A\right)^\perp = \left(\mathrm{rowspace}A\right)^\perp = \theset{\vector 0}$
- Zero is not an eigenvalue of $A$.
- $A$ has $n$ linearly independent eigenvectors
- The rows of $A$ are coplanar.

<!-- slide vertical=true -->
## Topics
- Systems of equations
- Row operations, Gaussian elimination, REF, RREF
- Determinant, inversion, trace
- Vector spaces and subspaces
- Rank-nullity
- Computing nullspace, colspace, rowspace, eigenvalues/eigenvectors
- Big list of equivalent conditions for invertibility
- Projections onto subspaces
- Diagonalizability and similarity
- Canonical forms
- Quadratic forms



<!-- slide -->
# Ordinary Differential Equations
<!-- slide vertical=true -->
## Topics
- General solutions to $\sum_{i=0}^n \alpha_i y^{(i)}(x) = f(x)$




<!-- slide -->
# Topics: Discrete Mathematics
<!-- slide vertical=true -->
## Topics
- Graphs, trees
- Recurrence relations




<!-- slide -->
# Topics: Number Theory
<!-- slide vertical=true -->
## Topics
- Divisibility
- Congruence
- Prime factorization
- The totient function
- Group-theoretic properties of $\ZZ/n\ZZ$




<!-- slide -->
# Topics: Abstract Algebra
<!-- slide vertical=true -->
svc 1




<!-- slide -->
# Topics: Real Analysis
<!-- slide vertical=true -->
- Properties of Metrics and Metric Spaces
- The Cauchy-Schwarz Inequality
- Definitions of Sequences and Series
- Testing Convergence of a Series:
	- Integral Test
	- Ratio Test
	- Root Test
	- $p$ Test
- Cauchy Sequences
- Commuting limiting operations:
	- $[\frac{\partial}{\partial x}, \int dx](f)$
- Uniform and point-wise continuity
- Lipschitz Continuity


<!-- slide -->
# Topics: Point-Set Topology
<!-- slide vertical=true -->
- Open/closed sets
- Connected, disconnected, totally disconnected, etc




<!-- slide -->
# Topics: Complex Analysis
<!-- slide vertical=true -->
svc 1

<!-- slide -->
# Conclusion
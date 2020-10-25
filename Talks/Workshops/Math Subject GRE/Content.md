# Content

## Pre-Calculus and Proof Fundamentals
- Areas and properties of:
	- Circles
	- Ellipses
	- Cylinders
- Geometry:
	- The sum of interior angles in an $n-$gon is $180(n-2)$; the sum of exterior angles is 360.
- Functions, relations, and orders
	- A relation $\sim \subset X \cross Y$ is not a function if $\exists x \in X$ and $\exists y_1, y_2 \in Y$ such that $x \sim y_1$ and $x \sim y_2$ (so $\sim$ is many-to-one)
	- Injectivity, Surjectivity
- Law of Cosines: $$a^2 = b^2 + c^2 - 2bc\cos(\theta_a)$$
- Truth tables
- Contrapositive, negating quantifiers, etc

## Calculus
### Differential
- Epsilon-Delta Definition of Limit
- Computing Limits
	- Elementary limit properties (sum, product, quotient)
	- L'Hopital's Rule
- Limit definition of continuity
- Limit definition of derivative
- Computing derivatives
	- Elementary/Known Derivatives
	- $x^n, e^x, \sin, \cos,$ etc
- Mean Value Theorem
- Extreme Value Theorem
- Rolle's Theorem
- Implicit Differentiation
- Related Rates
- Single Variable Optimization
	- See optimization section
- Taylor Series
	$$f_a(x) = \sum \frac{1}{k!} f^{(k)}(a)(x-a)$$
- Linear Approximation
	$$f(p) \approx f(p) + f'(p)(x-p) + f''(p)(x-a)^2$$
- Common Derivatives:
- Limit definition of $f''(a)$


### Integral
- Riemann Sum Definition of the Integral
- Fundamental Theorem of Calculus:
	$$\frac{d}{dx} \int_c^x g(t) dt = g(x)$$
- Computing integrals/antiderivatives
	- Elementary/Known Antiderivatives
		- $x^n, e^x, \sin, \cos,$ etc
	- Algebra:
		- Rationalizing the denominator
		- Factoring
	- Interpretation of Integrals as Areas
	- $u$ Substitution
	- Partial Fraction Decomposition
	- Trigonometric Substitution
	- Integration by Parts
- Solids of Revolution
	- Disk Method
	- Shell Method
- Applications
	- Volume

### Series and Sequences
- Common Series (geometric, harmonic, $p$)
- Convergence Tests (integral, ratio, root, etc)

### Multivariable
- Vectors, Div, Grad, and Curl
- Parametric Equations
- Multivariable Taylor Series
- Linear Approximation
	- See Optimization
- Arc Length of Curves
- **Green's Theorem**
- The Divergence Theorem
- Stokes' Theorem
- Matrix definition of the derivative, i.e. the Jacobian: $$(J_f)_{ij} = \frac{\partial f_i}{\partial x_j}$$
- The Hessian: $$H_f = \det(J_f) = f_{xx} f_{yy} - 2f_{xy}^2$$
- Equations of common shapes and surfaces:
	- A plane: Given $\vector n, \vector p_0$
	$$\left< x-\vector p_0, \vector n\right> = 0$$
	- A line: Given $\vector p_0, p_1$
	$$x-\vector p_0 = t(\vector p_1 - \vector p_0)$$ or
	$$ x = t\vector p_0 + (1-t)\vector p_1$$
- Finding intersections between lines/planes/surfaces/arbitrary equations



### Approximation and Optimization
- Linear approximation
	$$f(p) \approx f(p) + f'(p)(x-p) + f''(p)(x-a)^2 + o(x^3)$$
	$$f(\vector p) \approx f(\vector p) + \nabla f(\vector p)(\vector x - \vector a) + (\vector x - \vector p )^T H_f(p)(\vector x - \vector p) + o(\norm{\vector x - \vector p}^3)$$
- Single variable
	- Second derivative test
- Multivariable
	- Eigenvalues of Hessian
		- Negative definite: Min
		- Positive definite: Max
		- Any equal to 0: Inconclusive
- Lagrange Multipliers
	- $\nabla f(\vector x) = \lambda \nabla g(\vector x)$

### Differential Equations
- Separable, linear up to 2nd order, homogeneous and otherwise
- Systems of differential equations
- The Wronskian
- Fourier and Laplace Transforms

## Linear Algebra
- Systems of Linear Equations
	- Number of possible solutions
- Row-reducing algorithm / Gaussian Elimination / RREF
- Properties of determinant and trace
- Computing nullspace, rowspace, columnspace
	- As well as nullity/rank
- Finding eigenvalues and the eigenspace
- Jordan Canonical Form
- Conditions for invertibility

## Complex Analysis
- Complex roots and branch cuts
- Complex limits and the complex derivative
- Cauchy Integral Formula
- The Residue Theorem

## Real Analysis
- Intermediate Value Theorem and Mean Value Theorem
- Least upper bound / Supremum and Greatest lower bound / infimum
- Epsilon-delta proofs
- Uniform and point-wise continuity
- Metrics and Metric Spaces
- The Cauchy-Schwarz Inequality
- Definitions of Sequences and Series
- Testing Convergence of a Series:
	- Integral Test
	- Ratio Test
	- Root Test
	- $p$ Test
- Cauchy Sequences
 Tricks section"

## Topology
- Definition of a Topology
- - Topology: Arbitrary unions and finite intersections
	- Connected
	- Disconnected
	- Totally Disconnected
- Weird topologies

## Number Theory
- Prime decomposition
- Divisibility
- Modular congruences
- Euler's Totient function
- Fermat's Little Theorem
- The Chinese Remainder Theorem

## Abstract Algebra
- Groups
	- Vocabulary: homomorphisms, orders, centralizer, normal subgroup, etc
	- Division Rings, Integral Domains
	- Classification of finite simple abelian groups
		- e.g. count number of unique groups of order $n$
	- The Cyclic, Symmetric, and Dihedral Groups
	- Lagrange's Theorem (orders of subgroups)
	- The Sylow Theorems
- Rings
	- Fields
	- Unique Factorization Domains
	- Principal Ideal Domains
	- Division Rings
	- The Chinese Remainder Theorem

## Combinatorics
- 12-fold counting method
- Stars and Bars
- Permutations
- Combinations
- Inclusions/Exclusions
- Derangements
- The Symmetric Groups
- Integer Partitions

## Probability
- Common Distributions
	- Bernoulli
	- Binomial
	- Geometric
	- Exponential
- Mean / Expected Value / Variance / Standard Deviation
- Density functions
	- PDF:
	- CDF:
- The normal distribution
	- Normal Rule: $68/95/99.7\%$ within $1/2/3 \sigma$
	- Normal approximations (e.g. to binomial)

## Numerical Analysis
- Newton's Method
- Euler's Method
- Quadrature

## Other Useful Tricks
- Commuting differentials and integrals:
	$$\frac{d}{dx} \int_{a(x)}^{b(x)} f(x,t) dt = f(x, b(x))\frac{d}{dx}b(x) - f(x, a(x))\frac{d}{dx}a(x) + \int_{a(x)}^{b(x)} \frac{\partial}{\partial x} f(x, t) dt$$
	- Need $f, f'$ to be continuous in both $x$ and $t$. Also need $a(x),b(x) \in C_1$.
	- If $a,b$ are constant, boundary terms vanish.
	- Recover the fundamental theorem with $a(x) = a, b(x) = b, f(x,t) = f(t)$.

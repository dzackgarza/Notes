

# Fundamentals
@import "Topics/Fundamentals.md"

---

# Single Variable Calculus
@import "Topics/Calculus.md"

---

# Multivariable Calculus
@import "Topics/Multivariable Calculus.md"

# Geometry in $\RR^3$
@import "Topics/Geometry in Three Space.md"

# Vector Calculus
@import "Topics/Vector Calculus"

---

# Ordinary Differential Equations
@import "Topics/Differential Equations.md"

---

# Linear Algebra
@import "Topics/Linear Algebra.md"

---

# Complex Analysis
@import "Topics/Complex Analysis.md"

---

# Real Analysis
@import "Topics/Real Analysis.md"

---

# Topology

# Number Theory

# Abstract Algebra
@import "Topics/Algebra.md"

# Combinatorics
- Common series: see appendix
- Other useful series and facts

# Probability
- Mean / Expected Value: $$E[X] = \int x P(X = x) = \int x f_X(x)$$
	- Linearity of expectation:
		$$E[\sum a_i X_i] = \sum a_i E[X_i]$$
		Does not matter whether or not the $X_i$ are independent.
- Variance: $$\mathrm{Var}(X) = \int (x - E[X])^2$$
- Standard deviation: $$\sigma(X) = \mathrm{Var}(X)^{1/2}$$


# Numerical Analysis
- Euler's Method:
	- To solve $\frac{dy}{dx} = f(x,y), y(x_0) = y_0$, choose a step size $\varepsilon$, and let $x_{n+1} = x_0 + n\varepsilon$. Then $$y_{n+1} = y_n + \varepsilon f(x_n, y_n)$$
- Decompositions of Matrices:
	- $LU$
	- Cholesky
	- Singular Value

# Appendix
@import "Topics/Appendix.md"

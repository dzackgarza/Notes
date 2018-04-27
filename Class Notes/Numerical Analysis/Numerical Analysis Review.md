---
typora-copy-images-to:  .
---

# Numerical Analysis Review

## Chapter 1: Error Analysis

- Taylor Expansion:
  $$f(x\pm h) = f(x) +hf'(x) + \frac{1}{2}h^2f''(x) + \cdots = \sum \frac{1}{k!}h^kf^{(k)}(x)$$
- Mean Value Theorem
  - $f\in C^1([a,b])$ implies $\exists c \in (a,b)$ such that $(b-a)f'(c) = f(b) - f(a).$
- Rolle's Theorem
  - $f\in C^1([a,b])$ and $f(a) = f(b)$ implies $\exists c\in(a,b)$ such that $f'(c) = 0$.
  - Just apply mean value theorem, so $f(b) - f(a) = 0.$
- Extreme values: occur at boundaries or where $f' = 0$.
- $f \in C^n([a,b])$ implies $\exists \xi(x)$ such that $f(x) = P_n(x) + \frac{f^{n+1}(\xi(x))(x-x_0)^{n+1}}{(n+1)!}$, where $P_n$ is the $n$-th order Taylor expansion of $f$ about $x_0$, i.e. $P_n(x) = \sum \frac{1}{k!}f^k(x_0)(x-x_0)^{k}$.
- For any operation $\star$, in floating point we have $x\star y = fl(fl(x) \star fl(y))$.
- Magnifying error:
  - Subtracting nearly equal numbers results in small absolute error, but large relative error
  - Adding a large number to a small number results in large absolute error, but small relative error
  - Multiplying by big numbers or dividing by small numbers magnifies absolute error.
  - Can rationalize the quadratic formula to avoid near-equal subtractions
  - Always express polynomials in nested form before evaluating
- Convergence: if $\theset{a_i} \rightarrow a$ and there is a sequence $\theset{b_i} \rightarrow 0$ and a constant $K$ such that $\abs{a_i- a} \leq K \abs{b_i}$, then the order of convergence is $O(b_i)$. Usually, just take $b_i = 1/i^k$ for some $k$.

## Chapter 2: Equations in 1 Variable

- Bisection Method: Given $f\in C^0([a,b])$ and $f(a), f(b)$ of differing signs, want to find a root.
  - Set $a_1 = a, b_1 = b, p_1 \definedas ~(1/2)(a_1+b_1)$, and evaluate $f(p_1)$
  - If zero (or $\abs{f(p_1)} < \varepsilon$), done. Otherwise, look at the sign of $f(p_1)$:
    - If equal to sign of $f(a_1)$, repeat search on interval $[p_1, b_1]$
    - Else search $[a_1, p_1]$.
  - For an actual root $p$, we have $\abs{p_i - p} < \frac{b-a}{2^i}$.
- Fixed point iteration: at least one for every $g\in C^1([a,b])$, at most one if $\abs{g'} < 1$. To find roots of a function $f$, just let $g = f(x) - x$ and find a fixed point of $g$. Easy, since $\theset{\circ_i g(p_0)}_{i=1}^\infty \rightarrow p=g(p)$ linearly for any choice of $p_0 \in [a,b]$.
- **Newton's Method:**
  - $p_i = p_{i-1} - \frac{f(p_{i-1})}{f'(p_{i-1})}$. Stop when $\abs{f(p_i)} < \varepsilon$
  - This is just the $x$ intercept of the tangent line at $p_{i-1}$.
  - Converges quadratically.
- **Secant Method:**
  - Newton's method, but replace $f'(p_i) = \frac{f(p_{i-1}) - f(p_{i-2})}{p_{i-1} - p_{i-2}}$.
  - This gives the $x$ intercept of the line joining $(p_{i-1}, f(p_{i-1}))$ and $(p_{i-2}, f(p_{i-2}))$.
- **Method of False Position:**
  - Secant method, but always bracket a root.
  - If the signs of $f(p_{i-1})$ and $f(p_{i-2})$, proceed as usual
  - Else, chose $p_i$ as the $x$ intercept involving $p_{i-3}$ and $p_{i-1}$, then relabel $p_{i-2} \definedas p_{i-3}$ and continue.
- Order of convergence: if $\lim_{n\rightarrow\infty} \abs{\frac{p_{n+1} - p}{(p_n - p)^k}} = \lambda$, then $\theset{p_n}$ converges to $p$ with order $k$ and asymptotic error constant $\lambda$.
  - E.g., $k=1$ is linear convergence and $k=2$ is quadratic.
- Fixed-point convergence can be linear if $g'(p) = 0$, $g''$ is bounded, and the initial guess is $\delta-$close to the actual solution.
- Zeros of order $m$ occur where $f^{(k)}(x) = 0$ and $f^{(m)}(x) \neq 0$ for $k < m$.

## Chapter 3: Interpolation and Polynomial Approximation

- Lagrange polynomial:

  - $$L_{n,k}(x) = \prod_{i=0, i\neq k}^n \frac{x-x_i}{x_k - x_i}$$.
  - Can then express $$P_n(x) = \sum_{k=0}^n f(x_k)L_{n,k}(x)$$ for a set of $n+1$ nodes $\theset{x_i}_{i=0}^n$.
  - Error: $f(x) = P_n(x) + \frac{1}{(n+1)!}f^{(n+1)}(\xi(x))\prod_{i=0}^n(x-x_i)$.

- Divided differences:

  ![1513038075145](1513038075145.png)

  - Can use this to make an interpolating polynomial: use the top diagonal as coefficients
    Then $$P_n(x) = f[x_0] + \sum_{i=1}^n f[x_0 \cdots x_n]\prod_{k=0}^i (x-x_i)$$
  - I.e. $P_n(x) = f[x_0] + f[x_0 x_1](x-x_0) + f[x_0 x_1 x_2](x-x_0)(x-x_1) + \cdots$

- Hermite polynomial:

  - Just take $x_i$ and defined $z_{2i} = z_{2i+1} = x_i$, and replace differences having zero denominators with derivative.

- Cubic Spline, satisfies

  - Spline agrees with $f$ at all $n$ points
  - First derivative agrees with $f'$ at all $n-2$ interior points
  - Second derivative agrees with $f''$ at all $n-2$ interior points
  - Boundary conditions:
    - 2nd derivative equals zero at 2 endpoints, or
    - First derivative agrees with $f'$ at 2 endpoints

- Counting degrees of freedom

## Chapter 4: Numerical differentiation/integration

- Differentiation
  - $f''(x) \approx \frac{1}{h^2}(f(x-h) - 2f(x) + f(x+h))$

- **Richardson's Extrapolation:**

  - Combine $O(h)$ approximations into $O(h^2)$ or better.
  - Let $M = N_1(h) + \sum K_i h^i$
  - Then $M = N_1(h/2) + \sum Kh^i2^{-i}$. Multiply by 2, add -1 times first equation to cancel $K_1$ term.
  - So let $N_2(h) = 2N_1(h/2) - N_1(h) $

- **Midpoint rule:**
  - $$\int_a^b f \approx (b-a)f\pfrac{a+b}{2}$$

- **Trapezoidal Rule:**
  - $$\int_a^b f \approx \frac{h}{2} (f(a) + f(b)) + O(h^3)$$.
  - Can derive by integrating 1st Lagrange interpolating polynomial.

- **Simpson's Rule:**
  - $$\int_a^b f \approx \frac{b-a}{6}\left(f(a) + 4f(\frac{a+b}{2}) + f(b)\right) + O(h^5)$$
  - Can derive by integrating 2nd Lagrange polynomial

- Composite: break up into piecewise approximations
  - **Composite trapezoidal rule:**

    - Take nodes $a=x_0 < \cdots < x_n = b$
    - $$ \int_a^b f \approx \sum_{k=1}^n \frac{h}{2}(f(x_{k-1}) + f(x_k)) = \frac{h}{2}\left(f(x_0) + f(x_n) + 2\sum_{i=1}^{n-1}f(x_i)\right)$$

  - **Composite Simpson's Rule:**
    - $$\int_a^b f \approx \frac{h}{3}\left(f(x_0) + 2\sum_{i ~\text{even}}f(x_i) + 4\sum_{i ~\text{odd}}f(x_i) + f(x_n)\right)$$

    ​

## Chapter 5: ODEs

General setup: we are given $y'(t) = f(t,y)​$ and $y(t_0) = y_0​$.

- **Trapezoidal Method:**
  - $$y_{k+1} = y_k + \pfrac{h}{2}\quantity{f(t_k, y_k) + f(t_{k+1}, y_{k+1})}$$
- **Midpoint Method:**
  - $\tilde y_{k+1} = y_k + \frac{h}{2}f(t_k, y_k)$
- **Euler's Method:**
  - Set $\omega_0 =y_0$, $t_i = y_0 + ih$.
  - Let $w_{i+1} = w_i + hf(t_i, w_i)$
- **Modified Euler's Method:**
  - Predictor/Corrector with Euler's Method / Trapezoidal Rule
  - Let $w_0 = y_0$
  - Let $\tilde w_{i+1} = w_i + hf(t_i, w_i)$
  - Let $w_{i+1} = \frac{h}{2}(f(t_i, w_i) + f(t_{i+1}, \tilde w_{i+1}))$
- Predictor-Corrector
  - Just do the same sort of thing that's going on in modified Euler's method above - use any explicit method to get an estimate $\tilde w_{i+1}$, and substitute that in to any implicit method for a better estimate.
- Linear Systems of ODEs
  - Just do everything by components, it works out.

## Chapter 6: Linear Systems

- The number of flops for Gaussian elimination is $O(n^3)$
- $LU$ factorization is $O(n^2)$
  - Howto: Given a matrix $A$, eliminate entries below the diagonal
  - Only use operations of the form $R_i \leftarrow R_i - \alpha R_j$, then $L_{ij} = \alpha$
- $PLU$ factorization: keep track of permutation matrices
  - Start with $I$, whenever an operation $R_i \leftrightarrow R_j$ is done on $A$, do this on $I$ as well.
- Partial Pivoting: Always swap rows so that largest magnitude element is in pivot position
- Forward and backward substitution for solving $Ax = b$:
  - Given $A = LU$, first solve $Ly = b$ for $y$ using forward-substitution.
  - Then solve $Ux = y$ for $x$ using backward-substitution

## Chapter 7: Matrix Techniques

- Spectral radius $\rho(A) = \max{\theset{\abs{\lambda_i}}}$
- Jacobi Method: an iterative way to $x$ for $Ax= b$.
  - Write $A = D + R$ where $D$ is the diagonal of $A$, and so the diagonal of $R$ is all zeros.
  - $$x_{k} = D^{-1}(b-Rx_{k-1}) = \frac{1}{a_{ii}}(b_i - \sum_{j=1, j\neq i}^n a_{ij}(x_{k-1})_j)$$.
  - Possibly easier to write $R = L + U$, then $x_i = D^{-1}b -D^{-1}(L+U)x_ {i-1}$
  - Define the iteration matrix $T = D^{-1}R$.
  - Converges when $\rho(A) < 1$
- Gauss-Seidel Method: another iterative method
  - Write $A = D + L + U$
  - $x_i = (D+L)^{-1}(b-Ux_{i-1})$
  - Iteration matrix $T = -(D+L^{-1})U$.

## Chapter 8: Discrete Least Squares

- Normal equations

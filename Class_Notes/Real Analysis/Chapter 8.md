Sections covered:
- 8.1, 8.2, 8.3, 8.4, 8.5
- 8.6, 8.7

# 8.1: Taylor Polynomials

From Calculus, we know $\dd{^n}{x^n}(x-c)^n = n!$, and that if $k> n$, then $\dd{^n}{x^k}(x-c)^k = 0$. (This can be proved by induction.)

We can use this fact to write the $n\dash$th order Taylor approximation of a function $f: I \to \RR$ at a point $c$ as

$$
T_n(x, c) = f(c) + \dd{f}{x}(c)(x-c) + \frac{1}{2}\dd{^2f}{x^2}(c)(x-c)^2 + \cdots \frac{1}{n!} \dd{^nf}{x^n}(c)(x-c)^n,
$$

which we express compactly as $T_n(x, c) = \sum_{k=1}^n \frac{1}{k!}f^{(k)}(c)(x-c)^n$.

This function is the unique polynomial of order $n$ that satisfies $\dd{^k}{x^k}f(c) = \dd{^k}{x^k}T(c, c)$ for all $k\leq n$, and is referred to as the *$n\dash$th order Taylor polynomial of $f$ at the point $c$*. If $n$ is taken to infinity, then the resulting function is denoted *the Taylor series of $f$ at the point $c$* and will just be written $T(x, c)$, omitting the subscript.

The book abbreviates $T_n(x, c)$ as $p_n(x)$. Also recall from Calculus that if $c=0$, then $T(x, 0)$ is referred to as the *Maclaurin series* of $f$.

Some useful Taylor polynomials to recall:

- $f(x) = e^x, c = 0 \implies p_n(x) = 1 +x + \frac{1}{2} x^2 + \frac{1}{6}x^3 + \cdots + \frac{1}{n!} x^n$.
- $f(x) = \ln(1+x), c = 0 \implies p_n(x) = x - \frac {x^2} 2 + \frac{1}{3} x^3 - \cdots \frac{(-1)^n}{n} x^n$
- $f(x) = \cos x, c = 0 \implies p_{2n}(x) = 1 - \frac{1}{2} x^2 + \frac{1}{24}x^4 - \cdots + \frac{(-1)^n}{(2n)!} x^{2n}$
- $f(x) = \sqrt x, c = 1 \implies p_3(x) = 1 + \frac 1 2 (x-1) - \frac 1 8 (x-1)^2 + \frac{1}{16} (x-1)^3$

Note that in nice enough cases (like everything seen here), we can differentiate and integrate these series term by term. We can also use clever algebraic manipulations to get new series from known ones.

For example, recall that the geometric series $\sum x^k = \frac 1 {1-x}$ provided $\abs x < 1$, which can be derived by writing the Taylor series for $f(x) = \frac{1}{1-x}$ at the point $c=0$.

If $f\in C^\infty(I)$, then one can ask if $p_n(x) \to f(x)$ pointwise. This is essentially the definition of $f$ being a *real analytic* function, and will hold for polynomials, exponentials, trig functions. However, not every function will have a Taylor series that converges at every point.

We can measure the error by defining *the $n\dash$th remainder*,
$$
R_n(x) = f(x) - p_n(x),
$$

and thus the above condition is equivalent to $R_n(x) \to 0$.

As it turns out, we can derive an explicit expression for what this remainder actually is in terms of $f$.

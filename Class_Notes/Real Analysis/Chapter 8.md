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

This function is the unique polynomial of order $n$ that satisfies $\dd{^k}{x^k}f(c) = \dd{^k}{x^k}T(c, c)$ for all $k\leq n$, and is referred to as the *$n\dash$ order Taylor polynomial of $f$ at $c$.
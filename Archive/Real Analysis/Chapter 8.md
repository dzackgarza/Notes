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

- $f(x) = e^x$ at $c = 0 \implies p_n(x) = 1 +x + \frac{1}{2} x^2 + \frac{1}{6}x^3 + \cdots + \frac{1}{n!} x^n$.
- $f(x) = \ln(1+x)$ at $c = 0 \implies p_n(x) = x - \frac {x^2} 2 + \frac{1}{3} x^3 - \cdots \frac{(-1)^n}{n} x^n$
- $f(x) = \cos x$ at $c = 0 \implies p_{2n}(x) = 1 - \frac{1}{2} x^2 + \frac{1}{24}x^4 - \cdots + \frac{(-1)^n}{(2n)!} x^{2n}$
- $f(x) = \sqrt x$ at $c = 1 \implies p_3(x) = 1 + \frac 1 2 (x-1) - \frac 1 8 (x-1)^2 + \frac{1}{16} (x-1)^3$

Note that in nice enough cases (like everything seen here), we can differentiate and integrate these series term by term. We can also use clever algebraic manipulations to get new series from known ones.

For example, recall the geometric series $$\sum_{k=0}^\infty x^k = \frac 1 {1-x},$$ which converges provided $\abs x < 1$. This can be derived by writing the Taylor series for $f(x) = \frac{1}{1-x}$ at the point $c=0$. 

By making the substitution $x = 1-x$, we find that that $$\frac 1 x = \sum(1-x)^k = \sum (-1)^k(x-1)^k,$$ which is thus the Taylor series for $f(x) = \frac 1 x$ at $c=1$.

We can instead integrate both sides to obtain $$\sum_{k=0}^\infty \frac 1 {k+1} x^{k+1} = -\ln(1-x),$$ and again substitute $x=1-x$ to obtain $$\ln(x) = -\sum \frac 1 {k+1}(x-1)^{k+1},$$ the Taylor series for $f(x) = \ln(x)$ at $c=1$.

If $f\in C^\infty(I)$, then one can ask if $p_n(x) \to f(x)$ pointwise. This is essentially the definition of $f$ being a *real analytic* function, and will hold for polynomials, exponentials, trig functions, and other common functions from Calculus. However, although we can always write *some* Taylor series for a function, **not every function will have a Taylor series that converges to it at every point.**

If we take only finitely many terms of the full Taylor series as an approximation to $f$, we can measure the error by defining *the $n\dash$th remainder*,
$$
R_n(x) = f(x) - p_n(x),
$$

and therefore a Taylor series converging to $f$ at a point $p$ is equivalent to $R_n(p) \to 0$. 

## Error in Approximation
In general, one may wonder just how large the error $R_n(x)$ is in some interval, how fast it goes to zero as $n$ is increased, or how many terms one needs to take so the the error is sufficiently small (e.g. less than the precision of a floating point number).

As it turns out, we can derive an explicit expression for what this remainder actually is in terms of $f$. We also get a theorem that tells us that $\frac{R_n(x)}{\abs{x-c}^n} \to 0$, i.e. the error in the Taylor approximations will go to zero faster than any $n\dash$th degree polynomial in $x-c$.

Explicitly, we have
$$
R_n(x)  = \int_c^x \frac{1}{n!} \dd{^n f}{x^n}(t) (x-t)^n ~dt,
$$

and by applying the Mean Value Theorem, we can obtain

$$
\exists \xi \in (x, c) \suchthat R_n(x) = \frac{1}{(n+1)!}\dd{^nf}{x^n}(\xi) (x-c)^{n+1}.
$$

In general, we have
> **The Lagrange Remainder Theorem**
> If $f$ is $n$ times differentiable on a neighborhood of a point $p$, say $N_\delta(p)$, then for all points $x$ in the deleted neighborhood $N_\delta(p) - \theset{p}$ , there exists a point $\xi$ strictly between $x$ and $p$ such that
$$
x \in N_\delta(p)-\theset{p} \implies f(x) = \sum_{k=0}^{n-1} \frac{f^{(k)}(p)}{k!}(x-p)^k + \frac{f^{(n)}(\xi)}{n!}(x-p)^n
$$

This can also be formulated using an integral for the remainder term
> **Cauchy's Remainder Theorem**
> If $f$ is $n$ times differentiable on a neighborhood of a point $p$, say $N_\delta(p)$, then for all points $x$ in the deleted neighborhood $N_\delta(p) - \theset{p}$ , there exists a point $\xi$ strictly between $x$ and $p$ such that
$$
x \in N_\delta(p)-\theset{p} \implies f(x) = \sum_{k=0}^{n-1} \frac{f^{(k)}(p)}{k!}(x-p)^k + \int_c^x \frac{1}{n!} \dd{^n f}{x^n}(t) (x-t)^n ~dt
$$

## Convergence
Remainder theorems are especially helpful if we can find some $M$ such that for every $\xi \in (x,c)$, we have $f^{(n)}(\xi) \leq M$, so that the $n$th derivative of $f$ is bounded by $M$. This immediately translates to a uniform bound on the error of any given Taylor approximation using the above expressions for the remainder term.

*Note that the book weakens this hypothesis to $f^{(n)}(\xi) \leq M^n$, where the bound is allowed to depend on $n$ and is thus not uniform.*

Note that the book describes this in a slightly different way -- for the statement of Lagrange's theorem, they write $f(x) = p_n(x) + R_n(x)$, and simply substitute the above expression in for $R_n(x)$. 

This is most often used in the following form:
$$
\exists \xi \suchthat \abs{f(x) - p_n(x)} = \frac{1}{(n+1)!}f^{(n+1)}(\xi)\abs{x-c}^{n+1}
$$

Note that if we have the $M^n$ bound from above, this allows us to write
$$
\frac{1}{(n+1)!}f^{(n+1)}(\xi)\abs{x-c}^{n+1} \leq \frac{1}{(n+1)!}M^n\abs{x-c}^{n+1} = c_n,
$$

which is just some constant that only depends on $n$. We generally look for a nice enough $M^n$ so that $c_n \to 0$, which means the remainder goes to zero and thus the Taylor series for $f$ will indeed converge to $f$ in the limit.

We can state this as a theorem which provides a sufficient condition for convergence:

> **Theorem:** A Sufficient Condition for Convergence of a Taylor Series
Given a point $c$ and some $\varepsilon>0$, if $f \in C^\infty(I)$ and there exists an $M$ such that 
$$
x \in N_\varepsilon(c) \implies \abs{f^{(n)}(x)} \leq M^n
$$
then the Taylor expansion about $c$ converges on $N_\varepsilon(c)$.

In other words, this condition mostly just requires that each of the derivatives of $f$ is bounded and that they don't "grow too fast" as $n$ increases.



---
title: Baby Real Analysis Notes
description: UCSD Math 142B, Spring 2018
date: 2021-04-28 18:19:40
tags: 
  - Unfiled
---

[Real Analysis](../Subjects/Real%20Analysis.md)

#real_analysis #undergraduate

# Problems
Textbook Used: Fitzpatrick

- 8.1, 8.2, 8.3, 8.4, 8.5
- 8.6, 8.7, 9.1
- 9.1, 9.2, 9.3
- 9.4, 9.5

# Chapter 6
Sections Covered: 6.1-6.6, 7.2

> Important Inequality!!
This is more or less the workhorse of most integrability problems:
$$
\sum_i^n m_i (x_i - x_{i-1}) \leq L(f, P) \leq \underline{\int_a^b }f(x)~dx \leq \int_a^b f(x) ~dx \leq \overline{\int_a^b}  f(x)~dx \leq  U(f, P) \leq \sum_i^n M_i (x_i - x_{i-1})
$$
> Note that $\sum_{i=1}^n (x_i - x_{i-1}) = (b-a)$ by cancellation.

---

# 6.1: Darboux Sum, Upper and Lower Integrals

- Define integrability
- Show that a cts function on a compact interval is integrable
- Prove the two FTCs:
$$
\int_a^b \dd{}{x} F(x) ~dx = F(b) - F(a) \\
\dd{}{x} \int_a^x f(x) ~dx = f(x) 
$$

Review bounded.

Review Dirichlet function.

Definition: Partition
> Given an interval $I = [a,b]$, a **partition of $I$** is an ordered set $P = \theset{x_0, x_1, \ldots, x_n}$ of finitely many points where $a\leq x_0 \leq x_1 \leq \cdots \leq x_n \leq b$.

For each $i$, we can look at the values $f$ takes on within the interval $[x_i, x_{i+1}]$; in particular, we can consider $\sup\theset{f(x) \suchthat x\in[x_i, x_{i+1}]}$ (as well as the infimum).

> Aside: one very useful partition is $x_i \definedas a + \frac{i}{n}b$ where $0\leq i \leq n$.


Define regular partition. 
Define tagged partition. 
Define refinement of a partition.


Show that refinement is monotone.

Define $m_i, M_i$.
$$
\begin{aligned} 
M _ { i } = & \sup _ { x \in \left[ x _ { i - 1 } , x _ { i } \right] } f ( x ) \\ 
m _ { i } = & \inf _ { x \in \left[ x _ { i - 1 } , x _ { i } \right] } f ( x ) \end{aligned}
$$

Define the **Darboux Sums**, $L(f, P),~U(f,P)$:
$$
U(f, P) = \sum_{i=1}^n (x_i - x_{i-1})~M_i = \sum_{i=1}^n  (x_i - x_{i-1}) ~\sup\theset{~f ( x ) \mid x \in [x_{i-1}, x_{i}]~}  \\
L(f, P) = \sum_{i=1}^n (x_i - x_{i-1})~m_i = \sum_{i=1}^n(x_i - x_{i-1}) ~\inf\theset{~f ( x ) \mid x \in [x_{i-1}, x_{i}]~}
$$

Note that since $\inf f \leq \sup f$, we always have $L(f,P) \leq U(f, p)$.



Definition: **Upper and Lower Integrals.**
$$
\overline {\int_a^b} f(x) ~dx = \inf\theset{~ U(f, P) \mid P ~\text{is a partition of }~ [a,b]} \\
\underline {\int_a^b} f(x) ~dx = \sup\theset{~ L(f, P) \mid P ~\text{is a partition of }~ [a,b]} 
$$

Note that it's the infimum of the upper sums and supremum of the lower sums; it is easy to mix these up.

Show 
$$
\underline {\int_a^b} f(x) ~dx \leq \overline {\int_a^b} f(x) ~dx.
$$

# 6.2: Integrability

Definition: **Integrability**
$$
f \text{ integrable } \iff \underline{\int_a^b} f(x)~dx = \overline{\int_a^b}f ~dx
$$

"Archimedes-Riemann Theorem":
$$
\forall \varepsilon,~\exists P(\varepsilon) \text{ s.t. } \quad U(f, P(\varepsilon)) - L(f, P(\varepsilon)) \leq \varepsilon
$$


**Claim**: There are functions that are not integrable.

Take
$$
f ( x ) = \left\{ \begin{array} { l l } { 0 , } & { \text { if } x \in \QQ } \\ { 1 , } & { \text{ else } } \end{array} \right.
$$

<details markdown="1">
<summary>Proof</summary>

Let $\varepsilon < \min \theset{1, b-a}$ be fixed. Then let $P(\varepsilon) = \theset{x_0, x_1, \cdots x_n}$ be an arbitrary partition. Note that $[x_{i-1}, x_i]$ is a closed real interval, so it contains at least one rational number $p$, and at least one irrational number $q$. Thus 
$$
\inf \theset{f(x) \mid x \in [x_{i-1}, x_i]} \leq f(p) = 0 \implies m_i \leq 0 \\
\text{and} \\ 
\sup \theset{f(x) \mid x \in [x_{i-1}, x_i]} \geq f(q) = 1 \implies M_i \geq 1.
$$

But this holds for each $i$, so we have
$$
\begin{align*}
U(f, P(\varepsilon)) - L(f, P(\varepsilon)) &= \left( \sum_{i=1}^n (x_i - x_{i-1})M_i  \right) - \left( \sum_{i=1}^n (x_i - x_{i-1})m_i  \right) \\
&\geq \left( \sum_{i=1}^n (x_i - x_{i-1})1  \right) - \left( \sum_{i=1}^n (x_i - x_{i-1})0  \right) \\
&= \left( \sum_{i=1}^n (x_i - x_{i-1})  \right) \\
&= b-a \\
&\geq \varepsilon
\end{align*}
$$

Since $P(\varepsilon)$ was an arbitrary, this holds for any partition, and thus $f$ is not integrable. $\qed$
</details>

Show that a monotonically increasing function is integrable.

Show that step functions are integrable.

How to show a function is not integrable:

# 6.3: Properties of Integrals

Show ability to split integral at intermediate point (additivity).

Show monotonicity.

# 6.4: Interactions Between Continuity and Integrability

Theorem: $f$ continuous on a closed/bounded set $\implies f$ integrable.

Theorem: If $f$ is continuous on $(a,b)$ and just *bounded* on $[a,b]$, it is still integrable, and its integrability does not depend on the values $f(a)$ or $f(b)$.

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

**The Lagrange Remainder Theorem**
If $f$ is $n$ times differentiable on a neighborhood of a point $p$, say $N_\delta(p)$, then for all points $x$ in the deleted neighborhood $N_\delta(p) - \theset{p}$ , there exists a point $\xi$ strictly between $x$ and $p$ such that
$$
x \in N_\delta(p)-\theset{p} \implies f(x) = \sum_{k=0}^{n-1} \frac{f^{(k)}(p)}{k!}(x-p)^k + \frac{f^{(n)}(\xi)}{n!}(x-p)^n
$$

This can also be formulated using an integral for the remainder term

**Cauchy's Remainder Theorem**
If $f$ is $n$ times differentiable on a neighborhood of a point $p$, say $N_\delta(p)$, then for all points $x$ in the deleted neighborhood $N_\delta(p) - \theset{p}$ , there exists a point $\xi$ strictly between $x$ and $p$ such that
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

**Theorem:** 
A Sufficient Condition for Convergence of a Taylor Series
Given a point $c$ and some $\varepsilon>0$, if $f \in C^\infty(I)$ and there exists an $M$ such that 
$$
x \in N_\varepsilon(c) \implies \abs{f^{(n)}(x)} \leq M^n
$$
then the Taylor expansion about $c$ converges on $N_\varepsilon(c)$.

In other words, this condition mostly just requires that each of the derivatives of $f$ is bounded and that they don't "grow too fast" as $n$ increases.

# Big List of Counterexamples

## Variations of the Dirichlet Function
Consider all integrals to be over a compact interval $[a, b]$ with $0 \leq a < b$.

Questions to ask:
- Where is/isn't $f$ continuous?
- Where is/isn't $f$ differentiable?
- Is $f$ Riemann integrable?

### The Dirichlet function
$$
f ( x ) = b + (a-b)~\indicator{x\in \QQ} = \begin{cases}
a, & x\in \QQ \\
b, & \text{else}
\end{cases}
$$
(usually take $a=1, b=0$)

- Continuous nowhere
- Discontinuous everywhere
- Not integrable
- Differentiable nowhere

### Dirichlet with a Continuous Point
$$
f ( x ) = x~\indicator{\QQ} = \begin{cases}
x, & x\in \QQ \\
0, & \text{else}
\end{cases}
$$

- Continuous at 0
- Discontinuous at $\RR-\theset{0}$
- Not integrable
  - $U(f) > \frac 1 4$ but $L(f) = 0$.
- Differentiable nowhere

### Dirichlet with a Differentiable Point
$$
f ( x ) = x^2~\indicator{\QQ} = \begin{cases}
x^2, & x\in \QQ \\
0, & \text{else}
\end{cases}
$$

- Continuous at 0
- Discontinuous at $\RR-\theset{0}$
- Not integrable
- Differentiable at 0 

### Dirichlet with Two Functions
$$
f ( x ) = x~\indicator{\QQ} + (-x)\indicator{\RR-\QQ} = \begin{cases}
x, & x\in \QQ \\
-x, & \text{else}
\end{cases}
$$

- Continuous at 0
- Discontinuous at $\RR-\theset{0}$
- Not integrable
    <details markdown="1">
    <summary>Proof</summary>
    Restrict attention to $[\frac 1 2, 1]$
    $$\begin{align*}
    \overline{\int_0^1} f &= \inf \theset{ \sum \sup f(x) (x_i - x_{i-1}) } \\
    \sup f(x) = x_i \implies \sum \sup f(x) (x_i - x_{i-1}) &= \sum x_i (x_i - x_{i-1}) \\
    &> \sum \frac 1 2 (x_i - x_{i-1}) \\
    &= \frac 1 2 \left(\frac 1 2\right) = \frac 1 4 \\
    \implies \overline{\int_0^1} f &\geq \frac 1 4
    \end{align*}
    $$
    and 
    $$\begin{align*}
    \underline{\int_0^1} f &= \sup \theset{ \sum \inf f(x) (x_i - x_{i-1})} \\
    \inf f(x) = -x_i \implies \sum \inf f(x) (x_i - x_{i-1}) &= \sum -x_i (x_i - x_{i-1}) \\
    &< -\sum \frac 1 2 (x_i - x_{i-1}) \\
    &= -\frac 1 2 \left( \frac 1 2 \right) = -\frac 1 4 \\
    \implies \underline{\int_0^1} f &\leq -\frac 1 4
    \end{align*}
    $$
    So we have $\underline{\int_0^1} f \lneq 0 \lneq \overline{\int_0^1} f$.
    </details>
- Differentiable nowhere.

## The Thomae function:
$$
f ( x ) = \begin{cases}
\frac 1 q, & x = \frac p q \in \QQ,~(p,q) = 1 \\
0, & \text{else}
\end{cases}
$$

- Continuous on $\RR-\QQ$
- Discontinuous on $\QQ$
- Integrable with $\int_a^b f = 0$
- Differentiable nowhere

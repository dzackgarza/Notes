---
title: "Discussion Notes"
---

# Discussion 1

If $X$ is an $F_\sigma$ set, then
$$
X = \union_{i=1}^\infty F_i \quad \text{with each $F_i$ closed.}
$$

If $X$ is a $G_\delta$ set, then
$$
X = \intersect_{i=1}^\infty G_i \quad \text{with each $G_i$ open.}
$$

A set $A$ is *nowhere dense* iff $(\overline{A})^\circ = \emptyset$ iff for any interval $I$, there exists a subinterval $S$ such that $S \intersect A = \emptyset$. This is a set that is not dense in any nonempty open set. If the closure of a subset of $\RR$ contains no open intervals, it will be nowhere dense.

A set $A$ is *meager* or *first category* if it can be written as
$$
A = \union_{i\in \NN} A_i\quad \text{with each $A_i$ nowhere dense}
$$

A set $A$ is *null* if for any $\varepsilon$, there exists a cover of $A$ by countably many intervals of total length less than $\varepsilon$, i.e. there exists $\theset{I_k}_{j\in\NN}$ such that $A\subseteq \union_{j\in \NN} I_j$ and $\sum_{j\in \NN}\mu(I_j) < \varepsilon$. If $A$ is null, we say $\mu(A) = 0$.

Some facts:

- If $f_n \to f$ and each $f_n$ is continuous, then $D_f$ is meager.
- If $f \in \mathcal{R}(a, b)$ and $f$ is bounded, then $D_f$ is null.
- If $f$ is monotone, then $D_f$ is countable.
- If $f$ is monotone and differentiable on $(a,b)$, then $D_f$ is null.

We define the *oscillation of $f$* as
$$
\omega_f(x) \coloneqq \lim_{\delta \to 0^+} \sup_{y,z \in B_\delta(x)} \abs{f(y) - f(z)}
$$

## Uniform Convergence

We say that $f_n \to f$ *converges uniformly on $A$* if $\norm{f_n - f}_\infty = \sup_{x\in A}\abs{f_n(x) - f(x)} \to 0$. (Note that this defines a sequence of *numbers* in $\RR$.)

This means that one can find an $n$ large enough that that for every $x\in A$, we have $\abs{f_n(x) - f(x)} \leq \varepsilon$ for any $\varepsilon$.

- Showing uniform convergence: find some $M_n$, independent of $x$, such that $\abs{f_n(x) - f(x)} \leq M_n$ where $M_n \to 0$.
- Negating: Fix $\varepsilon$, let $n$ be arbitrary, and find a bad $x$ (which can depend on $n$) such that $\abs{f_n(x) - f(x)} \geq \varepsilon$.

Example: $\frac 1 {1 + nx} \to 0$ pointwise on $(0, \infty)$, which can be seen by fixing $x$ and taking $n \to \infty$. To see the convergence is not uniform, choose $x = \frac 1 n$ and $\varepsilon = \frac 1 2$. Then
$$
\sup_{x > 0} \abs{\frac 1 {1+nx} - 0} \geq \frac 1 2 \not\to 0.
$$

Here, the problem is at small scales -- note that the convergence *is* unform on $[a, \infty)$ for any $a > 0$. To see this, note that
$$
x > a \implies \frac 1 x < \frac 1 a \implies \abs{\frac 1 {1 + nx}} \leq \abs{\frac 1 {nx}} \leq \frac 1 {na} \to 0
$$
since $a$ is fixed.

## Uniformly Cauchy

Let $C^0( ( [a,b], \norm{\wait}_\infty))$ be the metric space of continuous functions of $[a,b]$, endowed with the metric
$$
d(f, g) = \norm{f - g}_\infty = \sup_{x\in [a,b]} \abs{f(x) - g(x)}
$$

This is a complete metric space, and
$$
f_n \to^U f \iff \forall\varepsilon \exists N \suchthat m \geq n \geq N \implies \abs{f_n(x) - f_m(x)} \leq\varepsilon \forall x\in X
$$

$\implies$: Use the triangle inequality.

$\impliedby$: Find a candidate limit $f$: first fix an $x$, so that each $f_n(x)$ is just a number. Now we can consider the sequence $\theset{f_n(x)}_{n\in\NN}$, which (by assumption) is a Cauchy sequence in $\RR$ and thus converges. So define $f(x) \coloneqq \lim_n f_n(x)$. Aside: we note that if $a_n < \varepsilon$ for all $n$ and $a_n \to a$, then $a\leq \varepsilon$.

So take $m\to \infty$, i.e.
$$
\abs{f_n(x) - f_m(x)} < \varepsilon \forall x \implies
\lim_{m \to \infty}
\abs{f_n(x) - f_m(x)} =
\abs{f_n(x) - f(x)} \leq \varepsilon \forall x \implies
f_n \to^U f.
$$

Note: $f_n \to^U f$ does not imply that $f_n' \to^U f'$.

Counterexample:
Let $f_n(x) = \frac 1 n \sin(n^2 x)$, which converges to $0$ uniformly, but $f_n'(x) = n\cos(n^2 x)$ does not even converge pointwise.

To make this work, the theorem is that if $f_n' \to^U g$ for some $g$ and for at least 1 point $x$ we have $f_n(x) \to f(x)$ , then $g = \lim f_n'$.

Exercise:
Let $f(x) = \sum_{n=1}^\infty \frac{nx^2}{n^3 + x^3}$.

Does it converge at all, say on $(0, \infty)$?

We can check pointwise convergence by fixing $x$, say $x=1$, and noting that
$$
x = 1 \implies \abs{\frac{nx^2}{n^3 + x^2}} \leq \abs{\frac n {n^3 + 1}} \leq \frac 1 {n^2} \coloneqq M_n,
$$

where $\sum M_n < \infty$. To see why it does not converge uniformly, we can let $x=n$. Then,
$$
x=n \implies \abs{\frac{nx^2}{ n^3 + x^2 }} = \frac{n^3}{2n^3} = \frac 1 2 \not\to 0,
$$

so there is a problem at large values of $x$.

However, if we restrict attention to $(0, b)$ for some fixed $b$, we have $x < b$ and so
$$
\abs{\frac{nx^2}{n^3 + x^2}} \leq
\frac{nb^2}{n^3 + b^2} \leq
b^2 \left( \frac{n}{n^3} \right) =
b^2 \frac 1 {n^2} \to 0.
$$

Note that this actually tells us that $f$ is *continuous* on $(0, \infty)$, since if we want continuity at a specific point $x$, we can take $b>x$. Since each term is a continuous function of $x$, and we have uniform convergence, the limit function is the uniform limit of continuous functions on this interval and thus also continuous here. Checking $x=0$ separately, we find that $f$ is in fact continuous on $[0, \infty)$.


## Series of Functions

Let $f_n$ be a function of $x$, then we say $\sum_{n=1}^\infty f_n$ converges uniformly to $S$ on $A$ iff the partial sums $s_n = f_1 + f_2 + \cdots$ converges to $S$ uniformly on $A$.

This equivalently requires that
$$
\forall\varepsilon \exists N \suchthat n\geq m \geq N \implies \abs{s_n - s_m} = \abs{\sum_{k=m}^n f_k(x)} \leq \varepsilon \quad \forall x\in A.
$$

> Showing uniform convergence of a series: **Always use the M-test**!!! I.e. if $\abs{f_n(x)} \leq M_n$, which doesn't depend on $x$, and $\sum M_n < \infty$, then $\sum f_n$ converges uniformly.


Example:
Let $f(x) = \sum \frac 1 {x^2 + n^2}$.

Does it converge at all? Fix $x\in \RR$, say $x=1$, then $\frac 1 {1+n^2} \leq \frac 1 {n^2}$ which is summable. So this converges pointwise. But since $x^2 > 0$, we generally have $\frac{1}{x^2 + n^2} \leq \frac{1}{n^2}$ for any $x$, so this actually converges uniformly.

### Negating Uniform Convergence for Series
???

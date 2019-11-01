---
title: "Assignment 6: The Fourier Transform"
---

# Problem 1

Assuming the hint, we have 

\[
\begin{align*}
\lim_{\abs \xi \to \infty} \hat f(\xi) = \lim_{\xi' \to 0} \frac 1 2 \int_{\RR^n} (f()) - f(x - \xi')) \exp(-2\pi i x \cdot \xi) ~dx \\
.\end{align*}
\]

But as an immediate consequence, this yields
\[
\begin{align*}
\abs{\hat f (\xi)} &= \abs{\int_{\RR^n} (f(x) - f(x-\xi')) \exp(-2\pi i x\cdot \xi) ~dx} \\
&\leq \int_{\RR^n} \abs{f(x) - f(x-\xi')} \abs{\exp(-2\pi i x\cdot \xi)} ~dx \\
&\leq \int_{\RR^n} \abs{f(x) - f(x-\xi')} ~dx \\
&\to 0
,\end{align*}
\]
which follows from continuity in $L^1$ since $f(x - \xi') \to f(x)$ as $\xi' \to 0$.

It thus only remains to show that the hint holds, and that $\xi' \to 0$ as $\xi \to \infty$.

# Problem 2

## Part (a)

Assuming an interchange of integrals is justified, we have
\[
\begin{align*}
\widehat(f\ast g)( \xi ) &\coloneqq \int \int f(x-y) g(y) \exp(-2\pi x \cdot \xi) ~dy~dx \\
&=_? \int \int f(x-y) g(y) \exp(-2\pi x \cdot \xi) ~dx~dy \\
&= \int \int f(t) \exp(-2\pi i (x-y) \cdot \xi) g(y) \exp(-2\pi i y \cdot \xi) ~dx ~dy \\
&\quad\quad (t = x-y, ~dt = ~dx) \\
&= \int \int f(t) \exp(-2\pi i t \cdot \xi) g(y) \exp(-2\pi i y \cdot \xi) ~dt~dy \\
&= \int f(t) \exp(-2\pi i t \cdot \xi) \left( \int g(y) \exp(-2\pi i y \cdot \xi) ~dy \right) ~dt \\
&= \int f(t) \exp(-2\pi i t \cdot \xi) \hat g(\xi) ~dt \\
&= \hat g(\xi) \int f(t) \exp(-2\pi i t \cdot \xi) ~dt \\
&= \hat g(\xi) \hat f(\xi) 
.\end{align*}
\]

It thus remains to show that this swap is justified.

## Part (b)

We'll use the following lemma: if $\hat f = \hat g$, then $f = g$ almost everywhere.

### (i)

By part 1, we have
$$
\widehat{f \ast g} = \hat f \hat g = \hat g \hat f = \widehat{g \ast f},
$$

and so by the lemma, $f\ast g = g\ast f$.

Similarly, we have
$$
\widehat{(f\ast g) \ast h} = \widehat{f\ast g} ~\hat h = \hat f ~\hat g ~\hat h = \hat f ~\widehat{g\ast h} = f\ast (g \ast h).
$$

### (ii)

Suppose that there exists some $I \in L^1$ such that $f\ast I = f$. 
Then $\widehat{f \ast I} = \hat f$ by the lemma, so $\hat f ~\hat I = \hat f$ by the above result.

But this says that $\hat f(\xi) \hat I(\xi) = \hat f(\xi)$ almost everywhere, and thus $\hat I(\xi) = 1$ almost everywhere.
Then $\lim_{\abs \xi \to \infty} \hat I (\xi) \neq 0$, which by Problem 1 shows that $I$ can not be in $L^1$, a contradiction.

# Problem 3

## (a)

### (i)

Let $g(x) = f(x-y)$. We then have
\[
\begin{align*}
\hat g(\xi) &\coloneqq \int g(x) \exp(-2\pi i x\cdot \xi) ~dx \\
&= \int f(x-y) \exp(-2\pi i x\cdot \xi) ~dx \\
&= \int f(x-y) \exp(-2\pi i (x-y) \cdot \xi) \exp(-2\pi i y\cdot \xi) ~dx \\ 
&= \exp(-2\pi i y \cdot \xi) \int f(x-y) \exp(-2\pi i (x-y) \cdot \xi) ~dx \\
&\quad\quad (t = x-y, dt = dx) \\
&= \exp(-2\pi i y \cdot \xi) \int f(t) \exp(-2\pi i t \cdot \xi) ~dt \\
&= \exp(-2\pi i y \cdot \xi) \hat f(\xi) 
.\end{align*}
\]

### (ii)

Let $h(x) = \exp(2\pi i x\ cdot y) f(x)$. We then have
\[
\begin{align*}
\hat h(\xi) &\coloneqq \int \exp(2\pi i x\cdot y) f(x) \exp(-2\pi i x \cdot \xi) ~dx \\ 
&= \int \exp(2\pi i x\cdot y - 2\pi i x \cdot \xi) f(x) ~dx \\ 
&= \int f(\xi -y) \exp(-2\pi i x \cdot (\xi - y)) ~dx\\
&= \hat f(\xi - y)
.\end{align*}
\]
## (b)

We'll use the fact that if $\inner{\wait}{\wait}$ is an inner product on a vector space $V$ and $A$ is an invertible linear transformation, then for all $\vector x, \vector y \in V$ we have 
$$
\inner{A \vector x}{\vector y} = \inner{\vector x}{A^{T} \vector y}
$$

where $A^{-T}$ denotes the transpose of the inverse of $A$ (or $(A\inv)^*$ if $V$ is complex).

We then have
\[
\begin{align*}
\frac{1}{\abs{\det T}} \hat f( T^{-T} \xi ) &= \frac{1}{\abs{\det T}} \int f(x) \exp(-2\pi i x \cdot T^{-T} \xi) ~dx \\
&\quad\quad\quad x \mapsto Tx,~~ ~dx \mapsto \abs{\det T} ~dx \\
&= \frac{1}{\abs{\det T}} \int f(Tx) \exp(-2\pi i Tx \cdot T^{-T} \xi) \abs{\det T} ~dx \\
&= \int f(Tx) \exp(-2\pi i x \cdot \xi) ~dx \\
&\quad\quad\quad \text{since } Tx \cdot T^{-T}\xi = T\inv T x \cdot \xi = x\cdot \xi \\
&= \widehat{(f\circ T)}(\xi)
.\end{align*}
\]

# Problem 4

## (a)

### (i)
Let $g(x) = xf(x)$. Then if an interchange of the derivative and the integral is justified, we have
\[
\begin{align*}
\dd{}{\xi} \hat f(\xi) &\coloneqq \dd{}{\xi} \int f(x) \exp(-2\pi i x \cdot \xi) ~dx \\
&=_? \int f(x) \dd{}{\xi} \exp(-2\pi i x \cdot \xi) ~dx \\
&= \int f(x) 2\pi i x \exp(-2\pi i x \cdot \xi) ~dx \\
&= 2\pi i \int x f(x) \exp(-2\pi i x \cdot \xi) ~dx \\
&\coloneqq 2\pi i \hat g (\xi)
.\end{align*}
\]

It thus remains to show that this interchange is justified.
TODO


### (ii)

We have
\[
\begin{align*}
\hat h(\xi) 
&\coloneqq \int \dd{f}{x}(x) \exp(-2\pi i x \cdot \xi) ~dx \\
&= f(x) \left. \exp(2\pi i x \cdot \xi) \right\rvert_{-\infty}^\infty - \int f(x) \exp(-2\pi i x \cdot \xi) ~dx
.\end{align*}
\]

## (b)

# Problem 5

# Problem 6

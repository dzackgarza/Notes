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

## Part a

### Part (i)

We have
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

### Part (ii)

We have
\[
\begin{align*}
\hat h(\xi) &\coloneqq \int \exp(2\pi i x\cdot y) f(x) \exp(-2\pi i x \cdot \xi) ~dx \\ 
&= \exp(-2\pi i x \cdot y) \int f(x) \exp(-2\pi i x\cdot \xi) ~dx \\
&= \exp(-2\pi i x \cdot y) \hat f(\xi) 
.\end{align*}
\]

# Problem 4

# Problem 5

# Problem 6

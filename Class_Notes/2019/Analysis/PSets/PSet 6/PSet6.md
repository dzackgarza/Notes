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

# Problem 2

# Problem 3

# Problem 4

# Problem 5

# Problem 6

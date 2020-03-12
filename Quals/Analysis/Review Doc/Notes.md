---
title: Analysis Review Notes
---

# Inequalities and Equalities

**AM-GM Inequality**:
$$
\sqrt{ab} \leq \frac{a+b}{2}
.$$

**Reverse Triangle Inequality**
\begin{align*}
\abs{\norm{x} - \norm{y}} \leq \norm{x - y}
.\end{align*}


**Chebyshev's Inequality**
\begin{align*}
\mu(\{x:|f(x)|>\alpha\}) \leq\left(\frac{\|f\|_{p}}{\alpha}\right)^{p}
.\end{align*}

**Holder's Inequality:**
\begin{align*}
\frac 1 p + \frac 1 q = 1 \implies \|f g\|_{1} \leq\|f\|_{p}\|g\|_{q}
.\end{align*}

> *Application:*
>For finite measure spaces,
$$
1 \leq p < q \leq \infty \implies L^q \subset L^p \quad (\text{ and } \ell^p \subset \ell^q)
$$

> *Proof:* Fix $p, q$, let $r = \frac q p$ and $s = \frac{r}{r-1}$ so $r\inv + s\inv = 1$.
> Then let $h = \abs{f}^p$:
\begin{align*}
\norm{f}_p^p = \norm{h\cdot 1}_1 \leq \norm{1}_s \norm{h}_r = \mu(X)^{\frac 1 s} \norm{f}_q^{\frac q r}
\implies \norm{f}_p \leq \mu(X)^{\frac 1 p - \frac 1 q}\norm{f}_q
.\end{align*}
>
> Note: doesn't work for $\ell$ spaces, but just note that $\sum \abs{x_n} < \infty \implies x_n < 1$ for large enough $n$, and thus $p<q \implies \abs{x_n}^q \leq \abs{x_n}^q$.

**Cauchy-Schwarz**:

\begin{align*}
\abs{\inner{f}{g}} = \norm{fg}_1 \leq \norm{f}_2 \norm{g}_2
,\end{align*}
with equality $\iff f = \lambda g$.

> Relates inner product to norm, and only happens to relate norms in $L^1$.

**Minkowski's Inequality:**
$$
1\leq p < \infty \implies \|f+g\|_{p} \leq\|f\|_{p}+\|g\|_{p}
$$

> Note: does not handle $p=\infty$ case.
> Use to prove $L^p$ is a normed space.

**Young's Inequality**:
\begin{align*}
\frac 1 p + \frac 1 q = \frac 1 r + 1 \implies
\|f \ast g\|_{r} \leq\|f\|_{p}\|g\|_{q}
.\end{align*}

> Useful specific cases:
\begin{align*}
\norm{f\ast g}_1 &\leq \norm{f}_1 \norm{g}_1 \\
\|f * g\|_{p} &\leq\|f\|_{1}\|g\|_{p}, \\
\norm{f\ast g}_\infty &\leq \norm{f}_2 \norm{g}_2 \\
\norm{f\ast g}_\infty &\leq \norm{f}_p \norm{g}_q
.\end{align*}

**Bessel's Inequality:**

For $x\in H$ a Hilbert space and $\theset{e_k}$ an orthonormal sequence,
\begin{align*}
\sum_{k=1}^{\infty}\left|\left\langle x, e_{k}\right\rangle\right|^{2} \leq\|x\|^{2}
.\end{align*}

> Note: this does not need to be a basis.

**Parseval's identity:**

Equality in Bessel's inequality, attained when $\theset{e_k}$ is a *basis*, i.e. it is complete, i.e. the span of its closure is all of $H$.

!include Notes_Basics.md

!include Notes_Measure.md

!include Notes_Integration.md

!include Notes_Fourier.md
---
title: Analysis Review Notes
---

## Basics

**Definition:**
A set $S$ is **nowhere dense** iff the closure of $S$ has empty interior.

**Definition:**
A set is **meager** if it is a *countable* union of nowhere dense sets.

> Note that a *finite* union of nowhere dense is still nowhere dense.

**Lemma:**
The Cantor set is closed with empty interior.

> Proof: Its complement is a union of open intervals, and can't contain an interval since intervals have positive measure and $m(C_n)$ tends to zero.

> **Corollary:**
> The Cantor set is nowhere dense.

**Definition:**
An $F_\sigma$ set is a union of closed sets, and a $G_\delta$ set is an intersection of opens.

> Mnemonic: "F" stands for *ferme*, which is "closed" in French, and $\sigma$ corresponds to a "sum", i.e. a union.

**Lemma:**
Singleton sets in $\RR$ are closed, and thus $\QQ$ is an $F_\sigma$ set.

**Lemma:**
$\RR$ is a Baire space, i.e. countable intersections of open, dense sets are still dense.

**Lemma:**
There is a function discontinuous precisely on $\QQ$.

> *Proof:* $f(x) = \frac 1 n$ if $x = r_n \in \QQ$ is an enumeration of the rationals, and zero otherwise.
The limit at every point is 0.

**Lemma:**
There *do not* exist functions that are discontinuous precisely on $\RR\setminus \QQ$.

> *Proof:* $D_f$ is always an $F_\sigma$ set, which follows by considering the oscillation $\omega_f$.
> $\omega_f(x) = 0 \iff f$ is continuous at $x$, and $D_f = \union_n A_{\frac 1 n}$ where $A_\varepsilon = \theset{\omega_f \geq \varepsilon}$ is closed.

**Lemma:**
Any nonempty set which is bounded from above (resp. below) has a well-defined supremum (resp. infimum).

**Lemma:**
A uniform limit of continuous functions is continuous.

**Theorem (Important Example):**
The space $X = C([0, 1])$, continuous functions $f: [0, 1] \to \RR$, equipped with the norm $\norm{f} = \sup_{x\in [0, 1]} \abs{f(x)}$, is a **complete** metric space.

> *Proof:*
>
> *Step 0:* Let $\theset{f_k}$ be Cauchy in $X$.
>
> *Step 1*: Define a candidate limit using pointwise convergence:
>
> Fix an $x$; since
$$\abs{f_k(x) - f_j(x)}  \leq \norm{f_k - f_k} \to 0
,$$ $\theset{f_k(x)}$ is Cauchy in $\RR$.
> So define $f(x) \definedas \lim_k f_k(x)$.
>
>
> *Step 2:* Show that $\norm{f_k - f} \to 0$:
>
> $$\norm{f_k - f} = \lim_{j} \norm{f_k - f_j} \to 0$$
> Alternatively, $\norm{f_k-f} \leq \norm{f_k - f_N} + \norm{f_N - f_j}$, where $N, j$ can be chosen large enough to bound each term by $\varepsilon/2$.
>
> *Step 3:* Show that $f\in X$:
>
> The uniform limit of continuous functions is continuous. (Note: in other cases, you may need to show the limit is bounded, or has bounded derivative, or whatever other conditions define $X$.)
> $\qed$

**Lemma:**
Metric spaces are compact iff they are sequentially compact, (i.e. every sequence has a convergent subsequence).

**Corollary:**
The unit ball in $C([0, 1])$ with the sup norm is not compact.

> *Proof:* Take $f_k(x) = x^n$, which converges to a dirac delta at 1. The limit is not continuous, so no subsequence can converge.


## Measure Theory

*Comments:*

> Best way to show measurability: use Borel characterization, or show that it's an $H \disjoint N$ where $H \in F_\sigma$ and $N$ is null.

> Just establish something for Borel sets, then use this characterization to extend it to Lebesgue.

**Lemma (Borel-Cantelli)**:

Let $\{E_k\}$ be a countable collection of measurable sets.
Then
$$
\sum_k m(E_k) < \infty \implies \text{ almost every } x\in \RR \text{ is in at most finitely many } E_k
.$$

**Theorem (Egorov)**:

Let $E \subseteq \RR^n$ be measurable with $m(E) > 0$ and $\theset{f_k: E \to \RR}$ be measurable functions such that $f(x) \definedas \displaystyle\lim_{k\to\infty} f_k(x) < \infty$ exists almost everywhere.

Then $f_k \to f$ *almost uniformly*, i.e.
\begin{align*}
\forall\varepsilon > 0, ~\exists F \subseteq E ~\text{closed such that } &
m(E\setminus F) < \varepsilon ~\text{ and }~ f_k \mapsvia{u}  f ~\text{on}~ F
.\end{align*}

## Integration

### Convergence Theorems

**Monotone Convergence Theorem (MCT)**:

If $f_n \in L^+$ and $f_n \nearrow f$ a.e., then
$$
\lim \int f_n
= \int \lim f_n = \int f
\quad \text{i.e.}~~ \int f_n \to \int f
.$$

> Needs to be positive and increasing.

**Dominated Convergence Theorem (DCT)**:

If $f_n \in L^1$ and $f_n \to f$ a.e. with $\abs {f_n} \leq g$ for some $g\in L^1$, then
$$
\lim \int f_n = \int \lim f_n = \int f \quad \text{i.e.}~~ \int f_n \to \int f
,$$

and more generally,
$$
\int \abs{f_n - f} \to 0
.$$

> Positivity *not* needed.

> Generalized DCT: can relax $\abs {f_n} < g$ to $\abs{f_n} < g_n \to g\in L^1$.

**Fatou's Lemma**:

If $f_n \in L^+$, then
\begin{align*}
\int \liminf_n f_n &\leq \liminf_n \int f_n \\
\limsup_n \int f_n &\leq \int \limsup_n f_n
.\end{align*}

> Only need positivity.

### Inequalities and Equalities

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

### Integration

**Theorem (Tonelli):**
For $f(x, y)$ **non-negative and measurable**, for almost every $x\in \RR^n$, 

- $f_x(y)$ is a **measurable** function
- $F(x) = \int f(x, y) ~dy$ is a **measurable** function,
- For $E$ measurable, the slices $E_x \definedas \theset{y \suchthat (x, y) \in E}$ are measurable.
- $\int f = \int \int F$, i.e. any iterated integral is equal to the original.

**Theorem (Fubini):**
For $f(x, y)$ **integrable**, for almost every $x\in \RR^n$, 

- $f_x(y)$ is an **integrable** function
- $F(x) = \int f(x, y) ~dy$ is an **integrable** function,
- For $E$ measurable, the slices $E_x \definedas \theset{y \suchthat (x, y) \in E}$ are measurable.
- $\int f = \int \int f(x,y)$, i.e. any iterated integral is equal to the original

**Theorem (Fubini/Tonelli):**
If any iterated integral is **absolutely integrable**, i.e. $\int \int \abs{f(x, y)} < \infty$, then $f$ is integrable and $\int f$ equals any iterated integral.

**Differentiating under the integral**:

If $\abs{\dd{}{t}f(x, t)} \leq g(x) \in L^1$, then letting $F(t) = \int f(x, t) ~dt$,
\begin{align*}
\dd{}{t} F(t)
&\definedas \lim _{h \rightarrow 0} \int \frac{f(x, t+h)-f(x, t)}{h} d x \\
&= \int \dd{}{t} f(x, t) ~dx
.\end{align*}

Let $h_k \to 0$ be any sequence and define
$$
f_k = \frac{f(x, t+h_k)-f(x, t)}{h_k}
,$$
so $f_k \converges{\text{pointwise}}\to \dd{}{t}f$.


## $L^p$ Spaces
**Lemma:**
$C_0([0, 1]), C_0^\infty([0, 1]) \injects L^2([0, 1])$ are dense.

**Dual Spaces:**
In general, $(L^p)\dual \cong L^q$

- For qual, supposed to know the $p=1$ case, i.e. $(L^1)\dual \cong L^\infty$
  - For the analogous $p=\infty$ case: $L^1 \subset (L^\infty)\dual$, since the isometric mapping is always injective, but *never* surjective. So this containment is always proper (requires Hahn-Banach Theorem).
- The $p=2$ case: Easy by the Riesz Representation for Hilbert spaces.

## Fourier Series and Convolution

**Definition (Convolution)**
$$
f * g(x)=\int f(x-y) g(y) d y
.$$

**Definition (Dilation)**
$$
\phi_{t}(x)=t^{-n} \phi\left(t^{-1} x\right)
.$$

**Definition (The Fourier Transform):**
\begin{align*}
\hat f(\xi) = \int f(x) ~e^{2\pi i x \cdot \xi} ~dx
.\end{align*}

**Lemma:**
$\hat f = \hat g \implies f=g$ almost everywhere.

**Lemma (Riemann-Lebesgue)**
\begin{align*}
f\in L^1 \implies
\hat{f}(\xi) \rightarrow 0 \text { as }|\xi| \rightarrow \infty
.\end{align*}

> Motto: Fourier transforms have small tails.


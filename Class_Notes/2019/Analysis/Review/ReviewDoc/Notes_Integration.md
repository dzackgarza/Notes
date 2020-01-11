# Integration

**Definition:**
$f\in L^+$ iff $f$ is measurable and non-negative.

> Useful techniques: 
>
> - Break integration domain up into disjoint annuli.
> - Break real integrals up into $x < 1$ and $x>1$.

**Definition:**
A measurable function is integrable iff $\norm{f}_1 < \infty$.

Useful facts about $C_c$ functions:

- Bounded almost everywhere
- Uniformly continuous

## Convergence Theorems

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

**Lemma:**
If $f\in L^1$, then
\begin{align*}
\int\abs{f_n - f} \to 0 \iff \int \abs{f_n} \to \abs{f}
.\end{align*}

> *Proof:* Let $g_n = \abs{f_n} - \abs{f_n - f}$, then $g_n \to \abs{f}$ and 
\begin{align*}
\abs{g_n} = \abs{ \abs{f_n} - \abs{f_n - f} } \leq \abs{f_n - (f_n - f)} = \abs{f} \in L^1
,\end{align*}
so the DCT applies to $g_n$ and
\begin{align*}
\norm{f_n - f}_1 = \int \abs{f_n - f} + \abs{f_n} - \abs{f_n}
= \int \abs{f_n} - g_n\\
\to_{DCT} \lim \int \abs{f_n} - \int \abs{f}
.\end{align*}

**Fatou's Lemma**:

If $f_n \in L^+$, then
\begin{align*}
\int \liminf_n f_n &\leq \liminf_n \int f_n \\
\limsup_n \int f_n &\leq \int \limsup_n f_n
.\end{align*}

> Only need positivity.

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
&\equalsbecause{DCT} \int \dd{}{t} f(x, t) ~dx
.\end{align*}

To justify passing the limit, let $h_k \to 0$ be any sequence and define
$$
f_k(x, t) = \frac{f(x, t+h_k)-f(x, t)}{h_k}
,$$
so $f_k \converges{\text{pointwise}}\to \dd{}{t}f$.

Apply the MVT to $f_k$ to get $f_k(x, t) = f_k(\xi, t)$ for some $\xi \in [0, h_k]$, and show that $f_k(\xi, t) \in L_1$.


**Lemma (Swapping Sum and Integral)**
If $f_n$ are non-negative and $\sum \int \abs f_n < \infty$, then $\sum \int f_n = \int \sum f_n$.

> *Proof: MCT.* 
> Let $F_N = \sum^N f_n$ be a finite partial sum; then there are simple functions $\phi_n \nearrow f_n$ and so $\sum^N \phi_n \nearrow F_N$, so apply MCT.

**Lemma:**
If $f_k \in L^1$ and $\sum \norm{f_k}_1 < \infty$ then $\sum f_k$ converges almost everywhere and in $L^1$.

> *Proof:*
> Define $F_N = \sum^N f_k$ and $F = \lim_N F_N$, then $\norm{F_N}_1 \leq \sum^N \norm{f_k} < \infty$ so $F\in L^1$ and $\norm{F_N - F}_1 \to 0$ so the sum converges in $L^1$.
> Almost everywhere convergence: ?

## $L^1$ Facts

**Lemma (Translation Invariance):**
The Lebesgue integral is translation invariant, i.e. 
$\int f(x) ~dx = \int f(x + h) ~dx$ for any $h$.

> *Proof:* 
> 
> - For characteristic functions, $\int_E f(x+h) = \int_{E + h} f(x) = m(E+h) = m(E) = \int_E f$ by translation invariance of measure.
> - So this also holds for simple functions by linearity
> - For $f\in L^+$, choose $\phi_n \nearrow f$ so $\int \phi_n \to \int f$.
> - Similarly, $\tau_h \phi_n \nearrow \tau_h f$ so $\int \tau_h f \to \int f$
> - Finally $\theset{\int \tau_h \phi} = \theset{\int \phi}$ by step 1, and the suprema are equal by uniqueness of limits.

**Lemma (Integrals Distribute Over Disjoint Sets):**

If $X \subseteq A \union B$, then $\int_X f \leq \int_A f + \int_{A^c} f$ with equality iff $X = A\disjoint B$.


**Lemma ($L^1$ functions may Decay Rapidly):**

If $f \in L^1$ and $f$ is uniformly continuous, then $f(x) \converges{\abs{x}\to\infty}\to 0$.

> Doesn't hold for general $L^1$ functions, take any train of triangles with height 1 and summable areas.

**Lemma ($L^1$ functions have Small Tails):**

If $f\in L^1$, then for every $\varepsilon$ there exists a radius $R$ such that if $A = B_R(0)^c$, then $\int_A \abs f < \varepsilon$. 

> *Proof: Approximate with compactly supported functions.* 
> Take $g\converges{L_1}\to f$ with $g\in C_c$, then choose $N$ large enough so that $g=0$ on $E\definedas B_N(0)^c$, then $\int_E \abs{f} \leq \int_E\abs{f-g} + \int_E \abs{g}$.

**Lemma ($L^1$ functions have absolutely continuity):**

$m(E) \to 0 \implies \int_E f \to 0$.

> *Proof: Approximate with compactly supported functions.*
> Take $g\converges{L_1}\to f$, then $g \leq M$ so $\int_E{f} \leq \int_E{f-g} + \int_E g \to 0 + M \cdot m(E) \to 0$.

**Lemma ($L^1$ functions are finite almost everywhere):**

If $f\in L^1$, then $m(\theset{f(x) = \infty}) = 0$.

> *Proof (Split up domain2):*
> Let $A = \theset{f(x) = \infty}$, then $\infty > \int f = \int_A f + \int_{A^c} f = \infty \cdot m(A) + \int_{A^c} f \implies m(X) =0$.

**Lemma (Continuity in $L^1$)**:
$\norm{\tau_h f - f}_1 \to 0$ as $h\to 0$.

> *Proof: Approximate with compactly supported functions*.
> Take $g\converges{L_1}\to f$ with $g\in C_c$.
\begin{align*}
\int f(x+h) - f(x) \leq \\ 
\int f(x+h) - g(x+h) + \int g(x+h) - g(x) + \int g(x) - f(x) \\
\to 2 \varepsilon + \int g(x+h) - g(x) \\
= \int_K g(x+h) - g(x) + \int_{K^c} g(x+h) - g(x) \to 0
,\end{align*}
> which follows because we can enlarge the support of $g$ to $K$ where the integrand is zero on $K^c$, then apply uniform continuity on $K$.

**Theorem (Integration by Parts, Special Case)**:
\begin{align*}
F(x):=\int_{0}^{x} f(y) d y \quad \text { and } \quad G(x):=\int_{0}^{x} g(y) d y \\ 
\implies
\int_{0}^{1} F(x) g(x) d x=F(1) G(1)-\int_{0}^{1} f(x) G(x) d x
.\end{align*}

> *Proof:* Fubini-Tonelli, and sketch region to change integration bounds.

**Theorem (Lebesgue Density)**:
\begin{align*}
A_{h}(f)(x):=\frac{1}{2 h} \int_{x-h}^{x+h} f(y) d y
\implies \norm{A_h(f) - f} \converges{h\to 0}\to 0
.\end{align*}

> *Proof*: Fubini-Tonelli, and sketch region to change integration bounds, and continuity in $L^1$.


## $L^p$ Spaces

**Lemma:**
The following are dense subspaces of $L^2([0, 1])$:

- Simple functions
- Step functions
- $C_0([0, 1])$
- Smoothly differentiable functions $C_0^\infty([0, 1])$
- Smooth compactly supported functions $C_c^\infty$

**Dual Spaces:**
In general, $(L^p)\dual \cong L^q$

- For qual, supposed to know the $p=1$ case, i.e. $(L^1)\dual \cong L^\infty$
  - For the analogous $p=\infty$ case: $L^1 \subset (L^\infty)\dual$, since the isometric mapping is always injective, but *never* surjective. So this containment is always proper (requires Hahn-Banach Theorem).
- The $p=2$ case: Easy by the Riesz Representation for Hilbert spaces.
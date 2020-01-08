# Integration

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
\begin{align*}
\int{f_n - f} \to 0 \iff \int \abs{f_n} \to \abs{f}
.\end{align*}

> *Proof:* Write 



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
&= \int \dd{}{t} f(x, t) ~dx
.\end{align*}

Let $h_k \to 0$ be any sequence and define
$$
f_k = \frac{f(x, t+h_k)-f(x, t)}{h_k}
,$$
so $f_k \converges{\text{pointwise}}\to \dd{}{t}f$.

**Lemma (Summing Integrals)**
If $f_n$ are non-negative and $\sum \int \abs f_n < \infty$, then $\sum \int f_n = \int \sum f_n$.

## $L^1$ Facts

**Lemma:**
The Lebesgue integral is translation invariant, i.e. 
$\int f(x) ~dx = \int f(x + h) ~dx$ for any $h$.

> *Proof:* ?

**Lemma:**
If $X \subseteq A \union B$, then $\int_X f \leq \int_A f + \int_{A^c} f$ with equality iff $X = A\disjoint B$.

> Useful technique: break integration domain up into disjoint annuli.

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

**Lemma ($L^1$ functions are bounded a.e.):**
If $f\in L^1$, then $m(\theset{f(x) = \infty}) = 0$.

> *Proof:*
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



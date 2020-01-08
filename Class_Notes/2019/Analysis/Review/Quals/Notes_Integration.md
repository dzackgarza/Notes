# Integraion

**Definition:**
A measurable function is integrable iff $\norm{f}_1 < \infty$.

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

**Fatou's Lemma**:

If $f_n \in L^+$, then
\begin{align*}
\int \liminf_n f_n &\leq \liminf_n \int f_n \\
\limsup_n \int f_n &\leq \int \limsup_n f_n
.\end{align*}

> Only need positivity.

**Lemma (Sufficient Condition for Decay):**
If $f \in L^1$ and $f$ is uniformly continuous, then $f(x) \converges{\abs{x}\to\infty}\to 0$.

> Doesn't hold for general $L^1$ functions, take any train of triangles with height 1 and summable areas.

**Lemma ($L^1$ functions have Small Tails):**
If $f\in L^1$, then for every $\varepsilon$ there exists a radius $R$ such that if $A = B_R(0)^c$, then $\int_A \abs f < \varepsilon$. 

Lemma:
If $X \subset A \union B$, then $\int_X f \leq \int_A f + \int_{A^c} f$ with equality iff $X = A\disjoint B$.

**Lemma ($L^1$ functions are bounded a.e.):**
If $f\in L^1$, then $m(\theset{f(x) = \infty}) = 0$.

> Proof:
> Let $A = \theset{f(x) = \infty}$, then $\infty > \int f = \int_A f + \int_{A^c} f = \infty \cdot m(A) + \int_{A^c} f \implies m(X) =0$.


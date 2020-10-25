# Appendix

An alternative characterization of **uniform continuity**:
$$
\left\|\tau_{y} f-f\right\|_{u} \rightarrow 0 \text { as } y \rightarrow 0
$$

Lemma:
Measurability is not preserved by homeomorphisms.

> Counterexample: there is a homeomorphism that takes that Cantor set (measure zero) to a fat Cantor set

## Undergraduate Analysis Review

- Some inclusions on the real line:

    > Differentiable with a bounded derivative $\subset$ Lipschitz continuous $\subset$ absolutely continuous $\subset$ uniformly continuous $\subset$ continuous
    >
    > Proofs: Mean Value Theorem, Triangle inequality, Definition of absolute continuity specialized to one interval, Definition of uniform continuity

- **Bolzano-Weierstrass**:
Every bounded sequence has a convergent subsequence.

- **Heine-Borel**:
$$
X \subseteq \RR^n \text{ is compact }
\iff
X \text{ is closed and bounded}
.$$

- **Baire Category Theorem:**
If $X$ is a complete metric space, then

- For any sequence $\theset{U_k}$ of open, dense sets, $\intersect_k U_k$ is also dense.
- $X$ is *not* a countable union of nowhere-dense sets

- **Nested Interval Characterization of Completeness:**
$\RR$ being complete $\implies$ for any sequence of intervals $\theset{I_n}$ such that $I_{n+1} \subseteq I_n$, $\intersect I_n \neq \emptyset$.

- **Convergence Characterization of Completeness:**
$\RR$ being complete is equivalent to "absolutely convergent implies convergent" for sums of real numbers.

- Compacts subsets $K \subseteq \RR^n$ are also *sequentially compact*, i.e. every sequence in $K$ has a convergent subsequence.

- **Urysohn's Lemma:**
For any two sets $A, B$ in a metric space or compact Hausdorff space $X$, there is a function $f:X \to I$ such that $f(A) = 0$ and $f(B) = 1$.

- Continuous compactly supported functions are
  - Bounded almost everywhere
  - Uniformly bounded
  - Uniformly continuous

    *Proof:*

    ![](figures/2019-12-19-16-49-56.png)\

- Uniform convergence allows commuting sums with integrals

- Closed subsets of compact sets are compact.

- Every compact subset of a Hausdorff space is closed

- Showing that a series converges:
*(Todo)*

## Big Counterexamples

### For Limits

- Differentiability $\implies$ continuity but not the converse:

  - The Weierstrass function is continuous but nowhere differentiable.

- $f$ continuous does not imply $f'$ is continuous: $f(x) = x^2 \sin(x)$.

- Limit of derivatives may not equal derivative of limit:
  $$
  f(x) = \frac{\sin(nx)}{n^c} \text{ where } 0 < c < 1.
  $$
  
  - Also shows that a sum of differentiable functions may not be differentiable.

- Limit of integrals may not equal integral of limit:
$$
\sum \indic{x = q_n \in \QQ}
.$$

- A sequence of continuous functions converging to a discontinuous function:
$$
f(x) = x^n \text{ on } [0, 1]
.$$

- The Thomae function 
*(todo)*

### For Convergence

- Notions of convergence:
  1. Uniform
  2. Pointwise
  3. Almost everywhere
  4. In norm

Uniform $\implies$ pointwise $\implies$ almost everywhere.

> See Section 17.3.


#### Almost everywhere convergence does not imply $L^p$ convergence for any $1\leq p \leq \infty$

> See notes section 17.3.

Sequences $f_k \converges{a.e.}\to f$ but $f_k \converges{L^p}{\not\to} f$:

- For $1\leq p < \infty$:
	The skateboard to infinity, $f_k = \chi_{[k, k+1]}$.

	Then $f_k \converges{a.e.}\to 0$ but $\norm{f_k}_p = 1$ for all $k$.

	> Converges pointwise and a.e., but not uniformly and not in norm.

- For $p = \infty$:
  The sliding boxes $f_k = k \cdot \chi_{[0, \frac 1 k]}$.

	Then similarly $f_k \converges{a.e.}\to 0$, but $\norm{f_k}_p = 1$ and $\norm{f_k}_\infty = k \to \infty$

	> Converges a.e., but not uniformly, not pointwise, and not in norm.

#### The Converse to the DCT does not hold

> $L^p$ boundedness does not imply a.e. boundedness.

I.e. it is not true that $\lim \int f_k = \int f$ implies that $\exists g\in L^p$ such that $f_k < g$ a.e. for every $k$.

Take

- $b_k = \sum_{j=1}^k \frac 1 j \to \infty$

- $f_k = \chi_{[b_k, b_{k+1}]}$

Then

- $f_k \converges{a.e.}\to f = 0$,

- $\int f_k = \frac 1 k \to 0 \implies \norm{f_k}_p \to 0$,

- $0 = \int f = \lim \int f_k = 0$

- But $g > f_k \implies g > \norm{f_k}_\infty = 1$ a.e. $\implies g\not\in L^p(\RR)$.


## Errata

- **Equicontinuity**:
If $\mathcal F \subset C(X)$ is a family of continuous functions on $X$, then $\mathcal F$ *equicontinuous* at $x$ iff

\begin{align*}
\forall \varepsilon > 0 ~~\exists U \ni x \text{ such that } y\in U \implies \abs{f(y) - f(x)} < \varepsilon \quad \forall f\in \mathcal{F}
.\end{align*}

- **Arzela - Ascoli 1**:
If $\mathcal{F}$ is pointwise bounded and equicontinuous, then $\mathcal{F}$ is totally bounded in the uniform metric and its closure $\overline{\mathcal{F}} \in C(X)$ in the space of continuous functions is compact.

- **Arzela - Ascoli 2**:
If $\theset{f_k}$ is pointwise bounded and equicontinuous, then there exists a continuous $f$ such that $f_k \mapsvia{u} f$ on every compact set.


**Example:**
Using Fatou to compute the limit of a sequence of integrals:

\begin{align*}
\lim _{n \rightarrow \infty} \int_{0}^{\infty} \frac{n^{2}}{1+n^{2} x^{2}} e^{-\frac{x^{2}}{n^{3}}} d x
\overset{\text{Fatou}}\geq
\int_{0}^{\infty} \lim _{n \rightarrow \infty}  \frac{n^{2}}{1+n^{2} x^{2}} e^{-\frac{x^{2}}{n^{3}}} d x \to \int \infty
.\end{align*}

> Note that MCT might work, but showing that this is non-decreasing in $n$ is difficult.


**Lemma:**
\begin{align*}
f_k \converges{a.e.}\to f ,\quad
\norm{f_k}_p \leq M
\implies f\in L^p \text{ and } \norm{f}_p \leq M
.\end{align*}

> *Proof:* Apply Fatou to $\abs{f}^p$:
\begin{align*}
\int \abs{f}^p = \int \liminf \abs{f_k}^p \leq \liminf \int \abs{f_k}^p = M
.\end{align*}

**Lemma:**
If $f$ is uniformly continuous, then
\begin{align*}
\norm{\tau_h f - f}_p \converges{L^p}\to 0 \quad \text{for all } p
.\end{align*}

**Lemma**:
$\norm{\tau_h f - f}_p \to 0$ for every $p$.

> - i.e. "Continuity in $L^1$" holds for all $L^p$.
> - i.e. Translation operators are continuous.

> *Proof:*
> Take $g_k \in C_c^0 \to f$, then $g$ is uniformly continuous, so
\begin{align*}
\norm{\tau_h f - f}_p
\leq \norm{\tau_h f - \tau_h g}_p + \norm{\tau_h g - g}_p + \norm{g - f}_p \to 0
.\end{align*}

**Lemma:**
For $f\in L^p, g\in L^q$, $f\ast g$ is uniformly continuous.

> *Proof*:
> Use Young's inequality
\begin{align*}
\norm{\tau_h(f\ast g) - f\ast g}_\infty
&= \norm{(\tau_h f - f) \ast g}_\infty \leq \norm{\tau_hf - f}_p \norm{g}_q \to 0
.\end{align*}

**Lemma**:
If $\int f \phi = 0$ for every $\phi \in C_c^0$, then $f = 0$ almost everywhere.

> *Proof:*
> Let $A$ be an interval, choose $\phi_k \to \chi_A$, then $\int f \chi_A = 0$ for all intervals.
> So this holds for any Borel set $A$.
> Then just take $A_1 = \theset{f > 0}$ and $A_2 = \theset{f < 0}$, then $\int_\RR f = \int_{A_1} f + \int_{A_2}f = 0$.

## The Fourier Transform

**Some Useful Properties:**

\begin{align*}
\widehat{f\ast g}(\xi)
&= \hat f(\xi) \cdot \hat g (\xi) \\
\widehat{\tau_h f}(\xi)
&= e^{2\pi i \xi \cdot h}\widehat{f}(\xi) \\
\widehat{e^{2\pi i \xi \cdot h}f(\xi)}
&= \tau_{-h}\widehat f(\xi) \\
\widehat{f \circ T}(\xi)
&= \abs{\det T}\inv (\hat f \circ T^{-t})(\xi) \\
\dd{}{\xi} \widehat{f}(\xi)
&= -2\pi i \cdot \widehat {\xi f} (\xi) \\
\widehat{\dd{}{\xi} f}(\xi)
&= 2\pi i \xi \cdot \widehat{f}(\xi)
.\end{align*}

**Some Useful Transform Pairs:**

\begin{align*}
\text{Dirichlet:}
&& \chi_{\theset{-\frac{1}{2} \leq x \leq \frac{1}{2}}}
&\iff \mathrm{sinc}(\xi) \\
\text{Fejer:}
&& \chi_{\theset{-1 \leq x \leq 1}} (1 - \abs{x})
&\iff \mathrm{sinc}^2(\xi) \\
\text{Poisson:}
&& \frac{1}{\pi} \frac{1}{1+x^2}
&\iff e^{2\pi \abs{\xi}} \\
\text{Gauss-Weierstrass:}
&& e^{-\pi x^2}
&\iff e^{-\pi \xi^2}
.\end{align*}
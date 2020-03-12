# Basics

**Useful Technique:**
$\lim f_n = \limsup f_n = \liminf f_n$ iff the limit exists, so $\limsup f_n \leq g \leq \liminf f_n$ implies that $g = \lim f$. 
Similarly, a limit does not exist iff $\liminf f_n > \limsup f_n$.

**Lemma:**
$\sum a_n < \infty \implies a_n \to 0$ and $\sum_{k=N}^\infty \converges{N\to\infty}\to 0$, i.e. the terms/tails of convergent sums go to zero.

**Lemma (Heine-Borel):**
A subset of $\RR^n$ is compact iff it is closed and bounded.

**Lemma (Geometric Series):**
\begin{align*}
\sum_{k=0}^\infty x^k = \frac 1 {1-x} \iff \abs{x} < 1
.\end{align*}

> *Corollary:* 
> $\sum_{k=0}^\infty \frac 1 {2^k} = 1$.

**Definition:**
A set $S$ is **nowhere dense** iff the closure of $S$ has empty interior iff every interval contains a subinterval that does not intersect $S$.

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

**Theorem (Baire):**
$\RR$ is a Baire space, i.e. countable intersections of open, dense sets are still dense. 
Thus $\RR$ can not be written as a countable union of nowhere dense sets.

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

# Uniform Convergence

**Theorem (Egorov)**:

Let $E \subseteq \RR^n$ be measurable with $m(E) > 0$ and $\theset{f_k: E \to \RR}$ be measurable functions such that $f(x) \definedas \displaystyle\lim_{k\to\infty} f_k(x) < \infty$ exists almost everywhere.

Then $f_k \to f$ *almost uniformly*, i.e.
\begin{align*}
\forall\varepsilon > 0, ~\exists F \subseteq E ~\text{closed such that } &
m(E\setminus F) < \varepsilon ~\text{ and }~ f_k \mapsvia{u}  f ~\text{on}~ F
.\end{align*}

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
,$$ 
> the sequence $\theset{f_k(x)}$ is Cauchy in $\RR$.
> So define $f(x) \definedas \lim_k f_k(x)$.
>
>
> *Step 2:* Show that $\norm{f_k - f} \to 0$:
$$
\abs{f_k(x) - f_j(x)} < \varepsilon ~\forall x \implies \lim_{j} \abs{f_k(x) - f_j(x)} <\varepsilon ~\forall x
$$
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

**Lemma:**
A uniform limit of continuous functions is continuous.

**Lemma (Testing Uniform Convergence):**
$f_n \to f$ uniformly iff there exists an $M_n$ such that $\norm{f_n - f}_\infty \leq M_n \to 0$.

> Negating: find an $x$ which depends on $n$ for which the norm is bounded below.

**Useful Technique**: If $f_n$ has a global maximum (computed using $f_n'$ and the first derivative test) $M_n \to 0$, then $f_n \to 0$ uniformly.

**Lemma (Baby Commuting Limits with Integrals):**
If $f_n \to f$ uniformly, then $\int f_n = \int f$.

**Lemma (Uniform Convergence and Derivatives)**
If $f_n' \to g$ uniformly for some $g$ and $f_n \to f$ pointwise (or at least at one point), then $g = f'$.

**Lemma (Uniform Convergence of Series):**
If $f_n(x) \leq M_n$ **for a fixed $x$** where $\sum M_n < \infty$, then the series $f(x) = \sum f_n(x)$ converges pointwise.

**Lemma:**
If $\sum f_n$ converges then $f_n \to 0$ uniformly.

**Useful Technique:**
For a fixed $x$, if $f = \sum f_n$ converges *uniformly* on some $B_r(x)$ and each $f_n$ is continuous at $x$, then $f$ is also continuous at $x$ .

**Lemma (M-test for Series)**:
If $\abs{f_n(x)} \leq M_n$ which does not depend on $x$, then $\sum f_n$ converges uniformly.

**Lemma (p-tests)**:
Let $n$ be a fixed dimension and set $B = \theset{x\in \RR^n \suchthat \norm{x} \leq 1}$. 
\begin{align*}
\sum \frac 1 {n^p} < \infty &\iff p>1 \\
\int_\varepsilon^\infty \frac 1 {x^p} < \infty 
&\iff p>1 \\
\int_0^1 \frac 1 {x^p} < \infty 
&\iff p<1 \\
\int_B \frac{1}{\abs{x}^p} < \infty &\iff p < n \\
\int_{B^c} \frac{1}{\abs{x}^p} < \infty &\iff p > n \\
.\end{align*}


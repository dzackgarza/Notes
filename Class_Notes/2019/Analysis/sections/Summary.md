
# Summary

- Measure and integration theory with relevant examples from Lebesgue integration
- Hilbert spaces (only with regard to $L^2$), 
- $L^p$ spaces and the related Riesz representation theorem. 
- Hahn, Jordan and Lebesgue decomposition theorems, 
- Radon-Nikodym Theorem
- Fubini's Theorem.

*Texts*

- Real Analysis, by E. M. Stein and R. Shakarchi
- Real Analysis, by G. B. Folland
- An introduction to measure theory, by Terrence Tao
- Real and Complex Analysis, by W. Rudin

[An old course page](http://alpha.math.uga.edu/~lyall/8100Fall2014/index.html)

## Definitions

- **Convolution**
$$
f * g(x)=\int f(x-y) g(y) d y
$$

- **Dilation**
$$
\phi_{t}(x)=t^{-n} \phi\left(t^{-1} x\right)
$$

- The Fourier Transform (todo)

## Convergence Theorems

- **Monotone Convergence Theorem (MCT)**: If $f_n \in L^+$ and $f_n \nearrow f$ a.e., then
$$
\lim \int f_n 
= \int \lim f_n = \int f
\quad \text{i.e.}~~ \int f_n \to \int f
.$$

- **Dominated Convergence Theorem (DCT)**: 
If $f_n \in L^1$ and $f_n \to f$ a.e. with $\abs {f_n} \leq g$ for some $g\in L^1$, then
$$
\lim \int f_n = \int \lim f_n = \int f \quad \text{i.e.}~~ \int f_n \to \int f
,$$

  and more generally,
  $$
  \int \abs{f_n - f} \to 0
  $$

  > Generalized DCT: can relax $\abs {f_n} < g$ to $\abs{f_n} < g_n \to g\in L^1$.


- **Fatou**:
If $f_n \in L^+$, then
$$
\int \liminf f_n \leq \liminf \int f_n
.$$

## Inequalities and Equalities

- **Reverse Triangle Inequality**
\begin{align*}
\abs{\norm{x} - \norm{y}} \leq \norm{x - y}
.\end{align*}


- **Chebyshev's Inequality**
\begin{align*}
\mu(\{x:|f(x)|>\alpha\}) \leq\left(\frac{\|f\|_{p}}{\alpha}\right)^{p}
.\end{align*}


- ? Inequality
$$
a^{\lambda} b^{1-\lambda} \leq \lambda a+(1-\lambda) b
$$
with equality iff $a=b$.

- **Holder's Inequality:**
For $p,q$ conjugate exponents,
\begin{align*}
\|f g\|_{1} \leq\|f\|_{p}\|g\|_{q}, \quad \text{i.e.} \int \abs{fg} 
\leq \left( \int \abs{f}^p \right)^{\frac 1 p} \left( \int \abs{g}^q \right)^{\frac 1 q}
.\end{align*}

- **Cauchy-Schwarz**:
Set $p=q=2$ in Holder's inequality to obtain
\begin{align*}
\abs{\inner{f}{g}} = \norm{fg}_1 \leq \norm{f}_2 \norm{g}_2 
,\end{align*}
with equality $\iff f \neq \lambda g$.

- **Minkowski's Inequality:**
For $1\leq p < \infty$,
$$
\|f+g\|_{p} \leq\|f\|_{p}+\|g\|_{p}
$$


- **Young's Inequality**:
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


- **Bessel's Inequality:**
For $x\in H$ a Hilbert space and $\theset{e_k}$ an orthonormal sequence,
\begin{align*}
\sum_{k=1}^{\infty}\left|\left\langle x, e_{k}\right\rangle\right|^{2} \leq\|x\|^{2}
.\end{align*}

- **Parseval's identity:**
Equality in Bessel's inequality, attained when $\theset{e_k}$ is a *basis*, i.e. it is complete. 


### Other

- **Borel-Cantelli Lemma:**
Let $\{E_k\}$ be a countable collection of measurable sets. 
Then 
$$
\sum_k m(E_k) < \infty \implies \text{ almost every } x\in \RR \text{ is in at most finitely many } E_k
.$$

- **Egorov's Theorem**
Let $E \subseteq \RR^n$ be measurable with $m(E) > 0$ and $\theset{f_k: E \to \RR}$ be measurable functions such that $f(x) \definedas \displaystyle\lim_{k\to\infty} f_k(x) < \infty$ exists almost everywhere.

  Then $f_k \to f$ *almost uniformly*, i.e.
\begin{align*}
\forall\varepsilon > 0, ~\exists F \subseteq E ~\text{closed such that } & 
m(E\setminus F) < \varepsilon ~\text{ and }~ f_k \mapsvia{u}  f ~\text{on}~ F
.\end{align*}

- Fubini

- Tonelli

- Fubini/Tonelli

- **Riemann-Lebesgue Lemma:**
\begin{align*}
f\in L^1 \implies 
\hat{f}(\xi) \rightarrow 0 \text { as }|\xi| \rightarrow \infty
.\end{align*}


- **Differentiating under the integral**:

If $\abs{\dd{}{t}f(x, t)} \leq g(x) \in L^1$, then
\begin{align*}
F(t) = \int f(x, t) ~dt 
&\implies \dd{}{t} F(t)\definedas \lim _{h \rightarrow 0} \int \frac{f(x, t+h)-f(x, t)}{h} d x \\
&= \int \dd{}{t} f(x, t) ~dx
.\end{align*}

Let $h_k \to 0$ be any sequence and define $f_k = \frac{f(x, t+h_k)-f(x, t)}{h_k}$, so $f_k \converges{\text{pointwise}}\to \dd{}{t}f$.



## Important Comments

**Measurability**:

> Best way to show measurability: use Borel characterization, or show that it's an $H \disjoint N$ where $H \in F_\sigma$ and $N$ is null.

> Just establish something for Borel sets, then use this characterization to extend it to Lebesgue.

> AM-GM Inequality:
$$
\sqrt{ab} \leq \frac{a+b}{2}
.$$

- For finite measure spaces,
$$
1 \leq p < q \leq \infty \implies L^q \subset L^p \quad \text{ and } \ell^p \subset \ell^q
$$

- $C_0([0, 1]) \injects L^2([0, 1])$ is dense.

**Dual Spaces:**
In general, $(L^p)\dual \cong L^q$

- For qual, supposed to know the $p=1$ case, i.e. $(L^1)\dual \cong L^\infty$
  - For the analogous $p=\infty$ case: $L^1 \subset (L^\infty)\dual$, since the isometric mapping is always injective, but *never* surjective. So this containment is always proper (requires Hahn-Banach Theorem).
- The $p=2$ case: Easy by the Riesz Representation for Hilbert spaces.

**Fourier Series**:

- $\hat f = \hat g \implies f=g$ almost everywhere.

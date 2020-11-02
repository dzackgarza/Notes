## Sequences in Metric Spaces

:::{.theorem title="Bolzano-Weierstrass"}
Every bounded sequence has a convergent subsequence.
:::

:::{.theorem title="Heine-Borel"}
In $\RR^n, X$ is compact $\iff X$ is closed and bounded.
:::

:::{.remark}
Necessity of $\RR^n$: $X = (\ZZ, d(x,y) = 1)$ is closed, complete, bounded, but not compact since $\theset{1,2,\cdots}$ has no convergent subsequence
:::

:::{.proposition title="Converse of Heine-Borel"}
Converse holds iff bounded is replaced with totally bounded
:::

# Sequences

Notation: $\theset{a_n}_{n\in\NN}$ is a **sequence**, $\displaystyle\sum_{i\in\NN} a_i$ is a **series**.


## Known Examples

- Known sequences: let \(c\) be a constant.
\[
c, c^2, c^3, \ldots 
&= \theset{c^n}_{n=1}^\infty \to 0 
&& \forall \abs{c} < 1 \\ \\ 
\frac{1}{c},\frac{1}{c^2},\frac{1}{c^3},\ldots 
&= \theset{\frac{1}{c^n}}_{n=1}^\infty \to 0 
&&\forall  \abs{c} > 1 \\ \\
1,\frac{1}{2^c},\frac{1}{3^c},\ldots 
&= \theset{\frac{1}{n^c}}_{n=1}^\infty \to 0 
&& \forall c > 0
\]


## Convergence

:::{.definition title="Convergence of a Sequence"}
A sequence $\ts{x_j}$ **converges** to $L$ iff 
\[  
\forall \varepsilon > 0,\, \exists N > 0 \text{ such that } \quad n\geq N \implies \abs{x_n - L} < \eps
.\]
:::


:::{.theorem title="Squeeze Theorem"}
\[
b_n \leq a_n \leq c_n \text{ and } b_n,c_n \to L \implies a_n \to L
\]
:::

:::{.theorem title="Monotone Convergence Theorem for Sequences"}
If $\theset{a_j}$ monotone and bounded, then $a_j \to L = \lim\sup a_i < \infty$.
:::

:::{.theorem title="Cauchy Criteria"}
$\abs{a_m - a_n} \to 0 \in \RR \implies \theset{a_i}$ converges.
:::

### Checklist


- Is the sequence bounded?
	- $\theset{a_i}$ not bounded $\implies$ not convergent
	- If bounded, is it monotone?
		- $\theset{a_i}$ bounded and monotone $\implies$ convergent
- Use algebraic properties of limits

- Epsilon-delta definition

- Algebraic properties and manipulation: 

  - Limits commute with $\pm, \times, \div$ and $\lim C = C$ for constants.

	- E.g. Divide all terms by \(n\) before taking limit

	- Clear denominators



# Sums ("Series")

:::{.definition title="Series"}
A **series** is an function of the form
\[  
f(x) = \sum_{j=1}^\infty c_j x^j
.\]
:::

## Known Examples

### Conditionally Convergent
\[
\sum_{k=1}^\infty k^p &< \infty 
&&\iff p \leq 1 \\
\sum_{k=1}^\infty \frac{1}{k^p} &< \infty 
&&\iff p > 1 \\
\sum_{k=1}^\infty \frac{1}{k} &= \infty 
&&
\]

### Convergent
\[
\sum_{n=1}^\infty \frac{1}{n^2}           & < \infty \\
\sum_{n=1}^\infty \frac{1}{n^3}           & < \infty \\
\sum_{n=1}^\infty \frac{1}{n^\frac{3}{2}} & < \infty \\
\sum_{n=1}^\infty \frac{1}{n!}            & = e \\
\sum_{n=1}^\infty \frac{1}{c^n}           & = \frac{c}{c-1} \\
\sum_{n=1}^\infty (-1)^n \frac{1}{c^n}    & = \frac{c}{c+1} \\
\sum_{n=1}^\infty (-1)^n \frac{1}{n}      & = \ln 2
\]

### Divergent

\[
\sum_{n=1}^\infty \frac{1}{n} = \infty \\
\sum_{n=1}^\infty \frac{1}{\sqrt n} = \infty 
\]

## Convergence

> Useful reference: <http://math.hawaii.edu/~ralph/Classes/242/SeriesConvTests.pdf>

:::{.definition title="Absolutely Convergent"}
\todo[inline]{todo}
:::

:::{.remark}
$a_n\to 0$ does not imply $\sum a_n < \infty$. 
Counterexample: the harmonic series.
:::

:::{.proposition title="?"}
Absolute convergence $\implies$ convergence
:::


:::{.proposition title="The Cauchy Criterion"}
\[
\limsup a_i \to 0 \implies \sum a_i \text{ converges }
\]
:::

### The Big Tests

:::{.theorem title="Comparison Test"}
\envlist
- $a_n < b_n \and \sum b_n < \infty \implies \sum a_n < \infty$
- $b_n < a_n \and \sum b_n = \infty \implies \sum a_n = \infty$
:::

:::{.theorem title="Ratio Test"}
\[
R =\lim_{n\to\infty} \abs{\frac{a_{n+1}}{a_n}}
\]

- \(R < 1\): absolutely convergent
- \(R > 1\): divergent
- \(R = 1\): inconclusive

:::

:::{.theorem title="Root Test"}
\[
R = \limsup_{n \to \infty} \sqrt[n]{\abs{a_n}}
\]
- \(R < 1\): convergent
- \(R > 1\): divergent
- \(R = 1\): inconclusive
:::

:::{.theorem title="Integral Test"}
\[
f(n) = a_n \implies \sum a_n < \infty \iff \int_1^\infty f(x) dx < \infty
\]
:::

:::{.theorem title="Limit Test"}
\[
\lim_{n\to\infty}\frac{a_n}{b_n} = L < \infty \implies \sum a_n < \infty \iff \sum b_n < \infty
\]
:::

:::{.theorem title="Alternating Series Test"}
\[
a_n \downarrow 0 \implies \sum (-1)^n a_n < \infty
\]
:::

:::{.theorem title="Weierstrass $M\dash$Test"}
\[
\sum_{n=1}^\infty \norm{f_n}_\infty < \infty 
\implies \exists f\text{ such that } \norm{ \sum_{n=1}^\infty f_n - f}_\infty \to 0
\]
In other words, the series converges uniformly.

> Slogan: Convergence of the sup norms implies uniform convergence"

:::

:::{.remark}
The \(M\) in the name comes from defining $\sup\theset{f_k(x)} \da M_n$ and requiring $\sum \abs{M_n} < \infty$.
:::


  


### Checklist 

- Do the terms tend to zero?
	- $a_i \not\to 0 \implies \sum a_i = \infty$.
		- Can check with L'Hopital's rule
- There are exactly 6 tests at our disposal:
	- Comparison, root, ratio, integral, limit, alternating
- Is the series alternating?
	- If so, does $a_n \downarrow 0$?
		- If so, **convergent**
- Is this series bounded above by a known convergent series?
	- \(p\) series with \(p>1\), i.e. : $\sum a_n \leq \sum \frac{1}{n^p} < \infty$
	- Geometric series with $\abs{x} < 1$, i.e. $\sum a_n \leq \sum x^n$
- Is this series bounded below by a known divergent series?
	- \(p\) series with $p\leq 1$, i.e. $\infty = \sum \frac{1}{n^p} \leq \sum a_i$
- Are the ratios strictly less than or greater than 1?
	- $<1 \implies$ **convergent**
	- $>1 \implies$ **convergent**
- Does the integral analogue converge?
	- Integral converges $\iff$ sum converges
- Try the root test
	- $<1 \implies$ **convergent**
	- $>1 \implies$ **convergent**
- Try the limit test
	- Attempt to divide each term to obtain a known convergent/divergent series

Some Pattern Recognition:

- $(\text{stuff})!$: Ratio test (only test that will work with factorials!!)
- $(\text{stuff})^n$: Root test or ratio test
- Replace \(a_n\) with an \(f(x)\) that's easy to integrate - integral test
- \(p(x)\) or $\sqrt{p(x)}$: comparison or limit test

## Radius of Convergence

:::{.proposition title="Finding the radius of convergence"}
Use the fact that 
\[
\lim_{k\to\infty} \abs{\frac{a_{k+1}x^{k+1}}{a_kx^k}} 
= \abs{x}\lim_{k\to\infty} \abs{\frac{a_{k+1}}{a_k}} < 1 
\implies \sum a_k x^k < \infty
,\]
so take $L \da \lim_{k\to\infty} \frac{a_{k+1}}{a_k}$ and then obtain the radius as 
\[
R = \frac{1}{L} = \lim_{k\to\infty} {a_k \over a_{k+1}}
\]
:::

:::{.remark}
\envlist
- Note $L=0 \implies$ absolutely convergent everywhere
- $L = \infty \implies$ convergent only at $x=0$.
- Also need to check endpoints \(R, -R\) manually.
:::


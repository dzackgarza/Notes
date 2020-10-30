## Convergence:

Notation: $\theset{a_n}_{n\in\NN}$ is a **sequence**, $\displaystyle\sum_{i\in\NN} a_i$ is a **series,**.

Radius of convergence: 
$$
L = \lim_{n\to\infty}\abs{\frac{a_{n+1}}{a_n}} \implies R = \frac{1}{L}
$$

### Tools for Showing Convergence

The Checklist for Sequences:

- Is the sequence bounded?
	- $\theset{a_i}$ not bounded $\implies$ not convergent
	- If bounded, is it monotone?
		- $\theset{a_i}$  bounded and monotone $\implies$ convergent
- ?

The Checklist for Series:

- Do the terms tend to zero?
	- $a_i \not\to 0 \implies \sum a_i = \infty$.
		- Can check with L'Hopital's rule
- There are exactly 6 tests at our disposal:
	- Comparison, root, ratio, integral, limit, alternating
- Is the series alternating?
	- If so, does $a_n \downarrow 0$?
		- If so, **convergent**
- Is this series bounded above by a known convergent series?
	- $p$ series with $p>1$, i.e. : $ \sum a_n \leq \sum \frac{1}{n^p} < \infty$
	- Geometric series with $\abs{x} < 1$, i.e. $\sum a_n \leq \sum x^n$
- Is this series bounded below by a known divergent series?
	- $p$ series with $p\leq 1$, i.e. $\infty = \sum \frac{1}{n^p} \leq \sum a_i$
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
- Replace $a_n$ with an $f(x)$ that's easy to integrate - integral test
- $p(x)$ or $\sqrt{p(x)}$: comparison or limit test

#### Sequences
- Known sequences: let $c$ be a constant.
	$$
	c, c^2, c^3, \ldots = \theset{c^n}_{n=1}^\infty \to 0 \quad\forall \abs{c} < 1 \\
	\frac{1}{c},\frac{1}{c^2},\frac{1}{c^3},\ldots= \theset{\frac{1}{c^n}}_{n=1}^\infty \to 0 \quad\forall  \abs{c} > 1 \\
	1,\frac{1}{2^c},\frac{1}{3^c},\ldots = \theset{\frac{1}{n^c}}_{n=1}^\infty \to 0 \quad\forall c > 0 \\
	$$
- Use algebraic properties of limits
- Epsilon-delta definition
- Algebraic properties and manipulation: limits commute with $\pm, \times, \div$ and $\lim C = C$ for constants.
	- E.g. Divide all terms by $n$ before taking limit
	- Clear denominators
- **Squeeze Theorem**:
	$$b_n \leq a_n \leq c_n \text{ and } b_n,c_n \to L \implies a_n \to L$$
- **Monotone Convergence Theorem**: $\theset{a_i}$ monotone and bounded $\implies$ convergent.
	- And converges to $L = \lim\sup a_i$
- **Cauchy Criteria**: $\abs{a_m - a_n} \to 0 \in \RR \implies \theset{a_i}$ converges.
	- i.e. show $\theset{a_i}$ is a Cauchy sequence.

#### Series
$$ 
\sum_{k=1}^\infty a_k x^k
$$
- Known series:
	$$
	\sum_{k=1}^\infty k^p < \infty \iff p \leq 1 \\
	\sum_{k=1}^\infty \frac{1}{k^p} < \infty \iff p > 1 \\
	\sum_{k=1}^\infty \frac{1}{k} = \infty
	$$
	(See appendix for more.)
- Concrete examples of convergent series:
	$$
	\sum_{n=1}^\infty \frac{1}{n^2} < \infty \\
	\sum_{n=1}^\infty \frac{1}{n^3} < \infty \\
	\sum_{n=1}^\infty \frac{1}{n^\frac{3}{2}} < \infty \\
	\sum_{n=1}^\infty \frac{1}{n!}  = e \\
	\sum_{n=1}^\infty \frac{1}{c^n} = \frac{c}{c-1} \\
	\sum_{n=1}^\infty (-1)^n \frac{1}{c^n} = \frac{c}{c+1} \\
	\sum_{n=1}^\infty (-1)^n \frac{1}{n} = \ln 2 \\
	$$
- Concrete examples of divergent series:
	$$
	\sum_{n=1}^\infty \frac{1}{n} = \infty \\
	\sum_{n=1}^\infty \frac{1}{\sqrt n} = \infty \\
	$$
- NOTE: $a_n\to 0$ does not imply $\sum a_n < \infty$. Counterexample: harmonic series.
- Absolute convergence $\implies$ convergence
- **Cauchy Criteria**:
	$$
	\limsup a_i \to 0 \implies \sum a_i \text{ converges }
	$$
- Radius of convergence: use the fact that $\lim \abs{\frac{a_{k+1}x^{k+1}}{a_kx^k}} = \abs{x}\lim \abs{\frac{a_{k+1}}{a_k}} < 1$ will imply convergence, so take $L = \frac{a_{k+1}}{a_k}$ and then $R = \frac{1}{L}$.
	- Note $L=0 \implies$ absolutely convergent everywhere
	- $L = \infty \implies$ convergent only at $x=0$.
	- Also need to check endpoints $R, -R$ manually.
- **The Big Tests**
	- **Comparison Test**
		- $a_n < b_n \and \sum b_n < \infty \implies \sum a_n < \infty$
		- $b_n < a_n \and \sum b_n = \infty \implies \sum a_n = \infty$
	- **Ratio Test**
		$$
		R =\lim_{n\to\infty} \abs{\frac{a_{n+1}}{a_n}}
		$$
		- $R < 1$: absolutely convergent
		- $R > 1$: divergent
		- $R = 1$: inconclusive
	- **Root Test**
		$$
		R = \limsup_{n \to \infty} \sqrt[n]{\abs{a_n}}
		$$
		- $R < 1$: convergent
		- $R > 1$: divergent
		- $R = 1$: inconclusive
	- **Integral Test**
		$$
		f(n) = a_n \implies \sum a_n < \infty \iff \int_1^\infty f(x) dx < \infty
		$$
	- **Limit Test**
		$$
		\lim_{n\to\infty}\frac{a_n}{b_n} = L < \infty \implies \sum a_n < \infty \iff \sum b_n < \infty
		$$
	- **Alternating Series Test**
		$$
		a_n \downarrow 0 \implies \sum (-1)^n a_n < \infty
		$$

#### Series
- **Weierstrass $M$ Test**:
	 $$ 
	 \sum_{n=1}^\infty \abs{\norm{f_n}_\infty} < \infty 
	 \implies \exists f\in C^0 : \sum_{n=1}^\infty f_n \rightrightarrows f
	 $$
	- $M$ comes from defining $M_k = \sup\theset{f_k(x)}$ and requiring $\sum \abs{M_k} < \infty$
	- "Absolute convergence in the sup norms implies uniform convergence"

### Showing Divergence
todo

#### Sequences
todo


#### Sums
todo

#### Series
todo
## Definitions
$$\begin{align*}
L_2(X) &= \theset{f: X \to \RR: \int_\RR f(x) ~dx < \infty} \\
\inner{f}{g}_{2} &= \int_\RR f(x)g(x) ~dx \\
\norm{f}_2^2 &= \inner{f}{f} = \int_\RR f(x)^2 ~dx
\end{align*}$$

- Random Variable
	- For $(\Sigma, E, \mu)$ a probability space with sample space $\Sigma$ and probability measure $\mu$, a random variable is a function $X: \Sigma \to \RR$

- Probability density function (pdf):
	- For any $U \subset \RR$, given by the relation
	$$
	P(X \in U) = \int_U f(x) ~dx \\
	\implies P(a \leq X \leq b) = \int_a^b f(x) ~dx
	$$

- Cumulative distribution function (cdf): the antiderivative of the pdf
$$
F(x) = P(X \leq x) = \int_{-\infty}^x f(x) ~dx
$$
	- Yields $\dd{F}{x} = f(x)$

- Mean / Expected Value:
	- For any given r.v. $X$, define the expectation operator $E[\wait] = \inner{\wait}{f(x)}$
$$
\mu_X \definedas E[X] \definedas \inner{x}{f(x)} = \int_\RR x f(x) ~dx
$$
	- Linearity of expectation:
$$
E\left[\sum_{i\in\NN} a_i X_i\right] = \sum_{i\in\NN} a_i E[X_i]
$$
	(Does not matter whether or not the $X_i$ are independent.)

- Variance:
	$$\begin{align*}
	\mathrm{Var}(X) &= E[(X - E[X])^2] \\
	&= \int (x - E[X])^2 f(x) ~dx \\
	&= E[X^2] - E[X]^2 \\
	&\definedas \sigma^2(X)
	\end{align*}$$
	where $\sigma$ is the standard deviation.
	- Nonlinearity of variance: $\mathrm{Var}(aX + b) = a^2\mathrm{Var}(X)$

- Covariance: $$ \mathrm{Cov}(X,Y) = E[(X-\mu_X)(Y-\mu_Y)]$$

- Stirling's Approximation: $k! \sim k^\frac{k+1}{2}e^{-k} \sqrt{2\pi} $

## Theory and Background
Axioms of Probability: given a sample space $\Sigma$ with events $S$,
1. $\mu(\Sigma) = 1$
	1. Yields $S \in \Sigma \implies 0 \leq P(S) \leq 1$
2. For mutually exclusive events, $P(\union_\NN S_i) = \sum_\NN P(S_i)$
	1. Yields $P(\emptyset) = 0$

Properties that follow from axioms:
- $P(S^c) = 1 - P(S)$
- $E \subseteq F \implies P(E) \leq P(F)$
	- Proof: $E \subseteq F \implies F = E \union (E^c \intersect F)$, which are disjoint, so $P(E) \leq P(E) + P(E^c \intersect F) = P(F)$.
- $P(E \union F) = P(E) + P(F) - P(E \intersect F)$

- Conditional Probability: $P(F)P(E \mid F) = P(E \intersect F) = P(E)P(F \mid E)$
	- Generalization: $P(\intersect_\NN E_i) = P(E_1) P(E_2 \mid E_1)P(E_3\mid E_1 \intersect E_2) \cdots$
- Bayes Rule:
	$$
	P(E) = P(F)P(E \mid F) + P(F^c)P(E \mid F^c) \\
	P(E) = \sum_i P(A_i) P(E \mid A_i)
	$$
	- Generalization: for $\coprod_{i=1}^n A_i = \Sigma$ and $A=A_i$ for some $i$,
		$$
		P(A \mid B) = \frac{P(A)P(B\mid A)}{\sum_{j = 1}^n P(B \mid A_j)} \\
		$$
	- LHS: the posterior probability, while $P(A_i)$ are the priors.
- Odds: $P(A) / P(A^c)$
	- Conditional odds: $\frac{P(A \mid E)}{P(A^c \mid E)} = \frac{P(A)}{P(A^c)} \frac{P(E \mid A)}{P(E \mid A^c)} $
- Independence: $P(A \intersect B) = P(A) P(B)$
- Change of variables for pdfs:
	- If $g$ is differentiable and monotonic and $Y=g(X)$, then
	$$
	f_Y(y) = \cases{
		(f_X \circ g^{-1})(y) \abs{\dd{}{y}g^{-1}(y)} & $y \in \im(g)$ \\
		0 & $y\not \in \im(g)$
	}
	$$

## Distributions

Let $X$ be a random variable, and $f$ be its probability density function satisfying $f(k) = P(X = k)$

- Uniform:
	- Consider an event with $n$ mutually exclusive outcomes of equal probability, and let $X \in \theset{1,2,\ldots, n}$ denote which outcome occurs. Then,
$$\begin{align*}
f(k) 			&= \quad \frac 1 n \\
\mu 			&= \frac n 2 \\
\sigma^2 	&= a
\end{align*}$$
	- Examples:
		- Dice rolls where $n=6$.
		- Fair coin toss where $n=2$.
	- Continuous: $\mu = (1/2)(b+a), \sigma^2 = (1/12)(b-a)^2$

- Bernoulli:
	- Consider a trial with either a positive or negative outcome, and let $X \in\theset{0,1}$ where $1$ denotes a success with probability $p$. Then,
$$\begin{align*}
f(k) 			&= \quad \cases{
	1-p, 		& $k = 0$ \\
	p, 			& $k = 1$
} \\
\mu 			&= \quad p \\
\sigma^2 	&= \quad p(1-p)
\end{align*}$$
	- Examples:
		- A weighted coin with $P(\text{Heads}) = p$

- Binomial
  - Consider a sequence of independent Bernoulli trials, let $X \in \theset{1,\ldots, n}$ denote the number of successes occurring in $n$ trials. Then,
$$\begin{align*}
f(k) 			&= \quad {n \choose k} p^k (1-p)^{n-k} \\
\mu 			&= \quad np \\
\sigma^2 	&= \quad np(1-p)
\end{align*}$$
	- Examples:
		- A sequence of coin flips and the numbers of total heads occurring.

- Poisson
	- Given a parameter $\lambda > 0$ that denotes the rate per unit time of an event occurring and $X$ the number of times the event occurs in one unit of time,
$$
\begin{align*}
f(k) 			&= \quad \frac{\lambda^k}{k!}e^{-\lambda} \\
\mu 			&= \quad \lambda \\
\sigma^2 	&= \quad \lambda^2
\end{align*}$$
	- Approximates binomial when $n >> 1$  and $p << 1$ by using $\lambda = np$

- Negative Binomial
	- $B^- (r, p)$: similar to binomial, where $X$ is the number of trials it takes to accumulate $r$ successes
$$\begin{align*}
f(k) &= \quad {k-1 \choose r-1}p^r(1-p)^{k-r} \\
\mu &= \quad \frac r p \\
\sigma^2 &= \quad \frac{r (1-p)}{p^2}
\end{align*}$$

- Geometric:
	- Consider a sequence of independent Bernoulli trials, let $X \in \theset{1,\ldots, n}$ where $X=k$ denotes the first success happening on the $k\dash$th trial. Then,
$$\begin{align*}
f(k) 			&= \quad (1-p)^{k-1} p \\
\mu 			&= \quad \frac 1 p \\
\sigma^2 	&= \quad \frac{1-p}{p^2}
\end{align*}$$
	- Note this is equal to $B^-(1, p)$
	- Examples:
		- A sequence of coin flips and the number of flips before the first heads appears.

- Hypergeometric
	- $H(n, m, s)$ An urn filled with $n$ balls, where $m$ are white and $n-m$ are black; pick a sample of size $s$ and let $X$ denote the number of white balls:
$$\begin{align*}
f(k) 			&= \quad {m \choose k} {n-m \choose s-k} {n \choose s}^{-1} \\
\mu 			&= \quad \frac{ms}{n} \\
\sigma^2 	&= \quad \frac{ms}{n}(1- \frac{m}{n})\left( 1 - \frac{s-1}{n-1} \right)
\end{align*}$$

- Normal
$$
f(x) = \frac{1}{\sigma \sqrt{2\pi}}e^{-\frac{(x-\mu)^2}{2\sigma^2}} \\
$$

$z$  |  $\Phi(z)$
--|--
$0$  | $0.5$
$1$  | $0.69$
$1.5$  |  $0.84$
$2$  |  $0.93$
$2.5$  | $0.97$
$>3$  |  $0.99$



# Common Problems
- Birthday Paradox
- Coupon Collectors
	- Given $X = \theset{1, \cdots n}$, what is the expected number of draws until all $n$ outcomes are seen?

## Shortcuts
- When computing expected values, variation, etc, just insert a parameter $k$ and compute the moments $E[X^k]$. Then with a solution in terms of $k$, let $k=1,2$ etc.
- Neat property of pdfs: $P(X \in N_\varepsilon(a)) \approx \varepsilon f(a)$

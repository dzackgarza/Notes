Summary for GRE:
- Calculating Mean, standard deviation, and variance from PDF,
- Bernoulli trials.

- Random Variable
	- For $(\Sigma, E, \mu)$ a probability space with sample space $\Sigma$ and probability measure $\mu$, a random variable is a function $X: \Sigma \to \RR$

- Mean / Expected Value: $$E[X] = \int x P(X = x) = \int x f_X(x)$$
	- Linearity of expectation:
		$$E[\sum a_i X_i] = \sum a_i E[X_i]$$
		Does not matter whether or not the $X_i$ are independent.

- Variance: $$\mathrm{Var}(X) = \int (x - E[X])^2 f_X(x) ~dx$$

- Standard deviation: $$\sigma(X) = \sqrt{\mathrm{Var}(X)} = \sqrt{\int (x - E[X])^2 f_X(x) ~dx} $$

- Covariance: $$ $$

- Baye's Theorem: todo

Birthday Paradox

$$\begin{align*}
\end{align*}$$

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
- Bayes Rule: $P(E) = P(F)P(E \mid F) + P(F^c)P(E \mid F^c)$
	- Generalization: for $\coprod_{i=1}^n A_i = \Sigma$,
		$$P(A_i \mid B) = \frac{P(B)P(B\mid A_i)}{\sum_{j = 1}^n P(B \mid A_j)}$$
	- LHS: the posterior probability, while $P(B_i)$ are the priors.
## Distributions

Let $X$ be a random variable.

- Uniform:
	- Consider an event with $n$ mutually exclusive outcomes of equal probability, and let $X \in \theset{1,2,\ldots, n}$ denote which outcome occurs. Then,
$$\begin{align*}
P(X = k) &= \quad \frac 1 n
\end{align*}$$
	- Examples:
		- Dice rolls where $n=6$.
		- Fair coin toss where $n=2$.

- Bernoulli:
	- Consider a trial with either a positive or negative outcome, and let $X \in\theset{0,1}$ where $1$ denotes a success with probability $p$. Then,
$$\begin{align*}
P(X = k) &= \quad \cases{
	1-p, 		& $k = 0$ \\
	p, 			& $k = 1$
} \\
\mu &= \quad p \\
\sigma^2 &= \quad p(1-p)
\end{align*}$$
	- Examples:
		- A weighted coin with $P(\text{Heads}) = p$

- Geometric:
	- Consider a sequence of independent Bernoulli trials, let $X \in \theset{1,\ldots, n}$ where $X=k$ denotes the first success happening on the $k\dash$th trial. Then,
$$\begin{align*}
P(X = k) &= \quad (1-p)^{k-1} p \\
\mu &= \quad \frac 1 p \\
\sigma^2 &= \quad \frac{1-p}{p^2}
\end{align*}$$
	- Examples:
		- A sequence of coin flips and the number of flips before the first heads appears.

- Binomial
  - Consider a sequence of independent Bernoulli trials, let $X \in \theset{1,\ldots, n}$ denote the number of successes occurring in $n$ trials. Then,
$$\begin{align*}
P(X = k) &= \quad {n \choose k} p^k (1-p)^{n-k} \\
\mu &= \quad np \\
\sigma^2 &= \quad np(1-p)
\end{align*}$$
	- Examples:
		- A sequence of coin flips and the numbers of total heads occuring.

- Normal
$$
f_X(x) = \frac{1}{\sigma \sqrt{2\pi}}e^{-\frac{(x-\mu)^2}{2\sigma^2}}
$$

$z$  |  $\Phi(z)$
--|--
$0$  | $0.5$
$1$  | $0.69$
$1.5$  |  $0.84$
$2$  |  $0.93$
$2.5$  | $0.97$
$>3$  |  $0.99$


- Poisson
- Exponential

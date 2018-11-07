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
- Standard deviation: $$\sigma(X) = \sqrt{\mathrm{Var}(X)}$$
- Baye's Theorem: todo

Birthday Paradox

## Distributions

-Uniform:
  - $P(X = k) = \frac 1 n$

- Bernoulli:
  - Trial with two outcomes, success or failure, with probability $p$ and $1-p$ respectively.
	- $P(\text{k successes in n trials}) = {n\choose k} p^k(1-p)^{n-k}$
  - Or let $X$ be a r.v. where $X\in\theset{0,1}$ with $X=1$ denoting a success, then $P(X=1) = p$
$$
P(X = 1) = p \\
\mu = p \\
\sigma^2 = p(1-p)
$$

- Geometric:
  - Independent Bernoulli trials, gives the probability that the first success happens on the $k\dash$th trial.
$$
P(X = k) = (1-p)^{k-1} p \\
\mu = \frac 1 p \\
\sigma^2 = \frac{1-p}{p^2}
$$

- Binomial
  - Independent Bernoulli trials, gives the probability of $k$ successes out of $n$ trials.
$$
P(X = k) = {n \choose k} p^k (1-p)^{n-k} \\
\mu = np \\
\sigma^2 = np(1-p)
$$

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

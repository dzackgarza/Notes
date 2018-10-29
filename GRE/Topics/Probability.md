Summary for GRE:
- Calculating Mean, standard deviation, and variance from PDF,
- Bernoulli trials.

- Mean / Expected Value: $$E[X] = \int x P(X = x) = \int x f_X(x)$$
	- Linearity of expectation:
		$$E[\sum a_i X_i] = \sum a_i E[X_i]$$
		Does not matter whether or not the $X_i$ are independent.
- Variance: $$\mathrm{Var}(X) = \int (x - E[X])^2 f_X(x) ~dx$$
- Standard deviation: $$\sigma(X) = \sqrt{\mathrm{Var}(X)}$$
- Baye's Theorem: todo

Birthday Paradox

## Distributions
- Bernoulli: trial two outcomes of probability $p$ and $1-p$ respectively.
	- $P(\text{k successes in n trials}) = {n\choose k} p^k(1-p)^{n-k}$
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

- Binomial
$$
\mu = np \\
\sigma^2 = npq
$$

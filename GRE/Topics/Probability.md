Summary for GRE:
- Calculating Mean, standard deviation, and variance from PDF,
- Bernoulli trials.

- Mean / Expected Value: $$E[X] = \int x P(X = x) = \int x f_X(x)$$
	- Linearity of expectation:
		$$E[\sum a_i X_i] = \sum a_i E[X_i]$$
		Does not matter whether or not the $X_i$ are independent.
- Variance: $$\mathrm{Var}(X) = \int (x - E[X])^2 f_X(x) ~dx$$
- Standard deviation: $$\sigma(X) = \sqrt{\mathrm{Var}(X)}$$

## Distributions
- Bernoulli: trial two outcomes of probability $p$ and $1-p$ respectively.
	- $P(\text{k successes in n trials}) = {n\choose k} p^k(1-p)^{n-k}$

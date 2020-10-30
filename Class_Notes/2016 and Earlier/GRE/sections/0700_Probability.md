## Definitions
$$\begin{align*}
L_2(X) &= \theset{f: X \to \RR: \int_\RR f(x) ~dx < \infty} \\
\inner{g}{f}_{2} &= \int_\RR g(x)f(x) ~dx \\
E[\wait] &= \inner{\wait}{f} \\
\norm{f}_2^2 &= \inner{f}{f} = \int_\RR f(x)^2 ~dx\\
\id:& ~\RR \to \RR, \id(x) = x \\
(T_{p}f)(x) &= f(p- x) \\
(f \ast g)(p) &= \int_\RR f(t)g(p-t)~dt = \int_\RR f(t)(T_{p}g)(t) ~dt = \inner{T_pg}{f}
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
$$
E[X] \definedas \inner{\id}{f} = \int_\RR x f(x) ~dx
$$
	(Also denoted $\mu_X$)
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
	- Can also defined as $\inner{(\id - \inner{\id}{f})^2}{f}$
		- Take the portion of the id function in the orthogonal complement of $f$, squared, and project it back onto $f$?
	- Properties:
		- $\mathrm{Var}(aX + b) = a^2\mathrm{Var}(X)$
		- $\mathrm{Var}(\sum_\NN X_i) = \sum_i \mathrm{Var}(X_i) + 2 \sum_{i < j}\mathrm{Cov}(X_i, X_j)$

- Covariance:
$$\begin{align*}
\mathrm{Cov}(X,Y) &= E[(X-\mu_X)(Y-\mu_Y)] \\
 &= E[XY] - E[X]E[Y]
\end{align*}$$
	- Properties:
		- $\mathrm{Cov}(X, X) = \mathrm{Var}(X)$
		- $\mathrm{Cov}(aX, Y) = a\mathrm{Cov}(X,Y)$
		- $\mathrm{Cov}(\sum_{\NN} X_i, \sum_\NN Y_j) = \sum_i \sum_j\mathrm{Cov}(X_i, Y_j)$

- Stirling's Approximation: $k! \sim k^\frac{k+1}{2}e^{-k} \sqrt{2\pi} $

- Markov Inequality: $P(X \geq a) \leq \frac 1 a E[X]$
	- One-sided Markov: $P(X \in N_\varepsilon(\mu)) = 2\frac{\sigma^2}{\sigma^2 + a^2}$

- Chebyshev's Inequality: $P(\abs{X - \mu} \geq a) \leq \left( \frac \sigma k \right)^2$
	- Apply Markov to the variable $(X-\mu)^2$ and $a=k^2$

- Central Limit Theorem: for $X_i$ i.i.d.,
$$
\lim_n \frac{\sum_{i=1}^n X_i - n\mu}{\sigma \sqrt n} \sim N(0, 1)
$$

- Strong Law of Large Numbers:
$$
P(\frac{1}{n} \sum X_i \rightarrow \mu) = 1
$$

- Chernoff Bounds: for all $t > 0$,
$$
P(X \in N_\varepsilon(a)^c) \leq 2 e^{-at}M_X(t) \\
$$

- Jensen Inequality: $E[f(X)] \geq f(E[X])$

- Entropy: $H(X) = - \sum p_i \ln p_i$


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
- pdf of a sum of independent random variables: $f_{X+Y} = (F_X \ast f_y)$


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

## Notes, Shortcuts, Misc
- When computing expected values, variation, etc, just insert a parameter $k$ and compute the moments $E[X^k]$. Then with a solution in terms of $k$, let $k=1,2$ etc.
- Neat property of pdfs: $P(X \in N_\varepsilon(a)) \approx \varepsilon f(a)$
- The Gamma Function
	$$\Gamma(x+1) = \int_{\RR^{>0}} e^{-t} t^x ~dt$$
	- Integrate by parts to obtain functional relation $\Gamma(x+1) = x\Gamma(x)$
- Boole's Inequality: $P(\union_\NN A_i) \leq \sum_\NN P(A_i)$
- For any function $f:X \to \RR$, there is a lower bound: $\max_{x\in X}f(x) \geq E[f(x)]$
- Moment Generating Functions: $M(t) = E[e^{Xt}]$
	- Then $M^{(n)}(0)$ is the $n\dash$th moment, i.e. $M'(0) = E[X], M''(0) = E[X^2]$, etc.
	- $M_{X+Y}(t) = M_X(t)M_Y(t)$ (if independent)
	- $M_{aX + b}(t) = e^{bt} M_X(at)$
	- $f_X = \mathcal{F}^{-1}(M_X(it))$, denoting the inverse Fourier transform,

Table: let $q = 1-p$
$$\begin{array}{c|ccc}
\text{Distribution} &  f(x) && \mu & \sigma^2 & M(t) \\
\hline \\
B(n, p) & {n\choose x}p^x q^{n-x} && np & npq & (pe^t + q)^n
\\
P(\lambda) & \frac{\lambda^x}{x!}e^{-\lambda} && \lambda & \lambda & e^{\lambda(e^t-1)}
\\
G(p) & q^{x-1}p && \frac{1}{p} & \frac{q}{p^2} & \frac{pe^t}{1-qe^t}
\\
B^-(r, p) & {n-1 \choose r-1}p^rq^{n-r} && \frac{r}{p} & \frac{rq}{p^2} & \left(\frac{pe^t}{1-qe^t}\right)^r
\\
U(a, b) & \indicator{a\leq x\leq b}\frac 1 {b-a} && \frac{1}{2}(a+b) & \frac{1}{12}(b-a)^2 & \frac{e^{tb} - e^{ta}}{t(b-a)}
\\
Exp(\lambda) & \indicator{0 \leq x}\lambda e^{-\lambda x} && \frac 1 \lambda & \frac 1 {\lambda^2} & \frac \lambda {\lambda - t}
\\
\Gamma(s, \lambda) & \indicator{0 \leq x} \frac{\lambda e^{-\lambda x} (\lambda x)^{s-1}}{\Gamma(s)} && \frac s \lambda & \frac s {\lambda^2}  & \left( \frac{\lambda}{\lambda - t} \right)^s \\
N(\mu, \sigma^2) & \frac{1}{\sigma \sqrt{2\pi}}e^{-\frac{(x-\mu)^2}{2\sigma^2}} && \mu & \sigma^2 & e^{\mu t + \frac{1}{2}\sigma^2 t^2}
\end{array}$$


- Why you need the Stieltjes Integral: let $X \sim B(n, \frac 1 2), Y \sim U(0, 1),$ and
$$
Z = \cases{
	X, & $X = 1$ \\
	Y, & else
}
$$
then $\abs{Z} = \abs{\RR}$ so $Z$ is not discrete, but $P(X = 1) = \frac 1 2 \neq 0$ so $Z$ is not continuous. Definition:
$$
\int _ { a } ^ { b } g ( x ) ~d F ( x ) = \lim \sum _ { i = 1 } ^ { n } g \left( x _ { i } \right) \left( F \left( x _ { i } \right) - F \left( x _ { i - 1 } \right) \right)
$$

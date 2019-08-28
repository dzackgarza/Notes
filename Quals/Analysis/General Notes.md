## Definitions

- Banach Space
- $L^p$

## Useful Results
- Cauchy-Schwarz
- Young's Inequality
- Holder's Inequality
- Minkowski's Inequality
- Jensen's Inequality:
$$
r^{-1} \definedas p^{-1} + q^{-1} - 1 \implies \norm{f \ast g}_r \leq \norm{f}_p \norm{g}_q
$$
  - Useful variant - take $q = 1$ to get $\norm{f \ast g}_p \leq \norm{f}_p \norm{g}_1$
  - Take $p=1$ to show $L_1$ is closed under $\ast$.
- The Riemann-Lebesgue Lemma
- Proving that $\delta \not\in L_1(\RR)$ and that there is no such identity
  - Rather, is a distribution or measure that _acts_ on $f$ and satisfies $f(x) \int_\RR f(t)\delta(t-x) ~dt$
- Fubini's Theorem
- Density Results:
  - $C_c(\RR) \subset C_0(\RR)$
- $C_c(\RR) \intersect C^\infty(\RR) \neq \emptyset$, e.g. take $f(x) = e^{\frac{-1}{x^2}} \chi_{(0, \infty}(x)$.
- The Banach Algebra $L^1(\RR)$ is not a principal ideal domain.
- Every locally compact abelian group $G$ has a unique Borel measure (up to scaling) that is positive, regular, translation-invariant (the Haar measure).
  - For $\RR, (S_1)^2$, equal to the Lebesgue measure. For $\ZZ$, the counting measure.

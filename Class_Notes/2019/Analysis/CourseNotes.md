---
title: "Real Analysis"
---
# Summary

Measure and integration theory with relevant examples from Lebesgue integration, Hilbert spaces (only with regard to $L^2$), $L^p$ spaces and the related Riesz representation theorem. Hahn, Jordan and Lebesgue decomposition theorems, Radon-Nikodym Theorem and Fubini's Theorem.

*Texts*

- Real Analysis, by E. M. Stein and R. Shakarchi
- Real Analysis, by G. B. Folland
- An introduction to measure theory, by Terrence Tao
- Real and Complex Analysis, by W. Rudin

[An old course page](http://alpha.math.uga.edu/~lyall/8100Fall2014/index.html)

## Big Theorems

- **Bolzano-Weierstrass**: every bounded sequence has a convergent subsequence.
- **Heine-Borel**: in $\RR^n, X$ is compact $\iff X$ is closed and bounded.
- **Monotone Convergence Theorem (MCT)**: If $f_n \in L^+$ and $f_n \nearrow f$ a.e., then $\lim \int f_n = \int \lim f_n = \int f$.
- **Dominated Convergence Theorem (DCT)**: If $f_n \in L^1$ and $f_n \to f$ a.e. with $\abs f_n \leq \abs g$ for some $g\in L^1$, then $\lim \int f_n = \int \lim f_n = \int f$.
- **Fatou**: If $f_n \in L^1$ (with no other real conditions), then $\int \liminf f_n \leq \liminf \int f_n$.

## Big Counterexamples

- Differentiability $\implies$ continuity but not the converse:  The Weierstrass function is continuous but nowhere differentiable.
- $f$ continuous does not imply $f'$ is continuous: $f(x) = x^2 \sin(x)$.
- Limit of derivatives may not equal derivative of limit: $f(x) = \frac{\sin(nx)}{n^c}$ where $0 < c < 1$.
  - Also shows that a sum of differentiable functions may not be differentiable.
- Limit of integrals may not equal integral of limit: $\sum \indic{x = q_n \in \QQ}$.
- A sequence of continuous functions converging to a discontinuous function: $f(x) = x^n$ on $[0, 1]$.

!include sections/2019-08-15.md

!include sections/2019-11-26.md

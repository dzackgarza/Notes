---
title: Notation
---

- $(W, \omega \in \Omega_2(W))$ is a symplectic manifold
- $H: W\to \RR$ a Hamiltonian with $X_H$ its vector field.
- $H: W\cross \RR \to \RR$ given by $H_t: W\to \RR$ is a time-dependent Hamiltonian.
- The action functional is given by
  \begin{align*}
  \mca_H: \mcl W &\to \RR\\
  x &\mapsto -\int_{\DD} u^* \omega + \int_0^1 H_t(x(t)) ~dt
  \end{align*}
  where $\mcl W$ is the contractible loop space of $W$,
  $u: \DD \to W$ is an extension of $x: S^1\to W$ to the disc with $u(\exp(2\pi i t)) = x(t)$.
  - Example: $W = \RR^{2n} \implies A_H(x) = \int_0^1 \qty{H_t ~dt - p~dq}$. 
- $\mcm(x, y)$

For $x, y$ contractible loops in $W$ that are critical points of $\mca_H$,
\begin{align*}
C_{\searrow}(x, y) \definedas \theset{ 
u \in C^\infty{\RR\cross S^1; W}; 
\lim_{s\to -\infty}u(s, t) = x(t), 
\lim_{s\to\infty}u(s, t) = y(t),
\left|\frac{\partial u}{\partial s}(s, t)\right| \leq K e^{-\delta|s|} \quad \text { and } \quad\left|\frac{\partial u}{\partial t}(s, t)-X_{H}(u)\right| \leq K e^{-\delta|s|}
}
\end{align*}
where $K, \delta > 0$ are constants depending on $u$.
So $\abs{\del_s u(s, t)}, \abs{\del_t u(s, t) - X_H(u)}  \sim e^{\abs{s}}$.

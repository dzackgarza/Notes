---
title: Problem Set 6
---

# Humphreys 5.3

Let $\lambda$ be regular, antidominant, and integral, and suppose $M(\lambda)^n \neq 0$ but $M(\lambda)^{n+1} = 0$.
In the Jantzen filtration of $M(w\cdot \lambda)$, show that $n = \ell_\lambda(w)$ where $\ell_\lambda$ is the length function of the system $(W_{[\lambda]}, \Delta_{[\lambda]})$.
Thus there are $\ell(w) + 1$ nonzero layers in this filtration.

> Use 0.3(2) to describe $\Phi^+_{w\cdot \lambda}$.

# Humphreys 7.2

Let $\lieg = \liesl(2, \CC)$ and show that $T_{\lambda}^\mu$ need not take Verma modules to Verma modules.

> For example, let $\lambda = 1$ and $\mu = -3$.

## Solution

Let $\lambda = 1$ and $\mu = -3$, noting that both are integral, $\mu$ is antidominant, and $\mu, \lambda$ are *compatible* as in the definition in 7.1.
We can then consider $\nu \definedas \mu - \lambda = -3 - 1 = -4$, and to compute the $\bar \nu$ that appears in the definition of $T_\lambda^\mu$, we consider the (usual) $W\dash$orbit of $\nu$.
In $\liesl(2, \CC)$, we identify $\Lambda = \ZZ$, $W = \theset{\id, s_\alpha}$, and $s_\alpha \lambda = -\lambda$ as reflection about $0$.
Thus the orbit is given by $W\nu = \theset{-4, 4}$, which contains the unique dominant weight $\bar \nu = 4$.
We thus have
\begin{align*}
T_{1}^{-3}(\wait) = \mathrm{pr}_{-3} \qty{ L(4) \tensor \mathrm{pr}_1(\wait)}
.\end{align*}

We use the fact that we always have an exact sequence of the form
\begin{align*}
0 \to N(\lambda) \to M(\lambda) \to L(\lambda) \to 0
.\end{align*}

where in $\liesl(2, \CC)$ we can identify $N(\lambda) = L(-\lambda - 2)$, thus we have
\begin{align*}
0 \to L(-\lambda-2) \to M(\lambda) \to L(\lambda) \to 0
.\end{align*}

Here we can identify 
\begin{align*}
L(-\lambda - 2) 
&= L(-1 - 2) \\
&= L(-3) \\
&= L(\mu) \\
&= M(\mu) \quad\text{since $\mu = -3$ is integral and antidominant}
,\end{align*}

thus we can rewrite the exact sequence as

\begin{center}
\begin{tikzcd}
0 \ar[r] \ar[equal]{d} & M(\mu) \ar[r] \ar[equal]{d} & M(\lambda) \ar[r] \ar[equal]{d} & L(\lambda) \ar[r] \ar[equal]{d} & 0 \ar[equal]{d} \\
0 \ar[r] & M(-3) \ar[r] & M(1) \ar[r] & L(1) \ar[r] & 0
\end{tikzcd}
\end{center}

We know that the translation functor is exact, so applying $T_\lambda^\mu$ yields the following short exact sequence:
\begin{center}
\begin{tikzcd}
0 \ar[r] & T_{1}^{-3} M(-3) \ar[r] & T_1^{-3} M(1) \ar[r] & T_1^{-3} L(1) \ar[r] & 0
\end{tikzcd}
\end{center}

Since not *both* $\lambda, \mu$ are antidominant, we can not apply Theorem 7.6 to compute these, so we instead turn to the definition.
We claim that
\begin{align*}
T_1^{-3} L(1) 
&= \mathrm{pr}_{-3} \qty{ L(4) \tensor \mathrm{pr}_{1}(L(1))} \\
&= \mathrm{pr}_{-3} \qty{ L(4) \tensor L(1)} \\
&= 0
.\end{align*}

This follows from the fact that any module in $\OO_{\chi_{-3}}$ has a composition series for which *all* of the composition factors have highest weight in $W_{[\lambda]} = \theset{\lambda, -\lambda-2} = \theset{1, -3}$, but $L(4)\tensor L(1)$ has a composition factor with highest weight $4$.

# Exercise p.108

a. Work out the Jantzen filtration sections for $M(w_0 \cdot \lambda)$.
  List carefully any additional assumptions or facts needed to deduce $M(w_0\cdot \lambda)^i$ uniquely.
b. Continue \#4.11 for the case of singular $\lambda$, e.g.  $(\lambda + \rho, \hat \alpha) = 1$.
  If you didn't deduce the structure of all $M(w\cdot \lambda)$ there, can you complete it now?
c. Work out the non-integral case. (There are several different cases to consider.)


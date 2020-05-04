---
title: Problem Set 5
---

# 4.3

Proposition
:   Suppose $\lambda + \rho \in \Lambda^+$.
    Then $M(w\cdot \lambda) \subset M(\lambda)$ for all $w\in W$.
    Thus all $[M(\lambda): L(w\cdot \lambda)] > 0$.

    \

    More precisely, if $w = s_n \cdots s_1$ is a reduced expression for $w$ in terms of simple reflections corresponding to roots $\alpha_i$, then there is a sequence of embeddings:

    $$
    M(w \cdot \lambda)=M\left(\lambda_{n}\right) \subset M\left(\lambda_{n-1}\right) \subset \cdots \subset M\left(\lambda_{0}\right)=M(\lambda)
    $$

    Here
    \begin{align*}
    \lambda_{0}:=\lambda, \lambda_{k}:=s_{k} \cdot \lambda_{k-1}=\left(s_{k} \ldots s_{1}\right) \cdot \lambda &\implies \lambda_{n}=s_{n} \cdot \lambda_{n-1}=w \cdot \lambda \\
    w \cdot \lambda=\lambda_{n} \leq \lambda_{n-1} \leq \cdots \leq \lambda_{0}=\lambda &\text{with}\quad
    \left\langle\lambda_{k}+\rho, \alpha_{k+1}^{\vee}\right\rangle \in \mathbb{Z}^{+} \text{ for } k=0,\cdots,n-1
    .\end{align*}

Assume $\lambda + \rho \in \Lambda^+$.

a. Prove that the unique simple submodule of $M(\lambda)$ is isomorphic to $M(w_\diamond \cdot \lambda)$, where $w_\diamond$ is the longest element of $W$.

b. In case $\lambda \in \Lambda^+$, show that the inclusions obtained in the above proposition are all proper.

# 4.6

Theorem (Verma)
:   Let $\lambda \in \lieh\dual$.
    Given $\alpha > 0$, suppose $\mu \definedas s_\alpha \cdot \lambda \leq \lambda$.
    Then there exists an embedding $M(\mu) \subset M(\lambda)$.

Work through the steps of Verma's Theorem in the special case discussed in the previous problem

## Solution

Let $\lieg = \liesl(3, \CC)$ and identify its root system $A_2$ with $\Delta = \theset{\alpha, \beta}$ and $\Phi^+ = \theset{\alpha, \beta, \gamma\definedas \alpha + \beta}$
We can also identify the Weyl group as $W = \theset{1, s_\alpha, s_\beta, s_{\alpha}s_\beta, s_{\beta}s_\alpha, s_\gamma}$ where there is a reduced expression $s_\gamma = w_0 = s_\alpha s_\beta s_\alpha$.

We can begin by letting $\lambda \in \Lambda$ be an arbitrary integral weight and let $\mu$ be an arbitrary weight linked to $\lambda$, where WLOG apply some Weyl group element to $\mu$ to place it in the dominant chamber and assume 
$$
\mu \definedas s_\alpha \cdot \lambda \leq \lambda
.$$

### Part 1

Since $\mu$ is assumed integral, we can find some $w\in W$ such that
\begin{align*}
\mu' \definedas w\inv \cdot \mu \in \Lambda^+ - \rho
.\end{align*}

Claim: $w = s_\alpha s_\beta$

As in Proposition 4.3, we then write
\begin{align*}
\mu_0 &= \mu' \\
\mu_1 &= s_\beta \cdot \mu' \\
\mu_2 &= s_\alpha s_\beta \cdot \mu' = w\cdot \mu ' = \mu
\end{align*}

which (by that Proposition) gives a sequence of embeddings
\begin{align*}
M(\mu) = M(\mu_2) \injects M(\mu_1) &\injects M(\mu_0) = M(\mu') \\
\qtext{i.e.} &\\
M(\mu) \injects M(s_\beta \cdot \mu') &\injects M(\mu')
.\end{align*}


# 4.11

In the case of $\liesl(3, \CC)$, what can be said at this point about Verma modules with a singular integral highest weight?

> Aside from the trivial case $-\rho$, a typical linkage class has 3 elements.
> For example, if $\lambda$ lies in the $\alpha$ hyperplane and is antidominant, the linked weights are
> $\lambda,~~ s_\beta \cdot \lambda, ~~ s_\alpha s_\beta \cdot \lambda$.

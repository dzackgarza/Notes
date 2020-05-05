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

We can begin by letting $\lambda \in \Lambda$ be an arbitrary integral weight and let $\mu\neq \lambda$ be an arbitrary weight linked to $\lambda$, where WLOG apply some Weyl group element to $\mu$ to place it in the dominant chamber and assume 
$$
\mu \definedas s_\alpha \cdot \lambda < \lambda
$$
(where the inequality is strict).

### Part 1

Since $\mu$ is assumed integral, we can find some $w\in W$ such that
\begin{align*}
\mu' \definedas w\inv \cdot \mu \in \Lambda^+ - \rho
.\end{align*}

**Claim:** 
$w = s_\alpha s_\beta$, so $w\inv = s_\beta s_\alpha$ and thus
$$
\mu' = s_\beta s_\alpha \cdot \mu
$$

As in Proposition 4.3, we then write
\begin{align*}
\mu_0 &= \mu' \\
\mu_1 &= s_\beta \cdot \mu' \\
\mu_2 &= s_\alpha s_\beta \cdot \mu' = w\cdot \mu ' = \mu
\end{align*}

which satisfies
\begin{align*}
\mu = \mu_2 \leq \mu_1 &\leq \mu_0 = \mu' \\
\mu = s_\alpha s_\beta \cdot \mu' \leq s_\beta \mu' &\leq \mu'
.\end{align*}

which (by the proposition) gives a sequence of embeddings
\begin{align*}
M(\mu) = M(\mu_2) \injects M(\mu_1) &\injects M(\mu_0) = M(\mu') \\
\qtext{i.e.} &\\
M(\mu)  = M(s_\alpha s_\beta \cdot \mu') \injects M(s_\beta \cdot \mu') &\injects M(\mu')
.\end{align*}

### Step 2
We now define
\begin{align*}
\lambda' \definedas w\inv \lambda = s_\beta s_\alpha \cdot \lambda
\end{align*}

and the parallel list of weights
\begin{align*}
\lambda_0 &= \lambda' \\
\lambda_1 &= s_\beta \cdot \lambda' \\
\lambda_2 &= s_\alpha s_\beta \cdot \lambda' \definedas \lambda
.\end{align*}

We can similarly use the fact that $\lambda \neq \mu \implies \mu_k \neq \lambda_k$ for any $k$.

### Step 3

To relate $\mu_k$ to $\lambda_k$, We now define $w_k = s_n \cdots s_{k+1}$:
\begin{align*}
w_0 &= s_\alpha s_\beta \\
w_1 &= s_\alpha \\
w_2 &\definedas 1
\end{align*}

and using the calculation 
$$
\mu_k = w_k\inv s_\alpha w_k \cdot \lambda_k = s_{\beta_k} \cdot \lambda_k
$$
we compute 
\begin{align*}
s_{\beta_0} &= (s_\alpha s_\beta)\inv s_\alpha (s_\alpha s_\beta) = s_\gamma  \\
s_{\beta_1} &= s_\alpha \inv s_\alpha s_\alpha = s_\alpha \\
s_{\beta_2} &\definedas s_\alpha \\
\end{align*}

and thus obtain
\begin{align*}
\mu_0 &= s_\alpha \cdot \lambda_0 \\
\mu_1 &= s_\alpha \cdot \lambda_1 \\
\mu_2 &= s_\gamma \cdot \lambda_2
.\end{align*}


### Step 4

We have $\mu_0 \geq \mu_1 \geq \mu_2$ with $\lambda_0 < \mu_0$ but $\lambda_2 > \mu_2$, so we now look for where the inequality switches.

It suffices to check how $\mu_1$ and $\lambda_1$ are related, and we find $\mu_1 < \lambda_1$.

### Step 5

From the last step, we fix $k=0$ and now want to show $M(\mu_{k+i}) \subset M(\mu_{k+i})$ for $i=1, 2$, since the $i=2$ case yields the desired $M(\mu) \subset M(\lambda)$.

### Step 6

We first want to show $M(\mu_1) \subset M(\lambda_1)$.
We write 
$$
\mu_1 - \lambda_1  = s_1 \mu_0 - s_1 \lambda_0
.$$
We then note that
\begin{align*}
\mu_1 - \lambda_1 &= c_1 \beta_1 \\
s_\alpha \mu_0 - s_1 \lambda_0 = s_\alpha (\mu_0 - \lambda_0) &= d_1 \beta_0 
\end{align*}

where $c_1$ is negative and $b_1$ is positive, and we already know that $\beta_1 = \beta_0 = \alpha$ by a direct computation.
Thus we have $\mu_1 = s_\alpha \lambda_1$, and applying Proposition 1.4, 
\begin{align*}
M(s_\alpha \cdot \lambda_1) \injects M(\lambda_1) \implies M(\mu_1) \injects M(\lambda_1)
.\end{align*}

### Step 7


We thus have embeddings
\begin{align}
M(\mu) = M(\mu_2) = M(s_\alpha \cdot \mu_1) \injects M(\mu_1) \injects M(\lambda_1)
,\end{align}

and we then apply Proposition 4.5: set $n = \inner{\lambda+\rho}{\alpha\dual}$ (which is integral by assumption).


Claim: regardless of the sign of $n$, we obtain
\begin{align*}
M(\mu) = M(\mu_2) \subset M(s_\beta \cdot\lambda_1) \injects M(\lambda_2) = M(\lambda)
,\end{align*}

which is what we wanted to show.

This follows from analyzing the following cases:

- If $n \leq 0$, we have $$M(\lambda_1) \injects M(s_\beta \cdot \lambda_1) = M(\lambda),$$ and since $M(\mu_1) \injects M(\lambda_1)$ by step 6, composing this with the RHS of the embeddings in equation (1) yields the desired embedding.
- Otherwise, $n\geq 0$, and we instead obtain $$ M(\mu_2) = M(s_\alpha \cdot \mu_1) \injects M(s_\alpha \cdot \lambda_1) = M(\lambda_2) = M(\lambda),$$ which again yields an embedding.

$\qed$




# 4.11

In the case of $\liesl(3, \CC)$, what can be said at this point about Verma modules with a singular integral highest weight?

> Aside from the trivial case $-\rho$, a typical linkage class has 3 elements.
> For example, if $\lambda$ lies in the $\alpha$ hyperplane and is antidominant, the linked weights are
> $\lambda,~~ s_\beta \cdot \lambda, ~~ s_\alpha s_\beta \cdot \lambda$.

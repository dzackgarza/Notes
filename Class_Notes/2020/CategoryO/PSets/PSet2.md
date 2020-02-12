---
title: Problem Set 2
---

# Humphreys 1.5

**Proposition:**
Let $\lieg = \liesl(2, \CC)$ and $M(\lambda), M(\mu)$ Verma modules.
Then $M(\lambda) \tensor M(\mu)$ may not lie in $\OO$.


**Proof:**

Let $M(\lambda), M(\mu)$ be arbitrary Verma modules with highest weight vectors $v = 1 \tensor 1_\lambda, w = 1\tensor 1_\mu$ respectively.
We can then consider the weight of $v \tensor w$ in $N\definedas M(\lambda) \tensor_{\CC} M(\mu)$:

\begin{align*}
h\cdot(v\tensor w) 
&= h\cdot v \tensor w + v \tensor h\cdot w \\
&= \lambda(h)v \tensor w + v \tensor \mu(h) w\\
&= \lambda(h)\qty{ v \tensor w } + \mu(h)\qty{v\tensor w} \\
&= \qty{ \lambda(h) + \mu(h) } \qty{v\tensor w}
.\end{align*}

Letting $\lieg = \liesl(2, \CC)$, so $\lambda, \mu \in \lieh^* \cong \CC$, the claim is that it is possible for $N$ to *not* be finitely-generated as a $U(\lieg)\dash$module.

Let $\theset{y, h, x}$ be the usual basis for $\lieg$, for which $U(\lieg)$ has the usual associated PBW basis.
We can use the fact that $\dim M(z) < \infty \iff z \in \ZZ^+$, so if we pick $\mu, \lambda \in \ZZ^{\leq 0}$ we have weight space decompositions

\begin{align*}
M(\lambda) &= \bigoplus_{i\in \ZZ^+} M(\lambda)_{\lambda - 2i} \definedas \bigoplus_{\substack{i\in \ZZ^+ \\ \lambda_i \definedas \lambda - 2i}} M(\lambda)_{\lambda_i} \\
M(\mu) &= \bigoplus_{j\in \ZZ^+} M(\mu)_{\mu - 2j} \definedas \bigoplus_{\substack{j\in \ZZ^+ \\ \mu_i \definedas \mu - 2j}} M(\mu)_{\mu_j} 
\end{align*}

where we can explicitly identify $\CC\dash$bases $M(\lambda)_{\lambda_i} = \spanof_\CC\theset{y^i~v+}$ and $M(\mu)_{\mu_i} = \spanof_\CC\theset{y^i w+}$ where $v+, w+$ are maximal weight vectors for $M(\lambda), M(\mu)$ respectively.

By the initial observation, this yields a weight space decomposition for $N$ given by 

\begin{align*}
N = M(\lambda) \tensor_\CC M(\mu) = \bigoplus_{\nu \in \ZZ^{+}} \qty{ \bigoplus_{\lambda_i + \mu_i = \nu} M(\lambda)_{\lambda_i} \tensor_\CC M(\mu)_{\mu_i}  } \definedas \bigoplus_{\nu \in \ZZ^{+}} N_\nu
.\end{align*}

Since each weight space $N_\nu = \spanof_\CC\theset{y^i v^+ \tensor y^j w^+ \suchthat i+j=\nu}$ has dimension $p_2(\nu)$, the (combinatorial) number of partitions of $\nu$ into two parts. 
In particular, $p_2(\nu)$ takes on arbitrarily large values, and thus $N$ has weight spaces of arbitrarily large dimension.

Now suppose toward a contradiction that $N$ is finitely generated as an $U(\lieg)\dash$module, say by the $n$ generators $\theset{m_1, \cdots, m_n}$.

$\qed$

# Humphreys 1.9

**Proposition:**
Let $\psi: Z(\lieg) \to S(\lieh)$ be the twisted Harish-Chandra homomorphism.
Then $\psi$ is independent of the choice of a simple system in $\Phi$.

> Hint: any simple system has the form $w\Delta$ for some $w\in W$.

**Proof:**

For a given simple root system $\Delta = \theset{\alpha_1, \cdots, \alpha_\ell}$, we can choose a PBW basis $\theset{h_i}_{i=1}^\ell$ for $U(\lieh)$ to write

\begin{align*}
\psi: \mcz(\lieg) &&\mapsvia{\xi} U(\lieh) &&\to S(\lieh) = \CC[\theset{h_i}] = P(\lieh^*) &&\mapsvia{\tau_\rho} \CC[\theset{h_i}] \\
z &&\mapsto z = \prod_{i=1}^\ell h_i^{t_i} &&\mapsto \qty{ \lambda \mapsto \prod_{i=1}^\ell \lambda(h_i)^{t_i} }  &&\mapsto   \psi(z) = \prod_{i=1}^\ell \qty{\lambda - \rho}(h_i)^{t_i} 
.\end{align*}

The claim is that if an alternative simple root system $\Delta = \theset{\alpha_1', \cdots, \alpha_\ell'}$ is chosen, $\psi(z)$ does not change.
Since there exists some $w\in W$ such that $w\alpha_i = \alpha_i'$ and we can write the Weyl vector as $\rho = \sum_{i=1}

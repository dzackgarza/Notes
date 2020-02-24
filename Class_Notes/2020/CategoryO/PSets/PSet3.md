---
title: Category $\OO$, Problem Set 3
---


# Humphreys 1.10

Prove that the transpose map $\tau$ fixes $Z(\lieg)$ pointwise.

> Check that $\tau$ commutes with the Harish-Chandra morphism $\xi$ and use the fact that $\xi$ is injective.

## Solution

We first note that after choosing a PBW basis for $\lieg$, $\tau$ is defined on $\lieg$ in the following way:


\begin{align*}
\tau: \lieg &\to \lieg \\
x_\alpha &\mapsto y_\alpha \\
h_\alpha &\mapsto h_\alpha \\
y_\alpha &\mapsto x_\alpha
\end{align*}

which lifts to an anti-involution $\tau: U(\lieg) \to U(\lieg)$ by extending linearly over PBW monomials.
We can note that since $\tau$ fixes $\lieh$ pointwise by definition, its lift also fixes $U(\lieh)$ pointwise.

Using this basis, we can explicitly identify the Harish-Chandra morphism:

\begin{align*}
\xi: Z(\lieg) &\to U(\lieh) \\
\prod_{i, j, k} x_i^{r_i} h_j^{s_j} y_k^{t_k} &\mapsto \prod_j h_j^{s_j}
.\end{align*}

Proposition
:   The following diagram commutes

\begin{center}
\begin{tikzcd}
Z(\lieg) \arrow[rr, "\xi"] \arrow[dd, "\tau"] &  & U(\lieh) \arrow[dd, "\tau"] \\
                                              &  &                             \\
Z(\lieg) \arrow[rr, "\xi"]                    &  & U(\lieh)                   
\end{tikzcd}
\end{center}

Proof
:   We will show that for all $z\in Z(\lieg)$, $(\xi \circ \tau)(z) = (\tau \circ \xi)(z)$.
    Expand $z$ in a PBW basis as $z = \prod_{i, j, k} x_i^{r_i} h_j^{s_j} y_k^{t_j}$.
    We then make the following computations:
    
    \begin{align*}
    (\xi \circ \tau)(z) 
    &= (\xi \circ \tau)\qty{ \prod_{i, j, k} x_i^{r_i} h_j^{s_j} y_k^{t_j} } \\
    &= \xi \qty{ \prod_{i, j, k} y_i^{r_i} h_j^{s_j} x_k^{t_j} }  \quad\text{since $\tau$ is an anti-homomorphism} \\
    &= \prod_j h_j^{s_j} \\
    .\end{align*}

    Similarly, we have
    \begin{align*}
    (\tau \circ \xi)(z) 
    &= \tau \qty{ \prod_j h_j^{s_j} } \\
    &= \prod_j h_j^{s_j} \\
    ,\end{align*}

    where we note that the two resulting expressions are equal.
    

The above computation in fact shows that

\begin{align*}
(\xi \circ \tau)(z) = (\tau \circ \xi)(z) = \xi(z)
,\end{align*}

and using the injectivity of $\xi$, we have

\begin{align*}
(\xi \circ \tau)(z) &= \xi (z) \\
\implies \tau(z) &= z
.\end{align*}

$\qed$

# Humphreys 1.12

Fix a central character $\chi$ and let $\theset{V^{(\lambda)}}$ be a collection of modules in $\OO$ indexed by the weights $\lambda$ for which $\chi = \chi_\lambda$ satisfying

1. $\dim V^{(\lambda)} = 1$
2. $\mu < \lambda$ for all weights $\mu$ of $V^{(\lambda)}$.

Then the symbols $[V^{(\lambda)}]$ form a $\ZZ\dash$basis for the Grothendieck group $K(\OO_\xi)$.

> For example take $V^{(\lambda)} = M(\lambda)$ or $L(\lambda)$.

## Solution

> Following a similar proof outlined [here](http://www.math.ncku.edu.tw/~fjmliou/pdf/ex_k0.pdf). 

Fix a $\lambda_0$ such that $\chi = \chi_{\lambda_0}$ by Harish-Chandra's theorem, fix some order on the Weyl group $W = \theset{w_j \suchthat 1\leq j \leq \abs{W} < \infty}$, and note that $\chi_{\lambda_0} = \chi_{w\cdot \lambda_0}$ for each $w\in W$.

Proposition
:   The Verma modules $\theset{L(w\cdot \lambda_0) \suchthat w\in W}$ form a $\ZZ\dash$basis for $\OO_\chi$.

Proof
:   Write $\mathcal{L} = \spanof_\ZZ\theset{[L(w_j \cdot \lambda_0)] \suchthat 1\leq j \leq \abs{W}} \subset K(\OO_\chi)$.

    **Spanning**: 
    Let $M \in \OO_{\chi}$ be arbitrary, and consider $[M] \in K(\OO_\chi)$.
    By Humphreys Theorem 1.11, $M$ has a finite composition series 
    $$
    M = M_1 > M_2 > \cdots > M_n
    $$
    with simple quotients $M^{i+1}/M^i \cong L(\lambda_i)$ for some $\lambda_i$.
    By collecting terms, we can write

    \begin{align*}
    [M] = \sum_{i=1}^n [L(\lambda_i)] = \sum_{i=1}^{n'} c_i [L(\lambda_i)] \in K(\OO_\chi)
    .\end{align*}

    
    By definition, $M\in \OO_\chi \iff L(\lambda_i) \in \OO_\chi$, i.e. $M$ is in this block precisely when all of its composition factors are.
    But this forces each $L(\lambda_i) L(w_j \cdot \lambda_0)$ for some $j$, and so we have

    \begin{align*}
    [M] = \sum_{i=j}^{n'} c_j [L(w_j \cdot \lambda_0}] \in K(\OO_\chi) \in \mathcal{L}
    .\end{align*}



# Humphreys 1.13

Suppose $\lambda \not\in \lambda$, so the linkage class $W\cdot \lambda$ is the disjoint union of its nonempty intersections of various cosets of $\Lambda_r \in \lieh\dual$.

Prove that each $M\in \OO_{\chi_\lambda}$ has a corresponding direct sum decomposition $M = \bigoplus M_i$ in which all weights of $M_i$ lie in a single coset.

> Recall exercise 1.1b.


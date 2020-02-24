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

Then the symbols $[V^{(\lambda)}]$ form a $\ZZ\dash$basis for the Grothendieck group $K(\OO_\chi)$.

> For example take $V^{(\lambda)} = M(\lambda)$ or $L(\lambda)$.

## Solution

> Following a similar proof outlined [here](http://www.math.ncku.edu.tw/~fjmliou/pdf/ex_k0.pdf). 

Fix a $\lambda_0$ such that $\chi = \chi_{\lambda_0}$ by Harish-Chandra's theorem, fix some order on the Weyl group $W = \theset{w_j \suchthat 1\leq j \leq \abs{W} < \infty}$, and note that $\chi_{\lambda_0} = \chi_{w\cdot \lambda_0}$ for each $w\in W$.

Proposition
:   The simple modules $\theset{L(w\cdot \lambda_0) \suchthat w\in W}$ form a $\ZZ\dash$basis for $\OO_\chi$.

Proof
:   Write $\mathcal{L} = \spanof_\ZZ\theset{[L(w_j \cdot \lambda_0)] \suchthat 1\leq j \leq \abs{W}} \subset K(\OO_\chi)$.

    **Spanning**: 
    Let $M \in \OO_{\chi}$ be arbitrary, and consider $[M] \in K(\OO_\chi)$.
    By Humphreys Theorem 1.11, $M$ has a finite composition series 
    $$
    M = M_1 > M_2 > \cdots > M_n
    $$
    with simple quotients $M^{i+1}/M^i \cong L(\lambda_i)$ for some $\lambda_i \in \lieh\dual$.
    By collecting terms, we can write

    \begin{align*}
    [M] = \sum_{i=1}^n [L(\lambda_i)] = \sum_{i=1}^{n'} c_i [L(\lambda_i)] \in K(\OO_\chi)
    ,\end{align*}

    where each $c_i$ is the multiplicity of $L(\lambda_i)$ in the above composition series.
    
    By definition, $M\in \OO_\chi \iff L(\lambda_i) \in \OO_\chi$, i.e. $M$ is in this block precisely when all of its composition factors are.
    But this forces each $L(\lambda_i) = L(w_j \cdot \lambda_0)$ for some $j$, and so we have

    \begin{align*}
    [M] = \sum_{i=j}^{n'} c_j [L(w_j \cdot \lambda_0)] \in \mathcal{L}
    .\end{align*}

    **Linear Independence**:
    Define a family of maps

    \begin{align*}
    r_j: \OO_\chi &\to \ZZ^{\geq 0} \\
    M &\mapsto \abs{\theset{ M^{i+1}/M^i \suchthat M^{i+1}/M^i \cong L(w_j \cdot \lambda_0)  }}
    ,\end{align*}

    i.e. the map that counts the multiplicity of $L(w_j \cdot \lambda_0)$ appearing in any composition series of $M$ for a fixed $j$.
    
    This lifts to a group morphism $r_j: K(\OO_\chi) \to \ZZ^{\geq 0}$ which satisfies
    
    \begin{align*}
    r_j(L(w_i \cdot \lambda_0)) = \delta_{ij}
    ,\end{align*}

    i.e. it takes the value $1$ on the Verma modules in $\mathcal{L}$ precisely when $i=j$ and zero otherwise.

    Now suppose $\sum_{i=1}^n a_i [ L(w_i \cdot \lambda_0)] = [0]$ in $K(\OO_\chi)$.
    For each fixed $j$, we can then apply the above group morphism to obtain
    
    \begin{align*}
    r_j \qty{ \sum_{i=1}^n a_i [ L(w_i \cdot \lambda_0)] } 
    &= \sum_{i=1}^n a_i r_j\qty{ [ L(w_i \cdot \lambda_0)] } \\
    &= \sum_{i=1}^n a_i r_j \delta_{ij} \\
    &= a_j
    .\end{align*}

    Since group morphisms preserve equalities and $r_j([0]) = 0 \in \ZZ$, this forces $a_j = 0$ for each $j$.

Proposition
:   An arbitrary set of the stated form $\mathcal{V} = \theset{V^{(\lambda_i)} \suchthat 1\leq i < N < \infty}$ is also a $\ZZ\dash$basis of $K(\OO_\chi)$.

Proof
:   We first note that we can similarly write $V^{(\lambda_i)} = V^{(w_j \cdot \lambda_0)}$ for some $j$, so wlog we reindex the $\lambda_i$ to $\lambda_j$s.
    Similarly, fixing a $V^{\lambda_j}$, for $\mu < \lambda_j$, there is an $i$ such that $\mu = w_i \cdot \lambda_0$, so we reindex all lower weights accordingly as well.
    
    By the previous proposition, for each fixed $V^{(\lambda_i)}$, we can write
    
    \begin{align*}
    [V^{(\lambda_j)}] 
    & = [L(w_j \cdot \lambda_0] + \sum_{\mu_i < \lambda_j} a_{ij}[L(w_i \cdot \lambda_0)]
    .\end{align*}

    The matrix $A = (a_{ij})$ is then strictly upper-triangular with ones on the diagonal, and is thus invertible, and so expresses a change of basis matrix $\mcl \to \mcv$.


# Humphreys 1.13

Suppose $\lambda \not\in \Lambda$, so the linkage class $W\cdot \lambda$ is the disjoint union of its nonempty intersections of various cosets of $\Lambda_r \in \lieh\dual$.

Prove that each $M\in \OO_{\chi_\lambda}$ has a corresponding direct sum decomposition $M = \bigoplus M_i$ in which all weights of $M_i$ lie in a single coset.

> Recall exercise 1.1b.

## Solution

Fix a nonintegral $\lambda \in \lieh\dual \setminus \Lambda$ and $M\in \OO_{\chi_\lambda}$, and write
$$
\lieh\dual/\Lambda = \theset{\lambda_i + \Lambda \suchthat i\in I} = \theset{[\lambda_i] \suchthat i\in I}
$$
for some indexing set $I$.

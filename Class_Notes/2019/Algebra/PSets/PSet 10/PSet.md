---
title: Problem Set 10
---

# Problem 1 

Let $\phi$ be an $n\dash$form. If suffices to show these statements for $n=2$.

$\implies$:
Suppose $\phi$ is alternating, then $\phi(b, b) = 0$ for all $b\in B$.

Letting $a,b \in B$ be arbitrary, we then have

\begin{align*}
\phi(a + b, a+b) 
&= \phi(a, a+b) + \phi(b, a+b) \\
&= \phi(a, a) + \phi(a, b) + \phi(b, a) + \phi(b, b) \\
&= \phi(a, b) + \phi(b, a) \\
&\implies \phi(a,b) = -\phi(b, a)
,\end{align*}

which shows that $\phi$ is skew-symmetric.

$\impliedby$
Suppose $\phi$ is skew-symmetric, so $\phi(a,b) = -\phi(b, a)$ for all $a, b\in B$.
Then $\phi(b, b) = - \phi(b, b)$ by transposing the terms, which says that $\phi(b, b) = 0$ for all $b\in B$ and thus $\phi$ is alternating.

# Problem 2

Let $f(x) = \det(P + xQ) \in R[x]$, then $f$ is a polynomial in $x$ which is not identically zero. 

To see that $f \not \equiv 0$, we can use that fact that $P$ is invertible to evaluate $f(0) = \det(P) \neq 0$.

We can now note that $f$ has finite degree, and thus finitely many zeroes in $R$.


# Problem 3

Letting $k[x] \actson_\phi E$ to yield a $k[x]\dash$module structure on $E$ and take an invariant factor decomposition,
$$
E = E_1 \oplus E_2 \oplus \cdots \oplus E_t, \quad E_i = \frac{k[x]}{(q_i)}, \quad q_1 \divides q_2 \divides \cdots \divides q_t
$$

where $E_i = k[x] / (q_i)$. 
Then $q_t = q$, the minimal polynomial of $E$.

In particular, $E_t$ is a $\phi\dash$invariant subspace of $E$, and if $\deg q_t = m$, then $E_t$ is in fact an $m\dash$dimensional cyclic module with basis $\theset{\vector v, \phi(\vector v), \phi^2(\vector v), \cdots, \phi^{m-1}(\vector v)}$ for some $\vector v \in E_t$.

But since $E_t \leq E$ is a subspace, we have 
$$
m = \deg q(x) = \deg q_t(x) = \dim E_t \leq \dim E.
$$

# Problem 4


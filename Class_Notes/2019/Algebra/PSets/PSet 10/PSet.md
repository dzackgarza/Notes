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

# Lecture 9

Last time: we proved the Riemann Inequality (\cref{thm:riemann_inequality}), the content of which is that there is a non-negative quantity called the *genus* for which the stated inequality holds.
The next step will be to try to improve this inequality to an equality, for which we introduce the following definition:

:::{.definition title="Index of Speciality"}
\[  
\iota(A) \da \ell(A) - \deg A = g - 1 \geq 0
.\]
:::

Tautologically, this yields
\[  
\ell(A) - \iota(A) = \deg A - g + 1
.\]

:::{.theorem title="Riemann-Roch Theorem"}
If $K/k$ is a function field of genus $g$, there exists a divisor $\mathfrak{k} \in \Div K$ such that for all $D\in \Div K$, $\iota(D) = \ell(\mathfrak{k} - D)$, and thus
\[  
\ell(D) - \ell(\mathfrak{k} - D) = \deg D - g + 1
.\]
:::

:::{.remark}
As a result, $\deg(D) > \deg(\mathfrak{k})$, so $\mathfrak{k} - D$ has negative degree.
We know that $\ell(D) > 0$ iff there is a $D' \sim D$ linearly equivalent to $D$, and there's no effective divisor equivalent to a divisor of negative degree.
Thus $\iota(A) = 0$ as soon as $\deg(D) > \deg(\mathfrak{k})$.
:::

:::{.exercise title="?"}
\envlist

1. $\ell(\mathfrak{k}) = g$ and $\deg \mathfrak{k} = 2g-2$.
2. $g\geq 0$
3. If $g\geq 1$, then the least $\alpha\in \ZZ$ such that whenever $\deg(D) > \alpha$ we have $\iota(D) = 0$ is given by $\alpha \da 2g-2$.
:::

:::{.remark}
Try taking $D=0$ and $\mathfrak{k} = D$ respectively, and compute $\iota(\mathfrak{k}) = 1$.
:::

:::{.exercise title="?"}
\envlist

a. Show that the Riemann-Roch theorem uniquely characterizes $g$, i.e. there is at most one quantity $g$ for which it holds.

b. Show that if Riemann-Roch holds for $\mathfrak{k}$, then it holds for any $\mathfrak{k}' \sim \mathfrak{k}$.

c. Show that if Riemann-Roch holds for $\mathfrak{k}_1, \mathfrak{k}_2$ then $\mathfrak{k}_1 \sim \mathfrak{k}_2$.

:::


:::{.definition title="Canonical Class"}
Thus the Riemann-Roch theorem singles out a distinguished *class* of divisors $[\mathfrak{k}]$ of degree $2g-2$, which is called the **canonical class**.
Any divisor $D\in [\mathfrak{k}]$ is called a **canonical divisor**.
:::


:::{.exercise title="?"}
Let $K/k$ be a genus zero function field.

a. Show that $\Cl^0(K) = 0$, so degree zero divisors are principal.

b. Show that $D\in \Div K$ is canonical iff $\deg D = -2$.

c. Show that the index $I(K)$ can only be 1 or 2.

d. Show that $K \cong k(t)$ iff $\Sigma _1 (K/k) \neq \emptyset$ iff $I(K) = 1$.
:::

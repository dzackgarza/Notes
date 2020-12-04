# Lecture 23

:::{.corollary title="?"}
Let $k$ be a perfect field of characteristic $p>0$, $d\in \ZZ^{\geq 0}$ with $\gcd(d, p) = 1$, and let $f\in k[x]$ and $L\da K(p^{-1} (f))$.
Then $[L:K] = p$ and $L/k$ is a regular function field of genus $g = {1\over 2}(p-1)(d-1)$ that is unramified away from $\infty$.
:::

## Artin-Schreier Extensions of Function Fields

:::{.fact}
For $k$ a field, $\ch(k) = p > 0$, and $a, b\in k$, TFAE:

1. $k(p^{-1}(a)) = k(p^{-1}(b))$

2. $a$ and $b$ generate the same cyclic subgroup of $k/p(k)$.

In particular, if $K(p^{-1}(u))/k$ is an Artin-Schreier extension, then for all $x\in k$, $k(p^{-1}(u - (x^p - x))) = k(p^{-1}(u))$.
:::

:::{.lemma title="?"}
Let $k$ a *perfect* field of characteristic $p>0$, $K/k$ a function field, $u\in K$, and $p\in \Sigma(K/k)$.

- There exists a $z\in K$ such that $z_v \da v_p(u - (z^p - z))$ satisfies either

  - $z_v \geq 0$, or
  - $z_v\leq 0$ and $z_p$ is prime to $p$.

- There exists a most one $m\in \ZZ$ that is negative and prime to $p$ such that for some $z\in K$ we have $v_p(u - (z^p - z)) = m$.
If such an $m$ exists, it is given by $m = \max\ts{v_p(u - (z^p - z)) \st z\in K }$.

- It follows that precisely *one* of the 
:::



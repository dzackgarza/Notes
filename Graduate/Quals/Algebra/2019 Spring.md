# Spring 2019

1. We prove the stronger statement that if $A$ is invertible and $A^n$ is diagonalizable, then $A$ is diagonalizable.

  With no assumptions, we know that $A^n$ has a minimal polynomial $\mu(x)$ satisfying $\mu(A^n) = 0$. It also divides the characteristic polynomial $p(x)$, and so $p(A^n) = 0$ as well. In general, $A^n$ may have eigenvalues with some multiplicity, but has $k$ distinct eigenvalues (where $1\leq k \leq n$). Since $A^n$ is diagonaliable, these yield $n$ distinct eigenvectors. So we can write 
  $$
  p(x) = \prod_{i=1}^k(x-\lambda_i)^{m_i}
  $$

  where $m_i$ is the multiplicity of $\lambda_i$. We can also produce another polynomial that annihilates $A$, namely
  $$
  q(x)= \prod_{i=1}^k(x-\lambda_i)
  $$

  which satisfies $q(A^n) = 0$ precisely because $p(A^n) = 0$. (In fact, $q(x) = \mu(x)$.)

  From this, we can actually produce a polynomial that annihilated $A$, namely

  $$
  r(x) = \prod_{i=1}^k(x^n-\lambda_i)
  $$

  which satisfies $r(A) = q(A^n) = 0$.

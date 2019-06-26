# Spring 2019

1. We prove the stronger statement that if $A$ is invertible and $A^n$ is diagonalizable over $\FF$, then $A$ is diagonalizable over $\FF$. Let $\mu_A(x)$ denote the minimal polynomial of $A$.

    Lemma: $M$ is diagonalizable iff $\mu_M(x)$ splits into distinct linear factors over $\FF$. (Equivalently, all of the roots of $\mu_M$ lie in $\FF$)

    Proof: ?

    Using the lemma

  With no assumptions, we know that $A^n$ has a minimal polynomial $\mu(x)$ satisfying $\mu(A^n) = 0$. It also divides the characteristic polynomial $p(x)$, and so $p(A^n) = 0$ as well. In general, $A^n$ may have eigenvalues with some multiplicity, but has $k$ distinct eigenvalues (where $1\leq k \leq n$). Since $\CC$ is algebraically closed, $p$ will factor into linear terms, and since $A^n$ is diagonalizable, these linear factors will be distinct. We can thus write 
  $$
  p(x) = \prod_{i=1}^k(x-\lambda_i)^{m_i}
  $$

  where $m_i$ is the multiplicity of $\lambda_i$ and all of the $\lambda_i$ are distinct. Since $A$ is invertible, $A^n$ is invertible, and so $0$ does not occur as an eigenvalue and thus $x^m_i$ does not occur in the product expansion. We can also produce another polynomial that annihilates $A^n$, namely
  $$
  q(x)= \prod_{i=1}^k(x-\lambda_i)
  $$

  which satisfies $q(A^n) = 0$ precisely because $p(A^n) = 0$. It follows that $q$ divides the minimal polynomial $\mu$. 

  From this, we can actually produce a polynomial that annihilates $A$, namely

  $$
  r(x) = \prod_{i=1}^k(x^n-\lambda_i)
  $$

  which satisfies $r(A) = q(A^n) = 0$. So $r$ divides the minimal polynomial of $A$. 

  See [here](https://math.stackexchange.com/questions/3027664/if-a-is-invertible-and-an-is-diagonalizable-then-a-is-diagonalizable).
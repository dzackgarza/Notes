# Spring 2019

1. We prove the stronger statement that if $A$ is an invertible endomorphism of $\CC^n$ and $A^m$ is diagonalizable over $\FF$ for some $m$, then $A$ itself is diagonalizable over $\FF$. Let $\mu_A(x)$ denote the minimal polynomial of $A$ and $p_A(x)$ the characteristic polynomial.

    **Lemma**: $p_M(x) = \prod_{i=1}^k(x - \lambda_i)^{m_i}$ where $1\leq k \leq n$ and $\lambda_i$ are the eigenvalues of $M$. Thus $\chi_M(x) = \prod_{i=1}^k(x - \lambda_i)^{\ell_i}$ where $1 \leq \ell_i \leq m_i$ for each $i$. (Note that $m_i$ is the multiplicitly of the eigenvalues $\lambda_i$)

    *Proof*: Since $\CC$ is algebraically closed, $p_M$ splits into linear factors where $\sum m_i = n$. By Cayley-Hamilton, $p_M$ annihilates $M$, and so by definition, $\chi_M$ divides $p_M$. Finally, every $\lambda_i$ is a root of $\chi_M$: let $\vector v_i$ be the eigenvector associated to $\lambda_i$, so $\vector v_i \neq \vector 0$ and $M\vector v_i = \lambda_i \vector v_i$. Then by linearity $\chi_M(\lambda_i)\vector v_i = \chi_M(M)\vector v_i = \vector 0$, which forces $\chi_M(\lambda_i) = 0$.

    **Lemma**: $M$ is diagonalizable $\iff$ $\mu_M(x)$ splits into distinct linear factors over $\FF$. 
    
    (Equivalently, iff all of the roots of $\mu_M$ lie in $\FF$)

    *Proof*: 
    - $\implies$: If $M$ is diagonalizable, its domain has a basis of eigenvectors. So if $\vector x \in \mathrm{domain}(M), \vector v = \sum \alpha_i \vector v_i$ where $\vector v_i$ are eigenvectors. Then $q(x) = \prod_{i=1}^k (x-\lambda_i)$ annihilates $M$, because we have 
    $$
    q(M)\vector w = q(M) \sum_i\alpha_i \vector v_i = \sum_i\alpha_i\prod_j(M - I\lambda_j)\vector v_i = \vector 0 
    $$
    where the last equality follows because $(M - I \lambda_i)\vector v_i = \vector 0$ and for each $i$, a factor of $(M - I \lambda_i)$ in the product will annihilate $\vector v_i$.
    
      By minimality, $\chi_M$ must divide $q$, but we must have $k\leq \deg \chi_M \leq n$, so this forces $\deg \chi_M = k$. But then we have two monic polynomials of degree $k$ with the same roots, forcing them to be identical.
    - $\Longleftarrow$: Longer proof

    
    Using the lemmas, since $A^n$ is diagonalizable and $\CC$ is algebraically closed, we can write

    $$
    \chi_{A^n}(x) = \prod_{i=1}^k (x-\lambda_i)
    $$

    which thus lets us produce a polynomial that annihilates $A$, namely
    $$
    q_A(x) = \prod_{i=1}^k (x^n-\lambda_i).
    $$

  which satisfies $r(A) = q(A^n) = 0$. So $r$ divides the minimal polynomial of $A$. 

  See [here](https://math.stackexchange.com/questions/3027664/if-a-is-invertible-and-an-is-diagonalizable-then-a-is-diagonalizable).
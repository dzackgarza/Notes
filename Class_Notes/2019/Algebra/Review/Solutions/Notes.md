Let $\mu_M(x)$ denote the minimal polynomial of $A$ and $p_M(x)$ the characteristic polynomial.


**Lemma**: 
$$
p_M(x) = \prod_{i=1}^k(x - \lambda_i)^{m_i} \implies \mu_M(x) = \prod_{i=1}^k(x - \lambda_i)^{\ell_i} \text{ where } 1 \leq \ell_i \leq m_i,
$$

where $\lambda_i$ are eigenvalues of $M$, $m_i$ is the multiplicity of $\lambda_i$. 

> *Proof*: Since $\CC$ is algebraically closed, $p_M$ splits into linear factors where $\sum m_i = n$. By Cayley-Hamilton, $p_M$ annihilates $M$, and so by definition, $\mu_M$ divides $p_M$. Finally, every $\lambda_i$ is a root of $\mu_M$: let $\vector v_i$ be the eigenvector associated to $\lambda_i$, so $\vector v_i \neq \vector 0$ and $M\vector v_i = \lambda_i \vector v_i$. Then by linearity $\mu_M(\lambda_i)\vector v_i = \mu_M(M)\vector v_i = \vector 0$, which forces $\mu_M(\lambda_i) = 0$.


**Lemma**: 
$$M \text{ is diagonalizable } \iff ~\mu_M(x) \text{ splits into distinct linear factors over } \FF.
$$ 

*(Equivalently, iff all of the roots of $\mu_M$ lie in $\FF$)*

*Proof*:

- $\implies$: If $M$ is diagonalizable, its domain has a basis of eigenvectors. So if $\vector x \in \mathrm{domain}(M), \vector v = \sum \alpha_i \vector v_i$ where $\vector v_i$ are eigenvectors. Then $q(x) = \prod_{i=1}^k (x-\lambda_i)$ annihilates $M$, because we have 
$$
q(M)\vector w = q(M) \sum_i\alpha_i \vector v_i = \sum_i\alpha_i\prod_j(M - I\lambda_j)\vector v_i = \vector 0 
$$
where the last equality follows because $(M - I \lambda_i)\vector v_i = \vector 0$ and for each $i$, a factor of $(M - I \lambda_i)$ in the product will annihilate $\vector v_i$.
By minimality, $\mu_M$ must divide $q$, but we must have $k\leq \deg \mu_M \leq n$, so this forces $\deg \mu_M = k$. But then we have two monic polynomials of degree $k$ with the same roots, forcing them to be identical.

- $\Longleftarrow$: Longer proof, omitted here.


**Lemma**: 
$$
p_M(x) = \prod_{i=1}^k(x - \lambda_i)^{m_i} \implies \mu_M(x) = \prod_{i=1}^k(x - \lambda_i)^{\ell_i} \text{ where } 1 \leq \ell_i \leq m_i,
$$

where $\lambda_i$ are eigenvalues of $M$, $m_i$ is the multiplicity of $\lambda_i$. 

> *Proof*: Since $\CC$ is algebraically closed, $p_M$ splits into linear factors where $\sum m_i = n$. By Cayley-Hamilton, $p_M$ annihilates $M$, and so by definition, $\mu_M$ divides $p_M$. Finally, every $\lambda_i$ is a root of $\mu_M$: let $\vector v_i$ be the eigenvector associated to $\lambda_i$, so $\vector v_i \neq \vector 0$ and $M\vector v_i = \lambda_i \vector v_i$. Then by linearity $\mu_M(\lambda_i)\vector v_i = \mu_M(M)\vector v_i = \vector 0$, which forces $\mu_M(\lambda_i) = 0$.
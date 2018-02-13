# Bott / Tu: Applications of Spectral Sequences

## Notation and Remarks

- For $M$ a manifold, $T(M)$ is the unit tangent bundle of $M$
- For $R$ a ring $R\delta_i$ denotes a copy of $R$ appearing in the $i$th (co)homological degree
- $S^n \subset \RR^{n+1}$ and $S^{2n-1} \subset \CC^n$

##List of Results

- $H^*(\CP^2) = \RR\delta_0 + \RR\delta_2 + \RR\delta_4$
  - Use $S^1 \into S^5 \into \CP^2$
- $H^*(\CP^2) = \frac{\RR[x]}{(x^3)}$
- $H^*(\CP^n) = \displaystyle\sum_{i=0}^n\RR \delta_{2i}$
  - Use $S^1 \into S^{2n+1} \into \CP^n$
- $H^*(\CP^n)  = \frac{\RR[x]}{(x^{n+1})}$
  - Use $S^1 \into S^{2n+1} \into \CP^n$
- $H^*(SO^3) = \ZZ\delta_0 + \ZZ_2\delta_2 + \ZZ\delta_3$
  - Use $S^1 \to T(S^2) \into S^2$ and identify $T(S^2) = SO^3$
  - Also use $E_2^{p,q} = H^p(S^2) \tensor H^q(S^1)$
- $H^*(SO^4) = ?$
  - Use $SO^3 \into SO^4 \into S^3$
- $H^*(U^n) = ?$
  - Use $U^{n-1} \to U^n \to S^{2n-1}$
- $H^*(\Omega S^2) = \displaystyle\sum_{i=0}^\infty \ZZ\delta_i$
- ​

## List of Fibrations

- $S^1 \into S^{2n+1} \into \CP^n$, the Hopf fibration?
- $S^3 \into S^{4n+3} \into \mathbb{HP}^n$ the generalized Hopf fibration? (not used here)
- Hopf Fibrations
  - $S^0 \to S^1 \to S^1$
    - Induced by $S^1 \subset \RR^2 \into S^1 = \RR \union \infty $
  - $S^1 \to S^3 \to S^2$
    - Induced by $S^3 \subset \CC^2 \into S^2 = \CC \union\infty$
  - $S^3 \to S^7 \to S^4$
    - Induced by $S^7 \subset \mathbb{H}^2 \into S^4 = \mathbb{H}\union\infty$
  - $S^7 \into S^{15} \into S^8$
    - Induced by $S^{15} \subset\mathbb{O}^2 \into S^8 = \mathbb{O}\union\infty$
- $SO^3 \into SO^4 \into S^3$
- $U^{n-1} \to U^n \to S^{2n-1}$
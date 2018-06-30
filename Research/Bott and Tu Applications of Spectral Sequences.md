# Bott / Tu: Applications of Spectral Sequences

## Notation and Remarks

- For $M$ a manifold, $T(M)$ is the unit tangent bundle of $M$
- For $R$ a ring $R\delta_i$ denotes a copy of $R$ appearing in the $i$th (co)homological degree
- $S^n \subset \RR^{n+1}$ and $S^{2n-1} \subset \CC^n$
- Theorem: $F \to E \to B$ a fibration results in
  $E_2^{p,q} = H^p(B, H^q(F; G)) = H^p(B;G) \tensor H^q(F; G)$
  for nice enough spaces $X$ and groups $G$
  - Corollary: $H^n(X\cross Y) = \displaystyle\bigoplus_{p+q=n} H^p(X, H^q(Y))$
- Facts about tensor products
  - $(rm)\tensor n = r(m\tensor n) =m \tensor(rn)$
  - $(r+s)(m\tensor n) = rm\tensor n + sm\tensor n$
  - $\ZZ_p \tensor_\ZZ \ZZ_q = \ZZ/\gcd(p,q)$ and $\gcd(p,q) = 1$ yields 0.
  - Some computations:
    - $\ZZ_n \tensor_\ZZ \QQ = 0$
    - $\ZZ_n \tensor_\ZZ \QQ/\ZZ = 0$
    - $\QQ \tensor_\ZZ \QQ = \QQ$
    - $(\QQ/\ZZ)\tensor_\ZZ \QQ = 0$
    - $\QQ/\ZZ \tensor_\ZZ \QQ/\ZZ = 0$
    - $R[x]\tensor_R S \cong S[x]$
    - $k \into K$ a field extension: $k[x]/(f) \tensor_k K \cong K[x]/(f)$
  - Symmetric, Associative
  - $(\oplus A_i )\tensor B = \oplus(A_i \tensor B)$
  - $\ZZ \tensor A = A$
  - $\ZZ_n \tensor A = \frac{A}{nA}$

##List of Results

- A simply connected $n$-dimensional manifold $M_n$ is orientable
  - Use $S^{n-1} \into T(M_n) \into M_n$
- $H^*(\CP^2) = \RR\delta_0 + \RR\delta_2 + \RR\delta_4$
  - Use $S^1 \into S^5 \into \CP^2$
- $H^*(\CP^2) = \frac{\RR[x]}{(x^3)}$
  - Use $S^1 \into S^5 \into \CP^2$
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
  - Use $\Omega S^2 \to PS^2 \to S^2$
  - Also use $E_2^{p,q} = H^p(S^2,  H^q(\Omega S^2))$
- $H^*(\Omega S^3) = \displaystyle\sum_{i=0}^\infty \ZZ\delta_{2i}$
  - Use $\Omega S^3 \to PS^3 \to S^3$
- $H^*(\Omega S^n) = \displaystyle\sum_{i=0}^\infty \ZZ\delta_{i(n-1)}$
  - Use $\Omega S^3 \to PS^3 \to S^3$
- $H^*(\Omega S^2) = \frac{\ZZ[x]}{(x^2)} \tensor \ZZ\theset{1,e, \frac{1}{2!}e^2,\cdots}, \dim x = 1, \dim e = 2$
  - Use $\Omega S^3 \to PS^3 \to S^3$
- $H^*(\Omega S^n) = \frac{\ZZ[x]}{(x^2)} \tensor \ZZ\theset{1,e, \frac{1}{2!}e^2,\cdots}, \dim x = n-1, \dim e = 2(n-1_)$
  - Use $\Omega S^3 \to PS^3 \to S^3$

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
  - Can compute $H^*(U^n)$
- $\Omega S^n \to PS^n \to S^n$, path-loop fibration
  - $\Omega S^3 \to PS^3 \to S^3$:
    - Can compute $H^*(\Omega S^n)$
- $Y \into X\cross Y \into X$ (not used here)
-
# Fibrations
- $SO_{n-1}(R) \to SO_n(R) \to S^{n-1}$
- $S^n \mapsvia{E} \Omega S^{n+1} \mapsvia{H} \Omega S^{2n+1}$
- $S^1 \to S^{2n+1} \to \CP^n$
- $\Omega B \to PB \to B$
- $K(A, n) \to K(B, n) \to K(C,n)$ for any SES of groups.
- $S^0 \to S^1 \to \RP^1 = S^1$
- $S^1 \to S^3 \to \CP^1 = S^2$
- $S^3 \to S^7 \to \mathbb{HP}^1 = S^4$
- $S^7 \to S^{15} \to \mathbb{OP}^1 = S^8$


Define the Stiefel Manifold:
$$
\mathbb{V}(k, n) = \theset{A \in \mathbb{F}^{nk}\mid A \bar{A}^t = I}
$$

and the Grassmanian

$$
G(k, n) = ?
$$

Obtained from fiber bundles involving [Stiefel Manifold](https://math.stackexchange.com/questions/99189/useful-fibrations) :

- $O^{n-1} \to O^n \to S^{n-1}$
- $SO^{n-1} \to SO^n \to S^{n-1}$
- $U^{n-1} \to U^n \to S^{2n-1}$
- $SU^{n-1} \to SU^n \to S^{2n-1}$
- $Sp^{n-1} \to Sp^n \to S^{4n-1}$
- $SO^n \to O^n \to S^0$
- $SU^n \to U^n \to S^1$
- $\mathbb{V}(k, k) \to \mathbb{V}(k, n) \to \mathbb{G}(k, n)$

## Interesting Spaces to Look At:
$O, SO, Spin, U, or Sp$

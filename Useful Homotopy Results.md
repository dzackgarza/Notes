# Useful Homotopy Results

- $n \geq 2 \implies \pi_n(X) \in \mathbf{Ab}$

- $n\geq 2 \implies \pi_n(S^1) = 0$

- $k <  n \implies \pi_k(S^n) = 0$

- $\pi_n(X)$ is the obstruction to $f: S^n \into X$ being lifted to $\hat f: D^{n+1} \into X$

- $\pi_n(X) \cong H_n(X)$ for the first $n$ such that $\pi_n(X) \neq 0$; $\forall k<n, ~H_k(X) = 0$.

- $\pi_n(S^n) = \ZZ$

- $\pi_{n+1}S^n = \ZZ/2$ for $n \geq 4$

- $\pi_{n+2}(S^n) \cong \ZZ/2$

- $\pi_{n+3}S^n = \ZZ/8$ for $n\geq 5$

- $\pi_5S^2 = \ZZ/2, \pi_6S^3 = \ZZ/4. \pi_7S^4 = \ZZ \oplus \ZZ/4$

- $\Sigma S^n = S^{n+1}$

- $[\Sigma^n X, Y] \cong [X, \Omega^n Y]$

- $\pi_n(\Omega X) = \pi_{n+1}(X)$
  - $\pi_n(X) \cong \pi_0(\Omega^n X)$

- $k+2 \leq 2n \implies \pi_k(S^n) \cong \pi_{k+1}(S^{n+1})​$

- $\Omega(\wait)$ is an exact functor

- Mayer-Vietoris $X =A \union B \implies $

  - $$
    \begin{matrix}
       && A\intersect B & \\
      &\large\diagup &  & \large\diagdown \\
      A\union B & & \large\longleftarrow &  & A \oplus B
      \end{matrix}
    $$

    ​

- LES of pair $(A,B) \implies \cdots H_n(B) \into H_n(A) \into H_n(A,B) \into H_{n-1}(B) \cdots$
$$
\begin{matrix}
   && B & \\
  &\large\diagup &  & \large\diagdown \\
  (A,B) & & \large\longleftarrow &  & A
  \end{matrix}
$$
- $F\into E \into B$ a fibration yields $\cdots\pi_n(F) \into \pi_n(E) \into \pi_n(B) \into \pi_{n-1}(F) \cdots$

  - $S^{n-1} \into S^{2n-1} \into S^n$

  - $$
    \begin{matrix}
     && F & \\
    &\large\diagup &  & \large\diagdown \\
    B & & \large\longleftarrow &  & E
    \end{matrix}
    $$






- Definition

  - $S^{2n+1} \subset \CC^{n+1}$
  - $\CP^n = S^{2n+1} / S^n$
- Hopf Fibrations

  - $S^1 \into S^3 \into S^2$
- $\pi_kS^2 \cong \pi_kS^3$
- $\pi_3S^2 \cong \ZZ$
- $\pi_4S^2 \cong \ZZ_2$

  - (Use Serre's method)
- $\pi_k(S^n) = \pi_{k+1}S^{n+1} = \cdots =\pi_{k+i}S^{n+i}​$

  - Freundenthal suspension, stable homotopy groups
- Product on SS cohomology: $E^{p,q} \cross E^{s,t} \into E^{p+s, q+t}$
- Cohomology to homology: just shift torsion down by one dimension
- Unknown:

  - $\pi_n(S^2) = 0$ for any $n > 1$?
- Use SS of $F \into E \into B$ to calculate:

  - $H_*(E)$ from $H_*(F), H_*(B)$ 
  - $H^*(B)$ from $H^*(F), H^*(E)$
  - $H^*(F)$ from $H^*(E), H^*(B)$
  - $E_2^{p.q} = H^p(B, H^q(F; R))$

\**begin**{equation}\label{eq:neighbor-propability}
    p_{ij}(t) = \frac{\ell_j(t) - \ell_i(t)}{\sum_{k \in N_i(t)}^{} \ell_k(t) - \ell_i(t)}
\end{equation}

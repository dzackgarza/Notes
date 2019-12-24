# Group Theory

Definition: $[H : G]$ is equal to the number of left cosets of $H$ in $G$.

Burnside's Lemma: TODO

**Lagrange's Theorem**:

$H \leq G \implies \abs H \divides \abs G$.

- Corollary: $g\in G \implies o(g) \divides o(G)$
- Corollary: $g^{\abs G} = e$.

Statement of converse: if $n \divides \abs G$, then there exists $H \leq G$ with $\abs H = n$.

Counterexample to converse: $\abs A_4 = 12$ but there is no subgroup of order 6.

**Cauchy's Theorem**

If $p \divides \abs G$, then $G$ contains an element $g$ of order $p$.
Corollary: If $p \divides \abs G$, then there is a subgroup $H \leq G$ such that $\abs H = p$. Obtained as $H = <g>$ from above.

**Sylow Theorems**

Notation: for any $p$, let $\mathrm{Syl}(p)$ be the set of Sylow$\dash p$ subgroups of $G$, and $n_p = \#\abs{\mathrm{Syl}(p)}$ the number of such subgroups.

Write $\abs{G} = p^n m$ where $m {\not\divides} p$, $S_p$ a sylow$\dash p$ subgroup, and $n_p$ the number of sylow$\dash p$ subgroups.

Definition: A $p\dash$group is a group $G$ such that $g\in G \implies o(g) = p^k$ for some $k$. If $\abs G < \infty$, it follows that $\abs G = p^j$ for some $j$.


1. $\forall p^n \divides \abs{G}$, there exists a subgroup of size $p^n$.
   1. Corollary: $\forall p \divides \abs{G}$, there exists an element of order $p$.
   > If $\abs G = \prod p_i^{\alpha_i}$, then there exist subgroups of order $p_i^{\beta_i}$ for every $i$ and every $0 \leq \beta_i \leq \alpha_i$.

2. All sylow$\dash p$ subgroups are conjugate for a given $p$.
   > If $P_1, P_2$ are Sylow$\dash p$ subgroups, then they are conjugate, i.e. $\exists g\in G \suchthat P_1 = gP_2g^{-1}$.
   1. Corollary: $n_p = 1 \implies P \normal G$

3. Numerical Constraints
   1. $n_p \equiv 0 \mod m$, i.e. $n_p \divides m$
   2. $n_p \equiv 1 \mod p$, i.e. $n_p \not\divides p$.
   3. $n_p = [G : N_G(P)]$ where $N$ is the normalizer.

Some facts that are useful when doing Sylow theory: 

  - $\ZZ_p, \ZZ_q \subset G \implies \ZZ_p \intersect \ZZ_q = \ZZ_{(p,q)}$, so coprime order subgroups are disjoint.
  - $(p, q) = 1 \implies \ZZ_p \times \ZZ_q \cong \ZZ_{pq}$
  - Characterizing direct products: $G \cong H \times K$ when
    - $G = HK = \theset{hk \suchthat h\in H, k\in K}$
    - $H\intersect K = \theset{e} \subset G$
    - $H, K \normal G$
      - Can relax to only $H\normal G$ to get a semidirect product instead
  
**Semidirect Products**:

$G = N \semidirect_\phi H$ where 
$$
\phi: H \to \Aut(N) \\
h \mapsto h(\wait)h^{-1}
$$

Note $\Aut(\ZZ_n) \cong (\ZZ^n)\units \cong \ZZ^{\varphi(n)}$ where $\varphi$ is the totient function.

**Class Equation**:
$$
\abs{G} = \abs{Z(G)} + \sum_{\substack{\text{One $x_i$ from} \\ \text{each conjugacy class}}} [G: C_G(x_i)]
$$
where $C_G(x)$ is the centralizer of $x$, given by $C_G(x) = \theset{g \suchthat [g, x] = e}$.

## Isomorphism Theorems

The Correspondence Theorem / 4th Isomorphism Theorem: suppose $N \normal G$, then there exists a correspondence:
$$
\left\{ 
H < G \suchthat N \subseteq H
\right\}
\iff
\left\{ \begin{align*} 
H \suchthat H < \frac G N
\end{align*}\right\}.
$$

In words, subgroups of $G$ containing $N$ correspond to subgroup of the quotient group $G/N$. This is given by the map $H \mapsto H/N$.
Note: $N \normal G$ and $N \subseteq H < G \implies N \normal H$.


# Rings

**Fields:**
$GF(p^n)$ is obtained as $\displaystyle\frac{\FF_p}{\generators{f}}$ where $f \in \FF_p[x]$ is irreducible of degree $n$.

Eisenstein's Criterion: If $f(x) = \sum_{i=0}^n \alpha_i x^i \in \QQ[x]$ and $\exists p$ such that both $p\notdivides a_n$ and $p^2 \notdivides a_0$ but $p \divides a_{i\neq n}$, then $f$ is irreducible.

# Linear Algebra

## Minimal / Characteristic Polynomial
Finding the minimal polynomial $m(x)$ of $A$:

1. Find the characteristic polynomial $\chi(x)$; this annihilates $A$ by Cayley-Hamilton. Then $m(x) \divides \chi(x)$, so just test the finitely many products of irreducible factors.

2. Pick any $\vector v$ and compute $T\vector v, T^2\vector v, \cdots T^k\vector v$ until a linear dependence is introduced. Write this as $p(T) = 0$; then $\chi(x) \ p(x)$. 

## Simultaneous Diagonalizability

**Lemma**: 
$\theset{A_i}$ pairwise commute $\iff$ they are all simultaneously diagonalizable.

> *Proof*: By induction on number of operators
> 
> - $A_n$ is diagonalizable, so $V = \bigoplus E_i$ a sum of eigenspaces
> - Restrict all $n-1$ operators $A$ to $E_n$. 
> - The commuted in $V$ so they commute in $E_n$
> - **(Lemma)** They were diagonalizable in $V$, so they're diagonalizable in $E_n$
> - So they're simultaneously diagonalizable by I.H.
> - But these eigenvectors for the $A_i$ are all in $E_n$, so they're eigenvectors for $A_n$ too.
> - Can do this for each eigenspace. 
> $\qed$

> [Full details here](https://kconrad.math.uconn.edu/blurbs/linmultialg/minpolyandappns.pdf#page=9)
  
## Characterizations if Diagonalizability

Let $\min_M(x)$ denote the minimal polynomial of $A$ and $\chi_M(x)$ the characteristic polynomial.

**Lemma**: 
$$
\chi_M(x) = \prod_{i=1}^k(x - \lambda_i)^{m_i} 
\implies 
\min_M(x) = \prod_{i=1}^k(x - \lambda_i)^{\ell_i} 
\text{ where } 1 \leq \ell_i \leq m_i,
$$

where $\lambda_i$ are eigenvalues of $M$, $m_i$ is the multiplicity of $\lambda_i$. 

> *Proof*: Since $\CC$ is algebraically closed, $p_M$ splits into linear factors where $\sum m_i = n$. By Cayley-Hamilton, $p_M$ annihilates $M$, and so by definition, $\mu_M$ divides $p_M$. Finally, every $\lambda_i$ is a root of $\mu_M$: let $\vector v_i$ be the eigenvector associated to $\lambda_i$, so $\vector v_i \neq \vector 0$ and $M\vector v_i = \lambda_i \vector v_i$. Then by linearity $\mu_M(\lambda_i)\vector v_i = \mu_M(M)\vector v_i = \vector 0$, which forces $\mu_M(\lambda_i) = 0$.


**Lemma**: 
$$M \text{ is diagonalizable over }\FF 
\iff \\
\min_M(x) \text{ splits into distinct linear factors over } \FF.
$$ 

*(Equivalently, iff all of the roots of $\min_M$ lie in $\FF$)*

> *Proof*:
>
> $\implies$: 
>
> If $M$ is diagonalizable, its domain has a basis of eigenvectors. So if $\vector x \in \mathrm{domain}(M), \vector v = \sum \alpha_i \vector v_i$ where $\vector v_i$ are eigenvectors. Then $q(x) = \prod_{i=1}^k (x-\lambda_i)$ annihilates $M$, because we have 
$$
q(M)\vector w = q(M) \sum_i\alpha_i \vector v_i = \sum_i\alpha_i\prod_j(M - I\lambda_j)\vector v_i = \vector 0 
$$
where the last equality follows because $(M - I \lambda_i)\vector v_i = \vector 0$ and for each $i$, a factor of $(M - I \lambda_i)$ in the product will annihilate $\vector v_i$.
By minimality, $\mu_M$ must divide $q$, but we must have $k\leq \deg \mu_M \leq n$, so this forces $\deg \mu_M = k$. But then we have two monic polynomials of degree $k$ with the same roots, forcing them to be identical.
>
> $\Longleftarrow$: Longer proof, omitted.
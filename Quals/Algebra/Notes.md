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

Finding the minimal polynomial $m(x)$ of $A$:

1. Find the characteristic polynomai $\chi(x)$; this annihilates $A$ by Cayley-Hamilton. Then $m(x) \divides \chi(x)$, so just test the finitely many products of irreducible factors.

2. Pick any $\vector v$ and compute $T\vector v, T^2\vector v, \cdots T^k\vector v$ until a linear dependence is introduced. Write this as $p(T) = 0$; then $\chi(x) \ p(x)$. 

Proof that when $A_i$ are diagonalizable, $\theset{A_i}$ commutes $\iff A,B$ are simultaneously diagonalizable: induction on number of operators

  - $A_n$ is diagonalizable, so $V = \bigoplus E_i$ a sum of eigenspaces
  - Restrict all $n-1$ operators $A$ to $E_n$. 
    - The commuted in $V$ so they commute here too
    - (Lemma) They were diagonalizable in $V$, so they're diagonalizable here too
    - $\implies$ they're simultaneously diagonalizable by I.H.
  - But these eigenvectors for the $A_i$ are all in $E_n$, so they're eigenvectors for $A_n$ too.
  - Can do this for each eigenspace. $\qed$
  - Full Details: [here](https://kconrad.math.uconn.edu/blurbs/linmultialg/minpolyandappns.pdf#page=9)
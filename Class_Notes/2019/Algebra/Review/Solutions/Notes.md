# Group Theory

**Definition:**
$[H : G]$ is equal to the number of left cosets of $H$ in $G$.

**Notation:**
For a group $G$ acting on a set $X$,

- $G\cdot x = \theset{g\actson x \suchthat g\in G} \subseteq X$ is the orbit

- $G_x = \theset{g\in G \suchthat g\actson x = x} \subseteq G$ is the stabilizer

- $X/G \subset \mathcal P(X)$ is the set of orbits

- $X^g = \theset{x\in X \suchthat g\actson x = x} \subseteq X$ are the fixed points

## Counting Theorems

**Lagrange's Theorem**:

$H \leq G \implies \abs H \divides \abs G$.


**Corollary**: 
The order of every element divides the size of $G$, i.e. 
$$
g\in G \implies o(g) \divides o(G) \implies g^{\abs G} = e
.$$

**Warning:** 
If $n \divides \abs G$, then there does **not** necessarily exist $H \leq G$ with $\abs H = n$.

> Key example: 
> $G = A_4$ is size 12 but there is no subgroup of order 6.

**Cauchy's Theorem**:

> Partial converse to Lagrange's theorem.

For $p$ a prime,
$$
p \divides \abs{G} \implies \exists g\in G \text{ such that } o(g) = p \text{ and } \exists H \definedas \generators{g} \leq G \text{ with } \abs{H} = p
.$$


**Class Equation**:
$$
\abs{G} = \abs{Z(G)} + \sum_{\substack{\text{One $x_i$ from} \\ \text{each conjugacy class}}} [G: Z(x_i)]
$$
where $Z(x) \definedas C_G(x)$ is the centralizer of $x$, given by $C_G(x) = \theset{g \suchthat [g, x] = e}$.

**Burnside's Formula:**
$$
\abs G \abs{X/G} = \sum_{g\in G} \abs {X^g}
.$$

**Orbit-Stabilizer**:
$$
\abs{G\cdot x} = [G: G_x]
$$

## Sylow Theorems

**Notation**: 
For any $p$, let $\mathrm{Syl}(p)$ be the set of Sylow$\dash p$ subgroups of $G$, and $n_p = \#\abs{\mathrm{Syl}(p)}$ the number of such subgroups.

Write 

- $\abs{G} = p^n m$ where $m {\notdivides} p$, 
- $S_p$ a sylow$\dash p$ subgroup, and 
- $n_p$ the number of sylow$\dash p$ subgroups.

**Definition**: 
A $p\dash$group is a group $G$ such that $g\in G \implies o(g) = p^k$ for some $k$. If $\abs G < \infty$, it follows that $\abs G = p^j$ for some $j$.

1. $\forall p^n \divides \abs{G}$, there exists a subgroup of size $p^n$.
   
  - **Corollary**: $\forall p \divides \abs{G}$, there exists an element of order $p$.

     > If $\abs G = \prod p_i^{\alpha_i}$, then there exist subgroups of order $p_i^{\beta_i}$ for every $i$ and every $0 \leq \beta_i \leq \alpha_i$.

2. All sylow$\dash p$ subgroups are conjugate for a given $p$.
   > If $P_1, P_2$ are Sylow$\dash p$ subgroups, then they are conjugate, i.e. $\exists g\in G \suchthat P_1 = gP_2g^{-1}$.
   
   - Corollary: $n_p = 1 \implies P \normal G$

3. Numerical Constraints
   
   1. $n_p \equiv 0 \mod m$, i.e. $n_p \divides m$
   
   2. $n_p \equiv 1 \mod p$, i.e. $n_p \not\divides p$.
   
   3. $n_p = [G : N_G(P)]$ where $N$ is the normalizer.

Some facts that are useful when doing Sylow theory:

- $\ZZ_p, \ZZ_q \subset G \implies \ZZ_p \intersect \ZZ_q = \ZZ_{(p,q)}$, so coprime order subgroups are disjoint.

- $(p, q) = 1 \implies \ZZ_p \times \ZZ_q \cong \ZZ_{pq}$

## Products

**Characterizing direct products**: 
$G \cong H \times K$ when

- $G = HK = \theset{hk \suchthat h\in H, k\in K}$

- $H\intersect K = \theset{e} \subset G$

- $H, K \normal G$

> Can relax to only $H\normal G$ to get a semidirect product instead

**Characterizing semidirect products**:
$G = N \semidirect_\psi H$ when

- $G =  NH$

- $N \normal G$
  
- $H \actson N$ by conjugation via a map
\begin{align*}
\psi: H \to \Aut(N) \\
h \mapsto h(\wait)h^{-1}
.\end{align*}


> Note: $\Aut(\ZZ_n) \cong (\ZZ^n)\units \cong \ZZ^{\varphi(n)}$ where $\varphi$ is the totient function.

Modifying the domain: 
**TODO**

Modifying the codomain: 
**TODO**



## Isomorphism Theorems

**The Correspondence Theorem / 4th Isomorphism Theorem:** 
Suppose $N \normal G$, then there exists a correspondence:
$$
\left\{
H < G \suchthat N \subseteq H
\right\}
\iff
\left\{ \begin{align*}
H \suchthat H < \frac G N
\end{align*}\right\}
\\
\correspond{
  \text{Subgroups of $G$} \\ 
  \text{containing $N$}
} \iff 
\correspond{
  \text{Subgroups of the } \\
  \text{quotient $G/N$}
}
.$$

In words, subgroups of $G$ containing $N$ correspond to subgroups of the quotient group $G/N$. This is given by the map $H \mapsto H/N$.

> Note: $N \normal G$ and $N \subseteq H < G \implies N \normal H$.


# Rings

Zorn's Lemma:


# Modules

**Lemma:** 
$I \normal R$ is a free $R\dash$module iff $I$ is a principal ideal. 

$\implies$:

Suppose $I$ is free as an $R\dash$module, and let $B = \theset{\vector m_j}_{j\in J} \subseteq I$ be a basis so we can write $M = \generators{B}$.

Suppose that $\abs{B} \geq 2$, so we can pick at least 2 basis elements $\vector m_1\neq \vector m_2$, and consider
$$
\vector c = \vector m_1 \vector m_2 - \vector m_2 \vector m_1,
$$

which is also an element of $M$ .

Since $R$ is an integral domain, $R$ is commutative, and so
$$
\vector c = \vector m_1 \vector m_2 - \vector m_2 \vector m_1 = \vector m_1 \vector m_2 - \vector m_1 \vector m_2 = \vector 0_M
$$

However, this exhibits a linear dependence between $\vector m_1$ and $\vector m_2$, namely that there exist $\alpha_1, \alpha_2 \neq 0_R$ such that $\alpha_1 \vector m_1 + \alpha_2 \vector m_2 = \vector 0_M$; this follows because $M \subset R$ means that we can take $\alpha_1 = -m_2, \alpha_2 = m_1$. This contradicts the assumption that $B$ was a basis, so we must have $\abs{B} = 1$ and so $B = \theset{\vector m}$ for some $\vector m \in I$. But then $M = \generators{B} = \generators{\vector m}$ is generated by a single element, so $M$ is principal.

$\impliedby$: 

Suppose $M\normal R$ is principal, so $M = \generators{\vector m}$ for some $\vector m \neq \vector{0}_M \in M \subset R$. 

Then $x\in M \implies x = \alpha\vector m$ for some element $\alpha\in R$ and we just need to show that $\alpha\vector m = \vector 0_M \implies \alpha = 0_R$ in order for $\theset{\vector m}$ to be a basis for $M$, making $M$ a free $R\dash$module.

But since $M \subset R$, we have $\alpha, m \in R$ and $\vector 0_M = 0_R$, and since $R$ is an integral domain, we have $\alpha m = 0_R \implies \alpha = 0_R$ or $m = 0_R$. 

Since $m \neq 0_R$, this forces $\alpha = 0_R$, which allows $\theset{m}$ to be a linearly independent set and thus a basis for $M$ as an $R\dash$module.

$\qed$

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

## Canonical Forms

Fix $T: V\to V$, and decompositions

\begin{align*}
V = \bigoplus_{j=1}^n \frac{k[x]}{(f_j)} \quad \text{(invariant factors)}
.\end{align*}

Fix some notation:
\begin{align*}
\chi_T(x): \quad & \text{The characteristic polynomial of } A \\
\min_T(x): \quad & \text{The minimal polynomial of } A
.\end{align*}

### Rational Canonical Form

Corresponds to the **Invariant Factor Decomposition** of $T$

**Derivation**:

- Let $k[x] \actson V$ using $T$, take invariant factors $a_i$,

- Note that $T\actson V$ by multiplication by $x$

- Write $\overline x = \pi(x)$ where $F[x] \mapsvia{\pi} F[x]/(a_i)$; then $\spanof\theset{\overline x} = F[x]/(a_i)$.

- Write $a_i(x) = \sum b_i x^i$, note that $V \to F[x]$ pushes $T\actson V$ to $T\actson k[x]$ by multiplication by $\overline x$

- WRT the basis $\overline x$, $T$ then acts via the companion matrix on this summand.

- Each invariant factor corresponds to a block of the RCF.

### Jordan Canonical Form

Corresponds to the **Elementary Divisor Decomposition** of $T$

**Derivation**
Todo

**Facts**:

- The following can be read directly off of the invariant factor decomposition:

  - The minimal polynomial is the *invariant factor of highest degree*, i.e.
  $$
  \min_T(x) = f_n(x)
  .$$

  - The characteristic polynomial is the *product of the invariant factors*, i.e.
  $$
  \chi_T(x) = \prod_{j=1}^n f_j(x)
  .$$

- Both $\min_T(x)$ and $\chi_T(x)$ have roots precisely the eigenvalues of $T$, with potentially different multiplicities.

- Writing
\begin{align*}
\min_A(x) = \prod (x- \lambda_i)^{a_i} \\
\chi_A(x) = \prod (x- \lambda_i)^{b_i}
\end{align*}
then $a_i \leq b_i$, and

    - $a_i$ tells you the size of the **largest** Jordan block associated to $\lambda_i$,

    - $b_i$ is the **sum of sizes** of all Jordan blocks associated to $\lambda_i$

    - $\dim E_{\lambda_i}$ is the **number of Jordan blocks** associated to $\lambda_i$

- The elementary divisors of $A$ are the minimal polynomials of the Jordan blocks.

- For characteristic polynomials
$$
p(x) = \det(A - x1))= \det(SNF(A - x1))
.$$

- ? Invariant factors of $A$ are the invariant factors of $xI - A$ over $k[x]$, and $\prod a_i = \det(xI - A)$.


- For a linear operator on a vector space of nonzero finite dimension, TFAE:

  - The minimal polynomial is equal to the characteristic polynomial.

  - The list of invariant factors has length one.

  - The Rational Canonical Form has a single block.

  - The operator has a matrix similar to a companion matrix.

  - There exists a *cyclic vector* $v$ such that $\spanof_k\theset{T^j \vector v \suchthat j = 1, 2, \cdots} = V.$


**Definition:**
Two matrices $A,B$ are **similar** (i.e. $A = PBP\inv$) $\iff$

  - $A,B$ have the same JCF

**Definition:**
Two matrices $A, B$ are **equivalent** (i.e. $A = PBQ$) $\iff$

  - They have the same rank,

  - They have the same invariant factors, *and*

  - They have the same JCF


## Matrix Counterexamples

1. A matrix that is:

- Not diagonalizable over $\RR$ but diagonalizable over $\CC$

- No eigenvalues in $\RR$ but distinct eigenvalues over $\CC$

- $\min_M(x) = \chi_M(x) = x^2 + 1$

$$
\begin{align*}
M = \left[\begin{array}{rr}
0  & 1 \\
-1 & 0
\end{array}\right] \sim
\left[\begin{array}{r|r}
-1 \sqrt{-1} & 0 \\
\hline
0 & 1 \sqrt{-1}
\end{array}\right]
.\end{align*}
$$


2.
$$
\begin{align*}
M = \left[\begin{array}{rr}
1 & 1 \\
0 & 1
\end{array}\right] \sim
\left[\begin{array}{rr}
1 & 1 \\
0 & 1
\end{array}\right]
.\end{align*}
$$

- Not diagonalizable over $\CC$

- Eigenvalues $[1, 1]$ (repeated, multiplicity 2)

- $\min_M(x) = \chi_M(x) = x^2-2x+1$

3. Non-similar matrices with the same characteristic polynomial

$$
\left[\begin{array}{ll}{1}
 & {0} \\ {0} & {1}
 \end{array}\right]
 \text { and }
 \left[\begin{array}{ll}{1}
  & {1} \\ {0} & {1}
  \end{array}\right]
$$

4. A full-rank matrix that is not diagonalizable:
\begin{align*}
\left[\begin{array}{ccc}
1 & 1 & 0 \\
0 & 1 & 1 \\
0 & 0 & 1 \\
\end{array}\right] \mathbf{????}
.\end{align*}

# Fields

**Lemma:**
Let $\phi_n \definedas x^{p^n} - x$.
Then $f(x) \divides \phi_n(x) \iff \deg f \divides n$ and $f$ is irreducible.

(So $\phi_n = \prod f_i(x)$ over all irreducible monic $f_i$ of degree $d$ dividing $n$.)

> *Proof:*
>
> $\impliedby$:
>
> Suppose $f$ is irreducible of degree $d$.
> Then $f \divides x^{p^d} - x$ (consider $F[x]/\generators{f}$) and $x^{p^d} - x \divides x^{p^n} - x \iff d\divides n$.
>
> $\implies$:
>
> - $\alpha \in \GF(p^n) \iff \alpha^{p^n} - \alpha = 0$, so every element is a root of $\phi_n$ and $\deg \min(\alpha, \FF_p) \divides n$ since $\FF_p(\alpha)$ is an intermediate extension.
> - So if $f$ is an irreducible factor of $\phi_n$, $f$ is the minimal polynomial of some root $\alpha$ of $\phi_n$, so $\deg f \divides n$.
> $\phi_n'(x) = p^nx^{p^{n-1}} \neq 0$, so $\phi_n$ has distinct roots and thus no repeated factors. So $\phi_n$ is the product of all such irreducible $f$.

## Cyclotomic Polynomials

**Definition:**
Let $\zeta_n = e^{2\pi i/n}$, then
$$
\Phi_{n}(x)=\prod_{k=1 \atop (j, n)=1}^{n}\left(x- \zeta_n^k\right)
$$

**Corollary:**
$\deg \Phi_n(x) = \phi(n)$ for $\phi$ the totient function.


**Computing $\Phi_n$:**

1. 
$$
\Phi_{n}(z)=\prod_{d | n, d>0}\left(z^{d}-1\right)^{\mu\left(\frac{n}{d}\right)}
$$
where
$$
\mu(n) \equiv\left\{\begin{array}{ll}{0} & {\text { if } n \text { has one or more repeated prime factors }} \\ {1} & {\text { if } n=1} \\ {(-1)^{k}} & {\text { if } n \text { is a product of } k \text { distinct primes, }}\end{array}\right.
$$

2. 
$$
x^{n}-1=\prod_{d | n} \Phi_{d}(x) \implies \Phi_n(x) = \frac{x^n-1}{\prod_{d | n \atop d < n} \Phi_{d}(x)},
$$
so just use polynomial long division.


**Lemma:**
\begin{align*}
\Phi_{p}(x)   &=  x^{p-1}+x^{p-2}+\cdots+x+1 \\
\Phi_{2 p}(x) &=  x^{p-1}-x^{p-2}+\cdots-x+1
.\end{align*}

**Lemma:**
$$
k\divides n \implies \Phi_{n k}(x)=\Phi_{n}\left(x^{k}\right)
$$

**Theorem:**
$\Gal(\QQ(\zeta_n)/\QQ) \cong \ZZ/(n)\units$ and is generated by maps of the form $\zeta_n \mapsto \zeta_n^j$ where $(j, n) = 1$.
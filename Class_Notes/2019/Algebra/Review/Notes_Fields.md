# Fields

**Definition:**
A ring $R$ is **simple** iff every ideal $I \normal R$ is either $0$ or $R$.

Definition:
An element $r\in R$ is prime iff $ab = r \implies 


Lemmas:

- $R/I$ is a domain $\iff I$ is prime
- $R/I$ is a field $\iff I$ is maximal.
- For $R$ a PID, $I$ is prime $\iff I$ is maximal

**Lemma (Characterizations of Rings):** 

- $R$ a finite integral domain $\implies R$ is a field.
- $\FF$ a field $\implies \FF[x]$ is a Euclidean domain.
- $R[x]$ a PID $\implies R$ is a field.
- $R$ is a field $\iff R$ is a commutative simple ring.
- $R$ is a UFD $\iff R[x]$ is a UFD.

**Lemma:**
Fields $\subset$ Euclidean domains  $\subset$  PIDs $\subset$ UFDs $\subset$ Integral Domains  $\subset$ Rings

- A Euclidean Domain that is not a field: $\FF[x]$ for $\FF$ a field
  - *Proof*: Lemma, and $x$ is not invertible
- A PID that is not a Euclidean Domain: $\ZZ\left[\frac{1 + \sqrt{-19}}{2}\right]$.
  - *Proof*: complicated.
- A UFD that is not a PID: $\FF[x, y]$.
  - *Proof*: $\generators{x, y}$ is not principal
-  An integral domain that is not a UFD: $\ZZ[\sqrt{-5}]$.
   - *Proof*: $(2+\sqrt{-5})(2-\sqrt{-5})=9=3\cdot 3$, where all factors are irreducible (check norm)
-  A ring that is not an integral domain: $\ZZ/(4)$.
   -  *Proof*: $2 \mod 4$ is a zero divisor.

Lemma:
In $R$ a UFD, an element $r\in R$ is prime $\iff r$ is irreducible.


## Finite Fields

**Theorem:**
$\GF(p^n)$ is obtained as $\displaystyle\frac{\FF_p}{\generators{f}}$ where $f \in \FF_p[x]$ is irreducible of degree $n$.

**Eisenstein's Criterion:**
If $f(x) = \displaystyle\sum_{i=0}^n \alpha_i x^i \in \QQ[x]$ and $\exists p$ such that

- $p\notdivides a_n$ but $p \divides a_{i\neq n}$, and
- $p^2 \notdivides a_0$,

then $f$ is irreducible.

**Lemma:**
Let $\rho_n \definedas x^{p^n} - x$.
Then $f(x) \divides \rho_n(x) \iff \deg f \divides n$ and $f$ is irreducible.

(So $\rho_n = \prod f_i(x)$ over all irreducible monic $f_i$ of degree $d$ dividing $n$.)

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

## Galois Theory

**Definition:**
A field extension $L/k$ is **algebraic** iff every $\alpha \in L$ is the root of some $f\in k[x]$.

**Definition:**
A field extension $L/k$ is **normal** iff

- Every embedding $\sigma: L \injects \overline k$ that is a lift of the identity over $k$ satisfies $\sigma(L) = L$.

- Every irreducible $f\in k[x]$ that has one root in $L$ has all of its roots in $L$

- If $L$ is separable: $L$ is the splitting field of some irreducible $f\in k[x]$.

**Definition:**
A field extension $L/k$ is **separable** iff

- For every $\alpha \in L, f(x) \definedas\min(\alpha, k)$ equivalently has
  - No repeated factors/roots
  - $f' \not\equiv 0$, or
  - $\gcd(f, f') = 1$.

**Lemma:**
If $\ch k = 0$ or $k$ is finite, then every *algebraic* extension $L/k$ is separable.

**Definition:**
Let $L/k$ be a finite field extension.
TFAE:

- $L/k$ is **Galois**
- $L/k$ is normal and separable.
- $L/k$ is the splitting field of a separable polynomial
- $\abs{\aut(L/k)} = [L: k]$

**Lemmas about towers:**
Let $L/F/k$ be a tower of field extensions

- $L/k$ normal $\implies L/F$ normal.
- $L/k$ Galois $\implies L/F$ Galois.
- $F/k$ is Galois $\iff \Gal(L/F) \normal \Gal(L/k)$
  - $\implies \Gal(F/k) \cong \frac{\Gal(L/k)}{\Gal(L/F)}$
- **Every** quadratic extension is Galois.

### Cyclotomic Polynomials

**Definition:**
Let $\zeta_n = e^{2\pi i/n}$, then
$$
\Phi_{n}(x)=\prod_{k=1 \atop (j, n)=1}^{n}\left(x- \zeta_n^k\right)
$$

**Lemma:**
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
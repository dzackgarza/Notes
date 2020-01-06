# Fields

Let $k$ denote a field.

**Lemmas:**

- The characteristic of $\FF$ is either 0 or $p$ a prime.
- All fields are simple rings
- Any homomorphism of fields is either 0 or injective
- If $L/k$ is algebraic, then $\min(\alpha, L)$ divides $\min(\alpha, k)$.
- Every finite extension is algebraic

**Eisenstein's Criterion:**
If $f(x) = \displaystyle\sum_{i=0}^n \alpha_i x^i \in \QQ[x]$ and $\exists p$ such that

- $p$ divides every coefficient *except* $a_n$ and
- $p^2$ does not divide $a_0$,

then $f$ is irreducible.

**Definition:**
For $R$ a UFD, a polynomial $p\in R[x]$ is **primitive** iff the greatest common divisors of its coefficients is a unit.


**Gauss' Lemma**:
Let $R$ be a UFD and $F$ its field of fractions.
Then a primitive $p\in R[x]$ is irreducible in $R[x] \iff p$ is irreducible in $F[x]$.

> *Corollary:*
> A primitive polynomial $p\in \QQ[x]$ is irreducible iff $p$ is irreducible in $\ZZ[x]$.

## Finite Fields

**Theorem:**
$\GF(p^n)\cong \displaystyle\frac{\FF_p}{(f)}$ where $f \in \FF_p[x]$ is any irreducible of degree $n$, and $\GF(p^n) \cong \FF[\alpha] \cong \spanof_\FF\theset{1, \alpha, \cdots, \alpha^{n-1}}$ for any root $\alpha$ of $f$.

**Lemma:**
$GF(p^n)$ is the splitting field of $x^{p^n} - x$ .

**Lemma:**
Let $\rho_n \definedas x^{p^n} - x$.
Then $f(x) \divides \rho_n(x) \iff \deg f \divides n$ and $f$ is irreducible.

**Lemma:**
$x^{p^n} - x = \prod f_i(x)$ over all irreducible monic $f_i \in \FF_p[x]$ of degree $d$ dividing $n$.

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
A field extension $L/k$ is **algebraic** iff every $\alpha \in L$ is the root of some polynomial $f\in k[x]$.

**Definition:**
Let $L/k$ be a finite extension.
Then TFAE:

- $L/k$ is **normal**.

- Every embedding $\sigma: L \injects \overline k$ that is a lift of the identity on $k$ satisfies $\sigma(L) = L$.

- Every irreducible $f\in k[x]$ that has one root in $L$ has *all* of its roots in $L$
  - i.e. every polynomial splits into linear factors

- If $L$ is separable: $L$ is the splitting field of some irreducible $f\in k[x]$.

**Definition:**
A field extension $L/k$ is **separable** iff

- For every $\alpha \in L, f(x) \definedas\min(\alpha, k)$ equivalently has
  - No repeated factors/roots
  - $f' \not\equiv 0$, or
  - $\gcd(f, f') = 1$.

> **Lemma:**
If $\ch k = 0$ or $k$ is finite, then every *algebraic* extension $L/k$ is separable.

**Definition:**
$\aut(L/k) = \theset{\sigma: L \to L \suchthat \restrictionof{\sigma}{k} = \id_k}$

**Lemma:**
$\abs{\aut(L/k)} \leq [L: k]$ with equality precisely when $L/k$ is normal.

**Lemmas about towers:**
Let $L/F/k$ be a finite tower of field extensions

- Multiplicativity: $[L : k] = [L: F][F: k]$
- $L/k$ normal $\implies L/F$ normal.
  - Proof: $\min(\alpha, F) \divides \min(\alpha, k)$, so if the latter splits in $L$ then so does the former.
- $L/k$ algebraic $\implies L/F$ algebraic
- $F/k$ algebraic and $L/F$ algebraic $\implies L/k$ algebraic.
- $L/k$ Galois $\implies L/F$ Galois.
- $F/k$ Galois and $L/K$ Galois $\implies F/k$  Galois **only if** $\Gal(L/F) \normal \Gal(L/k)$
  - $\implies \Gal(F/k) \cong \frac{\Gal(L/k)}{\Gal(L/F)}$
- $\alpha \in L$ algebraic over $k \implies \alpha$ algebraic over $F$.
- $E, F$ normal over $k \implies EF,E\intersect F$ normal over $k$.

**Common Counterexamples**:

- $\QQ(\zeta_3, 2^{1/3})$ is normal but $\QQ(2^{1/3})$ is not since the irreducible polynomial $x^3 - 2$ has only one root in it.

**Lemma:**
Every quadratic extension is Galois.

**Definition (Characterizations of Galois Extensions):**
Let $L/k$ be a finite field extension.
TFAE:

- $L/k$ is **Galois**
- $L/k$ is finite, normal, and separable.
- $L/k$ is the splitting field of a separable polynomial
- $\abs{\aut(L/k)} = [L: k]$
- The fixed field of $\mathrm{Aut}(L/k)$ is exactly $k$.

**Fundamental Theorem of Galois Theory:**
Let $L/k$ be a Galois extension, then there is a correspondence:
\begin{align*}
\correspond{\text{Subgroups } H \leq \Gal(L/k)}
&\iff
\correspond{\text{Fields }  F \text{ such}\\ \text{that } L/F/k} \\
H &\rightarrow \correspond{\text{The subfield fixed by $H$}} \\
\correspond{\sigma \in \Gal(L/k) \suchthat \sigma(F) = F} &\leftarrow F
.\end{align*}

- This is contravariant wrt subgroups/subfields.
- $[F: k] = [G: H]$, so degrees of extensions over the base field correspond to indices of subgroups.
- $[K : F] = \abs{H}$
- $L/F$ is Galois and $Gal(K/F) = H$
- $F/k$ is Galois $\iff H$ is normal, and $\Gal(F/k) = \Gal(L/k)/H$.
- The compositum $F_1 F_2$ corresponds to $H_1 \intersect H_2$.
- The subfield $F_1 \intersect F_2$ corresponds to $H_1 H_2$.

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

I.e., the following map is an isomorphism:
\begin{align*}
\ZZ/(n)\units &\to \Gal(\QQ(\zeta_n), \QQ) \\
r \mod n &\mapsto (\phi_r: \zeta_n \mapsto \zeta_n^r )
.\end{align*}

**Theorem**:
$\Gal(\GF(p^n)/\FF_p) = ?$
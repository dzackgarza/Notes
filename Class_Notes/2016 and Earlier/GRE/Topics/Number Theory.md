## Notation
- Notation: $(a,b) = \gcd(a,b)$
- $\ZZ_n$, the multiplicative group of integers mod $n$.
- $\ZZ_n^\times$, the group of units mod $n$.

## Basics
- Divisibility: $a\mid b \iff b = 0 \mod a$
- The fundamental theorem of arithmetic: $n = \prod p_i^{k_i}$
	- Number of distinct prime factors: $\prod(k_i + 1)$
- $xy = \gcd{(x,y)}~\mathrm{lcm}{(x,y)}$
	- If $d\mid x$ and $d\mid y$, then $\gcd(x,y) = d\gcd(\frac x d, \frac y d)$
		- Also holds for lcm, $\mathrm{lcm}(x,y) = d~\mathrm{lcm}(\frac x d, \frac y d)$
	- Can compute gcd by taking prime factorization, intersection of primes occurring, and lowest exponent occurring.
	- Dually for lcm, take union and max exponents
	- Can also compute with Euclidean algorithm, taking the final bottom-right coefficient
	- $\gcd(x, y, z) = \gcd(\gcd(x,y), z)$
	- $\gcd(x, y) = \gcd(x\mod y, y)$
	- $\gcd(x,y) = \gcd(x-y, y)$

- Chinese Remainder Theorem: the system
$$
\begin{array} { c } { x \equiv a _ { 1 } \quad \left( \bmod m _ { 1 } \right) } \\ { x \equiv a _ { 2 } \quad \left( \bmod m _ { 2 } \right) } \\ { \vdots } \\ { x \equiv a _ { r } \quad \left( \bmod m _ { r } \right) } \end{array}
$$
has a unique solution $x \mod \prod m_i \iff (m_i, m_j) = 1$ for each pair $i,j$, given by
$$
x = \sum_{j=1}^r a_j \frac{\prod_i m_i}{m_j} \left[ \frac{\prod_i m_i}{m_j} \right]^{-1}_{\mod m_j}
$$


## The Totient Function
Definition: $\phi(n) = \abs{\theset{1\leq x \leq n : (x,n) = 1}}$
- Examples:
- $\phi(1) = \abs{\theset{1}} = 1$
- $\phi(2) = \abs{\theset{1}} = 1$
- $\phi(3) = \abs{\theset{1,2}} = 2$
- $\phi(4) = \abs{\theset{1,3}} = 2$
- $\phi(5) = \abs{\theset{1,2,3,4}} = 4$

General properties for computation:
$$
\phi(p) = p-1 \\
\phi(p^k) = p^{k-1}(p-1) \\
$$

Proof: All numbers less than $p$ are coprime to $p$; there are $p^k$ numbers less than $p^k$ and the only numbers _not_ coprime to $p^k$ are multiples of $p$, i.e. $\theset{p, p^2, \cdots p^{k-1}}$ of which there are $k-1$, yielding $p^k - p^{k-1}$

Along with the fact that $\phi$ is multiplicative, so $(p,q) = 1 \implies \phi(pq) = \phi(p)\phi(q)$, compute this for any $n$ by taking the prime factorization.

With these properties, the following formulas can be derived:
$$\begin{align*}
\phi(n) = \phi(\prod_i p_i^{k_i}) &= \prod_i p_i^{k_i-1}(p_i-1) \\ &= n \left(\frac{\prod_i (p_i-1)}{\prod_i p_i}\right) \\ &= n\prod_i(1 - \frac{1}{p_i})
\end{align*}$$

Another nice result:
$$ n = \sum_{d\mid n} \phi(d) $$

## Modular Arithmetic
Generally concerned with the multiplicative group $(\ZZ_n, \times)$.

### Computations:
- $x = 0 \mod n$ where $n=\prod p_i^{k_i} \implies x = 0 \mod p_i^{j}$ for each $i$ and for each $j\leq k_i$.
- If there are factors of the moduls, peel them off with addition. E.g.: $x \mod n = nk + r \mod n = r \mod n$. Try $x=463, n = 4$ to obtain $3$.
- Repeated squaring/fast exponentiation: use the facts:
$$
x^k \mod n = (x^{k/d} \mod n)^d \mod n, \\
$$
for any $n$.
	- Example: $2^{25} =_5 (2^5 \mod 5)^5 =_5 2^5 =_5 2 \mod 5$
- Make things easier with negatives!
	- Example: $4^{25} =_5 (-1)^{25} =_5 (-1) =_5 4$
- Euler's Theorem:
$$
a^{\phi(p)} = 1 \mod n
$$

### Other Stuff
- Quadratic Residues: $x$ is a quadratic residue mod $n \iff \exists a: a^2 = x \mod n$
	- In $\ZZ_p$, exactly half of the elements (even powers of generator)
	- $-1$ is a quadratic residuce in $\ZZ_p \iff p = 1 \mod 4$

- Invertibility:
$$
xa = xb \mod n \implies a = b \mod \frac{n}{(x,n)}
$$
	- So $x$ is invertible in $\ZZ_n \iff (x,n) = 1$ and thus $\ZZ_n^\times = \theset{1\leq x \leq n : (x,n) = 1}$
		- Corrolary: $\abs{\ZZ_n^\cross} = \phi(n)$
	- Exactly what allows you to "cancel", i.e. multiply through by inverses.
	- A use of this trick: reduce by dividing entire equation. Pick any $x$ such that $x\mid a, b$ and $(x,n) = 1$  and then
$$
a =b \mod n \implies \frac a x = \frac b x \mod n
$$

- Fermat's Little Theorem
$$
\begin{align*}
x^{p}  &= x \mod p \\
x^{p-1} &= 1 \mod p \quad \text{ if } p \not\mid a
\end{align*}$$
- The Euclidean Algorithm
	- todo
- The Jacobi symbol
- Legendre symbol

Solving $ax + by = c$
- Has solutions $\iff c = 0 \mod (a,b) \iff \gcd(a,b) \text{ divides } c$.

## Prime Tests
- Fermat Test: $n$ prime $\implies a^{n-1} = 1 \mod n$
- Miller-Rabin Test: $n$ prime $\iff x^2 = 1 \mod n \implies x = \pm 1$

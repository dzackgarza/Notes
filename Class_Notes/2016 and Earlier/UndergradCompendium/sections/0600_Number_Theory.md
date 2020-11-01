# Number Theory

## Notation and Basic Definitions

\[  
(a, b) \da \gcd(a, b) && \text{the greatest common divisor} \\
\ZZ_n && \text{the ring of integers} \mod n \\
\ZZ_n\units && \text{the group of units}\mod n
.\]

:::{.definition title="Multiplicative Functions"}
A function $f:\ZZ \to \ZZ$ is said to be **multiplicative** iff
\[  
(a, b) = 1 \implies f(ab) = f(a) f(b)
.\]
:::

## Big Theorems

\todo[inline]{Link to theorems.}

## Primes

:::{.theorem title="The fundamental theorem of arithmetic"}
Every $n\in \ZZ$ can be written uniquely as 
\[
n = \prod_{i=1}^m p_i^{k_i}
\]
where the $p_i$ are the $m$ distinct prime divisors of $n$.
:::

:::{.remark}
Note that the number of distinct prime factors is $m$, while the total number of factors is $\prod_{i=1}^m(k_i + 1)$.
:::



## Divisibility

:::{.definition title="Divisibility"}
\[
a\divides b \iff b \equiv 0 \mod a \iff \exists k \text{ such that } ak = b
\]
:::

### $\gcd, \lcm$

:::{.remark}
$\gcd(a, b)$ can be computed by taking prime factorizations of $a$ and $b$, intersecting the primes occurring, and taking the lowest exponent that appears.
Dually, $\lcm(a, b)$ can be computed by taking the *union* and the *highest* exponent.
\todo[inline]{Check}
:::

:::{.proposition title="Relationship between $\gcd$ and $\lcm$"}
\[
xy = \gcd{(x,y)}~\mathrm{lcm}{(x,y)}
\]
:::

:::{.proposition title="?"}
If $d\mid x$ and $d\mid y$, then 
\[
\gcd(x,y) &= d\cdot \gcd\qty{ \frac x d, \frac y d} \\
\lcm(x,y) &= d\cdot \lcm \qty{ \frac x d, \frac y d}
\]
\todo[inline]{Check}
:::


:::{.proposition title="Useful properties of $\gcd$"}
\[  
\gcd(x, y, z) &= \gcd(\gcd(x,y), z) \\
\gcd(x, y)    &= \gcd(x\bmod y, y) \\
\gcd(x,y)     &= \gcd(x-y, y)
.\]
:::

### The Euclidean Algorithm

$\gcd(a, b)$ can be computed via the Euclidean algorithm, taking the final bottom-right coefficient.

\todo[inline]{Example of Euclidean algorithm,}



## Modular Arithmetic

Generally concerned with the multiplicative group $(\ZZ_n, \times)$.

:::{.theorem title="The Chinese Remainder Theorem"}
The system
\[
\begin{array} { c } { x \equiv a _ { 1 }   \mod m _ { 1 }  } \\ { x \equiv a _ { 2 }   \mod m _ { 2 }  } \\ { \vdots } \\ { x \equiv a _ { r }   \mod m _ { r }  } \end{array}
\]

has a unique solution $x \mod \prod m_i \iff (m_i, m_j) = 1$ for each pair $i,j$, given by
\[  
x = \sum_{j=1}^r a_j \frac{\prod_i m_i}{m_j} \left[ \frac{\prod_i m_i}{m_j} \right]^{-1}_{\mod m_j}
.\]
:::

:::{.theorem title="Euler's Theorem"}
\[  
a^{\phi(p)} \equiv 1 \mod n
.\]
:::

:::{.theorem title="Fermat's Little Theorem"}
\[
x^{p}  &\equiv x \mod p \\
x^{p-1} &\equiv 1 \mod p \quad \text{ if } p \notdivides a
\]

:::

### Diophantine Equations 

:::{.proposition title="Solutions to linear Diophantine equations"}
Consider $ax + by = c$.
This has solutions iff 
$c = 0 \mod (a,b) \iff \gcd(a,b) \text{ divides } c$.

\todo[inline]{How to obtain solutions.}
:::


### Computations

:::{.proposition title="?"}
If $x\equiv 0 \mod n$, then $x\equiv 0 \mod p^k$ for all $p^k$ appearing in the prime factorization of $n$.
:::


:::{.remark}
If there are factors of the modulus in the equation, peel them off with addition, using the fact that $nk \equiv 0 \mod n$.
\[
x 
&\equiv nk + r \mod n  \\
&\equiv r \mod n
\]

So take $x=463, n = 4$, then use $463 = 4\cdot 115 + 4$ to write
\[  
463 &\equiv y \mod 4 \\
\implies 4\cdot 115 + 3 &\equiv y \mod 4 \\
\implies  3&\equiv y\mod 4
.\]

:::

:::{.proposition title="Repeated square/fast exponentiation"}
For any $n$,
\[  
x^k \mod n \equiv (x^{k/d} \bmod n)^d \mod n
.\]
:::

:::{.example title="?"}
\[
2^{25} 
&\equiv (2^5 \mod 5)^5 \mod 5 \\
&\equiv 2^5  \mod 5 \\
&\equiv 2 \mod 5 
\]
:::

:::{.remark}
Make things easier with negatives!
For example, $\mod 5$,
\[
4^{25} 
&\equiv (-1)^{25} \mod 5\\
&\equiv (-1) \mod 5\\
&\equiv 4 \mod 5
\]
:::


### Invertibility

:::{.proposition title="Reduction of modulus"}
\[  
xa = xb \mod n \implies a = b \mod \frac{n}{(x,n)}
.\]
:::

:::{.proposition title="Characterization of invertibility"}
\[  
x\in \ZZ_n\units \iff (x, n) = 1
,\]
and thus 
\[
\ZZ_n^\times = \theset{1\leq x \leq n : (x,n) = 1}
\]
and $\abs{\ZZ_n^\cross} = \phi(n)$.
:::

:::{.example title="Using invertibility"}
One can reduce equations by dividing through by a unit.
Pick any $x$ such that $x\divides a$ and $x\divides b$ with $(x,n) = 1$, then
\[  
a =b \mod n \implies \frac a x = \frac b x \mod n
.\]

:::



## The Totient Function

:::{.definition title="Euler's Totient Function"}
\[
\phi(n) = \abs{\theset{1\leq x \leq n : (x,n) = 1}}
\]
:::

:::{.example title="?"}
\[
\phi(1) & = \abs{\theset{1}} = 1 \\
\phi(2) & = \abs{\theset{1}} = 1 \\
\phi(3) & = \abs{\theset{1,2}} = 2 \\
\phi(4) & = \abs{\theset{1,3}} = 2 \\
\phi(5) & = \abs{\theset{1,2,3,4}} = 4
\]
:::

:::{.proposition title="Formulas involving the totient"}
\[
\phi(p)   & = p-1 \\
\phi(p^k) & = p^{k-1}(p-1) \\
\phi(n) &= n\prod_{i=1}^{?} \qty{1 - {1\over p_i}} \\
n &= \sum_{\tiny d\divides n} \phi(d) 
\]


:::

:::{.proof title="?"}
All numbers less than $p$ are coprime to $p$; there are $p^k$ numbers less than $p^k$ and the only numbers _not_ coprime to $p^k$ are multiples of $p$, i.e. $\theset{p, p^2, \cdots p^{k-1}}$ of which there are $k-1$, yielding $p^k - p^{k-1}$

Along with the fact that $\phi$ is multiplicative, so $(p,q) = 1 \implies \phi(pq) = \phi(p)\phi(q)$, compute this for any $n$ by taking the prime factorization.

With these properties, one can compute:
\[
\phi(n) 
&= \phi\qty{ \prod_i p_i^{k_i}} \\
&= \prod_i p_i^{k_i-1}(p_i-1) \\ 
&= n \left(\frac{\prod_i (p_i-1)}{\prod_i p_i}\right) \\ 
&= n\prod_i \qty{ 1 - \frac{1}{p_i}}
\]

\\todo[inline]{Check and explain}
:::


## Quadratic Residues

:::{.definition title="Quadratic Residue"}
$x$ is a **quadratic residue** $\bmod n$ iff there exists an $a$ such that $a^2 = x \mod n$.
:::

:::{.proposition title="?"}
In $\ZZ_p$, exactly half of the elements (even powers of generator) are quadratic residues.
:::

:::{.proposition title="?"}
\[  
-1\text{ is a quadratic residue in } \ZZ_p \iff p = 1 \mod 4
.\]
:::


:::{.definition title="The Jacobi Symbols"}
\todo[inline]{todo}
:::

:::{.definition title="The Legendre Symbol"}
\todo[inline]{todo}
:::

## Primality Tests

:::{.proposition title="Fermat Primality Test"}
If $n$ is prime, then 
\[
a^{n-1} = 1 \mod n
\]
:::

:::{.proposition title="Miller-Rabin Primality Test"}
$n$ is prime iff 
\[
x^2 = 1 \mod n \implies x = \pm 1
\]
:::

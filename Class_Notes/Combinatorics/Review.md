# Formulae

- $\abs{\theset{\text{Permutations}}}  = n!$

- Falling Factorial: Let 
$$x^{\underline n} = x(x-1)\cdots (x-n+1) = \prod_{i=0}^{n-1}(x - i) 
$$ 
be the *falling factorial*, which is a product with exactly $n$ terms.
- Rising Factorial: Let
$$
x^{\overline n} = x(x+1_ \cdots (x+n-1) = \prod_{i=0}^{n-1}(x+i)
$$
be the *rising factorial*, which is a product with exactly $n$ terms.
- Multiset Permutations
- Stirling Numbers of the First Kind

- Binomial Coefficient: Define
$$
{n \choose k } = \frac{n!}{k!(n-k)!}
$$
which is the number of ways to select $k$ items from a set of $n$ items without replacement.

- Multiset Coefficient: Define
$$
{\left(\!\!{n\choose k}\!\!\right)} = {{n+k-1}\choose k} = {{n+k-1}\choose n-1} = \frac{n^{\overline k}}{k!}
$$
which is the number of ways to select $k$ items from a set of $n$ items, with replacement. This yields a $k\dash$element multiset of elements from $[n]$.

- Compositions
$$\begin{align*}
\mathrm{comp}_W(n, k) = \#\theset{\text{compositions of $n$ into $k$ parts}} &= {n-1 \choose n-k} \\ \\
\mathrm{comp}(n, k) = \#\theset{\text{weak compositions of $n$ into $k$ parts}} &= \multinomial{n+1 \choose k-1} \\ &= {n+k-1 \choose k}
\end{align*}$$

# The 12-fold Way
| $[n]$ labeled?   | $[k]$  labeled?  | $[n] \to [k]$ | $[n] \injects [k]$ | $[n] \surjects [k]$
|---|---|---|---|---|
| Yes | Yes | $k^n$  | $\begin{cases}n^{\underline k} & n \leq k \\ 0 & n > k \end{cases}$  |  $\begin{cases}k!~S(n,k) & k \leq n \\ 0 & k > n \end{cases}$  |
| No | Yes |  $\multinomial{n\choose k}$ | $\begin{cases}{k\choose n} & n \leq k\\ ~0 & n > k\end{cases}$ | $\begin{cases} \mathrm{comp}_W(n, k) & k \leq n \\ 0 & k > n \end{cases}$ |
| Yes | No | $\sum_{i=1}^k S(n, i)$  | $\begin{cases}1 & n \leq k \\ 0 & n > k \end{cases}$  | $\begin{cases}S(n,k) & k \leq n \\ 0 & k > n \end{cases}$  |
| No | No | $\sum_{i=1}^k p_i(n)$ | $\begin{cases}1 & n \leq k \\ 0 & n > k \end{cases}$   | $\begin{cases}p_k(n) & k \leq n \\ 0 & k > n \end{cases}$  |

Some Interpretations:

1. Unrestricted, labeled $[n]$, labeled $[k]$
   1. Words of length $n$ from an alphabet of size $[k]$, with repetition allowed.
   2. For each of $n$ balls, choose **with replacement** one of $k$ bins as its target.
2. Injective, labeled $[n]$, labeled $[k]$
   1. Words of length $n$ from an alphabet of size $[k]$ with no repetition (all letters unique).
   2. For each of $n$ balls, choose **without replacement** one of $k$ bins as its target
3. Surjective, labeled $[n]$, labeled $[k]$
   1. Words of length $n$ from an alphabet of size $[k]$, where every letter appears at least once.
      1. Partition $n$ slots into $k$ groups, then assign letter $a$ to one of the $k$ group, letter $b$ to one of the remaining $k-1$ groups, etc
   2. Distribute $n$ balls into $k$ bins where each bin has at least one ball.

---

1. Unrestricted, unlabeled $[n]$, labeled $[k]$
   1. Words of length $n$ from an alphabet of size $k$, with 
   2. For each of $n$ balls,

---

- Injective:
  - Choose without replacement
  - At most one ball per bin
- Surjective: 
  - Choose with replacement, but must use every ball at least once.
  - At least one ball per bin / no bin is empty

# Combinatorics

List of concepts

- Permutation


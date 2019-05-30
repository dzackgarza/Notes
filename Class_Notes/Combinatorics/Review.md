# Formulae

- $\abs{\theset{\text{Permutations}}}  = n!$

- Falling Factorial: Let 
$$(x)^{\underline n} = x(x-1)\cdots (x-n+1) = \prod_{i=0}^{n-1}(x - i) 
$$ 
be the *falling factorial*, which is a product with exactly $n$ terms.

- Multiset Permutations
- Stirling Numbers of the First Kind

# The 12-fold Way
| $[n]$ labeled?   | $[k]$  labeled?  | No restrictions | $[n] \injects [k]$ | $[n] \surjects [k]$
|---|---|---|---|---|
| Yes | Yes | $k^n$  | $n^{\underline k}$  | $k!~S(n,k)$ |
| No | Yes |  ${n+k-1}\choose{n}$ | $\begin{cases}0 & k < n, \\{k\choose n} & k \geq n\end{cases}$ | ${n-1}\choose{n-k}$ |
| Yes | No | $\sum_k S(n, k)$  | $\begin{cases}1, k \end{cases}$  | $S(n, k)$ |
| No | No | $p_k(n)$ | $\indicator{n \leq k}$  | $p_k(n) - p_{k-1}(n)$ |

1. A word of length $n$ from an alphabet of size $[k]$, with repetition allowed.
2. A word of length $n$ from an alphabet of size $[k]$ with no repetition (all letters unique).
3. A word of length $n$ from an alphabet of size $[k]$, where every letter is used at least once.

Injective: 

# Combinatorics

List of concepts

- Permutation


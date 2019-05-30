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
| Yes | Yes | $k^n$  | $\begin{cases}n^{\underline k} & n \leq k \\ 0 & n > k \end{cases}$  | $k!~S(n,k)$ |
| No | Yes |  ${n+k-1}\choose{n}$ | $\begin{cases}{k\choose n} & n \leq k\\ 0 & n > k\end{cases}$ | ${n-1}\choose{n-k}$ |
| Yes | No | $\sum_k S(n, k)$  | $\begin{cases}1 & n \leq k \\ 0 & n > k \end{cases}$  | $S(n, k)$ |
| No | No | $p_k(n)$ | $\begin{cases}1 & n \leq k \\ 0 & n > k \end{cases}$   | $p_k(n) - p_{k-1}(n)$ |

1. A word of length $n$ from an alphabet of size $[k]$, with repetition allowed.
2. A word of length $n$ from an alphabet of size $[k]$ with no repetition (all letters unique).
3. A word of length $n$ from an alphabet of size $[k]$, where every letter is used at least once.

Injective: 

# Combinatorics

List of concepts

- Permutation


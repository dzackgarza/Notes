# Formulae

- $\abs{\theset{\text{Permutations}}}  = n!$

- Falling Factorial: Let 
$$P_n(x) = (x)_n = (x)^{\underline n} = x(x-1)\cdots (x-n+1) = \prod_{i=0}^{n-1}(x - i) 
$$ 
be the *falling factorial*, which is a product with exactly $n$ terms.

- Multiset Permutations
- Stirling Numbers of the First Kind

# THe 12-fold Way
| $[n]$ labeled?   | $[k]$  labeled?  | No restrictions | $f:[n] \injects [k]$ | $f: [n] \surjects [k]$
|---|---|---|---|---|
| Yes | Yes | $k^n$  | $P_n(n+1-k)$  | $k!~S(n,k)$ |
| No | Yes |  ${k+n-1}\choose{n}$ | $k\choose n$ | ${n-1}\choose{n-k}$ |
| Yes | No | $\sum_k S(n, k)$  | $\indicator{1 \leq k}$  | $S(n, k)$ |
| No | No | $p_k(n)$ | $\indicator{n \leq k}$  | $p_k(n) - p_{k-1}(n)$ |

1. A word of length $n$ from an alphabet of size $[k]$, with repetition allowed.
2. A word of length $n$ from an alphabet of size $[k]$ with no repetition (all letters unique).
3. A word of length $n$ from an alphabet of size $[k]$, where every letter is used at least once.

# Combinatorics

List of concepts

- Permutation


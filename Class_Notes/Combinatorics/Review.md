# Formulae

- $\abs{\theset{\text{Permutations}}}  = n!$

Let 
$$P_n(x) = (x)_b = x(x-1)\cdots (x-n+1) = \prod_{i=0}^{n-1}(x - i) 
$$ 

| $[n]$ labeled?   | $[k]$  labeled?  | No restrictions | $f:[n] \injects [k]$ | $f: [n] \surjects [k]$
|---|---|---|---|---|
| 1 | 1 | $k^n$  | $P_n(n+1-k)$  | $k! S(n,k)$ |
| 0 | 1 |  ${k+n-1}\choose{n}$ | $k\choose n$ | ${n-1}\choose{n-k}$ |
| 1 | 0 | $\sum_k S(n, k)$  | $\indicator{1 \leq k}$  | $S(n, k)$ |
| 1 | 0 | $p_k(n)$ | $\indicator{n \leq k}$  | $p_k(n) - p_{k-1}(n)$ |

# Combinatorics

List of concepts

- Permutation


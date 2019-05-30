# Formulae

- $\abs{\theset{\text{Permutations}}}  = n!$

- Falling Factorial: Let 
$$(x)^{\underline n} = x(x-1)\cdots (x-n+1) = \prod_{i=0}^{n-1}(x - i) 
$$ 
be the *falling factorial*, which is a product with exactly $n$ terms.

- Multiset Permutations
- Stirling Numbers of the First Kind
- Multiset Coefficient
$$
{\left(\!\!{n\choose k}\!\!\right)} = {{n+k-1}\choose n}
$$

# The 12-fold Way
| $[n]$ labeled?   | $[k]$  labeled?  | $[n] \to [k]$ | $[n] \injects [k]$ | $[n] \surjects [k]$
|---|---|---|---|---|
| Yes | Yes | $k^n$  | $\begin{cases}n^{\underline k} & n \leq k \\ 0 & n > k \end{cases}$  |  $\begin{cases}k!~S(n,k) & k \leq n \\ 0 & k > n \end{cases}$  |
| No | Yes |  ${\left(\!\!{n\choose k}\!\!\right)}$ | $\begin{cases}{k\choose n} & n \leq k\\ 0 & n > k\end{cases}$ | $\begin{cases}{n-1}\choose{n-k} & k \leq n \\ 0 & k > n \end{cases}$ |
| Yes | No | $\sum_{i=1}^k S(n, i)$  | $\begin{cases}1 & n \leq k \\ 0 & n > k \end{cases}$  | $\begin{cases}S(n,k) & k \leq n \\ 0 & k > n \end{cases}$  |
| No | No | $\sum_{i=1}^k p_i(n)$ | $\begin{cases}1 & n \leq k \\ 0 & n > k \end{cases}$   | $\begin{cases}p_k(n) & k \leq n \\ 0 & k > n \end{cases}$  |

Some Interpretations:
1. Unrestricted labeled balls into labeled bins
   1. Words of length $n$ from an alphabet of size $[k]$, with repetition allowed.
   2. For each of $n$ balls, choose any one of $k$ bins as its target
2. Words of length $n$ from an alphabet of size $[k]$ with no repetition (all letters unique).
3. Words of length $n$ from an alphabet of size $[k]$, where every letter is used at least once.
4. 

- Injective:
  - Choose without replacement
  - At most one ball per bin
- Surjective: 
  - Choose with replacement, but must use every ball at least once.
  - At least one ball per bin / no bin is empty

# Combinatorics

List of concepts

- Permutation


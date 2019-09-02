## The 12-fold Way


| $[n]$ labeled?   | $[k]$  labeled?  | $[n] \to [k]$ | $[n] \injects [k]$ | $[n] \surjects [k]$
|---|---|---|---|---|
| Yes | Yes | $k^n$  | $\begin{cases}n^{\underline k} & n \leq k \\ 0 & n > k \end{cases}$  |  $\begin{cases}k!~S(n,k) & k \leq n \\ 0 & k > n \end{cases}$  |
| No | Yes |  $\multinomial{k\choose n} = \frac {k^{\overline n}} {k!}$ | $\begin{cases}{k\choose n} & n \leq k\\ ~0 & n > k\end{cases}$ | $\begin{cases} \mathrm{comp}_W(n, k) & k \leq n \\ 0 & k > n \end{cases}$ |
| Yes | No | $\sum_{i=1}^k S(n, i)$  | $\begin{cases}1 & n \leq k \\ 0 & n > k \end{cases}$  | $\begin{cases}S(n,k) & k \leq n \\ 0 & k > n \end{cases}$  |
| No | No | $\sum_{i=1}^k p_i(n)$ | $\begin{cases}1 & n \leq k \\ 0 & n > k \end{cases}$   | $\begin{cases}p_k(n) & k \leq n \\ 0 & k > n \end{cases}$  |

- Injective:
  - Choose without replacement
  - At most one ball per bin
- Surjective: 
  - Choose with replacement, but must use every ball at least once.
  - At least one ball per bin / no bin is empty

Some Interpretations:

1. Unrestricted, labeled $[n]$, labeled $[k]$
   1. Words of length $n$ from an alphabet of size $[k]$, with repetition allowed.
      1. $k$ choices for first letter, $k$ for second, etc
   2. For each of $n$ balls, choose **with replacement** one of $k$ bins as its target.
2. Injective, labeled $[n]$, labeled $[k]$
   1. Words of length $n$ from an alphabet of size $[k]$ with no repetition (all letters unique).
   2. For each of $n$ balls, choose **without replacement** one of $k$ bins as its target
3. Surjective, labeled $[n]$, labeled $[k]$
   1. Words of length $n$ from an alphabet of size $[k]$, where every letter appears at least once.
      1. Partition $n$ slots into $k$ groups, then assign letter $a$ to one of the $k$ group, letter $b$ to one of the remaining $k-1$ groups, etc
   2. Distribute $n$ balls into $k$ bins where each bin has at least one ball.


4. Unrestricted, unlabeled $[n]$, labeled $[k]$
   1. Number of ways to choose with replacement $k$ symbols to appear in a word of length $n$. Alternatively, all words of length $n$ with letters choisen from $[k]$ with replacement, where we identify together all words that are anagrams of each other.
   2. Lay $n$ indstinguishable balls out in a line, then place $k-1$ dividers to form $k$ compartments. Put all balls falling in the first compartment into bin 1, all in the second compartment to bin 2, etc.
      1. Use stars and bars
5. Injective, unlabeled $[n]$, labeled $[k]$
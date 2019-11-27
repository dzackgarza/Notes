# Appendix

Some notes on lists:

- Note that every $n\dash$element list admits an action of $S_n$ where you let any $\sigma\in S_n$ act on the indices (i.e. reordering the list).
- Note that there is a map from lists to sets, which just forms a set out of the element of the list. For example, $[a,b,c,b] \mapsto \theset{a,b,c}$. Note that it is not injective in general, since for example $[c,b,b,a] \mapsto \theset{a,b,c}$ as well. If the $n$ elements of list are *unique*, however, then the action of $S_n$ is nice enough that you can quotient out by it, i.e. dividing counts by $n!$.
- So one method of counting is to first form an ordered list of unique elements, then identify any two ordered lists if they differ by a permutation (i.e. take the underlying set).

Bonus: It can be shown using ordinary generating functions that
$$
\stirlingfirst{n}{k} = \frac { 1 } { k ! } \ln ^ { k } \left( \frac { 1 } { 1 - z } \right).
$$

Bonus: a closed formula  for the Stirling numbers of the second kind is given by
$$
\stirling n k = \sum _ { i = 0 } ^ { k } \frac { ( - 1 ) ^ { k - i } } { k ! } \left( \begin{array} { l } { k } \\ { i } \end{array} \right) i ^ { n },
$$
which can be found by using the recurrence to solve for an ordinary generating function, then using partial fraction decomposition and some gnarly algebraic manipulations. With a bit more work, you can show
$$
\sum_k \stirling n k = \frac 1 e \sum_{i=0}^\infty \frac{i^n}{i!}.
$$



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

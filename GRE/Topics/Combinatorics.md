 - Choosing: $n\choose k$
	 - Choosing with repetition allowed: ${n+k-1}\choose k$

Stirling Numbers
- Of the first kind $S(n,k) = S(n-1, k-1) + kS(n-1, k)$
- Of the second kind

Betti Numbers
Bell Numbers


The Twelvefold Way: consider a function $f: N \to K$ where $\abs{N}=n, \abs{K} = k$.

$$\begin{array}{c|c|c|c}
\text{Permutations \ Restrictions}  & N \mapsvia{f} K & N \injects K & N \surjects K
\\ \hline
f 															& k^n & k^{\underline{n}} & k! \stirling{n}{k}  \\
f \circ \sigma_N 								& {n+k-1}\choose n & k\choose n & {n-1}\choose{n-k} \\
\sigma_X \circ f 								& \sum_{i=0}^k \stirling{n}{i} & [n \leq k] & \stirling{n}{k}\\
\sigma_X \circ f \circ \sigma_N & p_k(n+k) & [n \leq k] & p_k(n)
\end{array}$$

In words:
Perm. / Rest.  | ---  | Injective  | Surjective  
--|---|---|--  
---  | A sequence of $n$ elements from $X$  |   |  Compositions of $N$ with exactly $k$ subsets
Permutations of $N$  |  Multisets of $K$ with $n$ elements | An $n\dash$element subset of $K$  |  Compositions of $n$ with $k$ terms
Permutations of $X$  |    Partitions of $N$ into $\leq k$ subsets | Partitions of $n$ into $\leq k$ nonempty parts   | Partitions of $N$ into exactly $k$ subsets  
Both  |  Partitions of $n$ into $\leq k$ parts | Partitions of $n$ into $\leq k$ nonempty parts  | Partitions of $n$ into exactly $k$ parts  

Set/Integer Partitions

Coupon Collectors Problem

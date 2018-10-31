## Notation
$$\begin{align*}
S_n &= \theset{?} && \text{the symmetric group} \\
{n\choose k} 		&= \frac{n!}{k!(n-k)!} && \text{binomial coefficient}\\
n^\underline k 	&= n(n-1) \cdots (n-k+1) = k!{n\choose k} && \text{falling factorial}\\
n^{\overline k} &= n(n+1) \cdots (n+k-1) = k!{n + n - 1 \choose n} \text{} && \text{rising factorial}\\
\end{align*}$$

Note that the rising and falling factorials always have exactly $k$ terms.

# The Important Numbers
- Binomial Coefficients
	- Choosing:$n \choose k$
	- Choosing with repetition allowed: ${n+k-1}\choose k$
Stirling Numbers
- Of the first kind: $s(n,k)$
	- Count the number of permutations of $n$ elements with $k$ disjoint cycles.
	- Recurrence relation:
		$$
		s(n,k) = s(n-1, k-1) + ks(n-1, k)
		$$
- Of the second kind: $\stirling{n}{k}$
	- Counts the number of ways to partition a set $N$ into $k$ non-empty subsets $S_i$ (i.e. such that $S_i \cap S_j = \emptyset,~\coprod_{i=1}^k S_i = N$)
	- Recurrence relation:
		$$
		\left\{ \begin{array} { c } { n + 1 } \\ { k } \end{array} \right\} = k \left\{ \begin{array} { l } { n } \\ { k } \end{array} \right\} + \left\{ \begin{array} { c } { n } \\ { k - 1 } \end{array} \right\}\\ \\ \stirling 0 0 = 1,\quad \stirling n 0 = \stirling 0 n = 0
		$$
	- Explicit formula: $\stirling n k = \frac 1 {k!} \sum_{i=0}^k (-1)^{k-i} {k \choose i} i^n$
	- $B_n = \sum_{i=0}^n \stirling n i$
- Betti Numbers
- Bell Numbers
- Partitions
- Compositions

## The Twelvefold Way

Consider a function $f: N \to K$ where $\abs{N}=n, \abs{K} = k$.

A number of valid interpretations:
- $f$ labels elements of $N$ by elements of $K$
- For each element of $N$, $f$ chooses an element of $K$
- $f$ partitions $N$ into classes that are mapped to the same element of $K$
- Throw each of $N$ balls into some of $K$ boxes

Dictionary:
- No restrictions:
	- Assign $n$ labels, repetition allowed
	- Form a multiset of $K$ of size $n$
- Injectivity
	- Assign $n$ labels without repetition
	- Select $n$ distinct elements from $K$
	- Number of $n\dash$combinations of $k$ elements
	- No more than one ball per box
- Surjectivity:
	- Use every label at least once
	- Every element of $K$ is selected at least once
- "Indistinguishable"
	- Quotient by the action of $S_n$ or $S_k$
- $n\dash$permutations = injective functions
- $n\dash$combinations = injective functions / $S_n$
- $n\dash$multisets = all functions / $S^n$
- Partitions of $N$ into $k$ subsets = surjective functions / $S_k$
- Compositions of $n$ into $k$ parts = surjective functions / $S_n$

$$\begin{array}{c|c|c|c}
\text{Permutations \ Restrictions}  & N \mapsvia{f} K & N \injects K & N \surjects K
\\ \hline
f 															& k^n & k^{\underline{n}} & k! \stirling{n}{k}  \\
f \circ \sigma_N 								& {n+k-1}\choose n & k\choose n & {n-1}\choose{n-k} \\
\sigma_X \circ f 								& \sum_{i=0}^k \stirling{n}{i} & \indicator{n \leq k} & \stirling{n}{k}\\
\sigma_X \circ f \circ \sigma_N & p_k(n+k) & \indicator{n \leq k} & p_k(n)
\end{array}$$

In words:
Perm. / Rest.  | ---  | Injective  | Surjective  
--|---|---|--  
---  | A sequence of any $n$ elements of $K$  |  Sequences of $n$ _distinct_ elements of $K$ |  Compositions of $N$ with exactly $k$ subsets
Permutations of $N$  |  Multisets of $K$ with $n$ elements | An $n\dash$element subset of $K$  |  Compositions of $n$ with $k$ terms
Permutations of $X$  |    Partitions of $N$ into $\leq k$ subsets |?  | Partitions of $N$ into exactly $k$ nonempty subsets  
Both  |  Partitions of $n$ into $\leq k$ parts | ? | Partitions of $n$ into exactly $k$ parts  

Proofs/Explanations:

Set/Integer Partitions

Coupon Collectors Problem

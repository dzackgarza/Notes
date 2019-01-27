## Notation
$$
\begin{align*}
S_n 								&= \theset{1,2,\ldots n} 									&& \text{the symmetric group} \\
{n\choose k} 						&= \frac{n!}{k!(n-k)!} 										&& \text{binomial coefficient}\\
n^\underline k 						&= n(n-1) \cdots (n-k+1) = k!{n\choose k} 					&& \text{falling factorial}\\
n^{\overline k} 					&= n(n+1) \cdots (n+k-1) = k!{n + n - 1 \choose n} \text{} 	&& \text{rising factorial}\\
{n \choose {m_1, m_2, \cdots m_k}} 	&= \frac{n!}{\prod_{i=1}^k m_i!} 							&& \text{multinomial coefficient}
\end{align*}
$$

Note that the rising and falling factorials always have exactly $k$ terms.

Multinomial: A set of $n$ items divided into $k$ distinct, disjoint subsets of sizes $m_1 \cdots m_k$.
Multinomial theorem: $$(x_1 + x_2 + \cdots x_k )^n = \sum_{m_1, m_2, \cdots, m_k \\ ~~~\sum m_i = n}{n \choose m_1,m_2,\cdots, m_k}x_1^{m_1}x_2^{m_2}\cdots x_k^{m_k}$$
which contains $n + r - 1 \choose r - 1$ terms.

Inclusion-Exclusion: 
$$ 
\abs{\union_{i=1}^n A_i} 
= \sum_i \abs A_i - \sum_{i_1 < i_2}^{n\choose 2^2} \abs{A_{i_1} \intersect A_{i_2}} + 
\sum_{i_1 < i_2 < i_3}^{n \choose 2^3} \abs{A_{i_1} \intersect A_{i_2} \intersect A_{i_3}} + 
\cdots +(-1)^{n+1} \abs{\intersect_{i=1}^n A_i} \\ 
= \sum_{k=1}^n ~\sum_{i_1 < \cdots < i_k}  (-1)^{k+1} \abs{\intersect_{j=1}^k A_{i_j}}
$$

# The Important Numbers
- Binomial Coefficients
	- The Binomial Theorem: $$(x+y)^n = \sum_{k=0}^n {n\choose k}x^ky^{n-k}$$
	- Choosing:$n \choose k$
	- Choosing with repetition allowed: ${n+k-1}\choose k$
- Signed Stirling Numbers of the First Kind: $s(n,k)$
	- Count the number of permutations of $n$ elements with $k$ disjoint cycles, i.e. the number of elements elements in $S_n$ that are the product of $k$ disjoint cycles (including trivial cycles that fix a point).
	- Recurrence relation:
		$$
		s(n,k) = s(n-1, k-1) + ks(n-1, k)
		$$
	- Relation to falling factorial: $x^{\underline n} = \sum_{k=1}^n s(n,k)x^k$
- Stirling Numbers of the Second Kind: $\stirling{n}{k}$
	- Counts the number of ways to partition a set $N$ into $k$ non-empty subsets $S_i$ (i.e. such that $S_i \cap S_j = \emptyset,~\coprod_{i=1}^k S_i = N$)
	- Recurrence relation:
		$$
		\stirling{n+1}{k} = k\stirling{n}{k} + \stirling{n}{k-1} \\ 
		\stirling 0 0 = 1,
		\quad \stirling n 0 = \stirling 0 n = 0
		$$
	- Explicit formula: $\stirling n k = \frac 1 {k!} \sum_{i=0}^k (-1)^{k-i} {k \choose i} i^n$
	- $B_n = \sum_{i=0}^n \stirling n i$
- Betti Numbers
- Bell Numbers
- Compositions
	- A composition of $n$ is a way of writing $n$ as a sum of strictly positive integers, ie. $k_1 + k_2 + \cdots k_i = n$ where each $0 < k_i \leq n$, where order matters (and distinct orders count as distinct compositions).
	- Weak compositions: identical, but some terms are allowed to be zero.
	- Number of compositions of $n$ into $k$ parts: $n-1 \choose k - 1$
	- Number of _weak_ compositions of $n$ into $k$ parts: $n+k-1 \choose n$
	- Total number of compositions of $n$ (into any number of parts): $2^{n-1}$
- Partitions
	- A partition of $n$ is a composition of $n$ quotiented by permutations of the ordering of terms.
		- Example: 2 compositions of $5$ involving $1$ and $4$, given by $4+1$ and $1+4$, whereas there is only one such partition of $5$ given by $4+1$.
	- Visualize with Young diagrams

## Common Problems
- Stars and Bars
	- No two bars adjacent: $n-1\choose k-1$
	- Allowing adjacent bars: $n+k-1 \choose k-1$

Coupon Collectors Problem


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

$$
\begin{array}{c|c|c|c}
\text{Permutations \ Restrictions}  & N \mapsvia{f} K & N \injects K & N \surjects K
\\ \hline
f 															& k^n & k^{\underline{n}} & k! \stirling{n}{k}  \\
f \circ \sigma_N 								& {n+k-1}\choose n & k\choose n & {n-1}\choose{n-k} \\
\sigma_X \circ f 								& \sum_{i=0}^k \stirling{n}{i} & \indicator{n \leq k} & \stirling{n}{k}\\
\sigma_X \circ f \circ \sigma_N & p_k(n+k) & \indicator{n \leq k} & p_k(n)
\end{array}
$$

In words (todo: explain)
Perm. / Rest.  | ---  | Injective  | Surjective  
--|---|---|--  
---  | A sequence of any $n$ elements of $K$  |  Sequences of $n$ _distinct_ elements of $K$ |  Compositions of $N$ with exactly $k$ subsets
Permutations of $N$  |  Multisets of $K$ with $n$ elements | An $n\dash$element subset of $K$  |  Compositions of $n$ with $k$ terms
Permutations of $X$  |    Partitions of $N$ into $\leq k$ subsets |?  | Partitions of $N$ into exactly $k$ nonempty subsets  
Both  |  Partitions of $n$ into $\leq k$ parts | ? | Partitions of $n$ into exactly $k$ parts  

Proofs/Explanations: todo

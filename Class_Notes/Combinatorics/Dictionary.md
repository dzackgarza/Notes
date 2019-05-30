# Definitions

- Binomial Coefficients
- Binomial Theorem
- Catalan Numbers
  - $C(n) = \frac 1 {n+1} {{2n}\choose{n}}$
- Choose
- Combination
- Composition, Weak
  - A *weak composition of $n$ into $k$ parts* is n ordered sequence of integers $(a_1, \cdots a_k)$ such that $\sum_i a_i = n$ and $0 \leq a_i \leq n$.
  - The number of weak compositions of $n$ into $k$ parts is 
- Composition
  - A *(strong) composition of $n$ into $k$ parts* is n ordered sequence of integers $(a_1, \cdots a_k)$ such that $\sum_i a_i = n$ and $1 \leq a_i \leq n$ 
- Cycle Notation, One Line
- Cycle Notation, Two Line
- Cycles (in Permutations)
- Generating Functions, Ordinary
- Inclusion-Exclusion
- Induction, Stong
- Induction, Weak
- Multinomial
- Multinomial Coefficients
- Multinomial Theorem
- Multiset
- Multiset Coefficients
- Multiset Permutations
- Partition, Integer
- Partitions, Set
- Permutation
- Pigeon-Hole Principle
- Stirling Number of the First Kind
  $$s(n, k) = \#\theset{\text{$\sigma \in S^n \suchthat \sigma$ has exactly $k$ cycles}}$$
  - No easy closed formula.
  - Satisfies $$s(n, k) = s(n-1, k-1) + (n-1)s(n-1, k)$$
- Stirling Number of the Second Kind
  $$S(n, k) = \#\theset{\text{Set partitions of $[n]$ into $k$ parts}}$$
    - No easy closed formula.
    - Such a partition is a collection of subsets $S_1, \cdots , S_k$ such that $S_i \intersect S_j = \emptyset$ and $\coprod_i S_i = [n]$
- Symmetric Group

# Dictionary of Interpretations

$$
\begin{align*}
n! &\qquad \text{Strings of length $n$ over an alphabet of size $n$ with no duplicates,}\\
&\qquad \text{Ways to arrange $n$ distinct objects in a line, or}\\
&\qquad \text{Number of functions $[n] \to [n]$ that are injective and surjective}\\
&\qquad \text{Ways to place $n$ labeled balls into $n$ labeled bins, each bin has $\leq 1$ ball}\\
n^{\underline k} = n(n-1)\cdots(n-k+1) &\qquad \text{Strings of length $k$ over an alphabet of size $n$ with no duplicates, or} \\
&\qquad \text{}\\
\end{align*}
$$
---
title: Combinatorics Review
subtitle: UCSD Math 184
date: June 10, 2019
output:
  custom_document:
    path: Review.tex
    toc: true
    pdf_engine: xelatex
    template: /home/zack/Notes/Latex/pandoc_template.tex
    pandoc_args: ["-t", "latex", "-r", "markdown+tex_math_single_backslash+simple_tables+table_captions+yaml_metadata_block+smart+blank_before_blockquote+backtick_code_blocks", "--toc", "--toc-depth=2"]
export_on_save:
  pandoc: true
  custom_document: true
---

# Formulae

Note that the theory is important for Combinatorics -- knowing what definitions are and what various expressions count -- but it is a very problem-driven subject. It is worth delineating exactly what kinds of problems are tractable, and which are more difficult and require more subtle methods. However, the ultimate skill in this course is to know *when* to apply which tool to a given problem, how to translate problems into things you know how to count, and how to seamlessly move back and forth between various combinatorial interpretations. 

Problems are the best practice!

## Overview

- $\theset{a, b, c, \cdots} = \theset{b, c, a, \cdots} = \theset{c, b, a, \cdots} = \cdots$ is a **set**, a structure which contains some finite number of unique elements, and there is a-priori notion of "order" or an indexing operation (i.e. there is no distinguished "first" element, etc).

- If $S$ is a set, then $\# S$ denotes the **size** of the set, i.e. a count of the number of elements contained in $S$.

- $[a, b, c] \neq [b, c, a]$ is an **ordered list** (also called a $k\dash$tuple), a structure of not-necessarily unique elements from some set in which there is a well-defined order/indexing operation.
  - For example, the second element of $[b,c,a]$ is $c$, and the first element of $[3,1,2]$ is 3.
  - Equivalently, this can be thought of as a **word** from some **alphabet** of symbols. In this case, we may write $[a,b,c]$ as $abc$ instead.
  - Rigorously, if $A$ is the set of elements we're interested in, an ordered list is an element of the $k\dash$fold product set $A \cross A \cross \cdots A = A^k$.

---

## Sets
For any given $n$, there is essentially **one** set of size $n$, the set $[n] = \theset{1,2,\cdots n}$. It is a theorem that every set admits a *well-ordering*, and a consequence of this is that any set $S$ of countable size $n$ admits a bijective map $S \to [n]$. So $S \cong [n]$ in the category of Sets, "up to relabeling" of elements.

But be careful! $[n]$ comes with its own labeling **and ** its own ordering $1 \leq 2 \leq \cdots$, and so should perhaps be regarded as an ordered list with unique elements instead. As a set, we can order the elements any way and obtain the same set.

## The Symmetric Group
$S_n$ denotes the **symmetric group** on $n$ elements; each element of this group is a bijective function $[n]\to[n]$. Combinatorialists really love this group, and it secretly shows up in most counting problems.

A **permutation** $\sigma$ is an element of $S_n$, We can specify a bijection by describing where it sends every element, so for example, define
$$\begin{aligned}
\sigma: [5] &\to [5] &\\ \\
\sigma(1) &= 3 \implies &1 \mapsto 3 \\
\sigma(2) &= 4 \implies &2 \mapsto 4 \\
\sigma(3) &= 5 \implies &3 \mapsto 5 \\
\sigma(4) &= 2 \implies &4 \mapsto 2 \\
\sigma(5) &= 1 \implies &5 \mapsto 1 \\
\end{aligned}$$
There are several more concise notations equivalent to the above specification:

### Two line notation
Write $1\cdots n$, and under each number, write where it is sent to under $\sigma$:
$$
\left( \begin{array}{ccccc}
1 & 2 & 3 & 4 & 5 \\
3 & 4 & 5 & 2 & 1
\end{array}\right)
$$
In general, we write
$$
\left( \begin{array}{cccc}
1 & 2 & \cdots & n  \\
\sigma(1) & \sigma(2) & \cdots & \sigma(n)
\end{array}\right)
$$

### One line notation
Noting that in the above notation, we'll always write $1\cdots n$ in the top row, we can just omit it and implicitly agree that the $k\dash$th position denotes where the integer $k$ is mapped to:
$$
[3,4,5,2,1] = 34521
$$

In general, we write a concatenated list of numbers
$$
\sigma(1)\sigma(2) \cdots \sigma(n)
$$

### Cycle Notation
Since $S_n$ is a finite group, we know that every element will have finite order. So for some given number $i$, we can look at the iterates $\sigma(i), \sigma^2(i) = \sigma(\sigma(i)), \sigma^3(i), \cdots$ and there will be some $k$ for which $\sigma^k(i) = i$. This sequence of images is called a **cycle**, and it turns out that we can recover our permutation entirely from exhaustively recording the cycles.

The algorithm: start with $1$, then compute all $\sigma^i(1)$. Write the resulting numbers in parentheses, then take the smallest number you haven't seen yet, open a new parenthesis, and repeat until all numbers $1 \cdots n$ appear somewhere. Finally, if any set of parentheses contains only a single number (so $\sigma(i) = i$ after only 1 iteration), omit it.


Our example:
$$
(1,3,5)(2,4)
$$
which reads as "1 maps to 3, 3 maps to 5, 5 maps to 1" and "2 maps to 4, 4 maps to 2".

In general, we write
$$
(1, \sigma(1), \sigma^2(1), \cdots, \sigma^{k}(1))~(a_1, \sigma(a_1), \sigma^2(a_1), \cdots, \sigma^{k_1}(a_1)) ~ \cdots
$$

Observations/notes:

- While $(abc) \neq (bac)$ as cycles, we do have $(abc) = (cab) = (bca) = (abc)$. So order matters *somewhat*, but not every reordering yields a new distinct cycle. Instead, for a cycle $\sigma$ of length $k$, there are exactly $k-1$ representatives that are equivalent to $\sigma$ and only differ by these "shifts".
- By writing things out this way, we've represented $\sigma$ as a **product of disjoint cycles**, i.e. no number occurs in more than one set of parentheses. Moreover, we can do this for every element $\sigma$, so we say that $S_n$.
- It is sometimes useful to write these in a "canonical" way -- shift every cycle so the largest elements are first, then sort the cycles in increasing order based on those first elements.

### Useful facts about the Symmetric group
- Every element can be written as a product of disjoint cycles
- Disjoint cycles commute
- The group-theoretic order of a cycle is its length
- The group-theoretic order of a product of cycles is the least common multiple of the lengths.

## Permutations:
We can count the number of bijections from an $n$ element set to itself:
$$ \#\theset{\text{Permutations of} [n]} = \abs{S_n}  = n! $$

- Also the number of a ways to form an **ordered list** of $n$ unique elements ($n$ choices for 1st element, $n-1$ choices for 2nd, etc).

## Ordered Lists
If $\#\Sigma = k$ is some set (which we'll regard as "formal symbols"), we can count the number of ordered lists:
$$
\# \theset{\text{Length $k$ lists over $\Sigma$}} = n^k
$$

- Logic: Suppose $L = l_1 l_2, \cdots l_k$, then there are $n$ choices of symbol for $l_1$, $n$ choices for $l_2$, etc.
- Also counts the number of words over an alphabet of size $k$.

## Falling Factorial
Let
$$\begin{aligned}
n^{\underline k} &\definedas \prod_{i=0}^{k-1}(n - i) \\
&= n(n-1)\cdots (n-k+1) \\
&= \frac{n!}{(n-k)!}
\end{aligned}$$
be the *falling factorial*, which is a product with exactly $n$ terms.

- Counts the number of ways to form an **ordered list** of $k$ items from an $n$ element set (i.e. there is a distinguished "first" pick, "second" pick, etc)
- Also counts the number of injections $[k] \injects [n]$

## Rising Factorial
Let
$$\begin{aligned}
n^{\overline k} &\definedas \prod_{i=0}^{k-1}(n+i) \\ &=n(n+1) \cdots (n+k-1)
\\&= \frac{(n+k-1)!}{(n-1)!} \\ \\&= (n+k-1)^{\underline k}
\end{aligned}$$
be the *rising factorial*, which is a product with exactly $n$ terms.

- Counts the number of ways to form an **ordered list** of $k$ items from an $n+k-1$ element set.

## Combinations/Binomial Coefficients
Counts the number of ways to form a $k\dash$element **subset** of a set of $n$ items:
$$
\begin{aligned}
\#\theset{k\dash\text{element subsets of } [n]} = {n \choose k} &\definedas \frac{n!}{k!(n-k!)} \\
&= {n \choose n-k} \\ \\
&= \frac{n^{\underline k}}{k!}
\end{aligned}
$$

- Note that order does **not** matter here; we identify any two sets that differ by a permutation
  - In other words, first form an ordered list of $k$ unique elements from $[n]$ in $n^{\underline k}$ ways, then quotient out by the $k!$ ways to reorder the list that yield the same set.
- Alternatively, ways to pick $k$ items from $[n]$ **without replacement**, then remove the labels.
- Alternatively, the coefficient of $x^k$ in the expansion of $(1+x)^n$, i.e.
$$
(1+x)^n = \sum_{k\geq 0} {n\choose k} x^k
$$
  which can be generalized to
$$
(x+y)^n = \sum_{k\geq 0} {n\choose k} x^ky^{n-k}
$$


### Generalized Binomial Coefficients
We can extend the "choose" notation and thus the binomial formula to rational powers by defining
$$
{r \choose k} = \frac{1}{k!} \prod_{i=0}^{k-1} (r - i) = \frac{r(r-1)(r-2)\cdots(r-k+1)}{k!}\\
(x+y)^r = \sum_{k\geq 0} {r\choose k} x^ky^{n-k}
$$

Note that this allows us to expand things such as $\sqrt{x+y} = (x+y)^\frac{1}{2}$ in an infinite sum:
$$
\sqrt { 1 + x } = 1 + \frac { 1 } { 2 } x - \frac { 1 } { 8 } x ^ { 2 } + \frac { 1 } { 16 } x ^ { 3 } - \frac { 5 } { 128 } x ^ { 4 } + \frac { 7 } { 256 } x ^ { 5 } - \cdots
$$

## Multisets
  - What is a multiset? If $S$ is a set, you can think of a multiset $M$ as a word in the symbols $s_i \in S$ where order doesn't matter.
    - Example: $S = \theset{a,b,c}$ and $M = \theset{a,a,a,b,b} = \theset{a,b,a,a,b} = \cdots$
  - Alternatively, it is a collection of elements of $S$, each with a multiplicity, so a subset of $S \cross \NN$, where we define the size to be the sum of the multiplicities instead of (the usual) number of elements.
    - Example: As above, $M = \theset{(a, 3), (b,2)}$. Note that although $M$ has size 2 as a set, it has size $3+2 = 5$ as a multiset.

We can thus count the number of $k\dash$element multisets of an $n\dash$element set:
$$\begin{aligned}
\#\theset{\text{Multisets of $[n]$ of size $k$} } &= \multinomial{n\choose k} \\ &\definedas {{n+k-1}\choose k} \\ &= {{n+k-1}\choose n-1} \\ \\ &= \frac{n^{\overline k}}{k!}
\end{aligned}$$

*Proof*: Multisets can be put in bijection with unrestricted stars and bars arrangements, see next section. $\qed$

- The number $\multinomial{n\choose k}$ is denoted a **multinomial coefficient**.
- Also counts the number of ways to select $k$ items **with replacement** from a set of size $n$.

## Catalan Numbers
Consider the problem of counting the number of $n\times n$ lattice paths that don't go above the diagonal. Since every such path has to have a "first hitting time" for the diagonal, we can enumerate these using a recurrence relation. Let $C_n$ be the number of such paths. If the first hit occurs on the $k$th diagonal, then there were $C_k$ paths leading there and $C_{n-k}$ paths to the top-right corner. This yields
$$
C_{n+1} = \sum_{i=0}^n C_i C_{n-i}
$$
and using generating functions, it can be shown that
$$
C_n = \frac{1}{n+1}{2n \choose n}
$$

## Stars and Bars
A useful conceptual counting problem, as many other problems can be encoded as some version of this. The idea is we have an alphabet $\Sigma = \theset{\star, \mid}$ ("star" and "bar"), and we'd like to form certain words containing exactly $n$ copies of $\star$ and $k$ copies of $\mid$.

There are two variants: we'll say a configuration of stars and bars is *strict* if a bar does not occur as the first or last symbol, and there are no two adjacent bars.

### Variant 1: Strict
This can be counted as
$$
\#\theset{\text{strict configurations of $n$ stars and $k-1$ bars}} = {n-1 \choose k-1}
$$

*Proof*: Lay out $n$ stars, which have $n-1$ gaps between them. From these gaps, choose any $k-1$ of them (without replacement) to contain bars.$\qed$

- Note that this partitions the $n$ stars into $k$ nonempty groups, so this counts the number of ways to separate $n$ indistinguishable objects into $k$ nonempty groups,
- Alternatively, counts the number of compositions of $n$ into $k$ parts.

### Variant 2: Unrestricted
With no restrictions of the configuration, we can count
$$
\#\theset{\text{unrestricted configurations of $n$ stars and $k-1$ bars}} = {n+k-1 \choose k-1}
$$

*Proof*: Since we just need to form an arbitrary word from $n$ stars and $k-1$ bars, simply place $n + (k-1)$ blanks, choose $k-1$ of them (without replacement) to be bars, and place stars everywhere else.

*Alternate proof*: Lay out $n$ stars, then from the $n-1$ gaps, choose $k-1$ gaps with replacement to contain bars. This can be done in $\multinomial{n-1 \choose k-1} = {n+k-1 \choose k-1}$ ways. $\qed$

- Note that this partitions $n$ stars into $k$ groups, some of which may be empty.
- Alternatively, counts the number of weak compositions of $n$ into $k$ parts.

## Stirling Numbers of the First Kind
For a given $n$, consider permutations $\sigma \in S_n$. It can be written as a product of disjoint cycles in cycle notation, so one can ask how many permutations have exactly $k$ disjoint cycles. In other words, we have
$$
\sigma = \overbrace{(a_1b_1\cdots)(a_2b_2\cdots)\cdots(a_kb_k\cdots)}^{k \text{ cycles}} \in S_n
$$
in cycle notation, where we include cycles of length 1 (i.e. fixed points). We can thus count
$$
\#\theset{\text{permutations of $[n]$ with exactly $k$ disjoint cycles}} \definedas c(n, k) = \stirlingfirst{n}{k}
$$
the **unsigned Stirling number of the first kind**.

> In other applications, there is a **signed Stirling number of the first kind** which are related by
$$
s(n, k) \definedas (-1)^{n-k}c(n, k), \quad \abs{s(n,k)} = c(n, k)
$$
> These yield the coefficients of $x^n$ in the falling factorial $x^{\underline n} = x(x-1)\cdots(x-n+1)$.

There isn't a particularly nice closed form expression for $c(n, k)$, so the main computational tool is the following recurrence relation they satisfy:
$$
\stirlingfirst n k = (n-1){\stirlingfirst {n-1} k} + \stirlingfirst{n-1}{k-1}
$$
*Proof:* Either $n$ is a fixed point (i.e. in a cycle by itself) or it is not.

- If $n$ is a fixed point, we can delete the cycle $(n)$ from $\sigma$ to obtain a permutation of $[n-1]$ with $k-1$ cycles. Conversely, we can lift any permutation of $[n-1]$ with $k-1$ cycles to a permutation of $[n]$ by just adding the cycle $(n)$, which can only be done in one way, yielding the second term
- Otherwise, $n$ appears in a cycle with other elements. We can delete it to obtain a permutation of $[n-1]$ which still has $k$ cycles; conversely, given such a permutation, consider the operation of multiplying $\sigma$ by the transposition $(n~i)$ where $1\leq i\leq n-1$. This has the effect of inserting $n$ into the cycle containing $i$, and in fact puts it right before $i$, i.e.
$$
(a_1 a_2 \cdots a_{k}~ i ~ a_{k+1} \cdots a_m)(n~i) =  (a_1 a_2 \cdots a_{k}~ n ~ i ~ a_{k+1} \cdots a_m).
$$
There are exactly $n-1$ choices for $i$, and each one yields a way to insert $n$ into an existing cycle, yielding the first term. $\qed$





## Stirling Numbers of the Second Kind
A **set partition of $[n]$ into $k$ parts** is a collection $S_1, S_2, \cdots S_k$ where

- $S_i \subseteq [n]$ for each $i$
- $S_i \neq \emptyset$ for any $i$,
- $S_i \intersect S_j = \emptyset$ for all pairs $1 \leq i,j \leq k$ (so all of the $S_i$ are disjoint), and
- $[n] = S_1 \disjoint S_2 \disjoint \cdots \disjoint S_k$

We can then count
$$
\#\theset{\text{Set partitions of $[n]$ into $k$ parts}} \definedas S(n, k) = \stirling n k,
$$
which is referred to as the Stirling number of the second kind. Although there is a closed-form formula for it, it is not particulary nice -- the primary method of computing it comes from a recurrence relation it satisfies:
$$
\stirling n k = k\stirling {n-1} {k} + \stirling{n-1}{k-1}
$$

*Proof (with a valuable technique!)*: When forming a set partition of $[n]$ into $k$ parts, there are two disjoint cases: either $n$ is in a singleton set, or it is not.

- If $n$ a singleton, throw that part away. What remains is a partition of $n-1$ into $k-1$ parts.  Conversely, given any partition of $n-1$ into $k-1$ parts, we can add the part $\theset{n}$ to obtain a partition of $n$ into $k$ parts where $n$ is a singleton. This yields the second term.
- If it is not, $n$ is some $S_i$ with at least 1 other element. Letting $S'_i = S_i - \theset{n} \neq \emptyset$ we get a partition of $n-1$ into $k$ parts. Conversely, given any partition of $n-1$ into $k$ parts, we can form a partition of $n$ into $k$ parts where $n$ is not a singleton by adding $n$ to any part. Note that there are $k$ choices for which part to add $n$ to, yielding the first term. $\qed$


## Compositions
In general, a composition is a way of writing $n$ as a sum of positive integers, i.e. $n = a_1 + a_2 + \cdots$ where $a_i \in \ZZ$. There are infinitely many of these, so to count anything, we need to place various restrictions:

### Strong Compositions
A **composition of $n$ into $k$ parts** is an **ordered list** $[a_1, a_2, \cdots a_k]$ such that $\sum_{i=1}^k a_i = n$ and for each $i$ we have $0 < a_i \leq n$. (Note that we **do not** allow any $a_i$ to be zero now.)

These can be counted as
$$
\mathrm{comp}(n, k) = \#\theset{\text{compositions of $n$ into $k$ parts}} \\
= \multinomial{n+1 \choose k-1} \\ = {n+k-1 \choose k}
$$
where $\multinomial{a \choose b}$ is the multinomial coefficient. This follows from by a bijection with strict stars and bars configurations. Note that distinct lists yields distinct compositions.

### Weak Compositions
A **weak composition of $n$ into $k$ parts** is an **ordered list** $[a_1, a_2, \cdots a_k]$ such that $\sum_{i=1}^k a_i = n$ and for each $i$ we have $0 \leq a_i \leq n$. (Note that we allow some $a_i$ to be zero.)

These can be counted as
$$
\mathrm{comp}_W(n, k)  = \#\theset{\text{weak compositions of $n$ into $k$ parts}} \\
= {n-1 \choose n-k},
$$
which follows from a bijection with unrestricted stars and bars configurations. Note that distinct lists yields distinct compositions.

### Integer Partitions
An **integer partition of $n$ into $k$ parts** is a strong composition of $n$ into $k$ parts where we identify any compositions that differ by a permutation of of parts. In other words, it is a **set** of integers $[a_1, a_2, \cdots a_k]$ such that $\sum_{i=1}^k a_i = n$ and for each i, $1 \leq a_i \leq n$.

*Example*: The strong compositions of 4 are

```python {cmd="/usr/bin/sage"}
from sage.all import *
print(sorted(list(Compositions(4)), key=len))
```

while the integer partitions are

```python {cmd="/usr/bin/sage"}
from sage.all import *
print(sorted(list(Partitions(4)), key=len))
```

Note that $[3,1]$ and $[1,3]$ are distinct as compositions of 4 into 2 parts, but are identified as partitions of 4 into 2 parts.

These are generally difficult to count, but we can define
$$\begin{aligned}
\# \theset{\text{Integer partitions of $n$ into $k$ parts}} &\definedas p(n, k) \\
\# \theset{\text{Integer partitions of $n$ into any number of parts}} &\definedas p(n).
\end{aligned}$$

Integer partitions are in bijective correspondence with **Ferrer's diagrams**, which provide many useful ways of extracting information via diagram operations. The most important operation is **conjugation**, which is flipping a diagram about its main diagonal. This operation can be used to prove the following bijections between types of integer partitions:

$$\begin{aligned}
\#\theset{\text{Exactly $k$ parts}} &= \#\theset{\text{Largest part $= k$}}\\
\#\theset{\text{Any number of parts, where every part is $\leq k$}} &= \#\theset{\text{At most $k$ parts}} \\
\#\theset{\text{Any number of distinct, odd parts}} &= \#\theset{\text{Self-conjugate partitions}}
\end{aligned}$$


@import "./GeneratingFunctions.md"

@import "./Posets.md"

---

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




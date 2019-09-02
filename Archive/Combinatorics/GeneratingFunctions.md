
# Generating Functions

## Solving Recurrences
Usually given or put in the form of $a_n = f(a_{n-1}, a_{n-2}, \cdots)$

The secret sauce:

1. Declare your generating function $A(x) = \displaystyle\sum_{n\geq 0} a_n x^n$
2. Multiply the recurrence through by $x^n$.
3. "Integrate out" by summing over all values of $n$ for which the recurrence is valid.
4. Write everything you see in terms of $A(x), A'(x)$, or other polynomials in $x$. 
5. Solve for $A(x)$ to get some analytic function.
6. (Optional) Produce a closed-form formula for $a_n$ by expanding the analytic function as a power series, or using **coefficient extraction**:
$$
a_n = \frac{1}{n!} \restrictionof{\dd{^n A(x)}{x^n}}{x=0}
$$

## Sequences, Sums, and Closed Forms

- A right shift is the operation $[a_0, a_1, a_2, \cdots] \mapsto [0, a_0, a_1, \cdots]$, so $R(A(n)) = A(n-1)$
- A left shift is the operation $[a_0, a_1, a_2, \cdots] \mapsto [a_1, a_2, a_3 \cdots]$, so $L(A(n)) = A(n+1)$
  - Note that this loses information! $a_0$ disappears.
  - Generally done by derivatives.

Ordinary Generating Functions

| Sequence  | OGF  | Sum
|---|---| --- |
| $[1, 1,   1,    \cdots]$    | $\frac 1 {1-x}$   | $\displaystyle\sum_{n\geq 0}1x^n$
| $[1, -1,   1,    \cdots]$    | $\frac 1 {1+x}$   | $\displaystyle\sum_{n\geq 0}(-1)^nx^n$
| $[r, r^2, r^3,  \cdots]$    | $\frac 1 {1-rx}$  | $\displaystyle\sum_{n\geq 0}r^nx^n$
| $[1, 0,   1,    \cdots]$    | $\frac 1 {1-x^2}$  | $\displaystyle\sum_{n\geq 0}1x^{2n}$
| $[1, 0,   0,  1,  \cdots]$    | $\frac 1 {1-x^3}$  | $\displaystyle\sum_{n\geq 0}1x^{3n}$
| $[1, 2,   3,  4,  \cdots]$    | $\dd{}{x}\frac 1 {1-x} = \left(\frac{1}{1-x}\right)^2$  | $\displaystyle\sum_{n\geq 0}(n+1)x^{n}$
| $[0, 1, 2,   3,   \cdots]$    | $x\dd{}{x}\frac 1 {1-x} = x\left(\frac{1}{1-x}\right)^2$  | $\displaystyle\sum_{n\geq 0}nx^{n}$
| $[1,{c \choose 1}, {c \choose 2}, \cdots]$ | $(1+x)^c$ | $\displaystyle\sum_{n\geq 0}{c \choose n}x^n$
|$[1, {c+1 \choose 1}, {c+2 \choose 2}, \cdots]$ | $\left( \frac 1 {1-x} \right)^c$ | $\displaystyle\sum_{n \geq 0}{n+c \choose n} x^n$
| $[0,\cdots 0, {c \choose c}, {c+1 \choose c}, \cdots]$ | $x^c \left(\frac{1}{1-x}\right)^{c+1}$| $\displaystyle\sum_{n\geq c}{n \choose c}x^n$
| $[1, A(x), A(x)^2, \cdots ]$ | $\frac {1}{1-A(x)}$ | $\displaystyle\sum_{n\geq 0} A(x)^n {x^n}$
| $[\sum_{i=0}^0 a_i, \sum_{i=0}^1 a_i, \sum_{i=0}^2 a_i, \cdots ]$ | $\frac{A(x)}{1-x}$ | $\displaystyle\sum_{n\geq 0} \left(\sum_{i=0}^n a_n\right) \frac{x^n}{n!}$


Exponential Generating Functions

| Sequence  | EGF  | Sum
|---|---| --- |
| $[1, 1,   1,    \cdots]$    | $e^x$   | $\displaystyle\sum_{n\geq 0}1 \frac {x^n} {n!}$
| $[r, r^2, r^3,  \cdots]$    | $e^{rx}$  | $\displaystyle\sum_{n\geq 0}r^n\frac {x^n} {n!}$
| $[1, 0,   1,    \cdots]$    | $\cosh(x)$  | $\displaystyle\sum_{n\geq 0}1 \frac {x^{2n}} {n!}$
| $[1, 0,   0,  1,  \cdots]$    | $?$  | $\displaystyle\sum_{n \geq 0} 1\frac{x^{2n}}{(2n)!}$
| $[0, 1, 2,   3,  \cdots]$    | $xe^x$  | $\displaystyle\sum_{n\geq 1}n \frac {x^n} {n!}$
| $[1,{c \choose 1}, {c \choose 2}, \cdots]$ | $(1+x)^c$ | $\displaystyle\sum_{n\geq 0}{c \choose n}\frac {x^n} {n!}$
| $[0,\cdots 0, {c \choose c}, {c+1 \choose c}, \cdots]$ | $x^c \left(\frac{1}{1-x}\right)^{c+1}$| $\displaystyle\sum_{n\geq c}{n \choose c}\frac {x^n} {n!}$
|$[1, {c+1 \choose 1}, {c+2 \choose 2}, \cdots]$ | $\left( \frac 1 {1-x} \right)^c$ | $\displaystyle\sum_{n \geq 0}{n+c \choose n} \frac {x^n} {n!}$
|$[0, 0!, 1!, 2!, \cdots ]$ |$\ln \frac{1}{1-x}$ | $\displaystyle\sum_{n \geq 0}(n-1)! \frac{x^n}{n!}$
| $[1, A(x), A(x)^2, \cdots ]$ | $e^{A(x)}$ | $\displaystyle\sum_{n\geq 0} A(x)^n \frac{x^n}{n!}$


## Sequence Lookup
| Sequence  | OGF  | EGF
|---|---| ---|
| $a_n = \indicator{n=k}$  | $x^k$  | $\frac{x^k}{k!}$
| $a_n = \indicator{n \geq 0} (\NN)$  | $\frac 1 {1-x}$  | $e^x$
| $a_n = \indicator{n \geq 1} (\NN_{\geq 1})$  | $\frac x {1-x}$  | $e^x - 1$
| $a_n = \indicator{n \geq 2} (\NN_{\geq 2})$  | $\frac {x^2} {1-x}$  | $e^x - 1 - x$
| $a_n = \indicator{n \geq k}$  | $\frac {x^k} {1-x}$  | $e^x - \displaystyle\sum_{n=0}^k \frac{x^n}{n!} =\displaystyle\sum_{n=k+1}^\infty \frac{x^n}{n!}$
| $a_n = \indicator{n \leq k}$ | $1+x+x^2+\cdots +x^k$ |$1 + x + \frac{x^2}{2} + \cdots +\frac{x^k}{k!}$
| $a_n = \indicator{n\text{ even}}$  | $\frac{1}{1-x^2}$  | $\cosh(x)$
| $a_n = \indicator{n\text{ odd}}$  | $\frac{x}{1-x^2}$  | $\sinh(x)$
| $a_n = \indicator{n = k, k^2, \cdots}$  | $\frac 1 {1-x^k}$  | $e^{kx}$
| $a_n = {n \choose c}$  | $x^c \left(\frac{1}{1-x}\right)^{c+1}$  | $\frac{1}{c!}x^ce^x$
| $a_n = {n+c \choose n}$  | $ex$  | $\left( \frac 1 {1-x} \right)^c$
| $a_n = {c \choose n}$  | $$  | $(1+x)^c$
| $a_n = n!$  | $\emptyset$  | $\frac{1}{1-x}$

## Operations

A *linear ordered partition* of $[n]$ (say, into 2 blocks) is a set partition $$[n] = S_1 \disjoint S_2$$ where $$x\in S_1 \implies \forall y\in S_2, x \leq y.$$ 
In other words, $S_1 = [1, 2, \cdots, m]$ and $S_2 = [m+1, m+2, \cdots, n]$. The *linear* part denotes the inequality, while the *ordered* part denotes the fact that we are labeling the $S_i$ with ordered numbers, choosing which $S_i$ to call "1", "2", and so on.

An *arbitrary ordered partition* of $[n]$ (again into 2 parts) is a set partition as above, where we no longer require the inequality. The *ordered* portion again denotes the labels on the $S_i$, so we have $[S_1, S_2] \neq [S_2, S_1]$  and distinguish these as ordered partitions.

**Ordinary Generating Functions**

|  OGF Operation | Effect  | Sum
|---|---| --- |
|$xA(x)$   | Right shift  | $\displaystyle\sum_{n\geq 0}a_{n} x^{n+1} = \displaystyle\sum_{n\geq 1}a_{n-1} x^{n}$
|$x\inv (A(x) - a_0)$   | Left shift  | $\displaystyle\sum_{n\geq 0}a_{n+1} x^{n}$
|$\dd{}{x}A(x)$ | Multiply by index, then left shift | $\displaystyle\sum_{n\geq 1}n a_n x^{n-1} = \displaystyle\sum_{n\geq 0}(n+1) a_{n+1}x^n$
|$x\dd{}{x}A(x)$| Multiply by index | $\displaystyle\sum_{n\geq 0}n a_n x^n$ 
|$\displaystyle\int A(x)$ | Divide by index, then right shift | $\displaystyle\sum_{n\geq 0}\frac 1 {n+1} a^{n}x^{n+1} = \displaystyle\sum_{n\geq 1}\frac 1 n a_{n-1} x^{n}$
|$\displaystyle\int x\inv(A(x) - a_0)$| Divide by index | $\displaystyle\sum_{n\geq 1} \frac{1}{n} a_n x^n$
|$C(x) = A(x)B(x)$| Convolution / Sum over ways to split into 2 **linear** parts| $\displaystyle\sum_{n\geq 0} \left( \displaystyle\sum_{i+j=n} a_i b_j\right)x^n$
|$D(x) = A(x)B(x)C(x)$| Convolution / Sum over ways to split into 3 **linear** parts | $\displaystyle\sum_{n\geq 0} \left( \displaystyle\sum_{i+j+k=n} a_i b_j c_k\right) {x^n}$
|$F(x) = A(B(x))$ | Partition into **any number of linearly ordered blocks**, put a $B$ structure within each block, and an $A$ structure on the collection of blocks | $\displaystyle\sum_{n\geq 0} a_n {\left( \displaystyle\sum_{m\geq 0} b_m \frac{x^m}{m!}\right)^n}$ 

**Exponential Generating Functions**

|  EGF Operation | Effect  | Sum
|---|---| --- |
|$xA(x)$   | Index multiply, then right shift  | $\displaystyle\sum_{n\geq 0}a_{n} \frac{x^{n+1}}{n!} = \displaystyle\sum_{n\geq 1}n a_{n-1} \frac{x^n}{n!}$
|$x\inv (A(x) - a_0)$   | Index divide, then left shift  | $\displaystyle\sum_{n\geq 0}a_{n+1} \frac{x^n}{n!}$
|$\dd{}{x}A(x)$ | Left shift | $\displaystyle\sum_{n\geq 1}n a_n \frac{x^{n-1}}{n!} = \displaystyle\sum_{n\geq 0}a_{n+1} \frac{x^n}{n!}$
|$\displaystyle\int A(x)$ | Right shift | $\displaystyle\sum_{n\geq 0}\frac {a^{n}} {n+1} \frac{x^{n+1}}{n!} = \displaystyle\sum_{n\geq 1} a_{n-1} \frac{x^n}{n!}$
|$x\dd{}{x}A(x)$ | Index multiply | $\displaystyle\sum_{n\geq 0}n a_{n} \frac{x^n}{n!}$
|$\displaystyle\int x\inv (A(x) - a_0)?$ | Index divide | $\displaystyle\sum_{n\geq 1} \frac{a_n}{n} \frac{x^n}{n!}$
|$C(x) = A(x)B(x)$| Convolution / Sum over ways to split into 2 **arbitrary** blocks| $\displaystyle\sum_{n\geq 0} \left( \displaystyle\sum_{i+j=n} a_i b_j\right) \frac{x^n}{n!}$
|$D(x) = A(x)B(x)C(x)$| Convolution / Sum over ways to split into 3 **arbitrary** blocks| $\displaystyle\sum_{n\geq 0} \left( \displaystyle\sum_{i+j+k=n} a_i b_j c_k\right) \frac{x^n}{n!}$
|$F(x) = A(B(x))$ | Partition into **any number of ordered blocks**, put a $B$ structure within each block, and an $A$ structure on the collection of blocks | $\displaystyle\sum_{n\geq 0} a_n {\left( \displaystyle\sum_{m\geq 0} b_m \frac{x^m}{m!}\right)^n}\frac{1}{n!}$ 

**Comparisons**

| Operation | OGF | EGF
| --- | --- | --- | 
| Right Shift | $xA(x)$ | $\displaystyle\int_0^x A(x)$
| Left Shift | $x\inv (A(x) - a_0)$| $\dd{}{x} A(x)$
| Index Multiply | $x\dd{}{x}A(x)$ | $A(x)$
| Index Divide | $\displaystyle\int_0^x x\inv (A(x) - a_0)$ |
| $A(x)B(x)$ | 2 **linearly** ordered blocks, $A\dash$structure on block 1, $B\dash$structure on block 2 | 2 **arbitrary** ordered blocks, $A\dash$structure on block 1, $B\dash$structure on block 2
| $A(x)B(x)C(x)$ | 3 **linearly** ordered blocks, $A\dash$structure on block 1, $B\dash$structure on block 2, $C\dash$structure on block 3 | 3 **arbitrary** ordered blocks, $A\dash$structure on block 1, $B\dash$structure on block 2, $C\dash$structure on block 3
|$\displaystyle \prod_{i=1}^k A_i(x)$ | $k$ **linearly** ordered blocks, an $A_i$ structure on block $i$ | $k$ **arbitrary** ordered blocks, an $A_i$ structure on block $i$
|$A(x)^k$ | $k$ **linearly** ordered blocks, an $A$ structure on every block | $k$ **arbitrary** ordered blocks, an $A$ structure on every block
|$\displaystyle\sum_{i=1}^\infty A(x)^i = A(x) + A(x)^2 + \cdots$ | **Any # of linearly ordered blocks**, an $A$ structure on every block | **Any # of ordered blocks**, an $A$ structure on every block
| $B(A(x))$ | **Any # of linearly ordered blocks**, $A\dash$structure on each block, $B\dash$structure on **collection** of blocks | **Any # of arbitrary ordered blocks**, an $A\dash$structure on each block, $B\dash$structure on **collection** of blocks

Note that 

- For OGFs, $A(x) + A(x)^2 + \cdots = \frac{1}{1-A(x)}$, which is $B(A(x))$ for $B(x) = \frac{1}{1-x}$ 
- For EGFs, $A(x) + \frac{A(x)^2}{2} + \frac{A(x)^3}{3!} + \cdots = e^{A(x)}$, which is $B(A(x))$ for $B(x) = e^x$.
- The combinatorial interpretation here is splitting $[n]$ into **any** number of blocks with $A$ structures, by doing one of these disjoint possibilities:
  - Split $[n]$ into 1 block, and put an $A$ structure on it, **or**
  - Split $[n]$ into 2 blocks, and put an $A$ structure on each, **or** $\cdots$
  


## Structures

| Structure | Sequence | OGF | EGF
| --- | --- | --- | --- |
| Be exactly $n$ | $[0, 0, \cdots 0, 1, 0, \cdots]$ | $x^n$ |$\frac {x^n} {n!}$
| Be a natural number $\geq 0$ | $[1,1,1,\cdots]$ |  $\frac 1 {1-x}$ | $e^x$
| Be a natural number $\geq 1$ | $[0,1,1,\cdots]$ |  $\frac x {1-x}$ | $e^x - 1$
| Be an even number | $[1,0,1,0\cdots]$ |  $\frac 1 {1-x^2}$ | $\cosh(x)$
| Be an odd positive number | $[0,1,0,1,\cdots]$ |  $\frac x {1-x^2}$ | $\sinh(x)$
| Be an odd number or zero | $[1,1,0,1,\cdots]$ |  $\frac x {1-x^2} + 1$ | $\sinh(x)+1$
| Be an even positive number | $[0,0,1,0\cdots]$ |  $\frac 1 {1-x^2} - 1$ | $\cosh(x) - 1$
| Be a multiple of $k$ | $[1,0,\cdots 0,1,0,\cdots]$ |  $\frac 1 {1-x^k}$ | $1 + \frac{x^k}{k!} + \frac{x^{2k}}{(2k)!} + \cdots$

Note

- Zero is included as an even number.
- $\frac{1}{2}(e^x + e^{-x}) = \cosh(x)$
- $\frac{1}{2}(e^x - e^{-x}) = \sinh(x)$
- $\dd{}{x} \sinh(x) = \cosh(x)$
- $\dd{}{x} \cosh(x) = \sinh(x)$

### Interpretations
- *Be an empty set*
  - Only possible if you have zero elements, so take $[1,0,0,\cdots]$
- *Be a non-empty set*
  - Possible unless you have zero elements, so $[0, 1, 1, \cdots]$
- *Be a set / trivial structure*
  - 1 way for any collection of $n$ elements, so take the sequence $[1,1,1,\cdots]$
  - Alternatively, disjoint cases of "be an empty set" or "be a non-empty set", so just add the previous two sequences.
- *Be a set containing $n$ elements*
  - 0 ways, unless you have exactly $n$ elements, so take the sequence $[0, 0, \cdots 0, 1, 0, \cdots]$
- $x^k:$ 
  - Include the integer $k$ exactly once.
- $(1 + x^k):$ 
  - Either exclude $k$, or include it exactly once.
- $1 + x^k + x^{2k} + \cdots = \frac 1 {1-x^k}:$ 
  - Disjoint choices: include $k$ 0 times, or once, or twice, or $\cdots$
- $x^k(1 + x^k + x^{2k} + \cdots) = \frac{x^k}{1-x^k}:$ 
  - Include $k$ at least once.

## Some Known Generating Functions
$$\begin{aligned}
\sum_{n\geq 0} \stirling n k x^n &= \frac{x^k}{(1-x)(1-2x)\cdots(1-kx)} =& x^k\prod_{i=1}^k \frac 1 {1-ix} \\
\sum_{n\geq 0} k! \stirling n k \frac{x^n}{n!} &= (e^x-1)(e^x-1)\cdots(e^x-1) =& (e^x-1)^k \\
\sum_{n\geq 0} \#\theset{\text{$\NN$ Partitions}} x^n &= \frac{1}{(1-x)(1-x^2)(1-x^3)\cdots} =& \prod_{i=1}^\infty \frac 1 {1-x^i} \\
\sum_{n\geq 0} \#\theset{\text{$\NN$ Partitions, only odd parts}} x^n &= \frac{1}{(1-x)(1-x^3)(1-x^5)\cdots} =& \prod_{i=1}^\infty \frac{1}{1-x^{2i-1}} \\
\sum_{n\geq 0} \#\theset{\text{$\NN$ Partitions, only even parts}} x^n &= \frac{1}{(1-x^2)(1-x^4)(1-x^6)\cdots} =& \prod_{i=1}^\infty \frac{1}{1-x^{2i}} \\
\sum_{n\geq 0} \#\theset{\text{$\NN$ Partitions, distinct parts}} x^n &= {(1+x)(1+x^2)(1+x^3)\cdots} =& \prod_{i=1}^{\infty} {1+x^i} \\
\sum_{n\geq 0} \#\theset{\text{$\NN$ Partitions, \# parts $\leq k$}} x^n =& \frac{1}{(1-x)(1-x^2)\cdots(1-x^k)} =& \prod_{i=1}^{k} \frac 1 {1-x^i}  &\\
\sum_{n\geq 0} \#\theset{\text{$\NN$ Partitions, largest part $= k$}} x^n &= \frac{x^k}{(1-x)(1-x^2)\cdots(1-x^k)} =& \frac{x^k}{1-x^k}\prod_{i=1}^{k-1} \frac 1 {1-x^i} \\
\
\end{aligned} 
$$

> Note that conjugation is useful for obtaining equivalent formulas involve $p(n, k)$.

## Worked Examples

- OGF for $a_n = \#\theset{\text{Set partitions of $[n]$ into $k$ blocks}}$
  - Combinatorial "be a structure" interpretation: involved. Something like, break into a linear order of $k$ pieces, perform a 1-coloring on piece 1, a 2-coloring on piece 2, etc.
  - Easier to use recurrence and integrate $n$ out to get $S(k, x) = xS(k-1, x) + kxS(k, x)$, the unravel this to $S(0, x)$.

- EGF for $a_n = \#\theset{\text{Length $n$ words over $\Sigma = [5]$}}$
  - Use the **product rule**.
  - Partition an $n\dash$ element set into 5 arbitrary ordered blocks -- partition $S_1$ will be where the letters "1" are placed, $S_2$ will denote where the "2"s go, etc. 
  - Put a "be a set" structure on each block, which has EGF $A(x) = e^x$.
  - Use the product rule to obtain
  $$
  A(x) = (e^x)^5 = e^{5x} \implies a_n = 5^n.
  $$

- EGF for $a_n = \#\theset{\text{Length $n$ words over $\Sigma =[3] \suchthat \cdots$ restrictions}}$
  - Example: suppose that
    - "1" should occur 0,1,2, or 3 times
    - "2" should occur 1 or 3 times
    - "3" should occur an even number of times
  - Use the product rule.
  - Partition $[n]$ into 3 arbitrary ordered blocks. Put the above structures on them, yielding the EGFs:
    - $A_1(x) = 1 + 1x + 1\frac{1}{2!}x^2 + 1\frac{1}{3!}x^3$
    - $A_2(x) = 0 + 1x + 0\frac{1}{2!}x^2 + 1\frac{1}{3!}x^3$
    - $A_1(x) = 1 + 0x + 1\frac{1}{2!}x^2 + 0\frac{1}{3!}x^3 + \cdots = \cosh(x)$
  - Using the product rule, we obtain
  $$
  A(x) = (1 +x + \frac{1}{2!}x^2 + \frac{1}{3!}x^3)(x + \frac{1}{2!}x^3)\cosh(x) = ?
  $$

- EGF for $$a_n = \#\theset{\text{Length $n$ words over $\Sigma =[5] \suchthat$}}$$
  - Example: suppose that
    - "1", "2" should both occur an even number of times
    - "3" should occur a multiple of 5 times
    - "4" occurs at least once
  - Use the product rule
  - Partition $[n]$ into 5 subsets $S_i$, assign letter $i$ to $S_i$.
  - Put a "be an even set" structure on $S_ 1, S_2$ which has EGF $A_1(x) A_2(x) = \cosh(x)$
  - Put a "be a set with a multiple of 3 elements" structure on $S_3$, which has EGF $A_3(x) = (1 + 0x + 0x^2 + 0x^3 + 0x^4 + \frac{1}{5!}x^5 + 0x^6 + \cdots$
  - Put a "be a nonempty set" structure on $S_4, S_5$ which has EGF $A_4(x) = A_5(x) = e^x - 1$
  - Use the prodcut rule to obtain
  $$
  A(x) = \cosh^2(x)\left(\frac{1}{5!}x^5 + \frac{1}{10!}x^{10} + \cdots \right)(e^x-1) = ?
  $$
  
- EGF for $a_n = \#\theset{\text{Subsets of $[n]$}}$:
  - For any given $n$, take an arbitrary set partition of $[n]$ into blocks $S_1 = A, S_2 = A^c$. Then put a "be a set" structure on $A_1$, and a "be a set" structure on $A_2$. This yields 
  $$A(x) = (e^x)e^x \implies a_n = 2^n.$$

- EGF for $a_n = \#\theset{\text{Nonempty Subsets of $[n]$}}$:
  - For any given $n$, take an ordered set partition $[n]$ into blocks $S_1 = A, S_2 = A^c$. Then put a "be a non-empty set" structure on $A_1$, and a "be a set" structure on $A_2$. This yields 
  $$A(x) = (e^x - 1)e^x \implies a_n = 2^n - 1.$$
- EGF for $a_n = \#\theset{\text{Ways to choose $k$ subsets of $[n]$}}$
  - Partition $[n]$ into exactly $k$ blocks  $S_1, \cdots S_k$, and put the "be a set" structure on all of them. This yields 
  $$A(x) = (e^x)^k \implies a_n = k^n.$$

- EGF for $a_n = \#\theset{\text{Partitions of $[n]$ into $k$ parts}}$
  - Notice that $a_n = S(n, k) = \stirling n k$
  - Partition $[n]$ into exactly $k$ blocks $S_1, \cdots S_k$, and put the "be a non-empty set" structure on all of them. This yields 
  $$A(x) = (e^x-1)^k \implies a_n = k! \stirling{n}{k}.$$
  - Note -- solving for $a_n$ here takes some non-trivial identifications, namely that a ordered arbitrary choice of $k$ nonempty subsets is a set partition into $k$ nonempty blocks, while in this product we are introducing an ordering of the $k$ blocks.

- EGF for $a_n = \#\theset{\text{Partions of $[n]$ into any \# of parts}}$
  - Notice that $a_n = \displaystyle\sum_k S(n, k) = \displaystyle\sum_k  \stirling n k$. We'll use the **composition rule**.
  - Partition $[n]$ into *any* number of blocks $\theset{B_i}$.
  - Put a "be a non-empty set" structure on each block, which has EGF $B(x) = e^x - 1$.
  - Put a "be a set" structure on *the collection* of blocks, which has EGF $C(x) = e^x$. 
  $$
  A(x) = C(B(x)) = e^{e^x - 1}
  $$

- EGF for $a_n = \#\theset{\text{Partitions of $[n]$ into only even parts}}$
  - We'll use the **composition rule**.
  - Partition $[n]$ into any number of blocks.
  - Put a "be a nonempty set with an even number of elements" structure on each block, which has EGF $B(x) = \cosh(x) -1$ 
  - Put a "be a set" structure on the collection of blocks, which has EGF $C(x) = e^x$ to obtain
  $$
  A(x) = C(B(x)) = e^{\cosh x}.
  $$
  
- EGF for $a_n = \#\theset{\text{Permutations $\sigma \in S_n$ with no fixed points}}$ (Derangements)
  - Let the unknown EGF be $D(x)$. We can enumerate the number of permutations by how many points they fix. For a given $n$, partition $[n]$ into two arbitrary blocks $A_1, A_2$ where we will put a fixed-point structure on $A_1$ and a derangement structure on $A_2$. 
  - There is only one way to write down a permutation that fixes every element, so the EGF for $A_1$ is $e^x$ 
  - The EGF for $A_2$ is $D(x)$, which is the unknown.
  - The total number of permutations is $n!$, which has EGF $\frac 1 {1-x}$
  - So we can conclude that 
    $$e^x D(x) = \frac{1}{1-x} \implies D(x) = \frac{1}{e^x(1-x)}.$$

- EGF for $a_n = \#\theset{\text{Words over $\Sigma = \theset{\alpha, \beta, \gamma} \suchthat \# \alpha, \#\beta$ are even }}$
  - Split $[n]$ into 3 arbitrary ordered parts $A_1, A_2, A_3$ where $\alpha$ will go in $A_1$, $\beta$ in $A_2$, and $\gamma \in A_3$. Put a "be a set of even size" structure on $A_1, A_2$ and a "be a set" structure on $A_3$ to obtain
  $$
  A(x) = \cosh(x)^2 e^x = \frac{1}{4}(e^{3x} + 2e^x + e^{-x}) \implies a_n = \frac{1}{4}(3^n + 2 + (-1)^n)
  $$
  *(Using coefficient extraction via derivatives)* 

- EGF for $a_n = \#\theset{\text{Permutations that are products of disjoint transpositions}}$
  - Split $[n]$ into *any number of parts*, and on each part put the structure of "be a fixed point or be a 2-cycle". This has generating function $S_i(x) = x + \frac{x^2}{2}$, so we obtain
  $$
  A(x) = e^{x + \frac{x^2}{2}} \implies a_n = \text{ complicated}
  $$
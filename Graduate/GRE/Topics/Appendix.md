## Definitions

$$
e^x = \lim_{n \to \infty} \left(1 + \frac{1}{n}\right)^n = \lim_{n \to \infty} \left( \frac{n+1}{n} \right)^n
$$

## Neat Tricks

- Commuting differentials and integrals:

$$
\frac{d}{dx} \int_{a(x)}^{b(x)} f(x,t) dt = f(x, b(x))\frac{d}{dx}b(x) - f(x, a(x))\frac{d}{dx}a(x) + \int_{a(x)}^{b(x)} \frac{\partial}{\partial x} f(x, t) dt
$$

  - Need $f,dfdxf, \frac{df}{dx}$ to be continuous in both variables. Also need $a(x),b(x)∈C1a(x),b(x) \in C_1$.
  - If $a,b$ are constant, boundary terms vanish.
  - Recover the fundamental theorem with $a(x)=a,b(x)=ba(x) = a, b(x) = b$, and $f(x,t)=f(t)f(x,t) = f(t)$.


## Big Derivative / Integral Table

$$
\begin{align*}
\frac{\partial f}{\partial{x}}\Leftarrow && f                           && \Rightarrow\int f dx   \\
\hline \\
\frac{1}{2\sqrt{x}}                      && \sqrt{x}                    && \frac{2}{3}x^{\frac{3}{2}} \\
nx^{n-1}                                 && x^n, n \neq -1              && \frac{1}{n+1}x^{n+1} \\
-nx^{-(n+1)}                             && \frac{1}{x^n}, n \neq 1     && -\frac{1}{n-1}x^{-(n-1)} \\
\frac{1}{x}                              && \bbox[yellow]{\ln(x)}       && x\ln(x) - x \\
a^x\ln(a)                                && a^x                         && \frac{a^x}{\ln a} \\
\cos(x)                                  && \sin(x)                     && -\cos(x) \\
-\csc(x)\cot(x)                          && \csc(x)                     && \ln\abs{\csc(x)-\cot(x)} \\
-\sin(x)                                 && \cos(x)                     && \sin(x) \\
\sec(x)\tan(x)                           && \sec(x)                     && \ln\abs{\sec(x) + \tan(x)} \\
\sec^2(x)                                && \tan(x)                     && \ln\abs{\frac{1}{\cos x}} \\
-\csc^2(x)                               && \cot(x)                     && \ln \abs{\sin x} \\
\frac{1}{1+x^2}                          && \bbox[yellow]{\tan^{-1}(x)} && x\tan^{-1}x - \frac{1}{2}\ln(1+x^2) \\
\frac{1}{\sqrt{1-x^2}}                   && \bbox[yellow]{\sin^{-1}(x)} && x\sin^{-1}x+ \sqrt{1-x^2} \\
-\frac{1}{\sqrt{1-x^2}}                  && \bbox[yellow]{\cos^{-1}(x)} && x\cos^{-1}x -\sqrt{1-x^2} \\
\frac{1}{\sqrt{x^2+a}}                   && \ln\abs{x+\sqrt{x^2+a}}     && \cdot\\
2\sin x\cos x                            && \sin^2(x)                   && \frac{1}{2}(x - \sin x \cos x) \\
-2\sin x\cos x                           && \cos^2(x)                   && \frac{1}{2}(x + \sin x \cos x) \\
2\csc^2(x)\cot(x)                        && \csc^2(x)                   && -\cot(x) \\
2\sec^2(x)\tan(x)                        && \sec^2(x)                   && \tan(x) \\
?                                        && ?                           && ? \\
?                                        && ?                           && ? \\
?                                        && ?                           && ? \\
?                                        && ?                           && ? \\
?                                        && ?                           && ? \\
?                                        && ?                           && ? \\
?                                        && ?                           && ? \\
(ax+1)e^{ax}                             && xe^{ax}                     && \frac { 1 } { a ^ { 2 } } ( a x - 1 ) e ^ { a x } \\
?                                        && e^{ax}\sin(bx)              && \frac { 1 } { a ^ { 2 } + b ^ { 2 } } e ^ { a x } ( a \sin b x - b \cos b x ) \\
?                                        && e^{ax}\cos(bx)              && \frac { 1 } { a ^ { 2 } + b ^ { 2 } } e ^ { a x } ( a \sin b x + b \cos b x ) \\
?                                        && ?                           && ? \\
\end{align*}
$$

## Useful Series and Sequences

Notation: $\uparrow, \downarrow$: monotonically converges from below/above.

- Taylor Series:

$$
f ( x ) = \sum _ { n = 0 } ^ { \infty } \frac { f ^ { ( n ) } \left( x _ { 0 } \right) } { n ! } \left( x - x _ { 0 } \right) ^ { n }
$$

- Cauchy Product:

$$
\left( \sum_{k=0}^\infty a_k x^k \right)\left( \sum_{k=0}^\infty b_i x^n \right) = \sum_{k=0}^\infty \left( \sum_{i=0}^k a_{n} b_{n} \right)x^k
$$

- Differentiation:

$$
\frac{\partial}{\partial x} \sum_{k=i}^\infty a_kx^k = \sum_{k=i+1}^\infty k\,a_k x^{k-1}
$$

- Common Series
$$
\begin{align*}
&\sum_{k=0}^{N} x^k                                                                                                                        &=  \frac{1-x^{N+1}}{1-x} &\\
&\sum_{k=1}^\infty x^k                                                                                                                     &=  \frac{1}{1-x}& \quad\text{ for } \abs{x} < 1 \\
&\sum_{k=1}^{\infty } k x ^ {k - 1 }                                                                                                       &=  \frac{1}{( 1 - x ) ^ { 2 } }& \quad \text { for } | x | < 1 \\
&\sum_{k=2}^{\infty } k ( k - 1 ) x ^ {k - 2 }                                                                                             &=  \frac{2}{( 1 - x ) ^ { 3 } } & \quad \text { for } | x | < 1  \\
&\sum_{k=3}^{\infty } k ( k - 1 ) ( k - 2 ) x ^ {k - 3 }                                                                                   &=  \frac{6}{( 1 - x ) ^ { 4 } } & \quad \text { for } | x | < 1   \\
&\sum_{k=1}^\infty {n\choose k} x^k y^{n-k}                                                                                                &=  (x+y)^n& \\
&\sum_{k=1}^{\infty } \frac{x ^ {k } } {k }                                                                                                &=  -\log ( 1 - x )& \\
&\sum_{k=0}^{\infty } \frac{x ^ {k } } {k ! }                                                                                              &=  e^x & \\
&\sum_{ n = 0}^{\infty } \frac{( - 1 ) ^ {k }}{( 2 n + 1 ) ! } x ^ { 2 k + 1 } \quad = x - \frac{x ^ { 3 }}{3 ! } + \frac{x ^ { 5 }}{5 ! } &=  \sin(x) & \\
&\sum_{k=0}^{\infty } \frac{( - 1 ) ^ {k }}{( 2 n ) ! } x ^ { 2 k } \quad = 1 - \frac{x ^ { 2 }}{2 ! } + \frac{x ^ { 4 }}{4 ! }            &=  \cos(x)& \\
&\sum_{k=0}^{\infty } \frac{( - 1 ) ^ {k }}{2 n + 1 } x ^ { 2 k + 1 } \quad = x - \frac{x ^ { 3 }}{3 } + \frac{x ^ { 5 }}{5 }              &=  \arctan(x) & \\
&\sum_{k=0}^{\infty } \frac{1}{( 2 k + 1 ) ! }x ^ { 2 n + 1 } \quad = x + \frac{x ^ { 3 }}{3 ! } + \frac{x ^ { 5 }}{5 ! } + \cdots         &=  \sinh(x) & \\
&\sum_{k=0}^{\infty } \frac{1}{( 2 k ) ! }x ^ { 2 k } \quad = 1 + \frac{x ^ { 2 }}{2 ! } + \frac{x ^ { 4 }}{4 ! } + \cdots                 &=  \cosh(x) & \\
&\sum_{k=0}^{\infty } \frac{x ^ { 2 k + 1 }}{2 k + 1 }                                                                                     &=  \operatorname { arctanh } x  & \\
&\sum_{k=1}^\infty \frac{1}{k}                                                                                                             &=  \infty &\\
&\sum_{k=1}^\infty (-1)^k \frac{1}{k}                                                                                                      &=  \ln (2) & \\
&\sum_{k=1}^N \frac{1}{k}                                                                                                                  &= _\approx \ln(N) + \gamma + \frac{1}{2N} & \\
&\sum_{k=1}^{\infty } \frac{1 } {k ^ { 2 } }                                                                                               &=  \frac{\pi ^ { 2 }}{6 }& \\
\end{align*}
$$
## Partial Fraction Decomposition
Given $R(x) = \frac{p(x)}{q(x)}$, factor $q(x)$ into $\prod q_i(x)$.

- Linear factors of the form $q_i(x) = (ax+b)^n$ contribute
$$
r_i(x) = \sum_{k=1}^n \frac{A_k}{(ax+b)^k} = \frac{A_1}{ax+b} + \frac{A_2}{(ax+b)^2} + \cdots
$$
- Irreducible quadratics of the form $q_i(x) = (ax^2+bx+c)^n$ contribute
$$
r_i(x) = \sum_{k=1}^n \frac{A_k x + B_k}{(ax^2+bx+c)^k} = \frac{A_1x+B_1}{ax^2+bx+c} + \frac{A_2x+B_2}{(ax^2+bx+c)^2} + \cdots
$$
	- Note: $ax^2+bx+c$ is irreducible $\iff b^2 < 4ac$

- Write $R(x) = \frac{p(x)}{\prod q_i(x)} = \sum r_i(x)$, then solve for the unknown coefficients $A_k, B_k$.

	- IMPORTANT SHORTCUT: don't try to solve the resulting linear system: for each $q_i(x)$, multiply through by that factor and evaluate at its root to zero out many terms!

	- For linear terms $q_i(x) = (ax+b)^n$, define $P(x) = (ax+b)^nR(x)$; then
$$
A_{k} =  \frac{1}{(n-k)!}P^{(n-k)}(a), \quad k = 1,2,\cdots n \\ \implies A_n= P(a),~ A_{n-1} = P'(a),~ \cdots,~ A_1 = \frac{1}{(n-1)!}P^{(n-1)}(A)
$$
	- Note: #todo check, might need to evaluate at $-b/a$ instead, extend to quadratics.

## Properties of Norms
$$\begin{align*}
\norm{t\mathbf x}                  & = \abs{t} \norm{\mathbf x} \\
\abs{\inner{\mathbf x}{\mathbf y}} & \leq \norm{\mathbf x} \norm{\mathbf y} \\
\norm{\mathbf x+\mathbf y}         & \leq \norm{\mathbf x} + \norm{\mathbf y} \\
\norm{\mathbf x-\mathbf z}         & \leq \norm{\mathbf x-\mathbf y} + \norm{\mathbf y-\mathbf z}
\end{align*}$$

## Logic Identities
- $P \implies Q \iff Q \or \lnot P$
- $P \implies Q \iff \lnot Q \implies \lnot P$
- $P \or(Q \annd S) \iff (P \or Q) \annd (P \or S)$
- $P \annd(Q \or S) \iff (P \annd Q) \or (P \annd S)$
- $\lnot (P \annd Q) \iff \lnot P \or \lnot Q$
- $\lnot (P \or Q) \iff \lnot P \annd \lnot Q$

## Set Identities
$$\begin{align*}
A \union B 							&& = && A \union (A^c \intersect B) \\
A 									&& = && (B\intersect A) \union (B^c \intersect A) \\
(\union_\NN A_i)^c 					&& = && \intersect_\NN A_i^c \\
(\intersect_\NN A_i)^c 				&& = && \union_\NN A_i^c \\
A - B 								&& = && A \cap B^c \\
(A-B)^c 							&& = && A^c \cup B \\
(A\cup B) - C 						&& = && (A-C) \cup (B-C) \\
(A\cap B) - C 						&& = && (A-C) \cap (B-C) \\
A - (B \cup C) 						&& = && (A - B) \cap (A - C) \\
A - (B \cap C) 						&& = && (A-B) \cup (A-C) \\
A - (B - C) 						&& = && (A-B) \cup (A \cap C) \\
(A-B) \cap C 						&& = && (A \cap C) - B && = && A \cap (C-B) \\
(A-B) \cup C 						&& = && (A \cup C) - (B-C) \\
A\cup(B\cap C) 						&& = && (A\cup B) \cap (A\cup C) \\
A\cap(B\cup C) 						&& = && (A\cap B) \cup (A \cap C) \\
A \subseteq C \annd B \subseteq C 	&&\implies && A \cup B \subseteq C \\
C \subseteq A \annd C \subseteq B 	&&\implies && C \subseteq A \cup B \\
A_k ~\text{countable} 				&&\implies && \prod_{k=1}^n A_k, ~ \union_{k=1}^\infty A_k \quad\text{countable}
\end{align*}$$


## Preimage Identities
Summary
- Injectivity: left cancellation
- Surjectivity: right cancellation
- Everything commutes with unions
- Preimage commutes with everything
- Image generally only results in an inequality

Preimage Equations
- $A \subseteq B \implies f(A) \subseteq f(B) \or f^{-1}(A) \subseteq f^{-1}(B)$
- $f^{-1}(\union_{i\in I}A_i) = \union_{i\in I} f^{-1}(A_i)$
	- Also holds for $f(\union_{i\in I}A_i) = \union_{i\in I} f(A_i)$
- $f^{-1}(\intersect_{i\in I}A_i) = \intersect_{i\in I} f^{-1}(A_i)$
	- Also holds for $f(\intersect_{i\in I}A_i) = \intersect_{i\in I} f(A_i)$
- $f^{-1}(A) - f^{-1}(B)  = f^{-1}(A-B)$
	- BUT $f(A) - f(B) \subseteq f(A-B)$
- For $X\subset A, Y \subset B$:
	- $(\restrictionof{f}{X})^{-1} = X \intersect f^{-1}(Y)$
	- $(f\circ f^{-1})(Y) = Y \intersect f(A)$
- Summary: preimage commutes with:
	- Union
	- Intersection
	- Complements
	- Difference
	- Symmetric Difference

Image Equations
- $A \subset B \implies f(A) \subset f(B)$
- $f(\union A_i) = \union f(A_i)$
- $f(\intersect A_i) \subset \intersect f(A_i)$
- $f(A-B) \supset f(A) - f(B)$
- $f(A^c) = \im(f) - f(A)$

Equations Involving Both
- $A \subseteq f^{-1}(f(A))$
	- Equal $\iff f$ is injective
- $f(f^{-1}(A)) \subseteq A$
	- Equal $\iff f$ is surjective

## Pascal's Triangle:

$n$  | Sequence
--|--
3  | $1,2,1$
4  | $1,3,3,1$
5  | $1,4,6,4,1$
6  | $1,5,10,10,5,1$
7  | $1,6,15,20,15,16,1$
8  | $1,7,21,35,35,21,7,1$

Obtain new entries by adding in $\rotate[180]{L}$ pattern (e.g. 7 = 1+6, 12 = 6 + 15, etc).
Note that $n\choose i$ is given by the entry in the $n\dash$th row, $i\dash$ column.

## Table of Small Factorials

$n$  |  $n!$
--|--
2   | $2$
3   | $6$
4   | $24$
5   | $120$
6   | $720$
7   | $5040$
8   | $40320$
9   | $362880$
10  | $3628800$

$\pi \approx 3.1415926535$
$e \approx 2.71828$
$\sqrt{2} \approx 1.4142135$

## Primes Under 100:
$$\begin{align*}
& 2, 3, 5, 7, \\
& 11, 13, 17, 19, \\
& 23, 29, \\
& 31, 37, \\
& 41, 43, 47, \\
& 53, 59, \\
& 61, 67, \\
& 71, 73, 79, \\
& 83, 89, \\
& 97, \\
& 101
\end{align*}$$

## Checking Divisibility by Small Numbers
Note that $n\mod 10^k$ yields the last $k$ digits. Let $d_i$ denote the $i\dash$th digit of $n$.

The recursive prime procedure (RPP): for each prime $p$, there exists a $k$ such recursive application of this procedure to $n$ yields the
same remainder mod $p$ as $n$ itself.
- Write $n_0 = 10x + y$ where $y = 0 \ldots 9$
- Let $n_1 = x + ky$, repeat until $n_i < 10$.

$p$ | $p \mid n \iff$ | Mnemonic
--  | --  | --
2   | $n \equiv 2, 4, 6, 8 \mod 10$ | Last digit is even
3   | $\sum d_i \equiv 0 \mod 3$ | 3 divides the sum of digits (apply recursively)
4   | $n \equiv 4k \mod 10^2$ | Last two digits are divisible by 4
5   | $n \equiv 0, 5 \mod 10$ | Last digit is 0 or 5
6   | $n \equiv 0 \mod 2  \text{ and } n \equiv 0 \mod 3$ | Reduce to 2, 3 case
7   | RPP, $k=-2$ | $-20 \equiv 1 \mod 7 \implies 10x+y \equiv 10(x-2y) \mod 7$
8   | $n \equiv 8k \mod 10^3$ | Manually divide the last 3 digits by 8 (or peel off factors of 2)
9   | $\sum d_i \equiv 0 \mod 9$ | 9 divides the sum of digits (apply recursively)
10  | $n \equiv 0 \mod 10$ | Last digit is 0
11  | $\sum (-1)^i d_i \equiv 0 \mod 11$ or  | 11 divides alternating sum
13  | RPP, $k=4$  | $40 \equiv 1 \mod 13 \implies 10x + y \equiv 10(x + 4y) \mod 13$
17  | RPP, $k=-5$ | $-50 \equiv 1 \mod 17 \implies 10x + y \equiv 10(x - 5y) \mod 19$
19  | RPP, $k=2$  | $20 \equiv 1 \mod 19 \implies 10x + y \equiv 10(x + 2y) \mod 19$


## Hyperbolic Functions
$$
\begin{align*}
\cosh(x)    &= \frac{1}{2}(e^x + e^{-x}) \\
\sinh(x)    &= \frac{1}{2}(e^x - e^{-x}) \\
\cos(iz)    &= \cosh z \\
\cosh(iz)   &= \cos z \\
\sin(iz)    &= \sinh z \\
\sinh(iz)   &= \sin z \\
\sinh^{-1}x &= ? \quad = \ln(x + \sqrt{x^2+1}) \\
\cosh^{-1}x &= ? \quad = \ln(x + \sqrt{x^2-1}) \\
\tanh^{-1}x &= \frac{1}{2}\ln(\frac{1+x}{1-x}) \\
\end{align*}
$$

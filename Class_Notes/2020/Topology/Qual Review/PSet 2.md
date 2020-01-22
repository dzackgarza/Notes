---
title: Problem Set 2
---


Next time:
19,22,23,27,30

Definition:
A space $X$ is connected iff it can not be written as $X = U \disjoint V$ with $U,V$ nonempty, disjoint, and open.

# Problem 19

Prove that the product of two connected spaces is connected.

**Solution:**

Use the fact that a union of spaces containing a common point is still connected.
Fix a point $(a, b) \in X \cross Y$.
Since the horizontal slice $X_b\definedas X \cross \theset{b}$ is homeomorphic to $X$ which is connected, as are all of the vertical slices $Y_x \definedas \theset{x} \cross Y \cong Y$ (for any $x$), the "T-shaped" space $T_x \definedas X_b \union Y_x$ is connected for each $x$.

Note that $(a, b) \in T_x$ for every $x$, so $\union_{x\in X} T_x = X \cross Y$ is connected.

![Image](figures/2020-01-21-20:53.png)

# Problem 22
?

# Problem 23

Note: this is precisely the cofinite topology.

1. $\RR\in \Tau$ since $\RR\setminus \RR = \emptyset$ is trivially a finite set, and $\emptyset \in \Tau$ by definition.
2. If $U_i \in \Tau$ then $(\union_i U_i)^c = \intersect U_i^c$ is an intersection of finite sets and thus finite, so $\union_i U_i \in \tau$.
3. If $U_i \in \Tau$, then $(\intersect_{i=1}^n U_i)^c = \union_{i=1}^n U_i^c$ is a finite union of finite sets and thus finite, so $\intersect U_i \in \Tau$.

So $\Tau$ forms a topology.

To see that $(\RR, \Tau)$ is compact, let $\theset{U_i} \rightrightarrows \RR$ be an open cover by elements in $\Tau$.

Fix any $U_\alpha$, then $U_\alpha^c = \theset{p_1, \cdots, p_n}$ is finite, say of size $n$.
So pick $U_1 \ni p_1, \cdots, U_n \ni p_n$; then $\RR \subset U_\alpha \union_{i=1}^n U_i$ is a finite cover.

# Problem 27

## a
$\implies$:

If $X$ is totally bounded, let $\varepsilon  = \frac 1 n$ for each $n$, and let $\theset{x_i}$ be an arbitrary sequence.
For $n=1$, pick a finite open cover $\theset{U_i}_n$ such that $\diam{U_i} < \frac 1 n$ for every $i$.

Choose $V_1$ such that there are infinitely many $x_i \in V_1$. (Why?)
Note that $\diam V_i < 1$.
Now choose $x_i \in V_1$ arbitrarily and define it to be $y_1$.

Then since $V_1$ is totally bounded, repeat this process to obtain $V_2 \subseteq V_1$ with $\diam(V_2)< \frac 1 2$, and choose $x_i \in V_2$ arbitrarily and define it to be $y_2$.

This yields a nested family of sets $V_1 \supseteq V_2 \supseteq \cdots$ and a sequence $\theset{y_i}$ such that $d(y_i, y_j) < \max(\frac 1 i, \frac 1 j) \to 0$, so $\theset{y_i}$ is a Cauchy subsequence.

$\impliedby$:

Then fix $\varepsilon > 0$ and pick $x_1$ arbitrarily and define $S_1 = B(\varepsilon, x_1)$.
Then pick $x_2 \in S_1^c$ and define $S_2 = S_1 \union B(\varepsilon, x_2)$, and so on.
Continue by picking $x_{n+1} \in S_n^c$ (Since $X$ is not totally bounded, this can always be done) and defining $S_{n+1} = S_n \union B(\varepsilon, x_{n+1})$.

Then $\theset{x_n}$ is not Cauchy, because $d(x_i, x_j) > \varepsilon$ for every $i\neq j$.

## b

Take $X = C^0([0, 1])$ with the sup-norm, then $f_n(x) = x^n$ are all bounded by 1, but $\norm{f_i - f_j} = 1$ for every $i, j$, so no subsequence can be Cauchy, so $X$ can not be totally bounded.

Moreover, $\theset{f_n}$ is closed. (Why?)

# Problem 30

Let $A \subset X$ be compact, and pick a fixed $x\in X\setminus A$.
Since $X$ is Hausdorff, for arbitrary $a\in A$, there exists opens $U_{a} \ni a$ and $U_{x,a}\ni x$ such that $V_{a} \intersect U_{x,a} = \emptyset$.
Then $\theset{U_{a} \suchthat a\in A} \rightrightarrows A$, so by compactness there is a finite subcover $\theset{U_{a_i}} \rightrightarrows A$.

Now take $U = \union_i U_{a_i}$ and $V_x = \intersect_i V_{a_i, x}$, so $U\intersect V = \emptyset$.
Note that both $U$ and $V_x$ are open.

But then $X\setminus A \subset \union_{x\in X\setminus A} V_x$, so $A^c$ is open and thus $A$ is closed.

# Spring 2019

## Problem 1
Complete and **totally** bounded $\implies$ compact.
-  Definition: A space $X$ is *totally bounded* if for every $\varepsilon >0$, there is a finite cover $X \subseteq \union_\alpha B_\alpha(\varepsilon)$ such that the radius of each ball is less than $\varepsilon$.
- Definition: A subset of a space $S \subset X$ is *bounded* if there exists a $B(r)$ such that $r<\infty$ and $S \subseteq B(r)$ 
- Totally bounded $\implies$ bounded 
    - Counterexample to converse: $\NN$ with the discrete metric.
    - Equivalent for Euclidean metric
- Compact $\implies$ totally bounded.

Counterexample for problem: the unit ball in any Hilbert (or Banach) space of infinite dimenion is closed, bounded, and not compact.

> Proof: Inductively, let
$\vector x_1 \in B(1, \vector 0)$ and $ A_1 = \mathrm{span}{(\vector x_1)}$, then choose $s = \vector x + A_1 \in B(1,0)/A_1$ such that $\norm{s} = \frac 1 2$ and then a representative $\vector x_2$ such that $\norm{\vector x_2} \leq 1$. Then $\norm{\vector x_2 - \vector x_1} \geq \frac 1 2$ 

> Then, let
$A_2 = \mathrm{span}(\vector x_1, \vector x_2)$, (which is closed) and repeat this for $s = \vector x + A_2 \in B(1, \vector 0)/ A_2$ to get an $\vector x_3$ such that $\norm{\vector x_3 - \vector x_{\leq 2}} \geq \frac 1 2$.

> This produces a non-convergent sequence in the closed ball, so it can not be compact.

Second counterexample: $(\RR, (x,y) \mapsto \frac{\abs{x-y}}{1 + \abs{x-y}})$. 

Best counterexample: $X = \left(\ZZ, ~\rho ( x , y ) = \left\{ \begin{array} { l l } { 1 } & { \text { if } x \neq y } \\ { 0 } & { \text { if } x = y } \end{array} \right.\right)$. This metric makes $X$ complete for any $X$, then take $\NN \subset X$. All sets are closed, and bounded, so we have a complete, closed, bounded set that is not compact -- take that cover $U_i = B(1, i)$.

Useful tool: $(X, d) \cong_{\text{Top}} (X, \min{(d(x,y), 1)}$ where the RHS is now a bounded space. This preserves all topological properties (e.g. compactness).

## Problem 2
Definition: $(X, \tau)$ where $\tau \subseteq \mathcal P(X)$ is a *topological space* iff

- $\emptyset, X \in \tau$
- $\theset{U_i}_{i\in I} \subseteq \tau \implies \union_{i\in I} U_i \in \tau$
- $\theset{U_i}_{i\in \NN} \subseteq \tau \implies \intersect_{i\in \NN} U_i \in \tau$

We can write $\overline{(X, \tau)} = (X \disjoint \pt , \tau \union \tau')$ where $\tau' = \theset{U\disjoint \pt \suchthat X-U ~\text{is compact}}$. We need to show that $T \definedas \tau \union \tau'$ forms a topology. 

- We have $\emptyset,X \in \tau \implies \emptyset, X \in \tau \union \tau'$.
- We just need to check that $\tau'$ is closed under arbitrary unions. Let $\theset{U_i} \subset \tau'$, so $X-U_i = K_i$ a compact set for each $i$. Then $\union_{i} U_i = \union_i X- (X-U_i)= \union_i X - K_i = X - \union_i K_i $
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

Suppose $X\cross Y = U \disjoint V = (U_1 \cross U_2) \disjoint (V_1 \cross V_2)$ where $U,V$ are nonempty, so the $U_i, V_i$ respectively are nonempty.
Fix $p \in X$, and suppose toward a contradiction that $\theset{p} \cross Y \subset U$ or $V$ but not both.

Note that $\pi_X(U_1) \intersect \pi_X(U_2) = \emptyset$.

It would follow that $p$ is in either $\pi_X(U_1)$ or $\pi_X(U_2)$, which are disjoint in $X$.
These are open because projections are continuous, and nonempty since the $U_i$ are nonempty,

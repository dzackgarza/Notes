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

Suppose $X\cross Y = U \disjoint V = (U_1 \cross U_2) \disjoint (V_1 \cross V_2)$.
Fix $p \in X$, and suppose WLOG that $\theset{p} \cross Y U = \subset U_1\cross U_2$ and so $p \in \pi_x(U_1)$.
Thus every point in $x$ is in either $\pi_X(U_1)$ or $\pi_X(U_2)$, which are disjoint in $X$.
These are open because projections are continuous, so $\pi_X(U_2)$ must be empty otherwise these disconnect $X$.

---
title: Problem Set 3
---



# Problem 31

## a

Theorems used:

- Continuous bijection + open map (or closed map) $\implies$ homeomorphism.
- **Closed** subsets of compact sets are compact.
- The continuous image of a compact set is compact.
- Closed subsets of Hausdorff spaces are compact.

So we'll show that $f$ is a closed map.

Let $U \in X$ be closed. 

- Since $X$ is compact, $U$ is compact
- Since $f$ is continuous, $f(U)$ is compact
- Since $Y$ is Hausdorff, $f(U)$ is closed.

## b

Note that any finite space is clearly compact.

Take $f: ([2], \tau_1) \to ([2], \tau_2)$ to be the identity map, where $\tau_1$ is the discrete topology and $\tau_2$ is the indiscrete topology.
Any map into an indiscrete topology is continuous, and $f$ is clearly a bijection.

Let $g$ be the inverse map; then note that $1 \in \tau_1$ but $g\inv(1) = 1$ is not in $\tau_2$, so $g$ is not continuous.

$\qed$

# Problem 32

$\implies$:

- Let $p\in \Delta^c$.
- Then $p$ is of the form $(x, y)$ where $x\neq y$ and $x,y\in X$.
- Since $X$ is Hausdorff, pick $N_x, N_y$ in $X$ such that $N_x \intersect N_y = \emptyset$.
- Then $N_p\definedas N_x \cross N_y$ is an open set in $X^2$ containing $p$.
- Claim: $N_p \intersect \Delta = \emptyset$.
  - If $q \in N_p \intersect \Delta$, then $q = (z, z)$ where $z\in X$, and $q\in N_p \implies q\in N_x \intersect N_y = \emptyset$.
- Then $\Delta^c = \union_p N_p$ is open.
 
$\impliedby$:

- Let $x\neq y\in X$.
- Consider $(x, y) \in \Delta^c \subset X^2$, which is open.
- Thus $(x, y) \in B$ for some box in the product topology.
- $B = U \cross V$ where $U, V$ are open in $X$, and $B \subset \Delta^c$.
- So $x\in U, y\in V$.
- Claim: $U\intersect V = \emptyset$.
  - Otherwise, $z\in U\intersect V \implies (z, z) \in B$, but $B \intersect \Delta^c = \emptyset$. 


# Problem 38

$\RR$ is clearly Hausdorff, and $\RR/\QQ$ has the indiscrete topology, and is thus non-Hausdorff.
So take the quotient map $\pi:\RR \to \RR/\QQ$.

Direct proof that $\RR/\QQ$ isn't Hausdorff:

- Pick $[x] \subset U \neq [y] \subset V \in \RR/\QQ$ and suppose $U\cap V = \emptyset$.
- Pull back $U\to A, V\to B$ open disjoint sets in $\RR$
- Both $A, B$ contain intervals, so they contain rationals $p\in A, q\in B$
- Then $[p] = [q] \in U\intersect V$.

Proof that $\RR/\QQ$ has the indiscrete topology:

- Let $U \subset \RR/\QQ$ be open and nonempty, show $U = \RR/\QQ$.
- Let $[x] \in U$, then $x \in \pi\inv(U) \definedas V \subset\RR$ is open.
- Then $V$ contains an interval $(a, b)$
- Every $y\in V$ satisfies $y+q \in V$ for all $q\in \QQ$, since $y+q-y \in \QQ \implies [y+q] = [y]$. 
- So $(a-q, b+q) \in V$ for all $q\in \QQ$.
- So $\union_{q\in \QQ}(a-q, b+q) \in V \implies \RR \subset V$.
- So $\pi(V) = \RR/\QQ = U$, and thus the only open sets are the entire space and the empty set.

# Problem 42

- Suppose $X$ has a countable basis $B = \theset{B_i}$.
- Choose an arbitrary $x_i \in B_i$ for each $i$. Define $Q = \theset{x_i}$.
- Let $y\in N_y \subset X$.
- By definition of a basis, there exists some $B_i$ such that $y\in B_i \subset N_y$.
- Since $x_i \in B_i$, $Q\intersect N_y \neq \emptyset$.
- Thus $Q$ is dense in $X$.

# Problem 44



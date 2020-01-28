# Examples


The cofinite topology:

- Non-Hausdorff
- Compact

The discrete topology:

- Discrete iff points are open
- Always Hausdorff
- Compact iff finite
- Totally disconnected
- If the domain, every map is continuous

The indiscrete topology:

- Only open sets are $\emptyset, X$
- Non-Hausdorff
- If the codomain, every map is continuous
- Compact

Non-Hausdorff spaces:

- The cofinite topology on any infinite set.
- $\RR/\QQ$
- The line with two origins.

# Theorems

Theorem:
Points are closed in $T_1$ spaces.

Theorem:
A metric space $X$ is sequentially compact iff it is complete and totally bounded.

Theorem:
A metric space is totally bounded iff every sequence has a Cauchy subsequence.

Theorem: 
A metric space is compact iff it is complete and totally bounded.

Theorem (Baire):
If $X$ is a complete metric space, then the intersection of countably many dense open sets is dense in $X$.

Theorem:
A continuous bijective open map is a homeomorphism.

**Theorem:**
A closed subset $A$ of a compact set $B$ is compact.

*Proof:*

- Let $\theset{A_i} \rightrightarrows A$ be a covering of $A$ by sets open in $A$.
- Each $A_i = B_i \intersect A$ for some $B_i$ open in $B$ (definition of subspace topology)
- Define $V = \theset{B_i}$, then $V \rightrightarrows A$ is an open cover.
- Since $A$ is closed, $W\definedas B\setminus A$ is open
- Then $V\union W$ is an open cover of $B$, and has a finite subcover $\theset{V_i}$
- Then $\theset{V_i \intersect A}$ is a finite open cover of $A$.

**Theorem:**
The continuous image of a compact set is compact.

**Theorem:**
A closed subset of a Hausdorff space is compact.


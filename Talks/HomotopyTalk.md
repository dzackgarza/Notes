# History

# Motivation
- Smooth structures on $S^n$ -- $\pi_n^S$

- Framed Bordism Classes of manifolds -- $\pi_n^S$

# Background

**Definition (Homotopy)**

**Definition (Homotopic Maps)**

**Definition (Fundamental Group)**

**Definition (Higher Homotopy Groups)**

**Definition (CW Complex)**

**Definition (Cellular Map)**
A map between $f:X \to Y$ between CW complex is *cellular* if $f(X_{(k)}) \subseteq Y_{(k)}$ for every $k$.

**Theorem (Cellular Approximation):**
Any map $f: X \to Y$ is homotopic to a cellular map.

> Application: $\pi_k S^n = 0$ if $k < n$. Use $f\in \pi_kS^n \iff f\in [S_k, S_n]$, deform $f$ to be cellular, then $f(S^k_{(k)}) \injects S^n_{(k)} = \pt$, so $f \homotopic c_0$, a constant map.

**Definition (Homotopy Equivalence)**
Two spaces $X, Y$ are said to be *homotopy equivalent* if there exists a maps $f: X \to Y$ and $f\inv: Y \to X$ such that
$$
f\circ f\inv \homotopic \id_Y \\
f\inv \circ f \homotopic \id_X
$$

**Definition (Weak Equivalence)**
A continuous map
$$
f: X \to Y 
$$
is called a *weak homotopy equivalence* if the induced map
$$
f_*: \pi_*(X) \to \pi_*(Y)
$$
is a graded isomorphism.

> Note that this is a strictly weaker notion than homotopy equivalence -- we don't require an explicit inverse.

> Note that a weak homotopy equivalence also induces isomorphisms on all homology and cohomology.

# Theorems

**Theorem (Whitehead):**

**Theorem (CW Approximation)**:
For every topological space $X$, there exists a CW complex $\tilde X$ and a weak homotopy equivalence $f: X \to \tilde X$.:w


**Theorem (Hurewicz):**

**Theorem (Freudenthal Suspension):**

# Applications


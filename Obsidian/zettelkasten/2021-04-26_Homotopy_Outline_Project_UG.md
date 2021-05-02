---
date: 2021-04-26
tags: 
  - Unfiled
---

#homotopy #homotopy_groups_of_spheres

# Major Results
- Theorem: $\pi_1 S^1 = \ZZ$
  - *Proof*: Covering space theory
- Theorem: $\pi_{1+k} S^1 = 0$ for all $0 < k < \infty$
  - *Proof*: Use universal cover by $\RR$
  - Theorem: $\RR^n$ is contractible
  - Theorem: $R$ covers $S^1$
  - Theorem: Covering spaces induce  $\pi_i X \cong \pi_i \tilde X, i \geq 2$
- Theorem: $\pi_1 S^n = 0$ for $n \geq 2$.
  - $S^n$ is simply connected.
- Theorem: $\pi_n S^n = \ZZ$
  - *Proof*: The degree map is an isomorphism. [G&M 4.1]
  - Alternatively:
    - LES of Hopf fibration gives $\pi_1 S^1 \cong \pi_2 S^2$
    - Freudenthal suspension: $\pi_k S^k \cong  \pi_{k+1} S^{k+1}, k \geq 2$
- Theorem: $\pi_k S^n = 0$ for all $1 < k < n$
  - *Proof*: By cellular approximation: For $k < n$,
    - Approximate $S^k \mapsvia{f} S^n$ by $\tilde f$
    - $\tilde f$ maps the $k\dash$skeleton to a point,
    - Which forces $\pi_k S^n = 0$?
  - Alternatively: Hurewicz
- Theorem: $\pi_k S^2 = \pi_k S^3$ for all $k > 2$
- Theorem: $\pi_k S^2 \neq 0$ for any $2 < k < \infty$
  - Corollary: $\pi_k S^3 \neq 0$ for any $2 < k < \infty$
- Theorem: $\pi_k S^2 = \pi_k S^3$
  - *Proof*: LES of Hopf fibration
- Theorem: $\pi_3 S^2 = \ZZ$
  - *Proof*: Method of killing homotopy
- Theorem: $\pi_4 S^2 = \ZZ_2$
  - *Proof*: Continued method of killing homotopy
- Theorem: $\pi_{n+1} S^n = \ZZ$ for $n \geq 2$?
  - *Proof*: Freudenthal suspension in stable range?
- Theorem: $\pi_{n+2} S^n = \ZZ_2$ for $n \geq 2$?
  - *Proof*: Freudenthal suspension in stable range?
  
# Project Outline
- CW Complexes
- Define homotopy
- Define homotopy invariance
- Classification of abelian groups
  - Free and torsion
- Define $\pi_n(X)$
  - Show functoriality
  - Show homotopy invariant
- Whitehead's Theorem (homotopy and homology versions)
- $\pi_n$ for $n\geq 2$ is abelian
- Compute $H_* S^n$
- Compute $\pi_k S^1$
- Cellular approximation theorem
- Show $\pi_k S^n = 0$ for $k<n$
- Show $\pi_n$ only depends on n-skeleton
- Hurewicz theorem
- Show $\pi_n S^n = Z$
- Show $\pi_i S^n = 0$ for $i < n$
- Define fibrations and fiber bundles
- Define suspension and loop spaces
- Show $\Sigma \to \Omega$ adjunction
- Show how to use $\Sigma$ and $\Omega$ to move between $\pi_n$ using equalities
- Freudenthal Suspension theorem
- The homotopy LES of a fibration
- Hopf Fibration
  - Show $\pi_k S^2 = \pi_k S^3$
  - Show $\pi_3 S^2 = Z$
- Killing off homotopy groups
- SS of a filtration
- Serre SS
  - Compute algebra structure of $CP^\infty$
- Compute $\pi_4 S^2$
- Compute first stable $\pi_k$
- Freudenthal Suspension
- Eilenberg-Maclane Spaces
- $H^n (X; G) = [X, K(G, n)]$
- Summary of "easy" results:
  - $\pi_k S^1 = 0, i > 1$
  - $\pi_n S^n = Z$
  - $\pi_3 S^2 = Z$
  - $\pi_k S^2 = \pi_k S^3$
  - $\pi_i(S^n)$ is finite for $i > n$
    - Except for $\pi_{4k-1}$
  - See [here](https://web.stanford.edu/~amwright/HomotopyGroupsOfSoheres.pdf)
- Harder results
  - $\pi_n+1 S^n = Z\delta_2 + Z_2 \delta_{n \geq 3}$
  - $\pi_n+2 S^n = Z_2$
- Exact sequences
- Splitting and extension problem
- Degree of a map to $S^n$
- Whitehead product and Lie Algebra structure of $\pi_*$

## Preliminaries


### Definition: $n$ connectivity
A space $X$ is said to be *$n\dash$connected* if $\pi_i X = 0$ for $1 \leq i \leq n$.

### Definition: Weak Homotopy Equivalence
A map $f: X \to Y$ is called a *weak homotopy equivalence* if the induced maps $f_i^* : \pi_i(X, x_0) \to \pi_i(Y, f(x_0))$ are isomorphisms for every $i \geq 0$.

This is a strictly weaker notion than homotopy equivalence - for example, let $L$ be the long line. Then $\pi_i(L) = 0$ for all $i$, but $L$ is not contractible, and thus $L \not\sim \pt$. However, the inclusion $\pt \injects L$ is a weak homotopy equivalence, which can not be a homotopy equivalence.

Any weak homotopy equivalence induces isomorphisms on all integral co/homology groups, and thus co/homology groups with any coefficients by the UCT.

### Definition: Cellular Map
If a map $X \mapsvia{f} Y$ satisfies $f(X^{(n)}) \subseteq Y^{(n)}$, then $f$ is said to be a *cellular map*.

### Theorem: Cellular Approximation
Any map $X \mapsvia{f} Y$ between CW complexes is homotopic to a cellular map.

### Theorem: CW Approximation
For every topological space $X$, there exists a CW complex $Y$ and a weak homotopy equivalence $f: X \to Y$. Moreover, if $X$ is $n\dash$dimensional, $Y$ may be chosen to be $n\dash$connected and is obtained from $X$ by attaching cells of dimension greater than $n$.

### Theorem: Whitehead
**Abbreviated statement**: if $X, Y$ are CW complexes, then any map $f: X \to Y$ is a weak homotopy equivalence if and only if it is a homotopy equivalence.

(Note: $f$ must induce maps on all homotopy groups simultaneously.)

**Full Statement**: If $(X, x_0) \mapsvia{f} (Y, f(x_0))$ such that the induced maps
$$
f_*: \pi_*(X, x_0) \to \pi_*(Y, y_0) \\
 [g] \mapsto [f \circ g]
$$
are all isomorphisms and $Y$ is connected, then $f$ is a homotopy equivalence.

### Theorem: Uniqueness of E-M Spaces
If $X$ is a space with one nontrivial homology group $G$ in degree $k$, so that $X$ satisfies
$$\pi_i(X) = \cases{G,~i=k\\0,~\text{otherwise}}$$

Then $X \simeq K(G, k)$.

(Note: two spaces with isomorphic homotopy groups may *not* be homotopy-equivalent in general - this is one exception.)

### Theorem: Hurewicz
Given a space $X$, define a family of maps
$$
 h_k: \pi_k X \to H_k X\\
 [f] \mapsto f_*(\mu_k)
$$
where $H_k X = \langle \mu_k \rangle$.

If $X$ is $n-1$ connected where $n\geq 2$, then $h_k$ is an isomorphism for all $k \leq n$.

In particular, $\pi_n X \cong H_n X$ as groups.

### Theorem: Freudenthal Suspension
If $X$ is an $n\dash$ connected CW complex, then there are maps $\pi_i X \to \pi_{i+1} \Sigma X$ which is an isomorphism for $i\leq 2n$ and a surjection for $i=2n+1$.

### Theorem: Homotopy LES for a Fibration

### Theorem: Existence of Postnikov Tower

### Theorem: Spectral sequence of a Fibration

### Theorem: Existence of Whitehead Tower
---
date: 2021-04-26
tags: 
  - Unfiled
---

# References

Tags:
#homotopy #homotopy_groups_of_spheres

Links: 
[Homotopy Groups of Spheres](Homotopy%20Groups%20of%20Spheres.md)

# Theorems
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
  
# Definitions
- CW Complexes
- Define homotopy
- Define homotopy invariance
- Classification of abelian groups
  - Free and torsion
- Define $\pi_n(X)$
  - Show functoriality
  - Show homotopy invariant
- [Whitehead's theorem](Whitehead's%20theorem.md) 
	- (homotopy and homology versions)
- $\pi_n$ for $n\geq 2$ is abelian
- Compute $H_* S^n$
- Compute $\pi_k S^1$
- Cellular approximation theorem
- Show $\pi_k S^n = 0$ for $k<n$
- Show $\pi_n$ only depends on n-skeleton
- [Hurewicz](Hurewicz.md) theorem
- Show $\pi_n S^n = Z$
- Show $\pi_i S^n = 0$ for $i < n$
- Define [fibrations](fibrations) 
- Define [fiber bundles](fiber%20bundle.md)
- Define suspension and [loop space](loop%20space)
- Show $\Sigma \to \Omega$ adjunction
- Show how to use $\Sigma$ and $\Omega$ to move between $\pi_n$ using equalities
- [Hopf Fibration](Hopf%20Fibration.md)
  - Show $\pi_k S^2 = \pi_k S^3$
  - Show $\pi_3 S^2 = Z$
  - [Killing homotopy groups](Killing%20homotopy%20groups)
  - [To Review/2021-04-26_Spectral_sequence_of_a_filtration](To%20Review/2021-04-26_Spectral_sequence_of_a_filtration.md)
- [Serre spectral sequence](Serre%20spectral%20sequence)
  - Compute algebra structure of $CP^\infty$
- Compute $\pi_4 S^2$
- Compute first stable $\pi_k$
- [Freudenthal Suspension](Freudenthal%20Suspension)
- [Eilenberg-MacLane spaces](Eilenberg-MacLane%20space.md)
	- Representability:
	- $H^n (X; G) = [X, K(G, n)]$
- Summary of "easy" results:
  - $\pi_k S^1 = 0, i > 1$
  - $\pi_n S^n = Z$
  - $\pi_3 S^2 = Z$
  - $\pi_k S^2 = \pi_k S^3$
  - $\pi_i(S^n)$ is finite for $i > n$
    - Except for $\pi_{4k-1}$
- Harder results
  - $\pi_n+1 S^n = Z\delta_2 + Z_2 \delta_{n \geq 3}$
  - $\pi_n+2 S^n = Z_2$
- Exact sequences
- Splitting and extension problem
- Degree of a map to $S^n$
- [Whitehead product](Whitehead%20product) and [Lie algebra](Lie%20algebra.md) structure of $\pi_*$

## Preliminaries

[connectivitty](connectivitty)

[weak homotopy equivalence](weak%20homotopy%20equivalence)

[cellular map](cellular%20map)

[cellular approximation](cellular%20approximation)

[CW approximation](CW%20approximation)

[Whitehead's theorem](Whitehead's%20theorem)

[Eilenberg-MacLane space](Eilenberg-MacLane%20space.md)

[Hurewicz](Hurewicz)

[Freudenthal Suspension Theorem](Freudenthal%20Suspension%20Theorem)

[homotopy long exact sequence](homotopy%20long%20exact%20sequence)

[Postnikov tower](Postnikov%20tower.md)

[Whitehead tower](Whitehead%20tower)
# Spectral Sequence Review

Roughly speaking, a spectral sequence is a system for keeping tracking of collections of exact sequences with maps between them.

Recall the Snake Lemma: given $A,B,C$ chain complexes fitting into a short exact sequence
$$ 0 \mapsvia{} A \mapsvia{i} B \mapsvia{p} C \mapsvia{} 0$$

there is a canonical long exact sequence in homology
$$ \cdots \mapsvia{} H_n(A) \mapsvia{i_*} H_n(B) \mapsvia{p_*} H_n(C) \mapsvia{\delta} H_{n-1}(A) \mapsvia{} \cdots$$

where $\delta$ is the "connecting homomorphism".


Now specialize to the case where $A_*$ is a chain complex, $B_* \subset A_*$ is a subcomplex, and consider the quotient $A_*/B_*$. We have a short exact sequence
$$ 0 \mapsvia{} B_* \mapsvia{i} A_* \mapsvia{p} A_*/B_* \mapsvia{} 0$$

Applying the snake lemma yields the long exact sequence in homology

$$\dots \mapsvia{} H_n(B_*) \mapsvia{i_*} H_n(A_*) \mapsvia{p_*} H_n(A_*/B_*) \mapsvia{\delta} H_{n-1}(B_*) \mapsvia{} \cdots$$

where $\delta$ is defined in the following way:

Given an arbitrary class $\alpha \in H_n(A_*/B_*)$, pick a representative $x \in A_*$ so that $\alpha = [x]$. Since $\del x \in B_*$, we can define
$\del(\alpha) = \del([x]) \definedas [\del x] \in H_{n-1}(B)$.

Supposing that the computation of the homologies for the subcomplex $B_*$ and the quotient complex $A_*/B_*$ are tractable, we can break this long exact sequence up into a collection of short exact sequences
$$ 0 \mapsvia{} \coker \delta \mapsvia{} H_i(A_*) \mapsvia{} \ker \delta \mapsvia{} 0 $$

This yields the following procedure for computing $H_i(A_*)$:

1. Compute $H_i(B_*)$ and $H_i(A_*/B_*)$
2. Look at the two term chain complex $H_i(A_*/B_*) \mapsvia{\delta} H_{i-1}(B_*)$
   1. Take its homology, yielding $G_1H_i$ and $G_2H_i$
3. Solve the extension problem for the short exact sequence $0 \mapsvia{} G_0H_i \mapsvia{} H_i(A_*) \mapsvia{}G_1H_i \mapsvia{} 0$



## Filtrations

A *filtered $R$-module* is an $R$-module $A$ with a sequence of submodules $\theset{A_i}_{i\in \ZZ}$ such that $A_i \subset A_{i+1}$ and $\union_\ZZ A_i = A$. Due to onerous index juggling, we write $A_i = F_i A$.

A good example of this is a CW-complex $X$, where $F_iX$ is the $i$-skeleton of $X$.

Given such a filtration, we can define an *associated graded module* $B$ where $B_i = A_{i}/ A_{i-1}$. This can yield a short exact sequence
$0 \mapsvia{} A_{i-1} \mapsvia{} A_i \mapsvia{} B_i \mapsvia{} 0$

A *filtered chain complex* is a chain complex $(C_*, \del)$ along with a filtration on each $n$-chain, $\theset{F_iC_n}_{i\in\ZZ}$, such that $\del (F_i C_n) \subseteq F_iC_{n-1}$ (i.e. the differential preserves the filtration).

Possible example: Compute Serre spectral sequences with $\FF_p$ coefficients.

# Example

The most basic example is a spectral sequence is $E^r_{p,q}$, where $r$ denotes the page of the spectral sequence and the $E_{p,q}$ is a bigraded collection of abelian groups. Furthermore, we can take a "first quadrant" sequence, where only the $p>0, q>0$ terms are nontrivial. The differentials are then defined on any given page as a "shift map" that translates $p+r$ horizontal indices and $q-(r-1)$ vertical indices (direction depends on indexing vs. "coindexing"). Here is an example of an $r=2$ page:

![SpectralSequence](http://mathworld.wolfram.com/images/eps-gif/SpectralSequence_1000.gif)

In this case, $\lim_{r\rightarrow \infty} E^r_{p,q}$ stabilizes for any given $(p,q)$ term, so we define it as $E^\infty_{p,q}$.



# Common Types

- Serre
  - Cohomology groups of spaces in a fibration
- Leray-Serre
  - "Cohomology" of complexes of sheaves
  - Special case of Grothendieck
- Grothendieck
  - The resulting derived functor from a composition of two known derived functors
- Adams
  - Higher homotopy groups of spheres

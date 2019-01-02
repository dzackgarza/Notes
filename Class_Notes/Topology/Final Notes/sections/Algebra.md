# Algebra

## Exact Sequences

The sequence $A \mapsvia{f_1} B \mapsvia{f_2} C$ is exact if and only if $\im f_i = \ker f_{i+1}$ and thus $f_2 \circ f_1 = 0$.

Some useful results:

- $0 \into A \injects_{f} B$ is exact iff $f$ is **injective**
- $B\surjects_{f} C \into 0$ is exact iff $f$ is **surjective**
- $0\into A \into B \into 0$ is exact iff $A \cong B$.
- $A \injects B \to C \to D \surjects E$ iff $C = 0$
- $0\to A \to B \mapsvia{\cong} C \to D\to 0$ iff $A = D = 0$.
	- Todo: Proof
- $0\to A\to B \to C \to 0$ splits iff $C$ is free.

Can think of $C \cong \frac{B}{\im f_1}$.

The sequences *splits* when a morphism $f_2^{-1}: C \into B$ exists. In $\textbf{Ab}$, this means $B \cong A \oplus C$, in $\mathbf{Grp}$ it's $B \cong A \semidirect_\phi C$.

Examples:

- $0 \into \ZZ \mapsvia{\times 2} \ZZ \mapsvia{\text{mod}~2} \frac{\ZZ}{2\ZZ} \into 0$
- $1 \into N \mapsvia{\iota} G \mapsvia{p} \frac{G}{N} \into 1$
  - Groups and normal subgroups
- $1 \into \frac{\ZZ}{n\ZZ} \mapsvia{\iota} D_{2n} \mapsvia{?} \frac{\ZZ}{2\ZZ} \into 1$
  - Dihedral group and cyclic groups
- $0 \into I \intersect J \mapsvia{\Delta: x\mapsto(x,x)} I \oplus J \mapsvia{f:(x,y) \mapsto x-y} I + J \into 0$
  - $R$-Modules
- $0 \into \frac{R}{I \intersect J} \mapsvia{\Delta: x\mapsto(x,x)} \frac{R}{I} \oplus \frac{R}{J} \mapsvia{f:(x,y) \mapsto x-y} \frac{R}{I + J} \into 0$
- $0 \into \mathbb{H}_1 \mapsvia{\nabla} \mathbb{H}_\text{curl} \mapsvia{\nabla \cross} \mathbb{H}_\text{div} \mapsvia{\nabla \cdot} \mathbb{L}_2 \into 0$
  - Since $\nabla \cross \nabla F = \nabla \cdot\nabla\cross \bar{v} = 0$ in Hilbert spaces

*Note: is $f_1\circ f_2 = 0$ equivalent to exactness..?* Answer: yes, every exact sequence is a chain complex with trivial homology. (Alternatively stated: Exact sequences are chain complexes with no cycles.) Therefore homology measures the failure of exactness.

Any LES $A_1 \into \cdots \into A_6$ decomposes into a twisted collection of SES's; define $C_k = \ker (A_k \into A_{k+1}) \cong \im(A_{k-1} \into A_k)) \cong \coker(A_{k-2} \into A_{k-1})$, then all diagonals here are exact:

![Long short exact sequences.png](https://upload.wikimedia.org/wikipedia/commons/b/b9/Long_short_exact_sequences.png)


## Five Lemma

If $m, p$ are isomorphisms, $l$ is an **surjection**, and $q$ is an **injection**, then $n$ is an **isomorphism**.

![5 lemma.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/5_lemma.svg/388px-5_lemma.svg.png)

Proof: diagram chase two "four lemmas", one on each side. Full proof [here](https://en.wikipedia.org/wiki/Five_lemma).

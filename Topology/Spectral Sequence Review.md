# Spectral Sequence Review

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




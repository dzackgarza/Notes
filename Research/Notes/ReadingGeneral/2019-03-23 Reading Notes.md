# General Reading

[Sheaves for Homotopy Theorists](http://math.mit.edu/~dspivak/files/cech.pdf)

The algebraic K-groups of a scheme X are defined by producing a spectrum K(X) and setting
$K^n(X) \definedas π_{-n}K(X)$.

> Be warned that K-theorists and geometers write $K_n(X)$ for our $K^{−n}(X)$ -- we will stick to homotopy-theoretic notation, however.

K can be defined so that it actually gives a contravariant functor (Schemes) → (Spectra), and so the groups $K^n(X)$ do indeed start to look like a cohomology theory. For X a topological space, the analogue of K(X) turns out to be the mapping
spectrum $bu^X$, where bu is the spectrum representing complex connective K-theory (so that $bu$ is the connective cover of the spectrum $BU$). 

Thus, the functor K can be thought of as a substitute for the spectrum bu -- it is sort of a device for storing all the same information that bu provides, but without an honest ‘space’ to house it in.

Most of the important results about algebraic K-theory arise from the study of the spectrum K(X), rather than that of the disembodied abelian groups $K^n(X)$. For example, if the scheme X is covered by two open sets U and V , one wants a Mayer-Vietoris sequence
$$
\cdots \rightarrow K ^ { n } ( X ) \rightarrow K ^ { n } ( U ) \oplus K ^ { n } ( V ) \rightarrow K ^ { n } ( U \cap V ) \rightarrow K ^ { n + 1 } ( X ) \rightarrow \cdots
$$

This follows formally once one proves the stronger result that
$$
\begin{CD}
\mathcal{K}(C) @>>> \mathcal{K}(U) \\
@VVV @VVV \\
\mathcal{K}(V) @>>> \mathcal{K}(U\intersect V)
\end{CD}
$$
is a homotopy pullback diagram.

Believing that this gives the ‘correct’ definition of weak equivalence
reduces to believing that the whole homotopy theory of schemes is captured in the two basic facts that $\mathrm{hocolim}~U_\wait \longrightarrow X$ and $X \cross I \to X$ are weak equivalences. This doesn’t sound particularly
believable. Is it even true for topological spaces?
The surprising answer is yes. If we use this definition in the case of reasonable topological spaces
(like CW-complexes) we do recover the usual notion of weak equivalence
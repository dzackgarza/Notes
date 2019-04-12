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

Our first guess is motivated by the hypothesis that a contravariant functor $E$ : (Schemes) → (Spectra), in analogy to the functor $K$, should look like a cohomology theory. A weak equivalence of schemes $X \to Y$ would be expected to have the property
that $E(Y ) → E(X)$ is a weak equivalence of spectra for every such $E$. 

Believing that this gives the ‘correct’ definition of weak equivalence reduces to believing that the whole homotopy theory of schemes is captured in the two basic facts that $\mathrm{hocolim}~U_\wait \longrightarrow X$ and $X \cross I \to X$ are weak equivalences.  The surprising answer is yes. If we use this definition in the case of reasonable topological spaces (like CW-complexes) we do recover the usual notion of weak equivalence. It says that the homotopy-theory of topological spaces can indeed be ‘generated’ by these two fundamental properties.

The problem is that Zariski open covers don’t tell the whole story about the homotopy-type of schemes. The first indications of this date back to Grothendieck’s work on etale cohomology: looking at only Zariski covers makes the spectrum of a field look contractible, whereas in real life they behave more like $K(π, 1)$ (for example, they have nontrivial covering spaces).

We begin with the observation that algebraic topologists, despite what we are usually led to
believe, are really not very interested in the category of topological spaces. Of course there are
certain subcategories, like the category of manifolds, in which they are highly interested—but the
notion of ‘topological space’ is much too broad, admitting a host of pathological objects for which
the machinery of algebraic topology is simply not intended.
On the other hand, categories such as topological manifolds end up being much too small for
many purposes. The industrious homotopy-theorist finds himself wanting to glue manifolds together,
quotient out by subspaces, divide out by group actions—in short, take various colimits—all of which
have the disadvantage of perhaps producing something which is no longer a manifold. Gluing
manifolds together might lead one to study some category of cell complexes, but of course these
categories end up not being closed under colimits either. Thus, what the algebraic topologist desires
is a setting in which he can study the category of manifolds (or finite complexes, if he is daring),
have all small colimits at his disposal, and yet does not have to worry about the pathology that goes
along with objects as diverse as topological spaces.
# Lecture 5

Last time: we started fppf descent, and wanted to show the quasicoherent sheaves and representable functors give sheaves on $X_{\et}$ and $X_{\fppf}$.
Given a quasicoherent sheaf, we take the associated presheaf on the étale site given by taking the values of its pullback to any object on the étale site.
This yields a sheaf on the étale site, and we'll also conclude that representable functors yield such sheaves as well.

## Continuation of Proof

Reminder of the theorem (fppf descent for quasicoherent sheaves):
If $f:U\to X$ is an fppf cover, so finitely presented and faithfully flat, then the pullback $f^*$ induces an equivalence of categories $\Qcoh(X)$ to descent data for quasicoherent sheaves relative to $U/X$.
This descent data is a quasicoherent sheaf on $U$, so you can take its 2 pullbacks to $U\cross_X U$ (thinking of these as the double intersections of objects in the cover) which admit an isomorphism between them which needs to satisfy a cocycle condition on $U\cross_X U \cross_X U$.
For Zariski covers, this reduces to having a cover by opens, a sheaf on each objects, and gluing data that satisfies the usual cocycle condition.

The goal was to prove (1) this functor is fully faithful, so the map on hom sets is a bijection.
Given $\mathcal{F}_1, \mathcal{F}_2 \in \qcoh(X)$, we wanted a certain diagram to be an equalizer.
Faithfulness is the injectivity of the first map $f^*$, and fullness is showing that elements go to the same place in the next two maps.

We proved a lemma: if $R\to S$ is a faithfully flat ring map and $M\in \rmod$ then 
\begin{tikzcd}
N\ar[r] & N\tensor S\ar[r] & N\tensor S \tensor S \\
n \ar[r] & n\tensor 1 & \\
 & n\tensor s \ar[r] & n\tensor s \tensor 1
\end{tikzcd}

is an equalizer diagram.
We used one of Daniel's favorite tricks in fppf descent: producing a section by base-changing to $S$.

### Proof of Full Faithfulness


:::{.exercise title="Step 1, Important"}
**Step 1**: 
Reduce to the case where $U\to X$ is affine.

*(Hint: See chapter 6 of Neron models.
This will use that the map has finite presentation, and in fact even less, that the map is quasicompact.)*
:::

**Step 2**:
We now have $R\to S$ faithfully flat, where we're thinking of $U = \spec S, X = \spec R$.
Since $N, M \in \rmod$, after replacing symbols, we want the following diagram to be an equalizer:

\begin{tikzcd}
\hom_R(M, N) \ar[r] &
\hom_S(M\tensor S, N\tensor S) \ar[r, shift left=0.75em]\ar[r, shift right=0.75em] &
\hom_{S\tensor S}(M\tensor S^{\tensor 2}, N\tensor S^{\tensor 2})
\end{tikzcd}

where all tensors are over $R$.
The first map takes a map $f:M\to N$ and composes with the map $N\to N\tensor S$ from the lemma to get a map $M\to N\tensor S$, which automatically extends to a map $M\tensor S \to N\tensor S$.
Exactness in the middle also comes from the lemma.
Alternatively, injectivity of the first map follows from injectivity of $N\to N\tensor S$ and left-exactness of $\hom(M, \wait)$, as does exactness everywhere else.

A short diversion:

:::{.corollary title="of proof"}
For $\mathcal{F}\in \qcoh(X)$, we defined $\mathcal{F}^{\et} \in \presh(X_{\et})$ where $\mathcal{F}^{\et}(U\mapsvia \pi X) \da \pi^* \mathcal{F}(U)$ is a sheaf on $X_{\et}$ and $X_{\fppf}$
:::

:::{.proof title="?"}
We want to show that if $U\to V$ is an étale cover, we want 
\begin{tikzcd}
\mathcal{F}(V) \ar[r] &
\mathcal{F}(U) \ar[r, shift right=0.75ex] \ar[r, shift left=0.75ex] &
\mathcal{F}(U\cross_V U) 
\end{tikzcd}
to be an equalizer diagram -- but this is exactly the previous diagram where $\mathcal{F}\da \OO$ and $\mathcal{F}_2 \da \mathcal{F}$.
:::

:::{.example title="?"}
We have an étale sheaf $\OO_{X}^{\et}: (U\to X) \mapsto \Gamma(U, \OO_U)$.
:::

### Proof of Essential Surjectivity

We have $U\mapsvia f X$ an fppf cover and descent data $(\mathcal{F}, \phi)$ on $U/X$ where $\mathcal{F}$ is a quasicoherent sheaf on $U$ and $\phi$ is an isomorphism between its two pullbacks to $U\cross_X  U$ satisfying the cocycle condition on $U\cross_X U \cross_X U$.
We want some $\mathcal{G} \in \qcoh(X)$ such that the pullback admits an isomorphism $f^* \mathcal{G} \mapsvia{\sim}\mathcal{F}$ for which the canonical descent data on the pullback agrees.

We'll use a similar trick to construct $\mathcal{G}$.


:::{.exercise title="Important"}
**Step 1**:
We'll reduce to the case of an affine morphism.
:::

**Step 2**:

Let $R\mapsvia f S$ and $M\in \mods{S}$.
We'll want an isomorphism $\phi: M\tensor_R S\to S\tensor_R M$ of $S\tensor_R S$ modules satisfying the cocycle condition.
We make the following construction:

\begin{tikzcd}
M \ar[r, shift left=2.5, "m\mapsto 1\tensor m"] \ar[r, shift right=2.5, "m\mapsto \phi(m\tensor 1)", swap] & S\tensor M \\
\end{tikzcd}
Suppose that $M$ is of the form $N\tensor S$ for $N\in \rmod$, how would the descent of $M$ fit into this diagram and relate to these two maps?
Just set $K$ to be the equalizer of this diagram, i.e. the subset of $M$ that go to the same thing under both maps.

:::{.claim}
There is obvious map $K\tensor_R S\to M$ since $K \subseteq M$ and $M\in \mods{S}$, so you can include $K\injects M$ and multiply by elements of $S$.
Moreover, this map is an isomorphism.
Given this isomorphism, one obtains compatible descent data on $M$.
:::

From the lemma, we have an equalizer
\begin{tikzcd}
R \ar[r] &
S \ar[r, shift right=0.75ex] \ar[r, shift left=0.75ex] &
S\tensor_R S
\end{tikzcd}
to which we can apply $\wait \tensor_S M$ to obtain

\begin{tikzcd}
K \ar[r] &
M\tensor S \ar[r, shift right=0.75ex] \ar[r, shift left=0.75ex] &
M\tensor_R S &
\end{tikzcd}
where $K$ is by definition the above kernel.
We want to check that the map $K\to M$ appearing here induces an isomorphism $K\tensor S \to M$.

:::{.exercise title="Important"}
This is true if $R\to S$ has a section, show this.
Given $U\mapsvia f X$ with a section $s$ and $\mathcal{F}\in \qcoh(U)$ with descent data, we want $\mathcal{G}$ such that $f^* \mathcal{G} = \mathcal{F}$.
You can take $\mathcal{G}\da s^* \mathcal{F}$; check that this works.
:::

In general, we want to show $K\tensor S \to M$ is an isomorphism, and we want to reduce to the case where we have a section.
After applying $\wait \tensor S$, $R\to S$ acquires a section.
Why? 
We get a map $S\to S\tensor_R S$, and there's a reverse map $S\tensor_R S\to S$ given by multiplication.
So $K\tensor S \tensor S \to M\tensor S$ is an isomorphism, which implies $K\tensor S\to M$ is an isomorphism due to the fact that $S$ is faithfully flat over $R$ which allows us to check exactness before or after tensoring with $S$.

> The exercises here are among the most important in the course! 
  Totally necessary to do them.

## Representable Functors


:::{.theorem title="?"}
Suppose $p:U\to X$ is an fppf cover.
Then the functor $p^*: \Sch/X \to$ descent data for schemes on $U/X$ is fully faithful (but not an equivalence of categories).
:::


### Proof of Theorem

:::{.exercise title="Step 1"}
Reduce to the case where *everything* is affine, including $U, X$, and the scheme over $X$.
However, it's enough to reduce to the case of affine schemes over $X$, and $U, X$ are not necessarily affine.
:::

**Step 2**:
If $Y,Z$ are schemes over $X$, we want to show the following is an equalizer diagram:
\begin{tikzcd}
\hom_X(Y, Z) \ar[r] &
\hom_U(p^* Y, p^* Z) \ar[r, shift right=0.75ex] \ar[r, shift left=0.75ex] &
\hom_{U\cross_X U}(\pi^* p^* Y, \pi^* p^* Z)
\end{tikzcd}
Here we've suppressed the indices on the $\pi_i$ since their images are canonically identified.
Injectivity is obvious, using that $U$ is surjective, two different morphisms of schemes pulled back along a faithfully flat morphisms are distinct, although we'll prove this.
The real content is that any morphism on $U$ that maps to the same thing on $U\cross_X U$ comes from $X$, so we can descend morphisms and the morphisms form a sheaf (which is what we're trying to prove).

We'll deduce this from what we proved about quasicoherent sheaves.
By the first reduction, we can assume $Y = \underline{\spec}_X \OO_Y$ is a relative spec, as is $Z = \underline{\spec}_X \OO_Z$ where the $\OO$ here are quasicoherent sheaves of algebras.
These are obtained by taking the pushforward of the structure sheaf along $Y\to X, Z\to X$.
Rewriting the diagram, the homs are now in the category of quasicoherent algebras and we have
\begin{tikzcd}
 \hom(\OO_Z, \OO_Y)\ar[r] &
 \hom(p^* \OO_Z, p^* \OO_Y) \ar[r, shift right=0.75ex] \ar[r, shift left=0.75ex] &
 \cdots
\end{tikzcd}
where we want this to be an equalizer.
This is true because the first map is injective even when ignoring the algebra structure, just looking at a map of quasicoherent sheaves, we know this is injective.
If we have an element in the middle that is a morphism of algebras mapping to the same thing, it comes from a quasicoherent sheaf in the first slot.
That this is also a map of quasicoherent algebras follows from the fact that descent is functorial.
A map of algebras is commuting with a bunch of maps of quasicoherent sheaves, which we know is true on the RHS and is thus true on the LHS since pullback yields an equivalence of categories.

### Consequences

:::{.corollary title="?"}
If $Z \in \Sch/X$, the $\hom(\wait, Z)$ is a sheaf on $X_{\fppf}, X_{\et}, X_{\Et}$, etc.
:::

:::{.remark}
$p^*$ is not essentially surjective in general for schemes.
Descent data for schemes relative to an étale cover $U/X$ is called an **algebraic space**.
Note that some definitions may also required separatedness.
When pullback does yield an equivalence of categories, this is referred to as **effective descent**.

It *is* essentially surjective for affine schemes and polarized schemes: if you have descent data for a scheme on $U/X$ with an ample line bundle (which also has descent data) then you can descend the scheme.
Thus projective varieties can be descended, provided you also descend them with an ample line bundle.
Replacing $\spec$ with $\proj$ is one way to show this.
:::

:::{.example title="of sheaves"}
\envlist

- $\GG_m: U \to \OO_U(U)\units$
- $\mu_\ell: U\to \ts{f\in \OO_U(U) \st f^\ell = 1}$.
- $\underline{\zlz}: U\to \hom_{\Top}(U, \zlz)$ sending $U$ to continuous maps from $U$ to the constant scheme $\zlz$, i.e. the $\ell\dash$points.
- $\Hilb^{p(t)}(\PP^n)$ Hilbert schemes of projective space.
  We know this is a scheme, so the functor it represents is a sheaf.
- $\PP^n$, which represents a line bundle with a surjective map from the trivial bundle of rank $n+1$
:::

:::{.exercise title="?"}
Work out Galois descent from this point of view.
:::

## Étale Cohomology

What missing ingredients do we need to define cohomology for these abelian sheaves?

1. We want to show that the category of abelian sheaves on $X_{\et}$ is abelian.
2. We need enough injectives.

:::{.remark}
Both of these facts are true for the category of abelian sheaves on *any* site, i.e. any category with a Grothendieck topology.
:::

The proof of (2) will be relatively easy, but the crucial ingredient for (1) will be the following:

:::{.theorem title="?"}
Let $\tau$ be a site.
Then the forgetful functor $\Sh(\tau) \to \Presh(\tau)$ has a left adjoint which we'll call **sheafification**.
:::

We'll just prove this for $\tau = X_{\et}$.
The general theorem is much longer!

### Preliminaries

Some operations we can do with sheaves:

#### Pushforward and pullback

Suppose $f:\tau_1 \to \tau_2$ to be a continuous morphism of sites, i.e. a functor $f^{-1} : \tau_2 \to \tau_1$ which preserves fiber products (preserving intersections and covering families).

:::{.definition title="Pushforwards"}
Given $\mathcal{G}\in \Sh(\tau_1)$, define $f_* \mathcal{G}\in \Sh(\tau_2)$ by
\[  
\qty{f_* \mathcal{G}}(U) \da \mathcal{G}( f^{-1}(U))
.\]
:::
Note that this is the usual formula for pushforwards.

:::{.exercise title="Important, must do"}
Show that $f_* \mathcal{G}$ is a sheaf.
:::

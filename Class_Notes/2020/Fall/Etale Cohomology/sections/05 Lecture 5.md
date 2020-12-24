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

**Step 1**: 
Reduce to the case where $U\to X$ is affine.

:::{.exercise title="?"}
Do step 1!

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
For $\mathcal{F}\in \qcoh(X)$, we defined $\mathcal{F}^{\et} \in \presh(X_{\et})$ where $\mathcal{F}^{\et}(U\mapsvia \pi X) \da \pi^* \mathcal{F}(U)$ is a sheaf on $X_{\et}$ and $X_{\fppf}$.
:::

:::{.proof title="?"}
We want to show that if $U\to V$ is an étale cover, we want 
\begin{tikzcd}
\mathcal{F}(V) \ar[r] &
\mathcal{F}(U) \ar[r, shift right=0.75ex] \ar[r, shift left-0.75ex] &
\mathcal{F}(U\cross_V U) 
\end{tikzcd}
to be an equalizer diagram -- but this is exactly the previous diagram where $\mathcal{F}\da \OO$ and $\mathcal{F}_2 \da \mathcal{F}$.
:::

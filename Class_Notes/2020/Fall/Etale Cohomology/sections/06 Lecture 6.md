# Lecture 6: Filling in Gaps, Étale Cohomology

:::{.remark title="A technical point"}
Last time a theorem was stated that pullback induced an equivalence of categories $\Qcoh(X_{\zar}) \mapsvia{\sim} \QCoh(X_{\et}) \mapsvia{\sim} \QCoh(X)(X_{\fppf})$; note that these are the little sites.
What about the big sites?
There are similar equivalences between the three corresponding big sites, but in general, $\Qcoh(X_{\Zar}) \neq \QCoh(X_{\zar})$.

For example, a quasicoherent sheaf on the big Zariski site is a quasicoherent sheaf on every $X\dash$scheme and morphisms between various pullbacks.
This isn't as affected by what sheaf you have on $X$ itself.
:::

:::{.remark}
Étale descent data for schemes is not quite the same as an algebraic space: it yields an algebraic space, but the data is not literally the same.
:::

## Gaps

:::{.claim}
The category of abelian sheaves on the $X_{\et}$ is an abelian category with enough injectives.
:::

With this in hand, we can use the formalism of derived functors to define étale cohomology:

:::{.definition title="Étale Cohomology"}
\[  
H^i(X_\et, \zlz) \da R^i \Gamma(X_\et, \underline{ \zlz} )
.\]
:::
The crucial ingredient (mentioned last time) is the following:

:::{.theorem title="Sheafification for Sites"}
For $\tau$ a site, the forgetful functor $\Sh(\tau) \to \presh(\tau)$ has a left adjoint (**sheafification**).
:::

We'll prove this for the étale site, just Google "sheafification for sites" to find more general proofs.
Note that this is actually the inclusion of a full subcategory.
Before the proof, we'll need a few operations in order to imitate the usual proof that sheafification exists for usual sheaves.
This is done by constructing the *espace étalé* out of the stalks and define the sheafification to be sections.
The operations we'll need are:

1. Pushforwards.
  For $f: \tau_1 \to \tau_2$ a continuous map of sites, this was a reversed functor preserving fibers products and covering families.
  For $\mathcal{G}\in \Sh(\tau_1)$ we constructed $f_* \mathcal{G}$, and the exercise was to show that this is a sheaf.

:::{.example title="?"}
Let $f:X\to Y$ be a map of schemes, this induces a map $f: X_\et \to Y_\et$ where each $U/Y$ comes from $U\cross_Y X$ over $X$.
:::

:::{.example title="?"}
Suppose $k=\bar k$ is a field and we have $\iota_{\bar X}:\spec k\to X$.
We have $\Sh\qty{\qty{\spec k}_{\et}} = \Set$, since an étale cover of $\spec k$ is a disjoint union of copies of itself.
If you show what the value of a sheaf on $\spec k$, you know it on any disjoint union of them since there are a lot of sections.
Moreover, any disjoint union of copies of $\spec k$ can be covered by copies $\spec k$ itself by definition.


:::{.exercise title="?"}
Show this!
:::

What is the pushforward?
MM
\qty{\iota_{\bar X}}_* \mathcal{F}
:::




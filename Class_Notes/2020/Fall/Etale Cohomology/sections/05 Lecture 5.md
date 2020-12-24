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
n \ar[r] & n\tensor 1
\end{tikzcd}

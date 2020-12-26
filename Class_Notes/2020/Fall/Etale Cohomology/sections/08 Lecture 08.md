# Lecture 08: Computing Étale Cohomology

Recall the definition of $\check{C}(U/X, \mathcal{F})$ and $\check{C}(X_\et, \mathcal{F})$ (\cref{def:cech_cohomology}).


:::{.warnings}
$\Hc{X_\et, \mathcal{F}} \not\cong H(X_\et, \mathcal{F})$ in general, but by a theorem of Milne this is true if $X$ is quasicompact any finite subset is contained in an affine open.
This is true if $X$ is quasiprojective.
:::

:::{.remark}
There is a version for which this does always work where Čech covers are replaced with **hpyercovers**.
:::

## Čech to Derived Spectral Sequence

Since we have enough injectives, take an injective resolution $\mathcal{F}\to \mathcal{I}^0 \to \cdots$ which is exact and each $\mathcal{I}^j$ is injective.
We can apply the Čech complex functor to obtain a double complex 
\[
\Cc^\wait(U/X, \mathcal{I}^0) \to \Cc^\wait(U/X, \mathcal{I}^1) \to \cdots
,\]
where the horizontal differentials come from the resolution and the vertical come from the Čech complex.
To any double complex, one can associate two spectral sequences.
First consider taking horizontal cohomology:

\begin{tikzcd}
\vdots 
  & \vdots 
  & \udots 
  \\
\Cc(U/X, \mathcal{I}^1) 
  = \mathcal{I}^0(U\cross_X U) 
    \ar[r]\ar[u]
  & \mathcal{I}^1(U\cross_X U)
    \ar[r]\ar[u]
  & \cdots 
  \\
\Cc(U/X, \mathcal{I}^0) 
  = \mathcal{I}^0(U)
    \ar[r]\ar[u]
  & \mathcal{I}^1(U)
    \ar[r]\ar[u]
  & \cdots
\end{tikzcd}

Taking the vertical cohomology yields
\[  
E_2^{i, j} = \Hc^i(U, \mathcal{H}^j(\mathcal{F}))
,\]
where $\mathcal{H}^j$ is the presheaf $V\mapsto H_\et^j(V, \mathcal{F})$.

Now we take cohomology in the other order: taking the vertical cohomology collapses to the bottom row, which are global sections, and so

\[  
E_2^{i, j} = H^i(\Gamma(X, \mathcal{I}))  E_{\infty}
,\]
which is the derived functor cohomology.
The spectral sequence thus converges in the following way:
\[  
\Hc^i(U, \mathcal{H}^j(\mathcal{F})) \abuts H^{i+j}(X_\et, \mathcal{F})
.\]

:::{.exercise title="Good for getting used to spectral sequences"}
Show that if $\Cc(X_\et, \wait)$ is exact on $\Sh^{\ab}(X_\et)$, then $\Hc^\wait \cong H^\wait$.
See Tohoku or Hartshorne, and prove this using the Čech to derived functor spectral sequence.
:::

## Mayer-Vietoris

:::{.proposition title="?"}
Let $U = U_0 \union U_1$ with each $U_i$ a Zariski open subset.
Then there exists a functorial LES
\[  
\cdots \to
H^s(U, \mathcal{F}) \mapsvia{\res} 
H^s(U_0, \mathcal{F}) \oplus H^s(U_1, \mathcal{F}) \mapsvia{\res} 
H^s(U_0 \intersect U_1, \mathcal{F}) \mapsvia{\delta}
H^{s+1}(U, \mathcal{F}) \to 
\cdots
.\]
:::

:::{.proof title="?"}
Apply the Čech to derived spectral sequence to the cover $\mathcal{U} \da U_0 \disjoint U_1 \to U$.
This says take
\[  
\mathcal{F}(\mathcal{U}) \to 
\mathcal{F}((\mathcal{U})^{\cross_U 2} ) \to
\mathcal{F}((\mathcal{U})^{\cross_U 3} ) \to
\cdots
.\]
None of these objects are empty, which doesn't happen with the usual Čech complex of an open cover, where the alternating complex is taken which doesn't see all of these.

:::{.claim}
This complex is quasi-isomorphic to the 2-term complex
\[  
\mathcal{F}(U_0 \disjoint U_1) = \mathcal{F}(U_0) \cross \mathcal{F}(U_1) \to
\mathcal{F}(U_0 \intersect U_1)
.\]
:::

:::{.exercise title="?"}
Prove this.
This uses the fact that we have a Zariski cover instead of a general étale cover, since it's not true in general: a counterexample is $\GG_m \to \GG_m$ where $x\mapsto x^2$. 
The double intersection won't make sense, since it won't be connected and there's not a distinguished component.
:::

Given this, $E_2$ vanishes outside of 2 columns, and considering computing $H^1$ we have the following situation:

\begin{sseqdata}[ name = "2col", xscale=0.6, homological Serre grading, y range = {0}{2}, differentials = blue]
\class(0, 0)
\class(0, 1)
\class(0, 2)
\class(0, 3)
\class(1, 0)
\class(2, 0)
\class(2, 1)
\class(2, 2)
\class(2, 3)
\structline(0,0)(0, 3)
\structline(2,0)(2, 3)
\d2(2, 0)
\d2(2, 1)
\d2(2, 2)
\classoptions[red](1,0,1)
\classoptions[red](0,1,1)
\end{sseqdata}
\begin{center}
\printpage[ name = "2col", page = 2]
\end{center}

This is a general phenomenon: a spectral sequence collapsing onto two columns is the same data as a long exact sequence.

:::{.exercise title="?"}
Check this.
:::

:::


:::{.theorem title="?"}
Suppose $X$ is a scheme and $\mathcal{F}\in \Qcoh(X)$ (for example, $\mathcal{F} \da \OO_X$).
Then there is a canonical isomorphism
\[  
H^i(X, \mathcal{F}) \mapsvia{\sim} H^i(X_\et, \mathcal{F}^{\et}) \mapsvia{\sim} H^i(X_{\fppf}, \mathcal{F}^{\fppf})
,\]
The first term is the usual Zariski cohomology of a quasicoherent sheaf, the second is the étale cohomology where $\mathcal{F}^{\et}$ is the associated sheaf on the étale site given by pulling back to an étale morphism, and the third is the same on fppf site, since the categories $\QCoh$ are canonically isomorphic.
:::

:::{.remark}
The derived functor cohomology 
\[
H^i(\Sh(X_{\zar}), \mathcal{F}) = \Ext^i_{\Sh(X_\zar)}(\ul{\ZZ}, \mathcal{F})
\]
since it only depends on the category of sheaves.
This is because we're taking the derived functors of $\Gamma$, which is the same as $\Hom(\ul{\ZZ}, \wait)$.
This is also equal to 
\[
H^i(\Qcoh(X), \mathcal{F}) \da \Ext^i_{\Qcoh(X)}(\OO_X, \mathcal{F})
\]
for the same reason, since it's true for any sheaf of $\OO_X$ modules.
This isomorphism is not just formal, since $\Qcoh$ is much smaller than $\Sh$.
The reason is that injective quasicoherent sheaves are flasque (?), so it also computes derived functor cohomology.
In general, it's much harder to be an injective object in the $\Sh$ than it is in $\Qcoh$, since it has to satisfy a lifting property with respect to more maps.

The main takeaway: we already showed $\Qcoh(X_\et) \cong \Qcoh(X_\zar)$, but now we have this isomorphism in a much larger category.
:::




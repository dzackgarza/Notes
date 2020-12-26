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
:::

Given thus, $E_2$ vanishes outside the first 2 columns.

\begin{tikzcd}

\end{tikzcd}
:::




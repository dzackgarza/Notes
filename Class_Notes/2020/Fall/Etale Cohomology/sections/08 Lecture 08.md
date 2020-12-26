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



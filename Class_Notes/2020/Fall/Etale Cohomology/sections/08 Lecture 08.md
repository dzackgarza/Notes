# Lecture 08: Computing Étale Cohomology

Recall the definition of $\check{C}(U/X, \mathcal{F})$ and $\check{C}(X_\et, \mathcal{F})$ (\cref{def:cech_cohomology}).


:::{.warnings}
In general,
\[
\Hc{X_\et, \mathcal{F}} \not\cong H(X_\et, \mathcal{F})
,\]
but by a theorem of Milne this is true if $X$ is quasicompact and any finite subset is contained in an affine open.
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

## Étale Cohomology Equals Zariski Cohomology for Quasicoherent Sheaves


:::{.theorem title="Étale Cohomology for Quasicoherent Sheaves Equals Zariski Cohomology" ref="thm:et_qcs_zar"}
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
H^i(\Sh(X_{\zar}), \mathcal{F}) \da \Ext^i_{\Sh(X_\zar)}(\ul{\ZZ}, \mathcal{F})
\]
since it only depends on the category of sheaves.
This is because we're taking the derived functors of $\Gamma$, which is the same as $\Hom(\ul{\ZZ}, \wait)$.
This is equal to 
\[
H^i(\Qcoh(X), \mathcal{F}) \da \Ext^i_{\Qcoh(X)}(\OO_X, \mathcal{F})
\]
for the same reason, since it's true for any sheaf of $\OO_X$ modules.
This isomorphism is not just formal, since $\Qcoh$ is much smaller than $\Sh$.
The reason is that injective quasicoherent sheaves are flasque (?), so it also computes derived functor cohomology.
In general, it's much harder to be an injective object in the $\Sh$ than it is in $\Qcoh$, since it has to satisfy a lifting property with respect to more maps.

**Upshot**: we already showed $\Qcoh(X_\et) \cong \Qcoh(X_\zar)$, but now we have this isomorphism in a much larger category.
:::

### Proof

:::{.proof title="?"}
We'll prove this in a special case: if $X$ is quasicompact and separated, Čech cohomology computes derived functor cohomology.

:::{.claim title="1"}
Every cover can be refined to a *finite* cover by affines, using quasicompactness.
:::

:::{.claim title="2"}
Supposing $X$ is affine and $U\to X$ is an fppf affine cover, then $\Cc{U/X, \mathcal{F}}$ is exact if $\mathcal{F} = \hat M$ is the quasicoherent sheaf associated to some module $M$.
:::

:::{.proof title="of claim 2"}
Let $U=\spec B, X = \spec A$, and $M\in \mods{A}$.

Then we get the complex
\[  
M\to
M\tensor_A B \to 
M\tensor_A B^{\tensor_A 2} \to 
M\tensor_A B^{\tensor_A 4} \to 
\cdots
,\]
which is the *Amitsur complex*.
We showed that $M$ was the kernel of the first map, and we argued that since $B$ was an fppf $A\dash$algebra, we can check this after tensoring with $B$, in which case we had a section which yielded a nullhomotopy.
This complex is exact as in the argument used in the proof of descent.
:::

By this claim, we know that
\[  
\Hc^{i}(U/X, \mathcal{F}) = 
\begin{cases}
\mathcal{F}(X) & i = 0 \\
0              & i>0.
\end{cases}
\]
for $\mathcal{F}$ quasicoherent and $U, X$ affine.

:::{.claim title="3"}
When $\mathcal{F}$ is quasicoherent and $X$ affine,
\[  
\Hc^i(X_\et, \mathcal{F}) = 
\begin{cases}
\mathcal{F}(X) & i = 0 \\
0              & i>0
\end{cases}
.\]
:::

:::{.proof title="?"}
Affine covers are cofinal in the diagram of covers.
We're taking a direct limit and every time we have something nonzero, we kill it by refining the cover.
:::

We'll now prove this when $X$ is separated and quasicompact.
Take an affine cover $\mathcal{U}\to X$, e.g. the Zariski open cover, and use the Čech-to-derived spectral sequence.
Separatedness is used since we'll see things like 5-fold intersections, and we need to know that the cohomology of this is zero, which will be true by the previous result.

:::{.exercise title="?"}
Check this.
:::

:::

:::{.remark}

This holds in more generality, but we won't need schemes that don't satisfy this property in this course.
:::


:::{.example title="?"}
Let $X = \PP^n$ and $\mathcal{F} = \OO_X$, then
\[  
H^i(\PP^n_\et, \OO_X^{\et}) = 
\begin{cases}
k & i= 0 \\
0 & i>0
\end{cases}
.\]
:::

## The Artin-Schreier Exact Sequence

:::{.example title="?"}
Let $X/\FF_p$ be a quasiprojective variety.
What is the following cohomology?
\[  
H^i(X_\et, \ul{\FF_p})  = \, ?
.\]

In general, the strategy will be to use long exact sequences stemming from spaces where the cohomology is known.
We only know how to compute with quasicoherent sheaves, so we need to put $\ul{\FF_p}$ in a SES.
We can use the Frobenius: let $\GG_a = \hom(\wait, \AA^1)$, so $\GG_a(U) = \OO_U(U)$.
Then $\FF_p$ are the fixed points of Frobenius, so we get a SES of schemes by carving out these points
\[  
0 \to
\ul{\FF_p} \to
\GG_a \mapsvia{x^p - x}
\GG_a \to 
0
.\]
This can be thought of as the sheaf $\OO \to \OO, f \mapsto f^p -f$, but you can also think of it in terms of representing objects $\AA^1$.

:::{.claim}
This sequence is exact.
:::

:::{.proof title="?"}
This is the *Artin-Schreier* exact sequence.
This is true at the level of representing objects, or it can be checked by hand by showing that $f^p - f = 0 \implies f$ is constant.

For surjectivity, given $f\in \OO_U(U) = \GG_a(U)$, we need to solve $x^p - x = f$ étale-locally on $U$.
This naturally has a solution after base-changing:
\begin{tikzcd}
\GG_a \cross_{\GG_a} U 
  \ar[r]\ar[d, "\exists g"] &
\GG_a
  \ar[d]
\\
U 
  \ar[r, "f"] &
\GG_a
\\
\end{tikzcd}
The claim is that $g$ is an étale cover.
This follows because $x^p-x$ is an étale cover, since the derivative is invertible, and thus $g$ is a base change of an étale cover.
:::

We then get a LES
\begin{tikzcd}
0 
  \ar[r] \ar[d, equal]
& H^0(X_\et, \FF_p)
  \ar[r] \ar[d, equal]
& H^0(X_\et, \GG_a)
  \ar[r, "x^p-x"]\ar[d, equal]
& H^0(X_\et, \GG_a)
	\ar[d, equal]\ar[r, "\delta"]
& H^1(X_\et, \FF_p)
  \ar[r]\ar[d, equal]
& \cdots
\\
0 
  \ar[r] 
& H^0(X_\et, \FF_p)
  \ar[r] 
& H^0(X_\et, \OO_X)
  \ar[r, "x^p-x"]
& H^0(X_\et, \OO_X)
  \ar[r, "\delta"]
& H^1(X_\et, \FF_p)
  \ar[r]
& \cdots
\end{tikzcd}

For $X = \AA^1 = \spec \FF_p[t]$, we get

\begin{tikzcd}
0 
  \ar[r] \ar[d, equal]
& H^0(\AA^1_\et, \FF_p)
  \ar[r] \ar[d, equal]
& \FF_p[t] 
  \ar[r, "t^p-t"]\ar[d, equal]
& \FF_p[t] 
	\ar[d, equal]\ar[r, "\delta"]
& H^1(\AA^1_\et, \FF_p)
  \ar[r]\ar[d, equal]
& 0
  \ar[d, equal]
\\
0
  \ar[r]
& \FF_p
  \ar[r]
& \FF_p[t]
  \ar[r]
& \FF_p[t]
  \ar[r]
& \cok(t^p - t) 
  \ar[r]
& 0
\end{tikzcd}
In general, this cokernel is very large.
This is why étale cohomology with $\FF_p$ coefficients is not particularly well-behaved, although taking a projective variety would yield finite dimensional objects here, but not of the expected dimensions.
:::



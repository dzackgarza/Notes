# Prologue {-}

## References 

- Gathmann's Algebraic Geometry notes[@AndreasGathmann515].

## Notation

\[  
V(I) && \text{The variety associated to an ideal } I \normal \kx{n}
.\]

\todo[inline]{Lots of notation to fill in.}

\newpage


## Useful Algebra Facts

:::{.proposition}
A polynomial ring $\kx{n}$ on finitely many generators is Noetherian.
In particular, every ideal $I\normal \kx{n}$ has a finite set of generators and can be written as $I = \gens{f_1, \cdots, f_m}$.
:::

:::{.proof title="?"}
By Hilbert's basis theorem, every polynomial ring over a Noetherian ring is again Noetherian.
A field $k$ is both Artinian and Noetherian, since it has only two ideals and thus any chain of ideals necessarily terminates.
:::

:::{.proposition title="Properties and Definitions of Ideal Operations"}
\[  
I+J   &\da \ts{f+g \st f\in I,\, g\in J} \\
IJ    &\da \ts{\sum_{i=1}^N f_i g_i \st f_i\in I,\, g_i\in J, N\in \NN} \\
I+J   = \gens{1} 
      &\implies I\intersect J = IJ && \text{(coprime or comaximal)}
.\]
:::

:::{.fact}
If $I = \gens{a}$ and $J = \gens{b}$, then $I + J = \gens{a} + \gens{b} = \gens{a, b}$.
:::

:::{.fact}
Prime ideals are radical.

:::




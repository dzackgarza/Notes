# Lecture 09

Goal: how to compute étale cohomology using Čech cohomology, as opposed to the derived functor definition.

Recall the definition of the Čech complex, noting that the limit defining $\cC(X_\et, \mathcal{F})$ can be taken over a covering family instead in a modified definition.

:::{.warnings}
$\cH^i(X_\et, \mathcal{F})\not\cong H(X_\et, \mathcal{F})$ in general, where the RHS is the derived functor cohomology. 
Recall that by a theorem of Milne, there will be a canonical isomorphisms when

- $X$ is quasicompact,

- Any finite subset of $X$ is contained in an affine.

Note that this is true if $X$ is quasiprojective.
How do you check this? 
Slice by a hyperplane that misses all of your points -- unless you're over a finite field, in which case you may not have enough hyperplanes!
This will still be true for quasiprojective varieties over a finite field, however.
:::

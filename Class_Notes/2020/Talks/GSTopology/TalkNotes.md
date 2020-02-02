Convention: 
All manifolds discussed will be smooth, real, Hausdorff, second-countable, connected, not necessarily closed/compact, possibly with boundary.

Goal #1:
Understand foliations and their relation to contact structures.

Recall the geometric definition of the tangent bundle $TM = \disjoint_{p\in M} T_pM$, which fits into the vector bundle $\RR^n \to TM \to M$ so $T_p M \cong \RR^n$.
Recall that $T_p M = \spanof_\RR\theset{\partial x_i}$

Since $T_p M$ is a vector space, we can consider its dual $T_p\dual M$, and similarly the cotangent bundle $\RR^n \to T\dual M \to M$.
Recall that $T_p\dual M = \spanof_\RR\theset{dx_i}$.

Recall that a section of $TM$ is a vector field, and a section of $T\dual M$ is a 1-form.
More generally, differential $k\dash$forms are given by elements of $\Omega^k(M) \definedas \Gamma(\Lambda^k T\dual M)$, i.e. sections of exterior powers of the cotangent bundle.

Definition:
A *hyperplane* field $\xi$ is a codimension 1 sub-bundle $\RR^{n-1} \to \xi \to M$ of the tangent bundle $\RR^n \to TM \to M$.

Loose Example:
Let $M = \RR^3$ so $TM \cong \RR^3$. 
Write $TM = \spanof_\RR\theset{\partial x_1, \partial x_2, \partial x_3}$ and $T\dual M = \spanof_\RR\theset{dx_1, dx_2, dx_3}$ locally and define $\xi$ by the condition $dx_3 = 0$.

> Note: want to show that this lifts to a differential 1-form on $M$, but how can it be written?


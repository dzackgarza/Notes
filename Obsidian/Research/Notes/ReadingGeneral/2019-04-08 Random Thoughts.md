# AG/NT Stuff
There seems to be some interest from topologists and geometers around the **Novikov conjecture**. On the analytic side, **Sarnak's conjecture** seems to have some buzz as well, as does the **Artin conjecture**.

Surface bundles and monodromy representations sound interesting.

I should really get a better grip on etale cohomology and the etale fundamental group.

I should review conference notes and get a list going on the common structures and spaces that are popping up. $K3$ surfaces, Kahler manifolds, toric varieties, Calibi-Yau manifolds, etc.

Review the deRham-Witt complex and crystalline cohomology, get at least a surface-level understanding of $L$ functions.

# Topology Stuff
Defining THH:

- Take $A \in \mathcal C$, where $\mathcal C$ is a "nice" monoidal category, and $A$ is an algebra object in it. We'll call the monoidal operation $\tensor$.
- We'll make a simplicial object $THH_\wait(A)$:
  - $THH_n(A) = A^{\tensor n+1}$. If it's to be simplicial, need to specify the face/degeneracy maps:
  - Face maps: collapse by cyclic multiplication
  - Degeneracy maps: use the unit of $A$, can replace any tensor symbol with it. Have a unit map that goes from the unit to $A$, so somehow this gets you "up" one level (?)
- Now take its geometric realization $\abs{THH_\wait(A)}$
  - In general, take $\mathrm{hocolim}_\Delta THH_\wait(A)$

Look at the HKR theorem again, identifies $HH$ with derivations.

When proving stuff about algebras -- try with polynomial algebras first, essentially the simplest case.

Simplest coalgebra case: divided power algebras (also a Hopf algebra)

The "dual" of geometric realization is totalization.

Look at Bousfield-Kan spectral sequence

# Random Reading
A Fredholm operator $D$ on a Banach space is one such that the index $\dim\ker D - \dim\coker D$ makes sense.
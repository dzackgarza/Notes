There seems to be some interest from topologists and geometers around the **Novikov conjecture**. On the analytic side, **Sarnak's conjecture** seems to have some buzz as well.

Surface bundles and monodromy representations sound interesting.

I should really get a better grip on etale cohomology and the etale fundamental group.

Defining THH:

- Take $A \in \mathcal C$, where $\mathcal C$ is a "nice" monoidal category, and $A$ is an algebra object in it. We'll call the monoidal operation $\tensor$.
- We'll make a simplicial object $THH_\wait(A)$:
  - $THH_n(A) = A^{\tensor n+1}$. If it's to be simplicial, need to specify the face/degeneracy maps:
  - Face map: collapse by cyclic multiplication
  - Degeneracy maps: use the unit of $A$, can replace any tensor symbol with it. Have a unit map that goes from the unit to $A$, so somehow this gets you "up" one level (?)
- Now take its geometric realization
  - In general, take $\mathrm{hocolim}_\Delta$
Proposition: Every $R\dash$ module as a project resolution.

Proof: Let $A$ be an $R\dash$ module; it suffices to show that $A$ has a free resolution since free $\implies$ projective in $\textbf{R-Mod}$.

We know that $A \cong F_0/K_0$ for some free module $F_0$ and $K_0$ the kernel of some surjective map $F_0 \surjects A$. We thus obtain an exact sequence
$$
0 \to K_0 \to F_0 \to A \to 0
$$

Similarly, $K_0$ is also free, and is thus $K_0 \cong F_1 / K_1$ for some free module $F_1$ and $K_1$ the kernel of $F_1 \surjects K_1$, yielding another exact sequence
$$
0 \to K_1 \to F_1 \to K_0 \to 0
$$

We can then splice at $K_0$ to obtain a new exact sequence
$$
0 \to K_1 \to F_1 \to F_0 \to A \to 0
$$

One can check that this is exact at $F_1$ and $F_0$.

This procedure can be continued inductively, yielding the desired free resolution.

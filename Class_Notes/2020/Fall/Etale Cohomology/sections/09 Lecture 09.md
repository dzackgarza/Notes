# Lecture 09

Last time:

- The Čech-to-derived spectral sequence,
- The Mayer Vietoris LES,
  - Computes the étale cohomology of a scheme using a Zariski open cover.
- Étale cohomology of quasicoherent sheaves,
  - Agrees with Zariski cohomology, first legitimate computation!
  - Use this to compute:
- Étale cohomology of $\ul{\FF_p}$ in characteristic $p$.

Last time we had a scheme $X_{/\FF_p}$ and the *Artin-Schreier* exact sequence of sheaves of $X_\et$:
\[  
0\to \ul{\FF_p} \to \OO_X^\et \mapsvia{t\mapsto t^p - t} \OO_X^\et \to 0
.\]
The map appearing here is referred to as the *Artin-Schreier* map $f$
This works over arbitrary fields of characteristic $p$, with a modified definition replacing $t^p$.

:::{.exercise title="?"}
Check that this is an additive homomorphism of abelian sheaves.
This follows from the fact that Frobenius itself is.
:::

Recall that we had a theorem last time showing that the étale cohomology of quasicoherent sheaves is equivalent to the usual Zariski cohomology.
From this we got a long exact sequence:

\begin{tikzcd}
  H^i(X_\et, \ul{\FF_p})
    \ar[r]
& H^i(X, \OO_X)
    \ar[r, "f"]
& H^i(X, \OO_X)
\\
& \cdots
    \ar[r]
& H^{i-1}(X, \OO_X) 
    \ar[ull, "\delta"]
\end{tikzcd}

We don't know how to compute $H^i(X_\et, \FF_p)$ generally, but the affine case is easy.
For $X$ affine, $H^{>0}(X, \OO_X) = 0$, which in facts holds for any quasicoherent sheave replacing $\OO_X$, and $H^0(X, \FF_p) = \qty{\FF_p}^{\abs {\pi_0 X} }$ where the exponent is the number of connected components of $X$.
So we get an exact sequence

\begin{tikzcd}
& \cdots
    \ar[r]
& H^{i-1}(X, \OO_X) 
\\
  H^0(X, \FF_p) = \qty{\FF_p}^{\abs {\pi_0 X} } 
    \ar[r]
& \OO_X(X) 
    \ar[r, "f"]
& \OO_X(X) 
\\
&
& 0
    \ar[ull]
\end{tikzcd}





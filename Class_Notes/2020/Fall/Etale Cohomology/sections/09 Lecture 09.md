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

:::{.remark}
From here onward, $H^i$ will denote $H^i_\et$.
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
H^{1}(X, \OO_X) 
    \ar[r]
& 0
& 
\\
  H^0(X, \FF_p) = \qty{\FF_p}^{\abs {\pi_0 X} } 
    \ar[r]
& \OO_X(X) 
    \ar[r, "f"']
& \OO_X(X) 
    \ar[ull]
\\
&
& 0
    \ar[ull]
\end{tikzcd}

:::{.remark}
$H^1(X, \OO_X)$ is not finitely generated in general, e.g. take $X \da \AA^1$, then $\cok(t\mapsto t^p - t)$ as a map $k[t] \to k[t]$ is generally finite dimensional as a $k\dash$vector space.
So in characteristic $p$, cohomology with $\FF_p$ coefficients is ill-behaved: a nice cohomology theory would assign to every scheme a complex of finite dimensional vector spaces.
:::

:::{.remark}
An aside: $\GG_a$ is the representing object for $\OO_X^\et$.
:::

:::{.remark}
If $X$ is proper, $H^i(X_\et, \FF_p)$ is finite dimensional.
Why?
It follows from the exact sequence: by proper pushforward for coherent cohomology, the terms we're interested in are sandwiched between finite dimensional objects.
:::

:::{.example title="?"}
However, these groups still won't have the expected dimension.
For $X \da E_{/k}$ where $k=\bar k, \ch(k) = p$, we have
\[  
H^1(E, \FF_p) = 
\begin{cases}
\FF_p & \text{if $E$ is ordinary} \\
0 & \text{if $E$ is supersingular}.
\end{cases}
\]
This follows from the LES, since supersingularity is in terms of how Frobenius acts on the groups appearing.
This is not what you'd expect: $E$ is a torus, so you'd expect $\dim H^1 = 2$.
:::

:::{.remark}
So this cohomology don't form a "good" cohomology theory in the sense that they won't prove the Weil conjectures or behave like the usual cohomology in characteristic zero, but can still be interesting and useful.
This data is closely related to e.g. crystalline cohomology.
:::

:::{.example title="?"}
We'll try to compute $H(\qty{\spec k}_\et, \mathcal{F})$, the cohomology of the étale site of a field, using Čech cohomology.
We had an equivalence of categories
\[  
\Sh^\Ab(\spec k)_\et \mapbackforth^{\iota} \ts{\text{Discrete $G\dash$modules}}
,\]
where $G = \Gal(\bar k / k)$ is the absolute Galois group of $k$.
What were the functors?
Given a sheaf, you want to evaluate it on $k^s$ (the separable closure), but this doesn't make sense since it's not an object on the étale site due to not being finitely presented.
So you choose a separable closure, look at all intermediate extensions, and take the direct limit of evaluating the sheaf on those extensions.
Going the other way, you can say what the value of a discrete $G\dash$module is on a finite extension $L/k$ by taking its Galois fixed points: the fixed points of $\Gal(\bar L/L)$.
:::





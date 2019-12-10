---
title: Proof of Leray-Hirsch Theorem
---

# Preliminaries

Definition: Fibre Bundle

Definition: Homology

Definition: Cup Product

Let $R$ be an arbitrary ring, and let $h$ denote the contravariant functor
$$
h(\wait; R): \mathbf{Top} &\to\mathbf{Ring} \\
X &\mapsto H_{\text{sing}}^*(X; R) \\
(X \mapsvia{f} Y) &\mapsto (H^*(Y; R) \mapsvia{f^*} H^*(X; R))
$$

which corresponds to taking singular cohomology.


# Statement of the Theorem

Let

```{=latex}
\begin{center}
\begin{tikzcd}
F \arrow[rr, "i", hook] &  & E \arrow[dd, "p", two heads] \\
                        &  &                              \\
                        &  & B                           
\end{tikzcd}
\end{center}
```

be a fibre bundle. Taking cohomology induces maps

```{=latex}
\begin{center}
\begin{tikzcd}
h(F; R) &  & h(E; R) \arrow[ll, "i^*"'] \\
        &  &                            \\
        &  & h(B; R) \arrow[uu, "p^*"']
\end{tikzcd}
\end{center}
```

If we then define the following group action

\begin{align*}
h(B; R) &\actson h(E; R) \\
b \actson e &\definedas p^*(b) \smile e
.\end{align*}


1. Both $h(E; R)$ and $h(F; R) \tensor h(B; R)$ are modules over the ring $h(B; R)$, and
2. In the category of $h(B; R)\dash$modules, the map
$$
\varphi: h(F; R) \otimes h(B; R) &\to \quad h(E; R) \\ 
\alpha \otimes \beta &\mapsto s(\alpha) \smile \pi^{*}(\beta) 
$$

> Note: this map is not an isomorphism in the category of rings.

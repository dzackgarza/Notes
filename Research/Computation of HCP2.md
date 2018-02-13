# Computation of $H^*(\CP^2)$

## Theorem

Suppose $F \to E \to B $ is a fibration satisfying (conditions).

Then there exists a spectral sequence $E_*$ such that

1. $E_2^{p,q} = H^p(B, H^q(F;\ZZ)) = H^p(B;\ZZ) \tensor H^q(F;\ZZ)$
2. $E_\infty^{p,q} \Rightarrow H^{p+q}(E)$

## Computation

Use the above theorem with the fibration $S^1 \into S^5 \into \CP^2$, as well as the following facts:

1. $H^*(S^1) = \ZZ\delta_0 + \ZZ\delta_1$
2. $H^*(S^5) = \ZZ\delta_0 + \ZZ\delta_5$
3. $H^0(\CP^2) = \ZZ$ (i.e. it is simply connected)
4. $d_2: E_2^{p,q} \to E_2^{p-2, q+1}$

By the theorem, the $E_2$ page of the spectral sequence looks like this:

```latex {cmd=true, hide=true}
\documentclass{standalone}
\usepackage{tikz}
\usepackage{dsfont}
\usetikzlibrary{matrix}
\newcommand*\Z{\mathds{Z}}
\newcommand*\ZZ{|[draw,circle]| \Z_2}
\begin{document}
\begin{tikzpicture}
  \matrix (m) [matrix of math nodes,
    nodes in empty cells,nodes={minimum width=5ex,
    minimum height=5ex,outer sep=-5pt},
    column sep=1ex,row sep=1ex]{
                &      &     &     & \\
          1     &  \ZZ &  0  & \ZZ & \\
          0     &  \Z  & \ZZ &  0  & \\
    \quad\strut &   0  &  1  &  2  & \strut \\};
  \draw[-stealth] (m-3-3.north west) -- (m-2-2.south east);
\draw[thick] (m-1-1.east) -- (m-4-1.east) ;
\draw[thick] (m-4-1.north) -- (m-4-5.north) ;
\end{tikzpicture}
\end{document}
```

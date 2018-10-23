# Table

```latex{cmd=true, hide=true, run_on_save=true}
\documentclass[]{article}
\usepackage{graphicx}
\usepackage{booktabs}
\usepackage{amsfonts}

\begin{document}
\begin{table}[]
\centering
\resizebox{\textwidth}{!}{%
\begin{tabular}{@{}llllllllll@{}}
\toprule
      & $\pi_{1}$    & $\pi_{2}$    & $\pi_{3}$    & $\pi_{4}$        & $\pi_{5}$        & $\pi_{6}$         & $\pi_{7}$                             & $\pi_{8}$         & $\pi_{9}$         \\ \midrule
$S^0$ & 0            & 0            & 0            & 0                & 0                & 0                 & 0                                     & 0                 & 0                 \\
$S^1$ & $\mathbb{Z}$ & 0            & 0            & 0                & 0                & 0                 & 0                                     & 0                 & 0                 \\
$S^2$ & 0            & $\mathbb{Z}$ & $\mathbb{Z}$ & $\mathbb{Z}_{2}$ & $\mathbb{Z}_{2}$ & $\mathbb{Z}_{12}$ & $\mathbb{Z}_{2}$                      & $\mathbb{Z}_{2}$  & $\mathbb{Z}_{3}$  \\
$S^3$ & 0            & 0            & $\mathbb{Z}$ & $\mathbb{Z}_{2}$ & $\mathbb{Z}_{2}$ & $\mathbb{Z}_{12}$ & $\mathbb{Z}_{2}$                      & $\mathbb{Z}_{2}$  & $\mathbb{Z}_{3}$  \\
$S^4$ & 0            & 0            & 0            & $\mathbb{Z}$     & $\mathbb{Z}_{2}$ & $\mathbb{Z}_{2}$  & $\mathbb{Z}$$\times$$\mathbb{Z}_{12}$ & $\mathbb{Z}_{22}$ & $\mathbb{Z}_{22}$ \\
$S^5$ & 0            & 0            & 0            & 0                & $\mathbb{Z}$     & $\mathbb{Z}_{2}$  & $\mathbb{Z}_{2}$                      & $\mathbb{Z}_{24}$ & $\mathbb{Z}_{2}$  \\
$S^6$ & 0            & 0            & 0            & 0                & 0                & $\mathbb{Z}$      & $\mathbb{Z}_{2}$                      & $\mathbb{Z}_{2}$  & $\mathbb{Z}_{24}$ \\
$S^7$ & 0            & 0            & 0            & 0                & 0                & 0                 & $\mathbb{Z}$                          & $\mathbb{Z}_{2}$  & $\mathbb{Z}_{2}$  \\
$S^8$ & 0            & 0            & 0            & 0                & 0                & 0                 & 0                                     & $\mathbb{Z}$      & $\mathbb{Z}_{2}$  \\ \bottomrule
\end{tabular}%
}
\caption{Higher Homotopy Groups of Spheres}
\label{my-label}
\end{table}

\end{document}
```

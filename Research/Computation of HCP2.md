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

By the theorem, we have

$$E_2^{p,q} = H^p(\CP^2) \tensor H^q(S^1)$$

Thus the $E_2$ page of the spectral sequence looks like this:

```latex {cmd:true, hide:false, run_on_save:true}
\documentclass{standalone}
\usepackage{tikz}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usetikzlibrary{matrix}
\newcommand*\Z{\mathds{Z}}
\newcommand*\CP{\mathbb{CP}}
\newcommand*\ee[2]{H^{#1}(\CP^2) \otimes_{\Z} H^{#2}(S^1)}
\newcommand*\zt[2]{#1 \otimes_{\Z} #2}
\newcommand*\HT[2]{H^{#1}(\CP^2) \otimes_{\Z} #2}
\newcommand*\HCP[1]{H^{#1}(\CP^2)}
\begin{document}
\begin{tikzpicture}
\matrix (m) [matrix of math nodes,
  nodes in empty cells,nodes={minimum width=5ex,
  minimum height=5ex,outer sep=-5pt},
  column sep=1ex,row sep=1ex]{
%
S^1& 	&   &  	& 	& 	&	&	&	\\
%
0&	\ee{0}{5}&	\ee{1}{5}&	\ee{2}{5}&	\ee{3}{5}&	\ee{4}{5}&	\ee{5}{5}&	&\\
0&	\ee{0}{4}&	\ee{1}{4}&	\ee{2}{4}&	\ee{3}{4}&	\ee{4}{4}&	\ee{5}{4}&	&\\
0&	\ee{0}{3}&	\ee{1}{3}&	\ee{2}{3}&	\ee{3}{3}&	\ee{4}{3}&	\ee{5}{3}&	&\\
0&	\ee{0}{2}&	\ee{1}{2}&	\ee{2}{2}&	\ee{3}{2}&	\ee{4}{2}&	\ee{5}{2}&	&\\
0&	\ee{0}{1}&	\ee{1}{1}&	\ee{2}{1}&	\ee{3}{1}&	\ee{4}{1}&	\ee{5}{1}&	&\\
0&	\ee{0}{0}&	\ee{1}{0}&	\ee{2}{0}&	\ee{3}{0}&	\ee{4}{0}&	\ee{5}{0}&	&\\ \quad\strut
%
&	0&	1&	2&	3&	4&	5&	\CP_2& \strut \\};
%
\draw[thick] (m-8-1.east) -- (m-1-1.east) ;
\draw[thick] (m-8-1.north) -- (m-8-9.north) ;
\end{tikzpicture}
\end{document}
```

```latex {cmd:true, hide:false, run_on_save:true}
\documentclass{standalone}
\usepackage{tikz}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usetikzlibrary{matrix}
\newcommand*\Z{\mathds{Z}}
\newcommand*\CP{\mathbb{CP}}
\newcommand*\ee[2]{H^{#1}(\CP^2) \otimes_{\Z} H^{#2}(S^1)}
\newcommand*\zt[2]{#1 \otimes_{\Z} #2}
\newcommand*\HT[2]{H^{#1}(\CP^2) \otimes_{\Z} #2}
\newcommand*\HCP[1]{H^{#1}(\CP^2)}
\begin{document}
placeholder
\end{document}
```

```latex {cmd:true, hide:false, run_on_save:true}
\documentclass{standalone}
\usepackage{tikz}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usetikzlibrary{matrix}
\newcommand*\Z{\mathds{Z}}
\newcommand*\CP{\mathbb{CP}}
\newcommand*\ee[2]{H^{#1}(\CP^2) \otimes_{\Z} H^{#2}(S^1)}
\newcommand*\zt[2]{#1 \otimes_{\Z} #2}
\newcommand*\HT[2]{H^{#1}(\CP^2) \otimes_{\Z} #2}
\newcommand*\HCP[1]{H^{#1}(\CP^2)}
\begin{document}
placeholder
\end{document}
```

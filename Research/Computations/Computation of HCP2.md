---
output: pdf_document
---

# Computation of $H^*(\CP^2)$

View rendered version [here](https://rawgit.com/dzackgarza/Notes/master/Research/Computations/Computation%20of%20HCP2.html)

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

```latex {cmd=true hide=true run_on_save=true}
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

Using the facts above, we can substitute in some known groups:

```latex {cmd=true, hide=true, run_on_save=true}
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
0&	\zt{\Z}{0}&		\HT{1}{0}&	\HT{2}{0}&	\HT{3}{0}&	\HT{4}{0}&	\HT{5}{0}&	&\\
0&	\zt{\Z}{0}&		\HT{1}{0}&	\HT{2}{0}&	\HT{3}{0}&	\HT{4}{0}&	\HT{5}{0}&	&\\
0&	\zt{\Z}{0}&		\HT{1}{0}&	\HT{2}{0}&	\HT{3}{0}&	\HT{4}{0}&	\HT{5}{0}&	&\\
0&	\zt{\Z}{0}&		\HT{1}{0}&	\HT{2}{0}&	\HT{3}{0}&	\HT{4}{0}&	\HT{5}{0}&	&\\
0&	\zt{\Z}{\Z}&	\HT{1}{\Z}&	\HT{2}{\Z}&	\HT{3}{\Z}&	\HT{4}{\Z}&	\HT{5}{\Z}&	&\\
0&	\zt{\Z}{\Z}&	\HT{1}{\Z}&	\HT{2}{\Z}&	\HT{3}{\Z}&	\HT{4}{\Z}&	\HT{5}{\Z}&	&\\ \quad\strut
%
&	0&	1&	2&	3&	4&	5&	\CP_2& \strut \\};
%
\draw[thick] (m-8-1.east) -- (m-1-1.east) ;
\draw[thick] (m-8-1.north) -- (m-8-9.north) ;
\end{tikzpicture}
\end{document}
```

Now recalling two useful properties of the tensor product:

1. $A \tensor_\ZZ 0 = 0$, and
2. $A \tensor_\ZZ \ZZ = A$,

we obtain the following simplified version of the $E_2$ page, with several of the potentially non-trivial differentials indicated:

```latex {cmd=true, hide=true, run_on_save=true}
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
5&	0&		0&	0&	0&	0&	0&	&\\
4&	0&		0&	0&	0&	0&	0&	&\\
3&	0&		0&	0&	0&	0&	0&	&\\
2&	0&		0&	0&	0&	0&	0&	&\\
1&	\Z&	\HCP{1}&	\HCP{2}&	\HCP{3}&	\HCP{4}&	\HCP{5}&	\cdots&\\
0&	\Z&	\HCP{1}&	\HCP{2}&	\HCP{3}&	\HCP{4}&	\HCP{5}&	\cdots&\\ \quad\strut
%
&	0&	1&	2&	3&	4&	5&	\CP_2& \strut \\};
%
\draw[thick] (m-8-1.east) -- (m-1-1.east) ;
\draw[thick] (m-8-1.north) -- (m-8-9.north) ;
\draw[-stealth] (m-6-2.south east) -- (m-7-4.north west);
\draw[-stealth] (m-6-3.south east) -- (m-7-5.north west);
\draw[-stealth] (m-6-4.south east) -- (m-7-6.north west);
\draw[-stealth] (m-6-5.south east) -- (m-7-7.north west);
\draw[-stealth] (m-6-6.south east) -- (m-7-8.north west);

\end{tikzpicture}
\end{document}
```

Now we use the fact that the spectral sequence converges to make several deductions:

## Claim:
$$H^1(S^5) = 0 \implies H^2(\CP^2) \cong \ZZ~\text{and}~H^1(\CP^2) = 0$$

(This will be a template argument for most of the rest, so I will spell out more details here and gloss over them later.)

- This means that $E_\infty^{0,1} \oplus E_\infty^{1,0} = 0$.
- Consider the process of obtaining the $E_3$ page:
  - $E_3^{0,1}$ is obtained from the homology of the complex $0 \into \ZZ \mapsvia{\del_1} H^2(\CP^2) \into 0$, i.e. we have $E_3^{0,1} = \frac{\ker \del_1}{\im 0} = \ker \del_1$
    - Note that all differentials after the $E_3$ page extend into the $p<0$ and $q<0$ quadrants, so there is stabiization here and $E_3^{0,1} = E_\infty^{0,1}$
      - But if the homology of this sequence is not zero, then $E_3^{1,0} \neq 0$, so $E_\infty^{0,1} \neq 0$ and $E_\infty^{0,1} \oplus E_\infty^{1,0} \neq 0$, a contradiction.
    - So this is an acyclic complex, and thus an exact sequence.
    - **So $\del_1$ is an isomorphism, and $H^2(\CP^2) \cong \ZZ$**
  - $E_3^{1,0}$ is obtained from the homology of $0 \into H^1(\CP^2) \into 0$
    - By the same argument, this spot stabilizes at $E_3$ and so this complex must have trivial homology.
    - **But this can only happen if $H^1(\CP^2) = 0$**


## Claim:

$$H^2(S^5) = 0 \implies H^1(\CP^2) \cong H^3(\CP^2) ~\text{and}~ H^2(\CP^2) = \ZZ$$

We have $H^2(S^5) = E_\infty^{0,2} \oplus E_\infty^{1,1} \oplus E_\infty^{2,0}$.

Note that $E_2^{0,2} = 0$, so $E_\infty^{0,2} = 0$ there are only two contributing terms to consider.

$E_\infty^{1,1}$: This involves looking at the complex $0 \into H^1(\CP^2) \mapsvia{\del_2} H^3(\CP^2) \into 0$. All differentials extend into zero quadrants starting at $E_3$, so this entry stabilizes at $E_3$. But any homology in this complex would contribute a nonzero contribution to $H^2(S^5)$, so this complex is acyclic/exact and $\del_2$ is an isomorphism.

$E_\infty^{2,0}$: This involves $0 \into \ZZ \mapsvia{f} H^2(\CP^2) \into 0$, where the $E^3$ differentials extend into zero quadrants and thus this entry stabilizes at $E^3$. Any nonzero homology here yields a nonzero contribution to $H^2(S^5)$, so this complex is acyclic/exact and thus $f$ is an isomorphism.

## Claim:

$$H^3(S^5) = 0 \implies H^2(\CP^4) \cong H^4(\CP^2) \cong
H^6(\CP^2),~ H^1(\CP^2) \cong H^3(\CP^2) \cong H^5(\CP^2)$$

Note: this is the first spot where the differentials may not extend into zero quadrants, but since the total homology is zero, this is not a real issue yet.

We have $H^3(S^5) = \displaystyle\bigoplus_{p+q = n}E_\infty^{p,q} = E_\infty^{0,3} \oplus E_\infty^{1,2} \oplus E_\infty^{2,1} \oplus E_\infty^{3,0}$. Every summand must be zero, so we examine them individually.

$E_\infty^{0,3}$: We have $E_2^{0,3} = 0$ and is involved in a complex of the form $0 \into E_2^{0,3} \into E_2^{2,2} \into E_2^{4,1} \into E_2^{6,0} \into 0$, which we can identify as $0 \into 0 \into 0 \into H^4(\CP^2) \into H^6(\CP^2) \into 0$, which must be exact, so we have $H^4(\CP^2) \cong H^6(\CP^2)$.

$E_\infty^{1,2}$: We have the complex $0 \into E_2^{1,2} \into E_2^{3,1} \into E_2^{5, 0} \into 0$ which equals $0 \into 0 \into H^3(\CP^2) \mapsvia{f} H^5(\CP^2) \into 0$, which must be exact and so $f$ is an isomorphism yielding $H^3(\CP^2) \cong H^5(\CP^2)$.

$E_\infty^{2,1}$: We have the complex $0 \into E_2^{0, 2} \into E_2^{2, 1} \into E_2^{4, 0} \into 0$ which equals $0 \into 0 \into H^2(\CP^2) \into H^4(\CP^2) \into 0$, so $H^2(\CP^2) \cong H^4(\CP^2)$.

(Here we are using the fact that $E_2^{0,2} = H^2(S^1) = 0$ instead of the automatic zeros from the differentials extending into zero quadrants.)

$E_\infty^{3,0}$: We have $0 \into E_2^{1,1} \into E_2^{3,0} \into 0$ which equals $0 \into H^1(\CP^2) \into H^3(\CP^2) \into 0$ which must be exact and so $H^1(\CP^2) \cong H^3(\CP^2)$

Note that $H^4(S^5) = 0$ doesn't give any new information at this point.

## Claim
$$H^5(S^5) = \ZZ \implies H^6(\CP^2) = 0$$

We have $H^5(S^5) = \displaystyle\bigoplus_{p+q=n}E_2^{p,q}$, and so there must now be a nonzero term in this sum.

Since $q > 1$ stabilizes to zero on $E_2$, the nonzero term must come from $E_2^{5,0}$ or $E_2^{4,1}$.

$E_2^{5,0}$: The complex is $0 \into H^3(\CP^2) \into H^5(\CP^2) \into 0$

$E_2^{4,1}$: The complex is $0 \into H^4(\CP^2) \into H^6(\CP^2) \into 0$

In order for an $E_3$ term to be nonzero, one of these complexes must have nonzero homology. But by the previous claim, $0 \into H^3(\CP^2) \into H^5(\CP^2) \into 0$ does have zero homology, so we consider the second complex instead.

We know from our current results that  $0 \into H^4(\CP^2) \into H^6(\CP^2) \into 0$ is equal to $0 \into \ZZ \mapsvia{f} H^6(\CP^2) \into 0$, and we know that $\frac{\ker f}{\im 0} = \ker f \cong H^5(S^5) = \ZZ$, since this is the only possible nonzero term in the above sum.

(Not sure how to use $\ker f = 0$ to show $H^6(\CP^2) = 0$, or how to inductively compute $H^*(\CP^n)$.)

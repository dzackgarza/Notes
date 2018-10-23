Basically, all of these computations are based on the fact that $SO^n$ acts transitively on $S^{n-1}$ with stabilizer $SO^{n-1}$, producing fibrations of the form $SO^{n-1} \to SO^n \to S^{n-1}$. The overall question: can this be used to inductively determine $H^*(SO^n)$ for all $n$?

[TOC]

----

# 1) Cohomology of SO3

A priori, we can use the fact that $SO^3$ is diffeomorphic to $\RP^3$ to obtain

$$H^*(SO^3) = H^*(\RP^3) = [\ZZ, 0, \ZZ_2, \ZZ, 0, 0, \cdots]$$

But supposing we didn't know the cohomology of the total space, the Serre spectral sequence can be applied by using the fibration

$$ S^1 \to SO^3 \to S^2$$


and then the usual theorems give the formula (in cohomology)

$$ E_2^{p,q} = H^p(S^2) \tensor H^q(S^1).$$

This yields the following $E_2$  and $E_3$ pages respectively (indexing columns with $p$ and rows with $q$):

```latex{cmd=true hide=true run_on_save=true}
\documentclass{article}
\usepackage{tikz}
\usetikzlibrary{cd}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usepackage{adjustbox}
\newcommand\encircle[1]{%
  \tikz[baseline=(X.base)]
    \node (X) [draw, shape=circle, inner sep=0] {\strut #1};}
\begin{document}
\adjustbox{scale=1.9,center}{%
$E_2$:
\begin{tikzcd}
q ~/~ S^1 & \cdot & \cdot & \cdot & \cdot &  \\
1 & \mathbb{Z} \arrow[rrd, "{d_2^{0,1}}" description] & \cdot & \encircle{$\mathbb{Z}$} & \cdot &  \\
0 & \encircle{$\mathbb{Z}$} & \cdot & \mathbb{Z} & \cdot &  \\
 & 0 & 1 & 2 & 3 & p ~/~ S^2
\end{tikzcd}
}
\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
\adjustbox{scale=1.5,center}{%
$E_3$:
\begin{tikzcd}
q ~/~ S^1 & \cdot & \cdot & \cdot & \cdot &  \\
1 & \ker d_2^{0,1} & \cdot & \encircle{$\mathbb{Z}$} & \cdot &  \\
0 & \encircle{$\mathbb{Z}$} & \cdot & \text{cokernel } d_2^{0,1} & \cdot &  \\
 & 0 & 1 & 2 & 3 & p ~/~ S^2
\end{tikzcd}
$$
}

\end{document}
```

where the dots are zeros, circled entries have stabilized, and the trivial differentials are suppressed.

This allows us to conclude:

- $H^0(SO^3) = \ZZ$
- $H^3(SO^3) = \ZZ$

But so far, nothing about $H^1$ or $H^2$.

We know that $d_2^{0,1} \in \hom(\ZZ, \ZZ)$, so there are a few cases:

1. $d_2^{0,1}(1) = 0$, so it's the zero map, and we obtain this $E^2$ page:


    |   |    |
    ---   |---| ---| ---
    $\ZZ$ | 0 | 0  | 0
    $\ZZ$ | 0 | 0  | 0

2. $d_2^{0,1} = \pm 1$, so it's an isomorphism, yielding

    |   |    |
    ---   |---| ---| ---
    0 | 0 | $\ZZ$  | 0
    $\ZZ$ | 0 | 0  | 0


3. $d_2^{0,1}(1) = \pm n$ for some $n\neq 0,1$, in which case there's torsion:

    |   |    |
    ---   |---| ---| ---
    0 | 0 | $\ZZ$  | 0
    $\ZZ$ | 0 | $\ZZ_n$  | 0

In any case, at most one of the diagonals survive.
So this leads to the following questions:


## Question 1.1
Can this be pushed any farther without bringing in external information?

For example, a posteriori we know that $SO^3 \cong \RP^3$ which forces case (3) to hold, where $n=2$ and $d_2^{0,1}(1) = 2$. (Is there anything interesting about knowing this differential explicitly?)

Is there any more algebraic information here, or is this the point where one would turn to geometric information to continue?

## Question 1.2
Supposing the cohomology is known, how do you write the ring/algebra structure?

By pushing generators around with cup products, it looks like a polynomial ring, but I'm not quite sure how to handle the fact that there are both $\ZZ$ and $\ZZ_2$ coefficients around.

One easy reduction is just to take $\ZZ_2$ coefficients, then I think $H^*(\RP^3; \ZZ_2) \cong \ZZ_2[x]/(x^4)$ as algebras.

For $\alpha \in H^*(\RP^3; \ZZ)$ though, it seems like it can be written as $\ZZ \oplus \ZZ_2 e^2 \oplus \ZZ e^3$ where $e^i$ is a generator in degree $i$. Is there a nice/clean way to express this as some polynomial ring $\ZZ[\text{stuff}_1]/(\text{stuff}_2)$, or maybe as some algebra $\Lambda(\text{stuff})$?

----

# 2) Cohomology of SO4

Supposing we know $H^*(SO^3) = [\ZZ, 0, \ZZ_2, \ZZ]$, we can use the fibration

$$ SO^3 \to SO^4 \to S^3$$

yielding

$$E_2^{p,q} = H^p(S^3) \tensor H^q(SO^3).$$

This is a little like the previous case, except the $E_2$ page is boring because the columns are further separated. Almost all entries stabilize early (partially due to the gap in row 1!) and the only potentially interesting thing happens on $E_3$:

```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{article}
\usepackage{tikz}
\usetikzlibrary{cd}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usepackage{adjustbox}
\newcommand\encircle[1]{%
  \tikz[baseline=(X.base)]
    \node (X) [draw, shape=circle, inner sep=0] {\strut $#1$};}
\begin{document}
\adjustbox{scale=1.5,center}{%
$E_3$:
\begin{tikzcd}
q ~/~ SO^3 & \cdot & \cdot & \cdot & \cdot & \cdot \\
3 & \encircle{\mathbb{Z}} & \cdot & \cdot & \encircle{\mathbb{Z}} & \cdot \\
2 & \mathbb{Z}_2 \arrow[rrrdd, "{d_3^{0,2}}" description] & \cdot & \cdot & \encircle{\mathbb{Z}_2} & \cdot \\
1 & \cdot & \cdot & \cdot & \cdot & \cdot \\
0 & \encircle{\mathbb{Z}} & \cdot & \cdot & \mathbb{Z} & \cdot \\
 & 0 & 1 & 2 & 3 & p ~/~ S^3
\end{tikzcd}
}
\end{document}
```

(I think this uses the fact that $\dim SO^n = \frac{n(n-1)}{2}$ somewhere.)

But luckily enough $\hom(\ZZ_m, \ZZ)$ only contains the zero map, so everything on $E_3$ lives forever and it looks like we get
$$
H^*(SO^4) = [\ZZ, 0, \ZZ_2, \ZZ^2, 0, \ZZ_2, \ZZ]
$$

## Question 2.1
Similar to one of the earlier questions: is there a nice way to write the ring/algebra structure?

## Question 2.2
Is there anything interesting that falls out of the cup product structure here? I looked a little bit at trying to mimic the computations of the ring structure of $\CP^n$, but wasn't sure how to proceed. I started looking at $(0,2) \smile (3,0) \to (3,2): \ZZ_2 \cross \ZZ \into \ZZ_2$, but it's a little more complicated than it was for $CP^n$, so I wasn't really sure where to go with it.

-----

# Cohomology of SO5

This one gets a bit more complicated! Supposing you know $SO^4$ from above, you can use the fibration

$SO^4 \to SO^5 \to S^4$

yielding

$E_2^{p,q} = H^p(S^4) \tensor H^q(SO^4)$

which only gets interesting at $E_4$:

```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{article}
\usepackage{tikz}
\usetikzlibrary{cd}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usepackage{adjustbox}
\newcommand\encircle[1]{%
  \tikz[baseline=(X.base)]
    \node (X) [draw, shape=circle, inner sep=0] {\strut $#1$};}
\begin{document}
\adjustbox{scale=1.5,center}{%
$E_4$:
\begin{tikzcd}
q ~/~ SO^4 & \cdot & \cdot & \cdot & \cdot & \cdot & \cdot \\
6 & \mathbb{Z} \arrow[rrrrddd, "{d_4^{0,6}}" description] & \cdot & \cdot & \cdot & \encircle{\mathbb{Z}} & \cdot \\
5 & \mathbb{Z}_2 \arrow[rrrrddd, "{d_4^{0,5}}" description] & \cdot & \cdot & \cdot & \encircle{\mathbb{Z}_2} & \cdot \\
4 & \cdot & \cdot & \cdot & \cdot & \cdot & \cdot \\
3 & \mathbb{Z} \oplus \mathbb{Z} \arrow[rrrrddd, "{d_4^{0,3}}" description] & \cdot & \cdot & \cdot & \mathbb{Z} \oplus \mathbb{Z} & \cdot \\
2 & \encircle{\mathbb{Z}_2} & \cdot & \cdot & \cdot & \mathbb{Z}_2 & \cdot \\
1 & \cdot & \cdot & \cdot & \cdot & \cdot & \cdot \\
0 & \encircle{\mathbb{Z}} & \cdot & \cdot & \cdot & \mathbb{Z} & \cdot \\
 & 0 & 1 & 2 & 3 & 4 & p ~/~ S^4
\end{tikzcd}
}
\end{document}
```

Taking a look at $E_5$, everything stabilizes:

```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{article}
\usepackage{tikz}
\usetikzlibrary{cd}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usepackage{adjustbox}
\newcommand\encircle[1]{%
  \tikz[baseline=(X.base)]
    \node (X) [draw, shape=circle, inner sep=0] {\strut $#1$};}
\begin{document}
\adjustbox{scale=1.2,center}{%
$E_5$:
\begin{tikzcd}
q ~/~ SO^4 & \cdot & \cdot & \cdot & \cdot & \cdot & \cdot \\
6 & \encircle{\ker d_4^{0,6}} & \cdot & \cdot & \cdot & \encircle{\mathbb{Z}} & \cdot \\
5 & \encircle{\ker d_4^{0,5}} & \cdot & \cdot & \cdot & \encircle{\mathbb{Z}_2} & \cdot \\
4 & \cdot & \cdot & \cdot & \cdot & \cdot & \cdot \\
3 & \encircle{\ker d_4^{0,3}} & \cdot & \cdot & \cdot & \encircle{\text{cok}~d_4^{0,6}} & \cdot \\
2 & \encircle{\mathbb{Z}_2} & \cdot & \cdot & \cdot & \encircle{\text{cok}~d_4^{0,5}} & \cdot \\
1 & \cdot & \cdot & \cdot & \cdot & \cdot & \cdot \\
0 & \encircle{\mathbb{Z}} & \cdot & \cdot & \cdot & \encircle{\text{cok}~d_4^{0,3}} & \cdot \\
 & 0 & 1 & 2 & 3 & 4 & p ~/~ S^4
\end{tikzcd}
}
\end{document}
```

so everything here lives forever, and it just remains to find the kernels/cokernels of these three differentials.

Here's where I got stuck - there are some cases to consider, but I wasn't able to reach any conclusions from them. Going top to bottom, here's what I think the differentials could possibly be, by looking at how they act on generators:

$d_3^{0,3}: \ZZ\oplus \ZZ \to \ZZ$

(Note: can't be injective, so $\ker d_3^{0,3} \neq 0$)

  - The zero map $(1, 0) \mapsto 0$ and $(0,1) \mapsto 0$
  - $(1, 0) \mapsto n, n \neq 0$ and $(0,1) \mapsto 0$
  - $(0, 1) \mapsto n, n \neq 0$ and $(1,0) \mapsto 0$

$d_4^{0,5}: \ZZ_2 \to \ZZ_2$

  - The zero map $1 \mapsto 0$
  - An isomorphism $1 \mapsto 1$

$d_4^{0,5}: \ZZ \to \ZZ \oplus \ZZ$

(Note: can't be surjective, so $\text{cok}~ d_3^{0,5} \neq 0$)

  - The zero map $1 \mapsto (0, 0)$
  - $1 \mapsto (n, 0), n\neq 0$
  - $1 \mapsto (0, n), n\neq 0$


## Question 3.1
Do you think it's possible to proceed from here using purely algebraic information? Is it tractable to try to dig into the spectral sequence and figure out some way to identify and compute these differentials, given that they're 4 pages into the sequence?

## Question 3.2
What actually is $H^*(SO^5)$, even just as a group? Is it actually possible to obtain it with this spectral sequence?

Hatcher seems to do some computation involving Bockstein homomorphisms on page 309 and comes up with:

$$ H^* (SO^5) \cong F[x,y,z] / (2x, x^4, y^4, z^2, xz, x^3 - y^2)$$

where $F$ is a "free graded commutative associative algebra over $\ZZ$". Is this the same thing as a DGA? And how exactly does one extract the list of cohomology groups from this representation?

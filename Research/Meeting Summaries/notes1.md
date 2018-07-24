# 18-02-14: Adjoint and Classifying Spaces

In general, we define the classifying space $K(G, n)$ (also known as an Eilenberg-MacLane space) to be a space $X$ such that $\pi_n(X) = G$ and for $k\neq n,~\pi_k(X) = 0$.

*Note: in my notation, I will simply write this as $\pi_*(X) = G\delta_n$*

It is worth mentioning here that there are nice Serre spectral sequences for this family of fibrations:

$$ K(\ZZ, n-1) \to \pt \to K(\ZZ, n)$$

By examining an appropriate spectral sequence, we were able to find that $H_*(\RP^\infty) = \ZZ_2\delta_1$, which makes $\RP^\infty$ an geometric model of the classifying space $K(\ZZ_2, 1)$.

Recall that $\CP^\infty$ is defined as the limit of the sequence of inclusions $$\CP^1 \subset \CP^2 \subset \CP^3 \subset \ldots$$
together with the weak limit topology.

There are a handful of easily recognizable geometric models for a few other types of classifying spaces.

$G$ \\ $n$    |  1              | 2           | 3
--            |---              |---          |--
$\ZZ$         |$S^1$            |$\CP^\infty$ | No good model!
$\ZZ_2$       |$\RP^\infty$     |$\cdot$      |$\cdot$
$\ZZ_p$       |$L(\infty, p)$   |$\cdot$      |$\cdot$
$\ast_n \ZZ$  |$\bigvee_n S^1$  |$\cdot$      |$\cdot$

*Note: $\ast_n \ZZ$ is the free group on $n$ generators. Also, these spaces can all be constructed as a CW complex for any given $G$ - just start with some $\bigvee S^1$ and add cells to kill off all higher homotopy.*

Using spectral sequences, we also found that $K(\ZZ, 3)$ was a space that, although simple from the point of view of homotopy, had a more complicated structure in homology. It was a number of odd properties- it has torsion in infinitely many dimensions, doesn't satisfy Poincare duality (even in a truncated sense).

---
Consider the fibration

$$S^1 \to S^{2\infty + 1} \to \CP^\infty$$

where these infinite-dimensional spaces are defined using the weak topology.

There is a perfectly good filtration arising from the inclusions in this diagram:

$$
\begin{CD}
S^3 @>\subseteq>> S^5 @>\subseteq>> S^7 @>\subseteq>> \cdots\\
@VVV @VVV @VVV \\
\CP^1 @>\subseteq>> \CP^3 @>\subseteq>> \CP^5 @>\subseteq>> \cdots
\end{CD}
$$

So we can apply the usual spectral sequence to this filtration. We know that $E_\infty$ can only contain $\ZZ$ in dimension zero, and we obtain the following $E_2$ page:

```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{standalone}
\usepackage{tikz}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usetikzlibrary{cd}
\begin{document}
\begin{tikzcd}
\mathbb{Z} \arrow[rrd, "d_2 \cong"] & 0 & 0 \arrow[rrd, "d_2 \cong"] & 0 & 0 \\
0 & 0 & \mathbb{Z} & 0 & \mathbb{Z}
\end{tikzcd}
\end{document}
```

Since $d_2$ is an isomorphism, it must take generators to generators, and so we can deduce the following facts:

- $d_2(\alpha \tensor 1) = 1\tensor\beta$
- $d_2(1\tensor\beta) = 0$

We can now compute
$$
\begin{align}
d_2(\alpha\tensor\beta) &= d_2(\alpha\tensor 1) \cup (1\tensor\beta) + 0\\
&= 1\tensor\beta^2
\end{align}
$$

And using the cup product structure on cohomology, we can fill out the following diagram that summarizes these results:
```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{standalone}
\usepackage{tikz}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usetikzlibrary{cd}
\newcommand*\ZZ{\mathds{Z}}
\begin{document}
\begin{tikzcd}
\alpha\otimes 1 \arrow[rrd, "d_2 \cong"] & \cdot & \alpha\otimes\beta \arrow[rrd, "d_2 \cong"] & \cdot & \cdot \\
\cdot & \cdot & 1\otimes \beta \arrow[u, "\cup"] & \cdot & 1\otimes\beta^2
\end{tikzcd}
\end{document}
```

Thus, just from knowing that $d_2$ is an isomorphism, we can conclude that $H^4(\CP^\infty) = \ZZ<\beta^2>$. Alternatively, we'll write this as $H^4(\CP^\infty) = \ZZ.\beta^2$

By a repeated application of this argument, we find that $H^{2n}(\CP^\infty) = \ZZ.\beta^n$, allowing us to conclude that

$$
H^*(\CP^\infty) = \ZZ[\beta_{(2)}]. \qed
$$

----

If we know $H^*(\CP^\infty)$, which is the easiest case, we can then use the inclusion $\CP^n \mapsvia{i} \CP^\infty$ (as a cellular map) to induce

$$
H^*(\CP^n) \mapsvia{i^*} H^*(\CP^\infty)\\
\beta \mapsto \beta
$$

which is a actually a *ring* homomorphism instead of just a group homomorphism. This presents a good argument for the use of cohomology, due to its extra ring structure.

This is an isomorphism on low-dimensional (co)homology, which reflects the idea encapsulated in the weak limit that these should be approximately equal for large enough $n$.

This is indicative of a general principle: if $X$ is a CW complex and $X^n$ is its $n$-skeleton, then the inclusion $X^n \mapsvia{i} X$ induces an isomorphism $H_k(X^n) \cong H_k(X)$ for $k < n$. (Note that this may or may not be an isomorphism for $k=n$.)

In particular, it is again a ring homomorphism, and so carries true relations/equations to true relations/equations.

Dually, homology does have *some* type of ring structure, however it is slightly unnatural and onerous to define and use. There is a natural coproduct on $H_*(X)$ for any space $X$, which has a "one in, two out" type and takes this form:

$$
H_*(X) \mapsvia{\Delta} H_*(X) \cross H_*(X) \\
a \mapsto \sum a' \tensor a''
$$

This coproduct satisfies a form of coassociativity, i.e. if we have

$$
\Delta(a) = \sum b_i \otimes c_i \\
(\Delta \tensor 1) \Delta (a) = \sum_{i,j} (d_j^i \tensor e_j^i)\tensor c_i \\
(1 \tensor \Delta ) \Delta (a) = \sum_{i,j} b_i \tensor (f_k^i \tensor g_k^i)
$$

then the "structure coefficients" agree, i.e. we have $b_i = \sum_j (d_j^i \tensor e_j^i)$ and $c_i = \sum_k (f_k^i \tensor g_k^i)$.

In other words, just note that each element on the right hand side of these equations is an element of $H_*^{\otimes 3}$, and so coassociativity simply requires that they are the same element of this space.

----

We can specialize by looking at the case where $V$ is a vector space, with a coproduct $V \mapsvia{\Delta} V\tensor V$. Then pick a basis $\{e_i\}_{i\in I}$, and write
$$
\Delta(e_i) = \sum_{j,k} \Delta_i^{j,k}(e_j\tensor e_k)
$$

where $\Delta_i^{j,k} \in k$, the ground field of $V$. Then coassociativity requires that we have

$$
\sum_{j,k,l,m} \Delta_i^{j,k} \Delta_j^{l,m} (e_l \tensor e_m \tensor e_k)
= \sum_{j,k}\Delta_i^{j,k} e_j \tensor \Delta_k^{p,q}(e_p \tensor e_q)
$$

or in other words, that

$$
\sum_j \Delta_i^{j,k} \Delta_j^{l,m} = \sum_i \Delta_i^{l,r} \Delta_r^{m,k}\tag*{$\forall k,l,m$}
$$

It is worth noting that there is also a version of the universal coefficient theorem for homology, which comes in the form
$$ 0 \to \ext(H_{n-1}(X, \ZZ), \ZZ) \to H_n(X, \ZZ) \to \hom(H_n(X,\ZZ),\ZZ) \to 0$$

----

One question that comes up here is whether or not there is a sense in which Ext and Hom are "duals" of each other. In some way, this is case, using the "Frobenius duality" of $\wait \tensor R$ and $\hom(\wait, S)$.

*Aside: Frobenius duality occurs in algebras $A$ over some field $k$ possessing a nondegenerate bilinear form $A\cross A \mapsvia{\sigma} k$ satisfying $\sigma(ab, c) = \sigma(a, bc)$. Such a \sigma$ is called a Frobenius norm. A simple example is the trace of a matrix, another example is any Hopf algebra.*

This kind of duality comes in the form of something like

$$
\hom(M\tensor N, P) = \hom(M, \hom_{\text{in}}(N, P))
$$

where $\hom_\text{in}$ is an "internal hom", which is actually an object in the category whose underlying set is the usual $\hom$. One might also call this "map", and denote it $[N, P]$, then the above statement translates to the condition that if $N, P \in \mathcal{C}$ for some category, then $\hom_\text{in}(N, P) = [N, P] \in \mathcal{C}$ is also an object in the same category. (This might also be denoted $\mathcal{Hom}$.)

For an analogy, let $\mathcal{C} = \mathbf{Top}$, and $\hom_\mathbf{Top}(X,Y)$ be the set of continuous maps from $X$ to $Y$. Then notice that we can put a topology on this space, say $\mathcal{T}$, so define $\text{Map}(X, Y) = (\hom_\mathbf{Top}(X,Y), \mathcal{T})$, which is in fact an **object** in $\mathbf{Top}$. This becomes the aforementioned "internal hom".

Then, the previous adjunction becomes

$$
\hom_\textbf{Top}(X\cross Y, Z) = \hom_\textbf{Top}(X, \text{Map}(X, Y)) \tag*{$(\in \mathbf{Set})$}
$$

----

More generally, consider what happens in categories of $R$ modules, where $R$ is generally non-commutative. We can then take objects like $M_R \in \mathbf{mod\dash R}$ and ${}_{R}N_{S} \in \mathbf{R\dash mod\dash S}$. We can then form the tensor product $M_R \tensor_R  {}_{R}N_{S}$, and the adjunction becomes

$$
\hom_\mathbf{mod\dash S} (M_R \tensor_R  {}_{R}N_{S}, P_S) = \hom_\mathbf{mod\dash R} (M_R, \hom_\mathbf{mod\dash S} ({}_{R}N_{S}, P_S))
\tag*{$(\in \mathbf{Ab})$}
$$

Again, in the second argument of the right-hand side, we identify this as an internal hom - this works because the object $\hom_\mathbf{mod\dash S} ({}_{R}N_{S}, P_S)$ actually becomes a right $R$-module by precomposition.

----

In some ways, this resembles the kind of adjunction that occurs in an inner product space - for example, given a matrix $A$, it may have an "adjoint" matrix $A^*$ that satisfies
$$
\inner{Av}{w} = \inner{w}{A^*v}
$$

and so we can think of $\hom$ like a Hermitian inner product of this form, which is contravariant (re: conjugate) in the first argument. Note that the choice of which argument is contrvariant varies! In Physics, the second argument is often conjugate-linear, while the first is linear.

We can also look at this as an almost-commuting of the following diagram

```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{standalone}
\usepackage[utf8]{inputenc}
\usepackage{tikz-cd}

\newcommand*\wait{\,\cdot\,}
\newcommand*\tensor{\otimes}
\newcommand*\dash{\hbox{-}}
\newcommand*\cross{\times}
\newcommand\inner[2]{\langle #1, #2 \rangle}

\begin{document}

\begin{tikzcd}
\mathbf{mod\dash R} \arrow[ddd, "\wait \tensor_R N_s"', dashed, maps to, bend right=49] \arrow[ddd] & \cross & \mathbf{mod\dash R} \arrow[rr, "\inner{\wait}{\wait}"] &  & \mathbf{Ab} \arrow[ddd] \\
 &  &  &  &  \\
 &  &  &  &  \\
\mathbf{mod\dash S} & \cross & \mathbf{mod\dash S} \arrow[uuu, "{\hom_R(N_{S}, \wait)}"', dashed, bend right=49] \arrow[rr, "\inner{\wait}{\wait}"] \arrow[uuu] &  & \mathbf{Ab} \arrow[uuu, "\cong"']
\end{tikzcd}

\end{document}
```

where we can simplify by choosing elements, yielding

```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{standalone}
\usepackage[utf8]{inputenc}
\usepackage{tikz-cd}

\newcommand*\wait{\,\cdot\,}
\newcommand*\tensor{\otimes}
\newcommand*\dash{\hbox{-}}
\newcommand*\cross{\times}
\newcommand\inner[2]{\langle #1, #2 \rangle}

\begin{document}

\begin{tikzcd}
M \arrow[ddd] & \cross & \hom_R(N, P) \arrow[rr, "\hom_R"] &  & \mathbf{Ab} \arrow[ddd] \\
 &  &  &  &  \\
 &  &  &  &  \\
M \tensor_R N & \cross & P \arrow[rr, "\hom_S"] \arrow[uuu] &  & \mathbf{Ab} \arrow[uuu, "\cong"']
\end{tikzcd}

\end{document}
```

In this framework, we can now talk about pairs of adjoint functors $\mathcal{C}\underset{L}{\overset{R}\leftrightarrow} \mathcal{D}$ between categories, which satisfy
$$
\hom_\mathcal{C}(LA, X) = \hom_\mathcal{D}(A, RX)
$$

for every $A\in\mathcal{D}, X\in\mathcal{C}$, plus a few more properties concerning how these act under natural transformations.

Then $L$ is said to be left adjoint to $R$, and $R$ is right adjoint to $L$, which is sometimes denoted $L \vdash R$.

**Example**: Free and forgetful functors.

Work in $\mathbf{Grp}$ and $\mathbf{Set}$, then let $F$ be the free group functor and $U$ by the forgetful functor. Then we have

$$
\hom_\mathbf{Grp}(F(S), G) \cong \hom_\mathbf{Set}(S, U(G))
$$

**Example**: The classifying space functor.

Define the classifying space functor $\mathbf{Cat} \mapsvia{B} \mathbf{Set}$, denoted $\abs{\wait}$. As an input, it takes a category $\mathcal{C}$, then define a simplicial complex where the

- The vertices (0-simplices) are the objects,
- The edges (1-simplices) are the morphisms,
- The 2-simplices are triangles
```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{standalone}
\usepackage[utf8]{inputenc}
\usepackage{tikz-cd}
\begin{document}
\begin{tikzcd}
 &  & B \arrow[rrdd, "g"] &  &  \\
 &  &  &  &  \\
A \arrow[rruu, "f"] \arrow[rrrr, "fg"] &  &  &  & C
\end{tikzcd}
\end{document}
```
where the inside is considered "filled in" to denote the equivalence between the bottom $fg$ and the top "$f$ then $g$" path.

- The 3-simplices are the tetrahedra
```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{standalone}
\usepackage[utf8]{inputenc}
\usepackage{tikz-cd}
\begin{document}
\begin{tikzcd}
 & B \arrow[rrrdd] \arrow[rr, "g"] &  & D \arrow[rdd, "h"] &  \\
 &  &  &  &  \\
A \arrow[ruu, "f"] \arrow[rrrr, "fgh"] \arrow[rrruu] &  &  &  & C
\end{tikzcd}
\end{document}
```
with the interior space filled in similarly.

(Note that we only label the outer morphisms, because the rest can be named as concatenations of others.)

- And so on, etc.

This produces a CW complex, and hence a topological space, from the input category.

**Example**: Let $G$ be a discrete group of order $n$ -- it is equivalently a category with one object and $n$ morphisms.

```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{standalone}
\usepackage[utf8]{inputenc}
\usepackage{tikz}
\usetikzlibrary{arrows,positioning,shadows,fit,shapes}
\begin{document}
\begin{tikzpicture}[]
\node[](0){G};
\path[->](0)edge[loop above]node{$g_1$}();
\foreach \looseness/\label [count=\n] in {10/$g_2$,15/$g_3$,20/$g_4$,27/$\cdots$}
	\path [->] (0) edge [
      loop above,
      every loop/.append style={
          looseness=\looseness,
          in=60-0.8*\looseness,
          out=120+0.8*\looseness
    }] node {\label} ();
\end{tikzpicture}
\end{document}
```
 Then $BG$ is called _the classifying space of $G$_. $H_*(BG, \ZZ)$ is denoted the homology of the group, and we have

 - $\pi_0(BG) = \pt$
 - $\pi_1(BG) = G$
 - $\pi_k(BG) = 0$ for $k \geq 2$.

Some concrete examples of these are:

- $B\ZZ_2 = \RP^\infty$
- $B\ZZ = S^1$
- $BS_3 = ?$

This construction can be carried out for _topological_ groups as well, with the following sequence of gluings:

- A point
- $G\cross I$
- $G\cross G \cross \Delta^2$
- $G\cross G \cross G \cross \Delta^3$
- $\cdots$ etc

A concrete example of this is $BS^1 = \CP^\infty = K(\ZZ, 2)$. This is related to the homogeneous space fibration

$$ H \to G \mapsvia{g\mapsto g.p} G/H$$

for a chosen basepoint $p\in G/H$ such that $H$ stabilizes $p$.

----

On a different note, it is worth mentioning some of the fibrations to which a spectral sequence might apply. One that comes up is

$$
U_{n-k} \cross U_k \to U_n \to Gr_\CC(n, k)
$$

where $Gr_\CC(n, k)$ is the set of $k$-planes in $\CC^n$. Here, it is worth noting that $U_n \homotopic GL_n(\CC)$ and $O_n \homotopic GL_n(\RR)$.

From this, it can be concluded that $G_\CC(k, n) = \frac{U_n}{U_{n-k} \cross U_k}$, and further that if we take $\lim_{n\to \infty}$ we obtain $Gr_\CC(k, \infty) = \frac{X}{U_k}$, where $X$ is some contractible space, and we thus find that $Gr_\CC(k, \infty) = BU_k$, the classifying space for $U_k$.

It can further be shown that there is another fibration
$$
U_k \to EU_k \to BU_k
$$

where $EU_k$ is a contractible space on which $U_k$ acts and $BU_k$ is the above quotient. We can then find interesting structure here arising from the fact that $H^*(Gr_\CC(k, \infty)) = H^*(BU_k)$.

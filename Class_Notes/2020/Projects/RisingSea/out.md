\input{"/home/zack/Notes/Latex/preamble.tex"}
\let\Begin\begin
\let\End\end
\newcommand\wrapenv[1]{#1}

\makeatletter
\def\ScaleWidthIfNeeded{%
 \ifdim\Gin@nat@width>\linewidth
    \linewidth
  \else
    \Gin@nat@width
  \fi
}
\def\ScaleHeightIfNeeded{%
  \ifdim\Gin@nat@height>0.9\textheight
    0.9\textheight
  \else
    \Gin@nat@width
  \fi
}
\makeatother

\setkeys{Gin}{width=\ScaleWidthIfNeeded,height=\ScaleHeightIfNeeded,keepaspectratio}%
% Create indices up front
\makeindex[title=Concept index]

\title{
\textbf{
    Algebraic Geometry: Rising Sea Notes
  }
  }

\author{D. Zack Garza}

\date{\today}




\begin{document}
\maketitle
\tableofcontents


Week 1
======

[Link to
Notes](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf)

Exercise 1.3H: Right Exactness of Tensoring
-------------------------------------------

Show that the following endofunctor `\begin{align*}
F: \rmod &\to \rmod \\
X &\mapsto X\tensor_R N \\
(X\mapsvia{f} Y) &\mapsto (X\tensor_R N \mapsvia{f \tensor \id_N} Y\tensor_R N)
\end{align*}`{=tex} is exact.

Solution:

> Note: to make sense of the functor, we may need to show that there is
> an isomorphism `
> \begin{align*}\hom_{\rmod}(X, Y) \tensor_R \hom_{\rmod}(A, B) \to \hom_\rmod(X\tensor_R A, Y\tensor_R B).\end{align*}`{=tex}
> This is what makes taking $f:X\to Y$ and $g:A\to B$ and forming
> $f\tensor g: X\tensor A \to Y\tensor B$ well-defined?

Let $A\mapsvia{f} B \mapsvia{g} C \to 0$ be an exact sequence, so

-   $\im f = \ker g$ by exactness at $B$
-   $\im g = C$ by exactness at $C$.

Applying the above $F$ yields `\begin{align*}
A\tensor_R N \mapsvia{f\tensor \id_N} B\tensor_R N \mapsvia{g\tensor \id_N} C\tensor_R N \to 0
.\end{align*}`{=tex}

We thus need to show

1.  Exactness as $C\tensor_R N$: $\im(g\tensor \id_N) = C\tensor_R N$,
    i.e. this is surjective.
2.  Exactness at $B\tensor_R N$:
    $\im(f\tensor \id_N) = \ker(g\tensor id_N)$.

We'll use the fact that every element in a tensor product is a finite
sum of elementary tensors.

-   Claim: $\im(g\tensor \id_N) \subseteq C\tensor_R N$.
    -   Let $b\tensor n \in B\tensor_R N$ be an elementary tensor
    -   Then
        $(g\tensor \id_N)(b\tensor n) \definedas g(b) \tensor \id_N (n) = g(b) \tensor n$
    -   Since $\im(g) = C$, there exists a $c\in C$ such that
        $g(b) = c$, so $g(b) \tensor n = c \tensor n \in C\tensor_R N$
    -   Extend by linearity:

`\begin{align*}
\qty{g\tensor_R \id_N}\qty{\sum_{i=1}^m r_i \cdot b_i \tensor n_i} =\sum_{i=1}^m (g\tensor \id_N)(r_i\cdot b_i \tensor n_i) \definedas \sum_{i=1}^m g(r_i\cdot b_i) \tensor \id_N(n_i) =_H \sum_{i=1}^m r_i\cdot c_i \tensor n_i \in C\tensor_R N
\end{align*}`{=tex}

where we've used bilinearity for the first equality, and the equality
marked with $H$ uses above the proof for elementary tensors, and noted
that we can pull ring scalars $r_i\in R$ through $\rmod$ morphisms. -
Claim: $C \tensor_R N \subseteq \im(g\tensor \id_N)$. - Let
$c\tensor n \in C\tensor_R N$ be an elementary tensor. - Then
$c\in C = \im(g)$ implies $c = g(b)$ for some $b\in B$. - So
$c\tensor n = g(b) \tensor n = (g\tensor \id_N)(b\tensor n) \in B\tensor_R N$.
- Extend by linearity: `\begin{align*}
  \sum_{i=1}^m r_i\cdot c_i \tensor n_i =_H \sum_{i=1}^m g(r_i\cdot b_i) \tensor n_i = \sum_{i=1}^m (g\tensor \id_N)(r_i\cdot b_i \tensor n_i) = (g\tensor \id_N)\qty{\sum_{i=1}^m r_i\cdot b_i \tensor n_i}
  .\end{align*}`{=tex}

This proves (1).

-   Claim: $\im(f\tensor \id_N) \subseteq \ker(g\tensor \id_N)$.

    -   Let $b\tensor n \in \im(f\tensor \id_N)$, we want to show
        $(g\tensor \id_N)(b\tensor n) = 0 \in C\tensor_R N$.
    -   Then $b\tensor n = f(a)\tensor n$ for some $a\in A$.
    -   By exactness of the original sequence, $\im f \subseteq \ker g$,
        so $g(f(a)) = 0 \in C$
    -   Then `\begin{align*}
        (g\tensor \id_N)\qty{ b \tensor n} = (g\tensor \id_N)(f(a)\tensor n) \definedas g(f(a)) \tensor n = 0\tensor n = 0\in C\tensor_R N
        \end{align*}`{=tex} where we've used the fact that
        $0\tensor x = 0$ in any tensor product.
    -   Extend by linearity.

-   Claim (**nontrivial part**):
    $\ker(g\tensor \id_N) \subseteq \im(f\tensor \id_N)$.

    > Note: the problem is that `\begin{align*}
    > x\in \ker(g\tensor \id_N) \implies x = \sum_{i=1}^m r_i\cdot b_i \tensor n_i \implies (g\tensor \id_N)\qty{\sum_{i=1}^m r_i\cdot b_i \tensor n_i} = \sum_{i=1}^m r_i\cdot g(b_i) \tensor n_i = 0\in C\tensor_R N
    > \end{align*}`{=tex} **but** this does not imply that
    > $g(b_i) = 0\in C$ for all $i$, which is what you would need to use
    > $\im f = \ker g$ to write
    > $g(b_i) = 0\implies \exists a_i, f(a_i) = b_i$ and pull everything
    > back to $A\tensor_R N$.

    -   Strategy: use the first claim and the first isomorphism theorem
        to obtain this situation:
        ```{=tex}
        \begin{center}
        \begin{tikzcd}
        {B\tensor_R N \over \im(g\tensor_R \id_N)} \ar[r, hook, "i"]\ar[rrr, bend left, dotted, "\alpha"] & {B\tensor_R N \over \ker(g \tensor_R \id_N)} \ar[r, "\cong"] & \im(g\tensor_R \id_N) \ar[equal]{r} & C\tensor_R N
        \end{tikzcd}
        \end{center}
        ```
    -   The first injection $i$ will exist because
        $\im(g\tensor_R \id_N) \subseteq \ker(g\tensor_R \id_N)$ by the
        first claim.
    -   The middle isomorphism is the first isomorphism theorem.
    -   The RHS equality follows from surjectivity of $g\tensor_R \id_N$
    -   We then apply a strengthened version of the 1st isomorphism
        theorem for modules:

    > Hungerford Ch.4 Thm 1.7: If $f:A\to B$ is a $R\dash$module
    > morphism and $C\leq \ker f$ then there is a unique map
    > $\tilde f: A/C\to B$ which is an isomorphism iff $f$ is an
    > epimorphism and $C = \ker f$.
    >
    > Following Hungerford Ch.4 Prop. 5.4, p.210.

    -   Since $\im(g\tensor_R \id_N)\subseteq \ker(g\tensor_R \id_N)$,
        by the theorem the map $\alpha$ exists and satisfies the same
        formula, i.e. $\alpha = \tilde g \tensor \tilde \id_N$ where the
        tilde denotes the induced map on quotients, so
        $\alpha([b\tensor n]) = g(b)\tensor n$.

        -   We will show it is an isomorphism, which forces
            $\im(g\tensor_R \id_N) \cong \ker(g\tensor_R \id_N)$ by the
            above theorem.

    -   Constructing the inverse map: define `\begin{align*}
        \tilde \alpha\inv: C\times N &\to {B\tensor_R N \over \im(g\tensor_R \id_N) } \\
        (c, n) &\mapsto (b \tensor n)  \mod \im(g\tensor_R \id_N) \qtext{where} b \in g\inv(c)
        ,\end{align*}`{=tex} which we will show well-defined
        (i.e. independent of choice of $b$) and $R\dash$linear, lifting
        to a map $\alpha\inv$ out of the tensor product by the universal
        property which is a two-sided inverse for $\alpha$.

    -   Well-defined:

        -   $g\inv(b)$ exists because $g$ is surjective.
        -   If $b\neq b'$ and $g(b') = 0$, then
            $0 = g(b) - g(b') = g(b-b')$ so $b-b' \in \ker g$.
        -   By the original exactness, $b-b' \in \im f$ so $b-b' = f(a)$
            for some $a\in A$.
        -   Then $f(a) \tensor n \in \im(f\tensor \id)$ implies
            $f(a)\tensor n \equiv 0 \mod \im(f\tensor \id)$.
        -   Then noting that $b-b' = f(a) \implies b = f(a) + b'$,
            working mod $\im(g\tensor_R \id_N)$ we have `\begin{align*}
            b \tensor n \equiv (f(a) + b') \tensor n \equiv \qty{f(a) \tensor n} + \qty{b' \tensor n} \equiv b'\tensor n 
            .\end{align*}`{=tex}

    -   $R\dash$linear:

        -   ?

    -   Two-sided identity:

        -   $(\alpha \circ \alpha\inv)(c\tensor n) = \alpha(b\tensor n) = g(b)\tensor n = c\tensor n$,
            so $\alpha\circ \alpha\inv = \id$.
        -   $(\alpha\inv \circ \alpha)([b\tensor n]) = \alpha\inv(g(b) \tensor n) = [b'\tensor n]$
            where $b'\in g\inv(g(b))$ implies $b'=b$, so
            $\alpha\circ\alpha\inv = \id$.

$\qed$

More Exercises
==============

1.3.K
-----

> Note: I think this is an exercise about base change.

**Part a**: For $M$ an $A\dash$module and $\phi: A\to B$ a morphism of
rings, give $B\tensor_A M$ the structure of a $B\dash$module and show
that it describes a functor $B\dash\text{Mod}\to A\dash\text{Mod}$.

Solution

-   $B\tensor_A M$ makes sense: $B$ is a $(B, A)\dash$bimodule with the
    usual multiplication on the left and the right action
    `\begin{align*}
    A &\to \endo(B) \\
    a &\mapsto (b\mapsto b\cdot \phi(a))
    .\end{align*}`{=tex}

-   $B\tensor_A M$ is a left $B\dash$module via the following action:
    `\begin{align*}
    B &\to \endo(B\tensor_A M) \\
    b_0 &\mapsto (b\tensor m \mapsto b_0 b \tensor m)
    .\end{align*}`{=tex}

-   This describes a functor: `\begin{align*}
    F: A\dash\text{Mod} &\to B\dash\text{Mod} \\
    X &\mapsto B\tensor_A X \\
    (X\mapsvia{f} Y) &\mapsto (B\tensor_A X \mapsvia{\id_B \tensor f} B\tensor_A Y)
    .\end{align*}`{=tex}

    -   Need to check:
        -   Preserves identity morphism, i.e. $X\in A\dash$Mod implies
            $F(\id_X) = \id_{F(X)}$ in $B\dash$Mod.
        -   Preserves composition: $F(f\circ g) = F(f) \circ F(g)$.

-   Preserving identity morphisms:

    -   By construction $X\selfmap_{\id_X}$ maps to
        $B\tensor_A X \mapsvia{\id_B \tensor \id_X} B\tensor_A X$, can
        argue that this is the identity map for $B\dash$modules.

-   Preserving composition: `\begin{align*}
    (X\mapsvia{f} Y \mapsvia{g} Z) \mapsto (B\tensor_A X \mapsvia{ \id_B\tensor f} B\tensor_A Y \mapsvia{\id_B \tensor g} B\tensor_A Z) = (B\tensor_A X \mapsvia{\id_B \tensor (g\circ f)} B\tensor_A Z )
    .\end{align*}`{=tex}

> Note: not sure if there's anything to show here.

**Part b**: If $\psi: A\to C$ is another ring morphism, show that
$B\tensor_A C$ has a ring structure.

Solution:

-   Note $B\tensor_A C$ makes sense, since $C$ is a left $A\dash$module
    via $a\mapsto (c\mapsto \psi(a)c)$.

-   Need to define $(B\tensor_A C, P, M)$ such that it's an abelian
    group under $P$ (plus), a monoid under $M$ (multiplication), and
    left/right distributivity.

-   Start by defining on cartesian products: `\begin{align*}
    P: \qty{B\tensor_A C}^{\times 2} &\to B\tensor_A C \\
    P\qty{ (b_1 \tensor c_1), (b_2\tensor c_2)} &= (b_1 +_B b_2) \tensor (c_1 +_C c_2)
    ,\end{align*}`{=tex} `\begin{align*}
    M: \qty{B\tensor_A C}^{\times 2} &\to B\tensor_A C \\
    M\qty{ (b_1 \tensor c_1),  (b_2\tensor c_2)} &= (b_1 \cdot_B b_2) \tensor (c_1 \cdot_C c_2)
    .\end{align*}`{=tex}

-   Check $A\dash$bilinearity: `\begin{align*}
    P(a\cdot (b_1\tensor c_1),\, (b_2\tensor c_2)) 
    &\definedas \qty{ a \cdot (b_1 + b_2)} \tensor (c_1 + c_2)  \\
    &= \qty{ (b_1 + b_2)} \tensor a\cdot (c_1 + c_2) \quad\text{since $C$ is a left $A\dash$module} \\
    &\definedas P((b_1\tensor c_1),\, a\cdot (b_2\tensor c_2)) 
    .\end{align*}`{=tex} `\begin{align*}
    M(a\cdot (b_1\tensor c_1),\, (b_2\tensor c_2)) 
    &\definedas \qty{a\cdot (b_1 \cdot b_2)} \tensor (c_1 \cdot c_2) \\
    &= (b_1 \cdot b_2) \tensor \qty{ a\cdot (c_1 \cdot c_2) } \quad\text{since $C$ is a left $A\dash$module} \\
    &\definedas M((b_1\tensor c_1),\, a\cdot (b_2\tensor c_2)) 
    .\end{align*}`{=tex}

-   So these lift to maps out of $(B\tensor_A C)^{\tensor 2}$.

-   $P$ forms an abelian group: clear because $+_B, +_C$ do, and
    commuting is just done within each factor.

-   $M$ forms a monoid: clear for some reason.

-   Checking distributivity, claim: it suffices to check on elementary
    tensors and extend by linearity? `\begin{align*}
    (b_0 \tensor c_0) \cdot \qty{(b_1 \tensor c_1) + (b_2\tensor c_2) } 
    &= (b_0\tensor c_0) \cdot \qty{ (b_1 + b_2) \tensor (c_1 + c_2) } \\
    &= (b_0(b_1 + b_2)) \tensor ( c_0(c_1 + c_2)) \\
    &= (b_0 b_1 + b_0 b_2) \tensor (c_0 c_1 + c_0 c_2) \\
    &= \cdots
     .\end{align*}`{=tex}

1.3.L
-----

If $S\subseteq A$ is multiplicative and $M\in A\dash$Mod, describe a
natural isomorphism `\begin{align*}
\eta: (S\inv A)\tensor_A M \to (S\inv M)
\end{align*}`{=tex} as both $S\inv A\dash$modules and $A\dash$modules.

Solution

-   Recall the definition `\begin{align*}
    S\inv A\definedas \theset{ {a\over s} \suchthat a\in A, s\in S} / \sim \\
    {a_1 \over s_1} \sim {a_2 \over s_2} \iff \exists s\in S \text{ such that } s\qty{ s_2 a_1 - s_1 a_2 } = 0_A
    .\end{align*}`{=tex}
-   Similarly $S\inv M = \theset{{m\over s}}/\sim$.

The universal property: in $A\dash$Mod, $M\to S\inv M$ is initial among
all morphisms $\alpha: M\to N$ such that $\alpha(S) \subseteq N\units$:
```{=tex}
\begin{center}
\begin{tikzcd}
& S\inv M \ar[d, dotted, "{\exists ! \tilde\alpha}"] \\
M\ar[ru, "S\inv \cdot"]\ar[r, "\alpha"] & N 
\end{tikzcd}
\end{center}
```
> Strategy: define a map $M\to S\inv A \tensor_A M$ such that $S$ is
> invertible in the image to obtain a map? Show they satisfy the same
> universal property?

-   Since $M \in A\dash$Mod, we have an action $a\cdot m$, so define
    `\begin{align*}
    \eta: (S\inv A)\times M &\to (S\inv M) \\
    \qty{ {a\over s}, m } &\mapsto {a\cdot m \over s }
    .\end{align*}`{=tex}

-   The tensor product $S\inv A \tensor_A M$ makes sense.

    -   $S\inv A$ is a right $A\dash$module by
        $a_0 \mapsto \qty{ {a\over s} \mapsto {a_0 a \over s}}$.
    -   $S\inv M$ is a left $A\dash$module by
        $a_0 \mapsto (m \mapsto a_0 \cdot m)$ where the action comes
        from the $A\dash$module structure of $M$.

-   The map makes sense as an $A\dash$module morphism

    -   $S\inv A \tensor_A M$ is a left $A\dash$module by
        $a_0 \mapsto \qty{{a\over s}\tensor m \mapsto {a_0 a \over s} \tensor m}$
    -   $S\inv M$ is a left $A\dash$module by
        $a_0 \mapsto \qty{ {m\over s } \mapsto {a_0 \cdot m \over s}}$
        using the $A\dash$module structure on $M$.

-   The map makes sense as an $S\inv A\dash$module morphism

    -   $S\inv A \tensor_A M$ is a left $S\inv A\dash$module by
        ${a_0\over s_0} \mapsto \qty{ {a\over s}\tensor m \mapsto {a_0 a \over s_0 s} \tensor m }$
    -   $S\inv M$ is a left $S\inv A\dash$module by
        ${a_0\over s_0} \mapsto \qty{{m \over s} \mapsto {a_0 \cdot m \over s_0 s} }$
        by the $A\dash$module structure on $M$.

-   Well-defined: ?

-   $A\dash$bilinear: let $r\in A$, then `\begin{align*}
    \eta\qty{r \cdot {a\over s}, m} 
    &\definedas \eta\qty{{r\cdot a\over s}, m}  \\
    &\definedas {\psi(r\cdot a)(m) \over s} \\
    &= {r\cdot \psi(a)(m) \over s} \quad\text{since $\psi$ is a ring morphism} \\
    &= {\psi(a)(r\cdot m) \over s} \quad\text{since $\psi(a)$ is a ring morphism} \\
    &\definedas \eta\qty{ {a\over s}, r\cdot m}
     .\end{align*}`{=tex} So this lifts to a map out of the tensor
    product.

-   $S\inv A\dash$bilinear?

1.3.P
-----

Show that the fiber product over the terminal object is the cartesian
product.

Solution:

-   Recall definition: $T$ is terminal iff every object $X$ admits a
    morphism $X\to T$.
-   Strategy: use both universal products to produce an isomorphism
-   Let $\pr_X, \pr_Y$ by the cartesian product projections, and
    $\pr_X^T, \pr_Y^T$ be the fiber product projections
-   Let $T_X, T_Y$ be the maps $X\to T, Y\to T$.
-   Since $X\cross Y$ is an object in this category, it admits one
    unique map to $T$

```{=tex}
\begin{center}
\begin{tikzcd}
X\cross Y\ar[r, "\pr_Y"]\ar[d, "\pr_X"']\ar[dr, "T_{X\cross Y}"] & Y\ar[d, "T_Y"] \\
X\ar[r, "T_X"'] & T 
\end{tikzcd}
\end{center}
```
-   But now $T_Y \circ \pr_Y: X\cross Y \to T$ is another such map, so
    it must equal $T_{X\cross Y}$.
-   Similarly $T_X \circ \pr_X$ is equal to $T_{X\cross Y}$.
-   Thus $T_Y \circ \pr_Y = T_X \circ \pr_Y$, which is part of the
    universal property for $X\cross_T Y$.
-   By the universal property of $X\cross Y$, for every $W$ admitting
    maps to $X, Y$ we get the following $h_0$:
    ```{=tex}
    \begin{center}
    \begin{tikzcd}
    W \ar[drr, bend left]\ar[rdd, bend right]\ar[dr, dotted, "\exists ! h_0"] & & \\
    & X\cross Y\ar[r, "\pr_Y"]\ar[d, "\pr_X"] & Y\ar[d, "T_Y"] \\
    & X\ar[r, "T_X"] & T 
    \end{tikzcd}
    \end{center}
    ```
    > Note that $T$ doesn't matter in this particular diagram.
-   This gives us the LHS diagram, the RHS comes from the universal
    property of $X\cross Y$:
    ```{=tex}
    \begin{center}
    \begin{tikzcd}
    X\cross_T Y\ar[drr, "\pr_Y^T", bend left]\ar[rdd, "\pr_X^T", bend right]\ar[dr, dotted, "\exists ! h_0"] & & \\
    & X\cross Y\ar[r, "\pr_Y"]\ar[d, "\pr_X"] & Y\ar[d, "T_Y"] \\
    & X\ar[r, "T_X"] & T 
    \end{tikzcd}
    \begin{tikzcd}
    X\cross Y\ar[drr, "\pr_Y", bend left]\ar[rdd, "\pr_X", bend right]\ar[dr, dotted, "\exists ! h_1"] & & \\
    & X\cross_T Y\ar[r, "\pr_Y^T"]\ar[d, "\pr_X^T"] & Y\ar[d, "T_Y"] \\
    & X\ar[r, "T_X"] & T 
    \end{tikzcd}
    \end{center}
    ```
-   By commutativity, $h_0 \circ h_1 = \id_{X\cross Y}$ and vice-versa?

1.3.Q
-----

Show that if the two squares in this diagram are cartesian, then then
outer square is also cartesian:
```{=tex}
\begin{center}
\begin{tikzcd}
U \ar[r]\ar[d] & V\ar[d] \\
W \ar[r]\ar[d] & X\ar[d] \\
Y \ar[r] & Z
\end{tikzcd}
\end{center}
```
Solution:

-   Need to show that given two maps $R\to V$ and $R\to Y$ such that
    $(V\to Z) \circ (U\to V) = (Y\to Z) \circ (R\to Y)$, then there is a
    unique map $R\to U$ giving a commuting diagram:
    ```{=tex}
    \begin{center}
    \begin{tikzcd}
    U\ar[drr, bend left] \ar[rdd, bend right] & & \\
    & R\ar[ul, dotted, "\exists !\, ?"] \ar[r]\ar[d] & V\ar[d] \\
     & Y \ar[r] & Z
    \end{tikzcd}
    \end{center}
    ```
-   Applying the bottom square:
    -   Need to produce maps $R\to X$ and $R\to Y$
    -   We're given a map $R\to Y$ by assumption.
    -   We can build a map $R\to X$ by taking $(V\to X) \circ (R\to V)$.
    -   We then get a map $R\to W$:
        ```{=tex}
        \begin{center}
        \begin{tikzcd}
        W\ar[drr, bend left] \ar[rdd, bend right] & & \\
        & R\ar[ul, dotted, "\exists !"] \ar[r]\ar[d] & X\ar[d] \\
         & Y \ar[r] & Z
        \end{tikzcd}
        \end{center}
        ```
-   Applying the top square:
    -   We have a map $R\to V$ by assumption
    -   We have a map $R\to W$ from step 1
    -   We have maps $V\to X$ and $W\to X$ from the top square
    -   We thus obtain
        ```{=tex}
        \begin{center}
        \begin{tikzcd}
        U\ar[drr, bend left] \ar[rdd, bend right] & & \\
        & R\ar[ul, dotted, "\exists !"] \ar[r]\ar[d] & V\ar[d] \\
         & W \ar[r] & X
        \end{tikzcd}
        \end{center}
        ```

\bibliography{/home/zack/Notes/library.bib}

\end{document}

```{=tex}
\def\contradiction
{
\tikz[baseline, x=0.2em, y=0.2em, line width=0.04em]
\draw (0,0) -- ({4*cos(45)},{4*sin(45)})
    (-1,1) -- ({-1 + 4*cos(45)},{1 + 4*sin(45)})
    (-1,3) -- ({-1 + 4*cos(315)},{3 + 4*sin(315)})
    (0,4) -- ({0 + 4*cos(315)},{4 + 4*sin(315)});
}
```
# Wednesday, January 13

## Course Description

> I am teaching a topics course about Heegaard Floer homology next semester. Heegaard Floer homology was defined by Peter Ozsváth and Zoltan Szabó around 2000. It is a package of powerful invariants of smooth 3- and 4-manifolds, knots/links and contact structures. Over the last two decades, it has become a central tool in low-dimensional topology. It has been used extensively to study and resolve important questions concerning unknotting number, slice genus, knot concordance and Dehn surgery. It has been employed in critical ways to study taut foliations, contact structures and smooth 4-manifolds. There are also many rich connections between Heegaard Floer homology and other manifold and knot invariants coming from gauge theory as well as representation theory. We will learn the basic construction of Heegaard Floer homology, starting with the definition of the 3-manifold and knot invariants. In the second half of this course, we will turn to computations and applications of the theory to low-dimensional topology and knot theory. In particular, several numerical invariants have been defined using this homological invariants. At the end of the semester, I would expect each one of you to learn the construction of one of these invariants (of course with my help) and present it to the class.

We'll assume everything is smooth and oriented. Osvath-Szabo (2000): to closed 3-manifolds we assign a graded abelian group \( \widehat{HF}(M) \), which can be computed combinatorially. There are several other variants:

-   \( HF^+ \), a \( {\mathbb{Z}}_2[u, u ^{-1} ] \)
-   \( HF^- \),
-   \( HF^\infty \),

\( HF^- \) is the stronger version.

This can be used to compute the Thurston seminorm: for \( \alpha\in H_2(M) \) with \( \alpha\in [S] \) for \( S \) a closed surface where \( S = \bigcup_{i=1}^n S_i \) with the \( S_i \) closed. Then \[ `{\left\lVert { \alpha } \right\rVert}`{=tex} `\coloneqq `{=tex}`\min`{=tex}*S `\sum`{=tex}*{i=1}\^n `\max`{=tex}``{=tex} =

```{=tex}
\begin{cases}
0 & \text{if } S_i \text{ is a sphere or torus} \\ 
\\
- \chi(S_i) = 2g(S_i) - 2  & \text{ else} .
\end{cases}
```
.\]

::: {.theorem title="Osvath-Szabo"}
\( HF \) **detects** the Thurston seminorm, and there is a splitting \( HF^0(M) = \bigoplus _{S\in \Spin^c(M)} HF^0(M, S) \) where \( S \in \Spin^c(M) \) is a spin structure: an oriented 2-dimensional vector bundle. Moreover, \( {\left\lVert {a} \right\rVert} \) can be computed from this data as \( {\left\lVert {a} \right\rVert} = \max \abs{ {\left\langle {c_1(s)},~{\alpha } \right\rangle} \) over \( \widehat{HF}(M, S) \neq 0 \).
:::

::: {.theorem title="Ni"}
Given \( F \subseteq M \) with genus \( g\geq 2 \), HF detects if \( F \) occurs as a fiber in an \( S^1{\hbox{-}} \)bundle.
:::

::: {.definition title="Contact Structure"}
Equivalently,

-   A smooth oriented nowhere integrable 2-plane field \( \xi \), or

-   \( \xi = \ker( \alpha) \) where \( \alpha \) is a 1-form such that \( \alpha\wedge d \alpha > 0 \).
:::

::: {.example title="?"}
The standard contact structure on \( {\mathbb{R}}^3 \) is given by
\[
\alpha\coloneqq dz - ydz
.\]
:::

Knot floer homology: given a knot \( K \subseteq M \) there is a filtration on \( \widehat{CF}(M) \), which yields a bigraded group \( \widehat{HFK}(M, K) \) which is also a \( {\mathbb{Z}}_2{\hbox{-}} \)vector space. There is similarly \( HFK^-(M, K) \) which is a bigraded \( {\mathbb{Z}}_2[U] {\hbox{-}} \)module, and

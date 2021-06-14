# References

- Survey Paper: Anton Zorich, [Flat Surfaces](https://arxiv.org/abs/math/0609392)
- Alex Eskin, Andrei Okounkov, [Asymptotics of numbers of branched coverings of a torus and volumes of moduli spaces of holomorphic differentials](https://arxiv.org/abs/math/0006171)
- Alex Eskin, Howard Masur, Anton Zorich, [Moduli Spaces of Abelian Differentials: The Principal Boundary, Counting Problems and the Siegel--Veech Constants
](https://arxiv.org/abs/math/0202134)
- Alex Eskin, Andrei Okounkov, [Pillowcases and quasimodular forms](https://arxiv.org/abs/math/0505545)
- Vincent Delecroix, Elise Goujard, Peter Zograf, Anton Zorich, [Contribution of one-cylinder square-tiled surfaces to Masur-Veech volumes](https://arxiv.org/abs/1903.10904)
  - See Phil for appendix! 
- Engel, [Hurwitz Theory of Elliptic Orbifolds, I](https://arxiv.org/abs/1706.06738)
- Engel, [Hurwitz Theory of Elliptic Orbifolds, II](https://arxiv.org/abs/1809.07434)

- A. Eskin 
- G. Forni
- P. Hubert and T. Schmidt 
- H. Masur 
- H. Masur and S. Tabachnikov
- J. Smillie

# Basics

:::{.fact}
For $\Sigma_g$ a genus $g$ surface, the Poincaré polynomial and the Euler characteristic are given by 
\[
p(z) = 1 + (2g)z + z^2 && \chi(\Sigma_g) = 2-2g
.\]
:::

:::{.definition title="Ramified, branch points, ramification index"}
A map $Y \mapsvia{f} X$ of Riemann surfaces is said to be **ramified** at a point $p\in Y$ iff in local charts $f$ has the form $z\mapsto z^n$ for some $n\geq 2$.
Note that in this case, in charts $q\da f(p)$ has exactly one preimage and $\# f\inv(q') = n$ for all $q'$ in a punctured neighborhood of $q$.
The number $e_p \da n$ referred to as the **ramification index** of $f$ at $p$.

The set of points where $f$ is ramified, sometimes denoted $R_f \subseteq Y$, is referred to as the **ramification locus**.
Its image $B_f \da f(R_f) \subseteq X$ is referred to as the **branch locus**.
:::

:::{.theorem title="Well-definedness of degree"}
If $Y \mapsvia{f} X$ is a (possibly ramified) covering, then
\[
x_1, x_2, \in B_f^c \implies
\# f\inv(x_1) = \# f\inv(x_2)
.\]
This common number $d$ is referred to as the **degree** of $f$.

:::

:::{.proposition title="Euler characteristic is multiplicative in unramified covers"}
If $Y\mapsvia{f} X$ is an unramified covering map of degree $d$, then 
\[
\chi(Y) = d\cdot \chi(X)
.\]
:::

:::{.theorem title="Riemann-Hurwitz"}
If $Y\mapsvia{f}X$ is a ramified covering map of degree $d$, define the correction term
\[
\delta_f \da \sum_{p\in R_f} \qty{e_p - 1}
.\]
Then
\[
\chi(Y) = d\cdot  \chi(X) - \delta_f
.\]
:::

:::{.remark title="Other useful forms"}
There are several other useful forms:
\[
2g(Y) - 2 &=  d\cdot (2g(X) - 2)  - \delta_f\\
2- 2g(Y) &=  d\cdot (2-2g(X))  + \delta_f \\
\chi(Y) - \# R_f &= d \cdot (\chi(X) - \# B_f)
.\]
:::

:::{.remark}
In everything that follows, we take $TX, T\dual X$ to be *holomorphic* tangent/cotangent bundles.
:::

:::{.definition title="Holomorphic forms"}
A holomorphic $p\dash$form on $X$ is a section of the sheaf $\Lambda^p T\dual X$, the $p$th exterior power of the holomorphic cotangent bundle of $X$:
\[
\Omega^p_X \da \Omega_{\Hol}^p(X) &\da \Extalg^p T\dual X && \in\Sh_{/X}\\
\Omega^p_X(X) &\da \globsec{\Extalg^p T\dual X}
.\]

$0\dash$forms are global holomorphic functions on $X$.
For general $p$, in coordinates we have
\[
\omega \in \Omega^p_X \implies \omega = 
\sum f_I(\vector{z}) \Wedge dz_I
\]
for some holomorphic functions $f_I: \CC^n \to \CC$.
:::

:::{.definition title="Canonical Bundle"}
It is a theorem that taking the top exterior power yields a line bundle:


\begin{tikzcd}
\CC 
  \ar[r] 
& 
\Extalg^p T\dual X
  \ar[d] 
\\
& 
X 
\end{tikzcd}

The **canonical bundle** is defined by as this top exterior power.
Letting $n\da \dim_\CC X$,
\[
K_X = \omega = \Omega^{n}_X &&\in \Sh_{/X}
.\]
:::

:::{.remark}
For vector bundles, the top exterior power is referred to as the **determinant bundle**.
:::

:::{.remark}
A holomorphic $n\dash$form is precisely a section of the canonical bundle.
:::

:::{.fact}
If $M$ is a smooth manifold, then $\omega$ has a global section.
:::

:::{.theorem title="Riemann-Roch"}
![](figures/2021-06-14_01-49-30.png)
:::

:::{.exercise title="?"}
For $\Sigma_g$ a compact Riemann surface of genus $g$, the dimension of the space of holomorphic sections of the canonical bundle, i.e. the space of holomorphic differentials on $\Sigma_G$, is given by $\dim H^0(X; \Omega) = g$ (the genus of the surface).

> Hint: use Riemann-Roch.

:::


:::{.definition title="Hurwitz Space"}
?
:::


:::{.definition title="Hurwitz Number"}
?

:::


:::{.definition title="Abelian differential"}

:::


:::{.definition title="Orbifold"}

:::





:::{.definition title="Moduli spaces of complex structures on a genus $g$ surface"}

:::

:::{.fact}
Conformal (or equivalently complex) structures on a genus $g$ surface form a moduli space $\MM_g$ of dimension $3g-3$ for $g > 1$.
:::


:::{.definition title="Moduli space of abelian differentials"}

:::

:::{.fact}
Let $\alpha$ be any partition of $2g-2$, and $\mch(\alpha)$ the moduli space of pairs $(\Sigma_g, \omega)$ where $\Sigma_g$ is a Riemann surface of genus $g$ and $\omega$ is a holomorphic 1-form (Abelian differential) on $M$ with the orders of its zeros given by $\alpha$.

Letting $\mch$ be the moduli space of all abelian differentials on Riemann surfaces of genus $g$ is stratified by $\mch(\alpha)$ as $\alpha$ ranges over all partitions.
:::

:::{.example title="?"}
For flat tori, $\mch = \GL_+(2, \RR)/\SL(2, \ZZ)$.
:::



:::{.definition title="Moduli space of quartic differentials"}

:::


# Elliptic Orbifolds


:::{.remark}
Classification of elliptic orbifolds of dimension 2:

Define $(n_1, \cdots; m_1, \cdots)$ as the *profile*, where $n_i$ are *elliptic* points (locally look like quotient by $\ZZ/n\ZZ$), and $m_i$ are *corner reflectors* (locally look like quotient by a dihedral group):

![Image](figures/2020-01-29-20:44.png)\



:::


:::{.fact}
For $\Sigma_g$ a Riemann surface, there is a formula (Gauss-Bonnet in the flat metric) relating the degrees of the zeros of a holomorphic 1-form to the genus:
\[
\sum d_j = 2g-2
.\]
:::


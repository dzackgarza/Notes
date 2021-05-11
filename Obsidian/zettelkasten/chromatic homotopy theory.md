---
date: 2021-04-26
aliases: ["chromatic homotopy", "chromatic"]
---

# Topics

- [chromatic homotopy theory](chromatic%20homotopy%20theory.md)
- [Fracture theorem](Fracture%20theorem)
- The chromatic spectral sequence
	- Is this similar to fracture theorems in stable homotopy..?
- [Nishida's Theorem](zettelkasten/Nishida's%20Theorem.md)
- [Bousfield localization](Bousfield%20localization)
- [[Morava stabilizer group]]
	- Particularly Mike Hopkins' contributions
	- [Morava E theory](Morava%20E%20theory.md)
- [Formal group](zettelkasten/Formal%20group.md)
	- [[Formal group]]
	- [[Lubin-Tate space]]
	- [[Lubin-Tate theory]]
- [[Kervaire invariant 1]]
- [TMF](Topological%20modular%20forms.md)
- [Dieudonne module](Dieudonne%20module)

# Notes

- The chromatic view-point, which studies stable homotopy theory via its relationships to the moduli of [formal groups](Formal%20group.md), and related topics such as topological modular forms, use a sizable amount of (fairly abstract) algebraic geometry. And Lurie's work on [derived algebraic geometry](derived%20algebraic%20geometry.md) was motivated in part by establishing foundations adequate to the task of defining equivariant forms of [TMF](Topological%20modular%20forms.md).

[Behrens Hopkins Hill](https://www3.nd.edu/~mbehren1/papers/exotic2.pdf)
Kervaire and Milnor defined $\Theta_n$ to be the group of [homotopy spheres](homotopy%20spheres) up to [h-cobordism](h-cobordism) (where the group operation is given by connect sum). 

By the [h-cobordism theorem](h-cobordism%20theorem.md) ($n > 4$) and Perelman’s proof of the [Poincare Conjecture](Poincare%20Conjecture.md)] ($n = 3$).

For $n \neq 4$, $\Theta_n = 0$ if and only if $S^n$ has a unique [smooth structure](smooth%20structure) (i.e. there are no exotic spheres of dimension $n$).

We wish to consider the following question: For which $n$ is $\Theta_n = 0$? The general belief is that there should be finitely many such $n$, and these n should be concentrated in relatively low dimensions.

## The chromatic tower

Fix a prime $p$. The **chromatic tower** of a [Thom spectrum](Thom%20spectrum.md) $X$ is the tower of [Bousfield localizations](Bousfield%20localization)
$$
X \rightarrow \cdots \rightarrow X _ { E ( n ) } \rightarrow X _ { E ( n - 1 ) } \rightarrow \cdots \rightarrow X _ { E ( 0 ) }
$$
where $E(n)$ is the $n$th [[Johnson-Wilson spectrum]] $(E
(0) = \mH \QQ$, by convention) with
$$
E ( n ) _ { * } = \mathbb { Z } _ { ( p ) } \left[ v _ { 1 } , \dots , v _ { n - 1 } , v _ { n } ^ { \pm } \right]
$$
The fibers of the chromatic tower
$$
M _ { n } X \rightarrow X _ { E ( n ) } \rightarrow X _ { E ( n - 1 ) }
$$
are called the monochromatic layers. 

The [spectral sequence](spectral%20sequence.md) associated to the chromatic tower is the **chromatic spectral sequence**
$$
E _ { 1 } ^ { n , * } = \pi _ { * } M _ { n } X \Rightarrow \pi _ { * } X _ { ( p ) }
$$

Let $M_\\ell$ denote the [[Deligne-Mumford stack]] of [[elliptic curves]] over $\spec(\ZZ)$. See also [[moduli stack of elliptic curves]].

For a commutative ring $R$, the [groupoid](groupoid) of $R$-points of $M_\ell$ is the groupoid of elliptic curves over $R$. This [[stack]] carries a [[line bundle]] $\omega$ where for an elliptic curve $C$, the fiber over $C$ is given by
$$ωC = T^∗_e C,$$
the tangent space of $C$ at its basepoint $e$.

The stack $M_{ell}$ admits a compactification $\overline{M}_{ell}$ whose $R$ points are generalized elliptic curves. The space of integral [[modular forms]] of [[weight]] $k is defined to be the sections
$$
H ^ { 0 } \left( \overline { \mathcal { M } } _ { e l l } , \omega ^ { \otimes k } \right)
$$
Motivated by the definition of integral modular forms and this [[descent spectral sequence]] in the case of $U = M_\ell$ , the spectrum $\Tmf$ is defined to be the [[global sections]]
$$
\mathrm { Tmf } : = \mathcal { O } ^ { t o p } \left( \overline { \mathcal { M } } _ { e l l } \right)
$$

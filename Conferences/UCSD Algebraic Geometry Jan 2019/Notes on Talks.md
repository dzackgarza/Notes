# UCSD Algebraic Geometry Conference
Friday, January 11, 2019 - Sunday, January 13, 2019

[Link to Website](https://sites.google.com/site/complexalgebraicgeometry2019/)

## Table of Contents
- [UCSD Algebraic Geometry Conference](#ucsd-algebraic-geometry-conference)
  - [Table of Contents](#table-of-contents)
- [Jim Bryan - The Geometry and Arithmetic of the World’s Tiniest Calabi-Yau Threefold](#jim-bryan---the-geometry-and-arithmetic-of-the-worlds-tiniest-calabi-yau-threefold)
  - [The Arithmetic Side](#the-arithmetic-side)
- [Chenyang Xu - The Uniqueness of K-polystable Fano Degeneration](#chenyang-xu---the-uniqueness-of-k-polystable-fano-degeneration)
- [Eric Larson - The Maximal Rank Conjecture](#eric-larson---the-maximal-rank-conjecture)
- [John Lesieutre - Numerical Dimension Revisited](#john-lesieutre---numerical-dimension-revisited)
- [Paul Hacking - Mirror Symmetry for Fano Varieties](#paul-hacking---mirror-symmetry-for-fano-varieties)
- [Paolo Cascini - Minimal Model Program for Foliations](#paolo-cascini---minimal-model-program-for-foliations)
- [Burt Totaro - Bott Vanishing](#burt-totaro---bott-vanishing)

---

# Jim Bryan - The Geometry and Arithmetic of the World’s Tiniest Calabi-Yau Threefold
Links
- [Possibly Relevant Paper](https://arxiv.org/abs/1004.2997)

Keywords:
- Modular variety
- Calabi-Yau model
- Modular forms
- Hodge numbers
- Picard group
- Pencil
- Banana Manifold
- Orbifold
- Fiber Product
- Conifold
- Blowup
- Cusp forms
- Siegel modular form
- Group scheme
- Lefschetz fibration

Definition: A Calabi-Yau manifold is a complex project manifold $X$ with a trivial canonical class, where $H^k(X, \mathcal{O}_X) = 0$ for $k=0,n$.

Example: the quintic.

$\dim X = 1:$ Elliptic curves, all topologically $T^2$
$\dim X = 2: K_3$ surface, only one topological type (all diffeomorphic)
$\dim X = 3$: Many, suspected to be finite (around 500 million possibly!), unknown if infinite.

Hodge numbers
- $h^{?,?}$: Number of deformations
- $h^{1,1}(X)$: Number of independent curve classes

Physicists interested in $CY\dash$threefolds with small Hodge numbers (bidegree < 20)

Why should we be interested in these? Show up in Physics, (Enumerative) Geometry, Arithmetic. What's special about dimension 3? Counting curves on a $CY\dash$threefold is virtually a zero-dimensional problem.

Famously - Donaldson-Thomas / Gromov-Witten invariants, you get a number that comes from the moduli space of maps from genus $g$ curves into $X$.

Gromov-Witten potential - picking a basis for $H_k(X, \ZZ)$, then the genus $g$ potential is obtained by summing the invariants in a formal power series / generating function. Expected that the resulting functions have much structure (such as automorphic properties)

Slight embarassment - there does not exist a compact $CY\dash$threehold for which these potentials are known for each $g$, not even conjecturally!

Can we find one where we can write all of these down?

## The Arithmetic Side

Called "rigid" if the number of complex deformations is zero. (? Hodge number from above), leads to interesting arithmetic.

Theorem: Every rigid $CY3$ over $\QQ$ is modular (analog of modular theorem for elliptic curves), i.e. there exists a weight 4 modular form arising from the Galois representation on the top cohomology.

Construction: the Banana manifold. Start with a hyersurface $S$ of degree $(1,3)$ in $\PP^1 \cross \PP^2$ and blowup over $\PP^1$. Has 12 singular points?

Take the fiber product of $S$ with itself, $S \cross_{\PP^1} S$, then blow up the diagonal. Then $h^{1,1} = 20$ and $h^{2,1} = 8$.

Why "Banana manifold"? Fibered over $\PP^1$, fibers are abelian surfaces, 12 fibers are singular.

(Proceeded with construction of object with very low Hodge numbers.)


# Chenyang Xu - The Uniqueness of K-polystable Fano Degeneration
Links:
- [Possibly Relevant Paper](https://arxiv.org/abs/1812.03538)

Keywords:
- Fano Variety
- Hilbert scheme
- Semistability (of varieties)
- Moduli stack
- Minimal model program
- Valuation
- Degeneration

# Eric Larson - The Maximal Rank Conjecture
Links:
- [Possibly Relevant Paper](https://arxiv.org/abs/1711.04906)

Keywords:
- Hilbert scheme
- Canonical bundle
- Generic divisors
- Ideal sheaf

Maximal rank conjecture: roughly related to the degree of equations that cut out curves.

Look at curve in projective space - start with a curve $C$, a line bundle $L$ on $C$, and look at sections to obtain a map (parameterization). Can alternatively describe as a vanishing locus of polynomials (cartesian coordinates).

Both yield maps $C \to \PP^r$ for some $r$; Brill-Noether theorem gives criteria for existence of such a map (embedding?).

Need to look at the kernel of this restriction map:
$$ 
H ^ { 0 } \left( \mathcal { O } _ { \mathrm { pr } } ( k ) \right) \rightarrow H ^ { 0 } \left( \mathcal { O } _ { C } ( k ) \right) 
$$

Surjective, but perhaps not in general (from dimensional considerations). The conjecture is thus that this map is either injective or surjective (maximal rank).

Proof: inductive argument with three major difficulties! See paper.

---

# John Lesieutre - Numerical Dimension Revisited

> The Iitaka dimension of a line bundle D on a projective variety X is the dimension of the image of the rational map given by |mD| for large and divisible m. This is not a numerical invariant of D, and there are several approaches to constructing a "numerical dimension" of D, which should be an analogous invariant depending only on the numerical class of D.  I will discuss an example of a divisor with surprising properties with respect to these different definitions.[^1]
>
> The example is based on the existence of pseudo-automorphisms of Calabi-Yau varieties with a certain kind of dynamical positivity.  As time permits, I will explain some implications of this same positivity condition for questions in arithmetic dynamics.

[^1]: Thought to be the same, two published proofs with specific errors. This talk shows that the theorem is false.

Keywords:
- Divisors
- Base locus
- Effective
- Pseudo-effective cone
- Blowup (subvarieties)
- Fibration
- Kodaira dimension
- Iitaka conjecture
- Ample line bundles
- Picard rank
- [Riemann-Roch](http://www.math.uchicago.edu/~may/VIGRE/VIGRE2009/REUPapers/Talovikova.pdf)
- [Hilbert polynomial](https://en.wikipedia.org/wiki/Hilbert_series_and_Hilbert_polynomial)
- [Hyper-Hyperkähler](https://en.wikipedia.org/wiki/Hyperk%C3%A4hler_manifold)
- $\mathcal{O}(1)$?


Pseudoautomorphisms: Birational map that is an isomorphism in codimension 1. (Can only happen in $\dim > 3$).

Specific counterexample: obtain a divisor as the largest eigenvalue of a pullback map. It's a theorem that the largest is real, all complex are smaller in modulus.

Computing $h^0$: preserved under pullback, and eventually lands in $\mathrm{Amp}(X)$ (the ample cone $\sim$ first quadrant in $H_2 \cross H_1$), where it is trivial to compute by Riemann-Roch, Euler characteristic.

Computing $\nu(D_+)$, claim it equals 1: 
$$
\inner{D_+}{D_+} = \inner{\varphi^* D_+}{\varphi^* D_+} = \lambda^2 \inner{D_+}{D_+} \implies \inner{D_+}{D_+} = 0.
$$

Not known if there is a counterexample for $q\dash$invariants?

**Unknown, possibly hard problem:** 
$$
h^0(\lfloor mD \rfloor+A) \in_? \Theta(m^r)
$$

Suppose  $\varphi: X \selfmap$ is an automorphism (on $X/\bar\QQ$?)
Theorem: $\hat h$ is a "good" height function for $\varphi$, where
$$
\hat h (p) = \lim_{n\to\infty} \frac{h(\varphi^n(p))}{\lambda_1(\varphi)^n} + \lim_{n\to\infty} \frac{h(\varphi^{-n}(p))}{\lambda_1(\varphi^{-1})^n}
$$

# Paul Hacking - Mirror Symmetry for Fano Varieties

> The mirror of a Fano n-fold is a family of Calabi--Yau (n-1)-folds over the affine line with maximally unipotent monodromy at infinity. We describe this mirror correspondence in terms of birational geometry, deformation theory, and Hodge theory. This is joint work with Corti and Petracci, and builds on work of Coates, Corti, Galkin, Golyshev, and Kasprzyk.

Keywords:
- Fano varieties/manifolds
- Toric variety
- SYZ mirror symmetry
- SYZ conjecture
- Fukaya category
- Q-Gorenstein
- Blowdown
- Hodge theory
- Hodge-Tate variety
- Polytopes
- Minkowski sum/decomposition
- Base locus
- "General fiber"
- Gromov-Witten invariants
- Stein Manifolds

The SYZ conjecture: take the pair $(X,D)$ and $(Y,E)$, with $U=X-D, V=Y-E$, want
$$
\begin{tikzcd}
U \arrow[rdd, "f"] &  & V \arrow[ldd, "g"] \\
 &  &  \\
 & B & 
\end{tikzcd}
$$

Gives a "dual special Lagrangian torus fibrations".

"Wrapped" Fukaya category: objects are lagrangians ("wrapped" at infinity), morphisms are Floer homology? Equivalent to sheaves on a site for quasi-projective varieties?

Correspondence between complex and symplectic under mirror symmetry.

Full resolution of a singularity "factors" through partial resolutions; breaks deformation space into components.

Theme in algebraic geometry: have obstruction problem, add structure to make obstruction vanish.

*See phone picture for theorem about smoothness in deformation space.*


---

# Paolo Cascini - Minimal Model Program for Foliations

> I will discuss some recent results on the study of the birational geometry of foliations over complex projective threefolds. Joint work with C. Spicer. 

Links:
- [Recent Results around MMP](https://www2.bc.edu/brian-lehmann/papers/snapshot.pdf)
- [Possibly Relevant Paper](https://arxiv.org/abs/1808.02711)

Keywords:
- [Foliations](https://en.wikipedia.org/wiki/Foliation)
- MMP (Minimal model program)
- Divisor (and exceptional divisor)
- Semi-ample
- [Exceptional divisor/ locus](https://en.wikipedia.org/wiki/Exceptional_divisor)

Take a fibration, generally has singular fibers and thus yields a singular foliation. Blowing up these singularities does not help - this in fact introduces more singularities.

Locally, a foliation is a fibration?

# Burt Totaro - Bott Vanishing

> Bott proved a very strong vanishing theorem for sheaf cohomology on projective space. The statement does not hold for most varieties, and we survey what is known. We find new varieties that satisfy Bott vanishing, building on what is known about moduli spaces of K3 surfaces.

Links
- [Possibly Relevant Paper](https://arxiv.org/abs/1812.10516)

Keywords
- Ample line bundle
- Toric variety
- Frobenius lift
- Fano varieties
- Ample cone
- Picard group (of a surface)
- Rigidity

Definition: *Bott vanishing* holds for a smooth projective variety $X$ if for all ample line bundles $L$,
$$
H ^ { j } \left( X , \Omega _ { X } ^ { i } \otimes L \right) = 0
$$

Generalization of Kodaira vanishing; holds for all smooth projective **toric** varieties. Projective space has an interesting endomorphism, essentially the frobenius ($p^{\text{th}0}$ power map 
$$
\thevector{x_1, x_2, \cdots} \mapsto \thevector{x_1^p, x_2^p, \cdots}
$$

If the Frobenius lifts in a Fano variety, then Bott vanishing holds. Doesn't hold for many Fano varieties, namely those that aren't rigid (deformation group is not zero).

Many rigid Fanos do not satisfy Bott vanishing - Grassmanians (other than $\CP$), quadrics of $\dim \geq 3$.

Question: Does Bott vanishing imply toric (for smooth projective varieties)? Answer: No.

What are the other rationally-connected (or Fano) varieties that satisfying Bott vanishing There are more than just toric varieties. Maybe they're combinatorially meaningful? Or smooth over the integers like torics?


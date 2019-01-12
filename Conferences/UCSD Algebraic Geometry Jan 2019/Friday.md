# UCSD Algebraic Geometry Conference
Friday, January 11, 2019

[Link to Website](https://sites.google.com/site/complexalgebraicgeometry2019/)

---

# Jim Bryan - The geometry and arithmetic of the world’s tiniest Calabi-Yau threefold
[Link to Possibly Relevant Paper](https://arxiv.org/abs/1004.2997)

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


# Chenyang Xu - The uniqueness of K-polystable Fano degeneration
[Link to Possibly Relevant Paper](https://arxiv.org/abs/1812.03538)

Keywords:
- Fano Variety
- Hilbert scheme
- Semistability (of varieties)
- Moduli stack
- Minimal model program
- Valuation
- Degeneration

# Eric Larson - The Maximal Rank Conjecture
[Link to Possibly Relevant Paper](https://arxiv.org/abs/1711.04906)

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
- Pseudo-effective cone
- Blowup (subvarieties)
- Fibration
- Kodaira dimension
- Iitaka conjecture
- Ample line bundles
- Picard rank


Pseudoautomorphisms: Birational map that is an isomorphism in codimension 1. (Can only happen in $\dim > 3$).

Specific counterexample: obtain a divisor as the largest eigenvalue of a pullback map (theorem that the largest is real, all complex are smaller in modulus).
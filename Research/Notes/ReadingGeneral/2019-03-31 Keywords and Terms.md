Reading: [Mark Hovey's List of Open Problems in Algebraic Topology](http://mhovey.web.wesleyan.edu/problems/big.html)

> Note: a vector bundle is a locally free sheaf.
> A scheme is a generalization of a ring, in the same way that a manifold is a generalization of R^n

To look up and learn more about:
## Specific Problems/Conjectures
(and concepts therein)

- The Weil Conjectures
  - What are the actual statements? What is their importance within AG?
  - What were Deligne's contributions?
- The Ravenel conjectures
  - Particularly Mike Hopkins' contributions
- The generating hypothesis in stable homotopy theory
- Elliptic cohomology
  - Hopkins' viewpoint on elliptic spectra
- The etale fundamental group
- Topological modular forms
- Index theory
- Chromatic homotopy theory
- The chromatic spectral sequence
- The chromatic splitting conjecture
  - Is this similar to fracture theorems in stable homotopy..?
- Bousfield localization
- The telescope conjecture
- Loop spaces
  - Particularly infinite loop spaces, and why they're important
- Weyl groups
- The Kervaire invariant 1 problem
- The Adams Spectral Sequence
- **Morava $K$ and $E$ theory**
- The Morava stabilizer groups
- Lubin-Tate spaces
- **Spectra**
  - Really spell out the details of how they're constructed (find/pick one of the nicer definitions) and their duality with homology theories
  - Extract some of the motivating examples of computations with spectra from my textbook annotations
  - Especially try to understand the bordism spectrum, $MO$? And $MU$
    - Want to know $K(MU), TC(MU)$, etc
  - And ring spectra
- Hopf Algebras
  - Same story, extract and understand the motivating examples
  - Also piece together theory of e.g. comodules over them
  - Also Hopf Algebroids
- Localization
  - See some actual computations of computing "at a prime" or "away from a prime" 
- Gerbes
- Simplicial sets
  - Find some results that actually work/compute with these
- **$K\dash$theory**
- The Novikov conjecture
- Metrics and curvature on manifolds
- Understand the $H$ notation, i.e. $H\ZZ$
- $A_\infty$
- $H\dash$spaces
- Motivate and understand phantom maps
- Nilpotence
- Profinite groups
- Quasi-coherent sheaves over a scheme
- Moduli stacks
- Formal group laws
- Symmetric monoidal categories
- Quillen equivalence
- Model categories 
  - And cofibrant generation
- **The Steenrod Algebra**
- Cohomology operations
- Thom spectrum
  - And Thom space
- Tate cohomology
- Get a more precise understanding of $n\dash$categories
- The Milnor conjecture
- The Grothendieck-Witt Ring
- The chromatic redshift conjecture
- Algebraic K Theory
  - And how topological cyclic homology is related and more computable
- Formal Groups
  - Where they come up, what they're used for, why important
- Mapping class group: orientation-preserving diffeos / id component
- Perfect fields
- Spf: Formal spectrum
- Morava $E\dash$theory and $K\dash$theory
  - $E$ behaves like a local ring and $K$ its residue fields
- Brauer groups
- Massey products
- Descent

## General Theory
- Algebras
  - Precise descriptions of polynomial, exterior, and symmetric algebras
  - Differential graded and Lie algebras
- Homotopy and derived categories
  - Sort out weak equivalences vs homotopy equivalences vs quasi-isomorphisms etc
- Limits, colimits
- Pushouts, pullbacks
- Adjunction
- Equivalence of categories
  - Need to state this precisely!
- $E_n$ rings
- Sard's Theorem
- Generalized Poincare
- Langlands and Geometric Langlands
- L functions for elliptic curves
- The Frobenius
- Classification of surfaces
- Complex structures, almost-complex structures
- Trivial, canonical, universal bundles
- Exceptional divisor
- Blowup
- Hodge numbers
- Jacobian of a curve
- Abelian varieties
- Schemes
- Stacks
- Coarse moduli space
  - Somehow a nicer version of a stack where torsion in the automorphism groups aren't messing things up
- Closed points of a scheme
- Smooth projective curves
- Chow rings
- Teichmüller space: space of complex structures

## Notes

>Flipping roles, generalized cohomology theories can be studied in their own right. They come from a category called the stable homotopy category (which is much like a derived category of chain complexes), and each of them can be determined by a certain amount of data involving cohomology operations. Much of this data can be recovered by looking at how the generalized cohomology theory behaves on certain spaces (projective spaces and classifying spaces being the canonical examples).

> After a lot of hard work (with some of the bigger names including Adams, Milnor, and Quillen, though I am leaving a lot of important names out) it is discovered, starting from almost pure calculation, that the stable homotopy category has a connection to the category of 1-dimensional formal groups, via the study of characteristic classes. Each generalized cohomology theory determines some amount of formal group data.

>  via things like BP-theory and the Adams-Novikov spectral sequence, leads to better qualitative understanding of the stable homotopy category, new guesses about what phenomena can occur (e.g. the Ravenel conjectures), new techniques which are computationally useful, and new theorems (e.g. the solution of most of the Ravenel conjectures).

>Take a look at Machlachlan and Reid's book "The Arithmetic of Hyperbolic 3-Manifolds".

> Since finite volume hyperbolic structures are unique whenever an n-manifold (n≥3) has them, any invariants of the hyperbolic structure are invariants of the manifold. Hyperbolic manifolds are K(π,1)-spaces, so they're not just diffeo/homeomorphism invariants, but invariants of the homotopy-type.

> I think the whole field of anabelian geometry fits the bill, even if it's perhaps more focused on going the other way around (i.e. applying homotopy theory to number theory). Anabelian geometry is a 'program' launched by Grothendieck in his famous Esquisse d'un Programme, and is all about translating arithmetic geometric problems to problems in homotopy theory.

> As an example of a specific instance of the anabelian philosophy, we have Grothendieck's celebrated 'section conjecture', which states (in one form) that for a 'nice' curve X over a number field F, the rational points are in bijection with the sections of the exact sequence
$$
1 \rightarrow \pi_1(X_{\bar{F}}) \rightarrow \pi_1(X) \rightarrow G_F \rightarrow 1
$$
where GF is the absolute Galois group of F and π1 is the algebraic (etale) fundamental group. In case the curve is over the complex numbers, the etale π1 is the profinite completion of the regular fundamental group, so there is a very close connection to the classical stuff of Hatcher. The conjecture is still a wide open problem, but any proof would mean you could check something of number theoretic interest (existence of rational points on curves) by studying maps between certain generalized homotopy groups!

Neat trick from algebraic geometry: For a stack $\mathcal M =X/G$ where $X$ is a $\CC\dash$variety and $G$ is a finite group, then
$$
H^\wait(\mathcal M; \QQ) \cong \left( H^\wait(X; \QQ)\right)^G
$$
where the RHS denotes the taking the $G\dash$ invariant part. Seems to only work over $\QQ$. The quotient is scheme-theoretic. The actual definite involves equivariant cohomology.

Prototypical example of a moduli space: $\Gr_\CC(n, k)$. Apparently fundamental classes exist for closed subvarieties? Maybe just closed subvarieties of a moduli space.

You can take the homotopy groups of a cohomology theory.
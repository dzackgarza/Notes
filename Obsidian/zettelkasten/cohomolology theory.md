---
aliases: ["extraordinary cohomology theory", "generalized cohomology theory"]
---

- [complex oriented cohomology theory](complex%20oriented%20cohomology%20theory.md)

- Axioms: if we drop $H^* \pt = 0$, we get generalized alternatives to cohomology.

# Motivation

The basic result is [Brown Representability](Brown%20Representability). If I have some graded homotopy invariant of spaces that takes [cofiber sequences](zettelkasten/cofiber%20sequence.md) to long exact sequences and has a suspension isomorphism and takes wedges to products, then this is represented by a sequence of spaces $\ts{E_n}$ with weak equivalences $E_n \cong \Omega E_{n+1}$ coming from the existence of the suspension isomorphism and the Yoneda lemma. 

Conversely, given a sequence of spaces $\ts{E_n}$ with maps $\Sigma E_n\to E_{n+1}$, you can cook up a [cohomolology theory](cohomolology%20theory.md). This means that one can do some pretty formal manipulations inside the category of [[Spectra]] and produce lots of different cohomology theories, even ones that have no geometric interpretation a priori.

For example, there is a cohomology theory called [tmf](Topological%20modular%20forms.md) which has (as of now) no geometric interpretation, but can detect many nontrivial maps between spheres, and can even be used to prove results in [[number theory]].

We see that self maps $E\to E$ of a [spectrum](spectrum) give natural transformations of the corresponding [cohomolology theory](cohomolology%20theory.md). Any map of spaces has to preserve this transformation (by definition of [natural transformation](natural%20transformation.md)), and so we can cook up [cohomology operations](zettelkasten/Cohomology%20operations.md) by cooking up maps of spectra. 

There's even a machine, [Adams Spectral Sequence](Adams%20Spectral%20Sequence), which computes all maps between spectra.

You can take the homotopy groups of a cohomology theory.

# Unsorted

Flipping roles, [generalized cohomology theories](cohomolology%20theory.md) can be studied in their own right. They come from a category called the [stable homotopy category](stable%20homotopy%20category) (which is much like a [derived category](derived%20category.md) of chain complexes), and each of them can be determined by a certain amount of data involving [Cohomology operations](Cohomology%20operations.md). Much of this data can be recovered by looking at how the generalized cohomology theory behaves on certain spaces (projective spaces and [classifying spaces](classifying%20space.md) being the canonical examples).

After a lot of hard work (with some of the bigger names including Adams, Milnor, and Quillen, though I am leaving a lot of important names out) it is discovered, starting from almost pure calculation, that the stable homotopy category has a connection to the category of 1-dimensional [Formal group](../Formal%20group.md), via the study of [Characteristic classes](characteristic%20class.md). Each generalized cohomology theory determines some amount of formal group data.

Via things like BP-theory and the [Adams-Novikov spectral sequence](Adams-Novikov%20spectral%20sequence), leads to better qualitative understanding of the stable homotopy category, new guesses about what phenomena can occur, e.g. [the Ravenel conjectures](Ravenel%20conjecture), new techniques which are computationally useful, and new theorems (e.g. the solution of most of the [Ravenel conjectures](Ravenel%20conjectures)).

- [Representing cohomology](Representing%20cohomology)
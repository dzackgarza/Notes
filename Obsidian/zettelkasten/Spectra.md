---
alaises: ["spectrum"]
---

References: [Stable homotopy](Stable%20homotopy.md)

> Opinion from MO: modern Topology starts with spectra.

- [[How to extract homology using spectra]]
- [Homotopy groups of spectra](Homotopy%20groups%20of%20spectra)

# Motivation

## Suspension

We have another aim in constructing the category of spectra. In homology theory the suspension homomorphism $\Sigma_*: h_n(X)\to h_{n+1}(\Sigma X)$ is always an isomorphism

## Cohomology Theories

There are some things that spaces hide to cohomology theories, and we would like to mod out by this "extra information" that we don't really need when we study spaces by means of cohomology theories. 

The information that spaces hide is the unstable phenomenon, in the following sense : if $X$ and $Y$ are stably equivalent, for example $\Sigma X \homotopic \Sigma Y$, then 
$$
E_*(X)\cong E_{*+1}(\Sigma X) \cong E_{*+1}(\Sigma Y)\cong E_*(Y)
$$ 
for any [generalized cohomology theory](cohomolology%20theory.md) $E_*$. This says that there is no cohomology theory that is going to see a difference between $X$ and $Y$, so we might as well says that they are "the same"

> Cohomology theories do not distinguish stably equivalent spaces.

## Representability
Another good consequence of spectra is the [Brown Representability](Brown%20Representability) theorem. It says that any [[generalized cohomology theory]] on spaces is representable by a spectra. 

## Hopf Invariant 1
A reason to care about cohomology theories: Adams' two solutions to the [[zettelkasten/Hopf invariant one]] problem. First solution uses ordinary cohomology to do the work, but long and uses higher [Cohomology operations](Cohomology%20operations.md). 

His second proof (with Atiyah) is beautiful and short, but only because he uses an extraordinary cohomology theory, [[complex K-theory]]. 

- [More on Hopf invariant](http://people.virginia.edu/~mah7cd/Foundations/Adams,%20Atiyah%20-%20K-theory%20and%20the%20Hopf%20Invariant.pdf)

## Categorical Properties
You may be familiar with a similar problem at the space level. One can construct the [[homotopy category]] of spaces by taking the objects to be CW complexes and the morphisms to be homotopy classes of continuous maps. This is a category, all right, but **it does not contain [pushouts](Pushout) or [sequential colimits](sequential%20colimits)**. 

So you can work with spaces and maps-up-to-homotopy if you like, but you won't be able to do much. It's much better to work with spaces and maps on-the-nose, and to make constructions like the [[double mapping cylinder]] and the [[mapping telescope]] when you want to form [pushouts](Pushout) or [[sequential colimits]]. 

> Slogan: Pass to homotopy as late as possible.


Noting that $\Sigma S^n = S^{n+1}$, we could alternatively define $\mathbb{S} \definedas \lim_k \Sigma^k S^0$, then it turns out that $\pi_n \mathbb{S} = \pi_n^S$. 

This object is a *spectrum*, which vaguely resembles a chain complex with a differential:
$$
X_0 \mapsvia{\Sigma} X_2 \mapsvia{\Sigma} X_3 \mapsvia{\Sigma} \cdots
$$

Spectra *represent* invariant theories (like cohomology) in a precise way. For example, 
$$
HG \definedas \left(K(G, 1) \mapsvia{\Sigma} K(G, 2) \mapsvia{\Sigma} \cdots \right)
$$

then $H^n(X; G) \cong [X, K(G, 1)]$, and we can similarly extract $H^*(X; G)$ from (roughly) $\pi_* HG \definedas [\mathbb{S}, HG \bigwedge X]$.

> Note: this glosses over some important details! Also, smash product basically just looks like the tensor product in the category of spectra.

A modern direction is cooking up spectra that represent *extraordinary* cohomology theories. There are [[Eilenberg–Steenrod axioms]] that uniquely characterize homology on spaces.
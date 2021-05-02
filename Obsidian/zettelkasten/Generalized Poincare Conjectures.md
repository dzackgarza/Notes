Links: [[Topology]] | [[Algebraic Topology]] | [[Homotopy]] | [[Reference]]
Tags: #talks

<!--![](zettelkasten/figures/HomotopyTalk%20-%20GSTS.pdf)-->

# History

Poincaré, *Analysis Situs* papers in 1895. 
Coined "homeomorphism", defined homology, gave rigorous definition of homotopy, established "method of invariants" and essentially kicked off algebraic topology.

# Motivation
[Smooth structures](Smooth%20structures)

# Background
See Algtop homotopy notes.

## Application
If $X$ a simply connected, closed 3-manifold is a homology sphere, then it is a homotopy sphere. 

- $H_0 X = \ZZ$ since $X$ is path-connected
- $H_1 X = 0$ since $X$ is simply-connected
- $H_3 X = \ZZ$ since $X$ is orientable
- $H_2 X = H^1 X$ by **Poincaré duality**. What group is this?
  - $0 \rightarrow \operatorname{Ext}_{\ZZ}^{1}\left(H_{0}(X ; \mathbb{Z}), \mathbb{Z}\right) \rightarrow H^{1}(X ; \mathbb{Z}) \rightarrow \operatorname{Hom}_{\mathbb{Z}}\left(H_{1}(X ; \mathbb{Z}), \mathbb{Z}\right) \rightarrow 0$ yields
  - $0 \rightarrow \operatorname{Ext}_{\ZZ}^{1}\left(\ZZ, \mathbb{Z}\right) \rightarrow H^{1}(X ; \mathbb{Z}) \rightarrow \operatorname{Hom}_{\mathbb{Z}}\left(0, \mathbb{Z}\right) \rightarrow 0$
  - Then $\operatorname{Ext}_{\ZZ}^{1}\left(\ZZ, \mathbb{Z}\right) = 0$ because $\ZZ$ is a projective $\ZZ\dash$module, so $H^1 X = 0$.
- So $H_*(X) = [\ZZ, 0, 0, \ZZ, 0, \cdots ]$
- So $h_3: \pi_3 X \to H_3 X$ is an isomorphism by **Hurewicz**. Pick some $f\in \pi_3 X \cong \ZZ$. By partial application, this induces an isomorphism $H_* S^3 \to H_* X$.
- Taking **CW approximations** for $S^3, X$, we find that $f$ is a homotopy equivalence.

# Other Topics

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

# Other Topics

- [[The homotopy hypothesis]]
- [generalized cohomology theory](../cohomolology%20theory.md)
- [Stable homotopy](../Stable%20homotopy.md)
- [infty categories](../infty%20categories.md)
- [../Eilenberg-MacLane Spaces](../Eilenberg-MacLane%20Spaces.md) and [Moore spaces](Moore%20spaces)
- [Homotopy Groups of Spheres](Homotopy%20Groups%20of%20Spheres)
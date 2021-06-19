---
aliases: ["Henselian"]
---

- Slogan: If a polynomial $p(x)$ has a [simple root](simple%20root)  $r$ modulo a prime $p$, then $r$ corresponds to a unique root of $p(x)$ modulo any $p^n$ gotten by iteratively "lifting" solutions.
- Setup: let $K\in \Field$ be [complete](Complete%20ring.md) wrt a normalized [discrete valuation](discrete%20valuation) where $\OO_K$ is the [ring of integers](ring%20of%20integers.md) of $K$ with a [uniformizer](uniformizer.md) $\pi$ and let $\kappa(k) \da \OO_K/ \gens{\pi}$ be the [residue field](residue%20field).
	- $K$ is **Henselian** if $p \in \OO_K[x]$ where its reduction $\bar p \in \kappa(k)[x]$ has a simple root $k_0$, there is a lift $\tilde k_0 \in \OO_K$ with $p(\tilde k_0) = 0$.
- A [local ring](local%20ring) $R$ with maximal ideal $\mfm$ is called **Henselian** if Hensel's lemma holds. 
	- This means that if $p\in  R[x]$ is monic, then any factorization of its image $\bar p \in (R/\mfm)[x]$ into a product of coprime monic polynomials can be lifted to a factorization of $p$ in $R[x]$.
- A field with [valuation](valuation.md) is said to be **Henselian** if its [valuation ring](valuation%20ring) is Henselian.
- A Henselian local ring is called **strictly Henselian** if its residue field is [separably closed](separably%20closed).
- The Henselization of A is an algebraic substitute for the completion of A
- See slogan: Henselian implies large. Can product points.
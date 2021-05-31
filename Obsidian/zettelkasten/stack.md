---
aliases: ["stack", "stacks"]
---

Tags: #algebraicgeometry 

# References

- [AMS What is... a stack](http://www.ams.org/notices/200304/what-is.pdf)

# Topics
- Moduli stack
	- [moduli stack of elliptic curves](moduli%20stack%20of%20elliptic%20curves)
	- [moduli stack of Higgs bundles](moduli%20stack%20of%20Higgs%20bundles.md)
- [Quotient stack](Quotient%20stack)
- [Gerbe](Gerbe)
- [Algebraic space](Algebraic%20space)
- [Artin stack](Artin%20stack)
- [Deligne-Mumford stack](Deligne-Mumford%20stack)
- [category fibered in groupoids](category%20fibered%20in%20groupoids)
- Proper: ?
- [Homotopy quotient](Homotopy%20quotient)

> ‘Of course, here I’m working with the moduli stack rather than with the moduli space. For those of you who aren’t familiar with stacks, don’t worry: basically, all it means is that I’m allowed to pretend that the moduli space is smooth and there’s a universal family over it.’

# Notes

Neat trick from algebraic geometry: For a stack $\mathcal M =X/G$ where $X$ is a $\CC\dash$variety and $G$ is a finite group, then
$$
H^\wait(\mathcal M; \QQ) \cong \left( H^\wait(X; \QQ)\right)^G
$$
where the RHS denotes the taking the $G\dash$ invariant part. Seems to only work over $\QQ$. The quotient is scheme-theoretic. The actual definition involves [Equivariant cohomology](Equivariant%20cohomology.md).

- A prestack is a functor $\Aff\Sch_{/k}\op \to \hoType$
	- Source: the infinity category of derived rings over $k$...?
	- Target: the infinity category of spaces.
---
date: 2021-04-26
---

# References
- Chapter 1 https://mandal.ku.edu/M996QuillenKTheory/0TheKBooK.pdf[]()

Tags:
#category_theory


| Category        | Set                     | Grp             | CRing          | Ring        | Field | Ab                | $\Vect_k$         | R-Mod             | $R\dash$cAlg       | Sch         | Top               | $\Top_*$     |
| --------------- | ----------------------- | --------------- | -------------- | ----------- | ----- | ----------------- | ----------------- | ----------------- | ------------------ | ----------- | ----------------- | ------------ |
| Product         | $\prod_i A_i$           | $\prod_i A_i$   |                |             | None  |                   |                   | $\prod_i A_i$     |                    |             | $\prod_i A_i$     |              |
| Coproduct       | $\coprod_i A_i$         | $A\ast B$       |                | $A\star B$  | None  | $\bigoplus_i A_i$ | $\bigoplus_i A_i$ | $\bigoplus_i A_i$ | $\bigotimes_i A_i$ |             | $\coprod A_i$     | $\vee_i A_i$ |
| Pullback        | $A\times_C B, A \cap B$ | $A\times_C B$   | $A\times_C B$  |             |       |                   |                   | $A\times_C B$     |                    |             |                   |              |
| Pushout         | $A \coprod B/\sim$      | $A \ast B/\sim$ | $A\otimes_C B$ |             |       |                   |                   |                   |                    |             | $A \coprod_{f} B$ |              |
| Initial Object  | $\emptyset$             | $\ts{1}$        |                | $\ZZ$       | None  |                   |                   | $\ts{1}$          |                    | $\spec(0)$  | $\emptyset$       |              |
| Terminal Object | $\ts{a_1}$              |                 |                | $\ts{0}$    | None  |                   |                   |                   |                    | $\spec \ZZ$ | $\pt$             |              |
| Zero Object     |                         | $\ts{1}$        |                | $\ts{0}$    | None  |                   |                   |                   |                    |             |                   |              |

$$
A\star B \cong A \oplus B \oplus (A \otimes B) \oplus (B \otimes A) \oplus (A \otimes A \otimes B) \oplus (A \oplus B \oplus A) \oplus (B \oplus A \oplus A) \oplus ...
$$

# Topics

- [equivalence of categories](equivalence%20of%20categories.md)
	- [full functor](full%20functor)
	- [faithful functor](faithful%20functor)
	- [adjunction](adjunction.md)
- Limits and universal properties
	- [coproduct](coproduct)
	- [cokernel](cokernel)
	- [colimit](colimit.md)
	- [monomorphism](monomorphism)
- Homological algebra
	- [additive functor](additive%20functor)
	- [abelian category](abelian%20category.md)
	- [additive category](additive%20category)
	- [monomorphism](monomorphism.md)
	- [mapping cone](mapping%20cone)
- [Yoneda lemma](Yoneda%20lemma)
- [isomorphism of functors](isomorphism%20of%20functors)
- [subfunctor](subfunctor)
- [exponential object](exponential%20object)
- [monads](monads)

# Notes

- One regards a category $\cat C$ as an ∞-category via its [nerve](nerve.md).
	- The nerve lands in simplicial sets, but everything in its image satisfies the Kan extension condition.
- Categories are special cases of [simplicial sets](simplicial%20set.md)
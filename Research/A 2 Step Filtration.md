# A 2 Step Filtration

## Goal: 

We want to explicitly consider all of the objects, maps, and differentials in a particular spectral sequence arising from a space that admits a filtration that terminates in two steps. There are several concrete examples that should fit into this framework:

- $0 \injects S^k \injects S^n$ for any $k < n$
- $0 \injects S^n \injects \CP^n$
- $0 \injects \RP^n \injects S^n$
  - Using $S^n$ as a double cover of $\RP^n$

This should hopefully make it easier to look at similar fibrations and/or fibre bundles:

- $S^0 \into S^n \into \RP^n$
- ​

## Setup

Let $X$ be a space and let $A\subset X$ be a subspace, so we have the following inclusions of spaces:

$$0 \injects A \injects B$$

Then consider applying the "chain functor" $C_*(\cdot): \textbf{Top} \into \textbf{Ab}$ that sends a space $X$ to a singular chain complex 
$$C_*(X) \definedas \cdots \mapsvia{\del_{i-1}} C_i(X) \mapsvia{\del_i} C_{i+1}(X) \mapsvia{\del_{i+1}} \cdots$$

Applying this functor to the above inclusion induces an inclusion of chain complexes:

$0 \injects C_*(A) \injects C_*(X)$

We regard this as a two step filtration on $C^*(X)$ by making the following identifications:

- $F_0C_*(X) \definedas C_*(X)$
- $F_1C_*(X) \definedas C_*(A)$
- $F_2C_*(X) \definedas 0$

And we obtain the primary object of interest for this spectral sequence:

$0 = F_2C_*(X) \injects F_1C_*(X) \injects F_0C_*(X) = C_*(X)$


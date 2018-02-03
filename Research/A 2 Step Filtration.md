# A 2 Step Filtration

## Goal: 

We want to explicitly consider all of the objects, maps, and differentials in a particular spectral sequence arising from a space that admits a filtration that terminates in two steps. There are several concrete examples that should fit into this framework:

- $0 \injects S^k \injects S^n$ for any $k < n$
- $0 \injects S^n \injects \CP^n$
- $0 \injects \RP^n \injects S^n$
  - Using $S^n$ as a double cover of $\RP^n$



## Setup: Space and Filtration

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



This process is roughly summarized in the following diagram:
$$
\begin{CD}
0 @>>\injects> A @>>\injects> X \\
@VVV @VVC_*(\cdot)V @VVV\\
0 @>>\injects> C_*(A) @>>\injects> C_*(X)\\
@| @| @|\\
F_2C_*(X) @>>\injects> F_1C_*(X) @>>\injects> F_0C_*(X)
\end{CD}
$$

# Setup: Spectral Sequence

A few definitions to recall:

$G_iC_*(X) \definedas \frac{F_iC_*(X)}{F_{i+1}C_*(X)}$

$E_0^{p,q} = G_pC_{p+q}(X)$

$E_1^{p,q} = H(E_0^{p,q}, d_0)$

# Computation of Pages

## $E_{-1}$

Not standard usage, here I consider the "$E_{-1}$ page" to be simply a presentation of the double complex itself.
$$
\begin{array}{lc@{200pt}|cccc}
n & 0 & F_2C_n(X) &  F_1C_n(X) &  F_0C_n(X) \\
\vdots & \vdots & \vdots & \vdots \\
0 &0 & 0 & 0 & 0 \\
0 &0 & 0 & 0 & 0 \\
0 &0 & 0 & 0 & 0 \\
0 &0 & 0 & 0 & 0 \\
\hline
0 &0 & 0 & 0 & 0 \\
0 &0 & 0 & 0 & 0 \\
0 &0 & 0 & 0 & 0 \\
\end{array}
$$


## $E_0$

## $E_1$

## $E_2$


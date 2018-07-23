# A 2 Step Filtration

## Goal:

We want to explicitly consider all of the objects, maps, and differentials in a particular spectral sequence arising from a space that admits a filtration that terminates in two steps. There are several concrete examples that should fit into this framework:

- $0 \injects S^k \injects S^n$ for any $k < n$
- $0 \injects S^n \injects \CP^n$
- $0 \injects \RP^n \injects S^n$
  - Using $S^n$ as a double cover of $\RP^n$



## Setup: Space and Filtration

Let $X$ be a space and let $A\subset X$ be a subspace, inducing the inclusion $A\mapsvia{i} X$, so we have the following inclusions of spaces:

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
0 @>>\injects> A @>i>\injects> X \\
@VVV @VVC_*(\cdot)V @VVV\\
0 @>>\injects> C_*(A) @>i_*>\injects> C_*(X)\\
@| @| @|\\
F_2C_*(X) @>>\injects> F_1C_*(X) @>i_*>\injects> F_0C_*(X)
\end{CD}
$$

# Setup: Spectral Sequence

A few definitions to recall:

$G_iC_*(X) \definedas \frac{F_iC_*(X)}{F_{i+1}C_*(X)}$

$E_0^{p,q} = G_pC_{p+q}(X)$

$E_1^{p,q} = H(E_0^{p,q}, d_0)$

# Computation of Pages

## $E_{-1}$

Not standard usage, here I consider the "$E_{-1}$ page" to be simply a presentation of the double complex itself. The formula works out to be something like
$E_{-1}^{p,q} = F_pC_q(X)$

$$
\begin{array}{l:r|cccc}
q= n &\hspace{4em} 0 & F_0C_n(X) &  F_1C_n(X) &  F_2C_n(X) \\
\vdots & \vdots & \vdots & \vdots \\
q=3 &0 &  F_0C_3(X) & F_1C_3(X) &  F_2C_3(X) \\
q=2 &0 &  F_0C_2(X) & F_1C_2(X) &  F_2C_2(X) \\
q=1 &0 & F_0C_1(X) & F_1C_1(X) &  F_2C_1(X) \\
q=0 &0 & F_0C_0(X) &  F_1C_0(X) & F_2C_0(X) \\
\hline \\
q=-1 &0 & 0 & 0 & 0 \\
q-2 &0 & 0 & 0 & 0 \\
\\\hdashline\\
p = -2 & p=-1& p=0 & p=1 & p=2 \\
\end{array}
$$



For clarity, we unpack definitions here to show how the actual original chain complexes sit inside of this page:
$$
\begin{array}{l:r|cccc}
q= n &\hspace{4em} 0 & C_n(X) &  C_n(A) &  0 \\
\vdots & \vdots & \vdots & \vdots \\
q=3 &0 &  C_3(X) & C_3(A) &  0 \\
q=2 &0 &  C_2(X) & C_2(A) &  0 \\
q=1 &0 & C_1(X) & C_1(A) &  0 \\
q=0 &0 & C_0(X) &  C_0(A) & 0 \\
\hline \\
q=-1 &0 & 0 & 0 & 0 \\
q-2 &0 & 0 & 0 & 0 \\
\\\hdashline\\
p = -2 & p=-1& p=0 & p=1 & p=2 \\
\end{array}
$$

Focusing on the area $p,q >= -1$, we use the fact that the chain complexes come with natural boundary maps to define the differentials $d_{-1}\definedas \del_n: C_n(X) \into C_{n-1}(X)$.
$$
\begin{CD}
0 @<<< 0 @<<< 0 @<<< 0 \\
@VVV @VVV @VVV @VVV \\
0 @<<< C_n(X) @<<i_*< C_n(A) @<<< 0 \\
@VVV @VV\del_nV @VV\restrictionof{\del_n}{A}V @VVV \\
0 @<<< C_{n-1}(X) @<<i_*< C_{n-1}(A) @<<< 0 \\
@VVV @VV\del_{n-1}V @VV\restrictionof{\del_{n-1}}{A}V @VVV \\
0 @<<< C_{n-2}(X) @<<i_*< C_{n-2}(A) @<<< 0 \\
@VVV @VVV \vdots @VVV \vdots@VVV\\
0 @<<< C_2(X) @<<i_*< C_2(A) @<<< 0 \\
@VVV @VV\del_{2}V @VV\restrictionof{\del_2}{A}V @VVV \\
0 @<<< C_1(X) @<<i_*< C_1(A) @<<< 0 \\
@VVV @VV\del_{1}V @VV\restrictionof{\del_1}{A}V @VVV \\
0 @<<< C_0(X) @<<i_*< C_0(A) @<<< 0 \\
@VVV @VV\del_{0}V @VV\restrictionof{\del_0}{A}V @VVV \\
0 @<<< 0 @<<< 0 @<<< 0 \\
\end{CD}
$$


## $E_0$

Here we use the following formulas/facts:

- $G_iC_*(X) \definedas \frac{F_iC_*(X)}{F_{i+1}C_*(X)}$
- $E_0^{p,q} \definedas G_pC_{p+q}(X)$
- $C_n(X, A) \definedas \frac{C_n(X)}{C_n(A)}$
  - This can be done because there is a SES
    $0 \into C_*(A) \into C_*(X) \into \frac{C_*(X)}{C_*(A)} \into 0$
    Then since $\del_n : C_n(X) \into C_{n-1}(X)$ has the property that $\del_n(C_*(A)) = C_*(A)$, it factors through the quotient $\frac{C_*(X)}{C_*(A)}$ to yield a map $\hat\del_n: \frac{C_n(X)}{C_n(A)} \into \frac{C_{n-1}(X)}{C_{n-1}(A)}$. Shorten notation by calling $\frac{C_*(X)}{C_*(A)} \definedas C_*(X, A)$ the relative chain complex; this yields relative homology with respect to $\hat\del$, i.e. $H_n(X,A) \definedas \frac{\ker \del_n}{\im \del_{n+1}} \subset C_n(X, A)$.

which explicitly yields
$$
G_0C_*(X) = \frac{F_0C_*(X)}{F_1C_*(X)} = \frac{C_*(X)}{C_*(A)} \definedas C_*(X, A) \\
G_1C_*(X) = \frac{F_1C_*(X)}{F_2C_*(X)} = \frac{C_*(A)}{ 0 } = C_*(A) \\
G_2C_*(X) = \frac{0}{0} = 0
$$
$E_0^{p,q} \definedas G_pC_q(X)$

$C_n(X, A) \definedas \frac{C_n(X)}{C_n(A)}$

$$
\begin{array}{l:r|cccc}
q= n &\hspace{4em} 0 & G_0C_n(X) &  G_1C_{n+1}(X) &  0 \\
\vdots & \vdots & \vdots & \vdots \\
q=3 &0 &  G_0C_3(X) & G_1C_4(X) &  0 \\
q=2 &0 &  G_0C_2(X) & G_1C_3(X) &  0 \\
q=1 &0 & G_0C_1(X) & G_1C_2(X) &  0 \\
q=0 &0 & G_0C_0(X) &  G_1C_1(X) & 0 \\
\hline \\
q=-1 &0 & 0 & G_1C_0(X) & 0 \\
q-2 &0 & 0 & 0 & 0 \\
\\\hdashline\\
p = -2 & p=-1& p=0 & p=1 & p=2 \\
\end{array}
$$

Which unpacks as
$$
\begin{array}{l:r|cccc}
q= n &\hspace{4em} 0 & \frac{F_0C_n(X)}{F_1C_n(X)} &  \frac{F_1C_{n+1}(X)}{F_2C_{n+1}(X)} &  0 \\
\vdots & \vdots & \vdots & \vdots \\
q=3 &0 &  \frac{F_0C_3(X)}{F_1C_3(X)} & \frac{F_1C_4(X)}{F_2C_4(X)} &  0 \\
q=2 &0 & \frac{F_0C_2(X)}{F_1C_2(X)} & \frac{F_1C_3(X)}{F_2C_3(X)} &  0 \\
q=1 &0 &\frac{F_0C_1(X)}{F_1C_1(X)} & \frac{F_1C_2(X)}{F_2C_2(X)} &  0 \\
q=0 &0 & \frac{F_0C_0(X)}{F_1C_0(X)} &  \frac{F_1C_1(X)}{F_2C_1(X)} & 0 \\
\hline \\
q=-1 &0 & 0 & \frac{F_1C_0(X)}{F_2C_0(X)} & 0 \\
q-2 &0 & 0 & 0 & 0 \\
\\\hdashline\\
p = -2 & p=-1& p=0 & p=1 & p=2 \\
\end{array}
$$

Which further unpacks as
$$
\begin{array}{l:r|cccc}
q= n &\hspace{4em} 0 & \frac{C_n(X)}{C_n(A)} & \frac{C_{n+1}(A)}{0} &  0 \\
\vdots & \vdots & \vdots & \vdots \\
q=3 &0 &  \frac{C_3(X)}{C_3(A)} &\frac{C_4(A)}{0} &  0 \\
q=2 &0 & \frac{C_2(X)}{C_2(A)} & \frac{C_3(A)}{0} &  0 \\
q=1 &0 &\frac{C_1(X)}{C_1(A)} &\frac{C_2(A)}{0} &  0 \\
q=0 &0 & \frac{C_0(X)}{C_0(A)} &  \frac{C_1(A)}{0} & 0 \\
\hline \\
q=-1 &0 & 0 & \frac{C_0(A)}{0} & 0 \\
q-2 &0 & 0 & 0 & 0 \\
\\\hdashline\\
p = -2 & p=-1& p=0 & p=1 & p=2 \\
\end{array}
$$

Which by definition is
$$
\begin{array}{l:r|cccc}
q= n &\hspace{4em} 0 & C_n(X, A) & C_{n+1}(A) &  0 \\
\vdots & \vdots & \vdots & \vdots \\
q=3 &0 & C_3(X, A) & C_4(A) &  0 \\
q=2 &0 & C_2(X, A) &  C_3(A)&  0 \\
q=1 &0 &C_1(X, A) &C_2(A) &  0 \\
q=0 &0 &C_0(X, A) &  C_1(A) & 0 \\
\hline \\
q=-1 &0 & 0 & C_0(A) & 0 \\
q-2 &0 & 0 & 0 & 0 \\
\\\hdashline\\
p = -2 & p=-1& p=0 & p=1 & p=2 \\
\end{array}
$$


For any pair $(X, A)$, there is a long exact sequence

$\cdots H_n(A) \mapsvia{} H_n(X) \mapsvia{} H_n(X, A) \mapsvia{\delta_n} H_{n-1}(A) \cdots$
$$
\begin{CD}
0 @<<< 0 @<<< 0 @<<< 0 \\
@VVV @VVV @VVV @VVV \\
0 @<<< C_n(X, A) @<<i_*< C_{n+1}(A) @<<< 0 \\
@VVV @VV\delta_nV @VV\restrictionof{\delta_n}{A}V @VVV \\
0 @<<< C_{n-1}(X, A) @<<i_*< C_{n}(A) @<<< 0 \\
@VVV @VV\delta_{n-1}V @VV\restrictionof{\delta_{n-1}}{A}V @VVV \\
0 @<<< C_{n-2}(X, A) @<<i_*< C_{n-1}(A) @<<< 0 \\
@VVV @VVV \vdots @VVV \vdots@VVV\\
0 @<<< C_1(X, A) @<<i_*< C_2(A) @<<< 0 \\
@VVV @VV\delta_{2}V @VV\restrictionof{\delta_2}{A}V @VVV \\
0 @<<< C_0(X, A) @<<i_*< C_1(A) @<<< 0 \\
@VVV @VV\delta_{1}V @VV\restrictionof{\delta_1}{A}V @VVV \\
0 @<<< 0 @<<i_*< C_0(A) @<<< 0 \\
@VVV @VV\delta_{0}V @VV\restrictionof{\delta_0}{A}V @VVV \\
0 @<<< 0 @<<< 0 @<<< 0 \\
\end{CD}
$$


## $E_1$

## $E_2$

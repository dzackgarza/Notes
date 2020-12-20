# Prologue {-}

## References 

- Gathmann's Algebraic Geometry notes[@AndreasGathmann515].

## Notation

- If a property $P$ is said to hold **locally**, this means that for every point $p$ there is a neighborhood $U_p \ni p$ such that $P$ holds on $U_p$.

+-----------------------------------------+---------------------------------------------------------------------+
| Notation                                | Definition                                                          |
+=========================================+=====================================================================+
| $k[\vector x] = k[x_1, \cdots, x_n]$    | Polynomial ring in $n$ indeterminates                               |
+-----------------------------------------+---------------------------------------------------------------------+
| $k(\vector x) = k(x_1, \cdots, x_n)$    | Rational function field in $n$ indeterminates                       |
+-----------------------------------------+---------------------------------------------------------------------+
| $\mathcal{U} \covers X$                 | An open cover $\mathcal{U} = \ts{U_j \st j\in J}$                   |
+-----------------------------------------+---------------------------------------------------------------------+
| $\Delta_X$                              | The diagonal $\ts{(x, x) \st x\in X} \subseteq X\cross X$           |
+-----------------------------------------+---------------------------------------------------------------------+
| $\AA^n_{/k}$                            | Affine $n\dash$space \newline $\AA^n_{/k} \da \ts{\vector a = \tv{a_1, \cdots, a_n} \st a_j \in k}$ |
+-----------------------------------------+---------------------------------------------------------------------+
| $\PP^n_{/k}$                            | Projective $n\dash$space \ 
                                          | $\PP^n_{/k} \da \qty{k^n\smz}/x\sim \lambda x$ \
                                          | $= \ts{f(\vector x) = p(\vector x)/q(\vector x), \st p,q, \in \kx{n}}$ |
+-----------------------------------------+---------------------------------------|
| $V(J), V_a(J)$                          | Variety associated to an ideal $J \normal \kx{n}$ |
+-----------------------------------------+---------------------------------------|
| ---                                     | $\da \ts{\vector x\in \AA^n \st f(\vector x) = 0,\, \forall f\in J}$ |
<!--| $I(S), I_a(S)$                          | Ideal associated to a subset $S \subseteq \AA^n_{k}$| -->
<!--| ---                                     | $\da \ts{f\in \kx{n} \st f(\vector x) = 0\, \forall \vector x\in X}$ |-->
<!--| $A(X)$                                  | Coordinate ring of a variety, $\kx{n}/I(X)$ |-->
<!--| $V_p(J)$                                | Projective variety of an ideal |-->
<!--| ---                                     | $\da \ts{\vector x \in \PP^n_{/k} \st f(\vector x) = 0,\, \forall f\in J}$ |-->
<!--| $I_p(S)$                                | Projective ideal (?) |-->
<!--| ---                                     | $\da \ts{f\in \kx{n} \st f \text{ is homogeneous and } f(x) = 0\, \forall x\in S}$ |-->
<!--| $S(X)$                                  | Projective coordinate ring, $\kx{n}/ I_p(X)$ |-->
<!--| $f^h$                                   | Homogenization, $x_0^{\deg f} f\qty{{x_1 \over x_0}, \cdots, {x_n \over x_0}}$ |-->
<!--| $f^i$                                   | Dehomogenization, $f(1, x_1, \cdots, x_n)$ |-->
<!--| $J^h$                                   | Homogenization of an ideal, $\ts{f^j \st f\in J}$ |-->
<!--| $\bar X$                                | Projective closure of a subset  |-->
<!--| ---                                     | $\da V_p(J^h) \da \ts{\vector x \in \PP^n \st f^h(\vector x) = 0\, \forall f\in X}$ |-->
<!--| $\OO_X$                                 | Structure sheaf $\ts{f:U\to k \st f \in k(\vector x) \text{ locally}}$ |-->
<!--| $D(f)$                                  | Distinguished open set, $D(f) = V(f)^c = \ts{x\in \AA^n \st f(x) \neq 0}$ |-->
<!--+-----------------------------------------+---------------------------------------------------------------------+-->

+---------------+--------------------+
| Fruit         | Advantages         |
+===============+====================+
| Bananas       | built-in wrapper \ |
|               | bright color       |
+------------------------------------+
| Oranges       | cures scurvy \     |
|               | tasty              |
+------------------------------------+




## Summary of Important Concepts

- What is an affine variety?
- What is the coordinate ring of an affine variety?
- What are the constructions $V(\wait)$ and $I(\wait)$?
- What is the Nullstellensatz?
- What are the definitions and some examples of:
  - The Zariski topology?
  - Irreducibility?
  - Connectedness?
  - Dimension?
- What is the definition of a presheaf?
  - What are some examples and counterexamples?
- What is the definition of sheaf?
  - What are some examples?
  - What are some presheaves that are not sheaves?
- What is the definition of $\OO_X$, the sheaf of regular functions?
  - How does one compute $\OO_X$ for $X = D(f)$ a distinguished open?
- What is a morphism between two affine varieties?
- What is the definition of separatedness?
  - What are some examples of spaces that are and are not separated?
- What is a projective space?
- What is a projective variety?
- What is the projective coordinate ring?
- How does one take the closure of an affine variety $X$ in projective space?
- What is completeness?
  - What are some examples and counterexamples of complete spaces?



\newpage

## Useful Examples

### Varieties

- $V(xy-1) \subseteq \AA^2$ a hyperbola
- $V(x)$ a coordinate axis
- $V(x-p)$ a point.

### Presheaves / Sheaves

- $C^\infty(\wait, \RR)$, a sheaf of smooth functions
- $C^0(\wait, \RR)$, a sheaf of continuous functions
- $\OO_X(\wait)$, the sheaf of regular functions on $X$
- $\underline{\RR}(\wait)$, the constant sheaf associated to $\RR$ (locally constant real-valued functions)
- $\Hol(\wait, \CC)$, a sheaf of holomorphic functions
- $K_p$ the skyscraper sheaf:
\[  
K_p(U) \da 
\begin{cases}
k & p\in U \\
0 & \text{else}.
\end{cases}
\]



## The Algebra-Geometry Dictionary

Let $k=\bar k$, we're setting up correspondences


Algebra                                                         Geometry
-----------------------------------------------------------     ------------------------------
$\kx{n}$                                                        $\AA^n_{/k}$
Maximal ideals $\mathfrak{m}={x_1 - p_1, \cdots, x_n - p_n}$    Points $\tv{a_1, \cdots, a_n}$
Radical ideals $J = \sqrt{J} \normal \kx{n}$                    $V(J)$ the zero locus
Prime ideals $\mathfrak{p}\in \spec(\kx{n})$                    Irreducible subsets
$I(S)$ the ideal of a set                                       $S \subseteq \AA^n$ a subset
$I + J$                                                         $V(I) \intersect V(J)$
$\sqrt{I(V) + I(W)}$                                            $V\intersect W$
$I \intersect J, IJ$                                            $V(I) \union V(J)$
$I(V) \intersect I(W), \sqrt{I(V)I(W)}$                         $V \union W$
$I(V) : I(W)$                                                   $\bar{V\sm W}$
$\kx{n}/I(X)$                                                   $A(X)$ (Functions on $X$)
$A(X)$ a domain                                                 $X$ is irreducible
$A(X)$ indecomposable                                           $X$ is connected
Krull dimension $n$ (chaints of primes)                         Topological dimension $n$ (chains of irreducibles)



# Lecture 4: The Euler Class

Start with the version from Algebraic Topology. 
Let $X$ be be an $\RR\dash$manifold of dimension $d$ and $V\surjects X$ be a rank $r$ vector bundle with fibers $V_x$ for each $x\in X$.

:::{.definition title="Thom Space"}
Recall the definition of the Thom space of $V$,
$$
\text{Th}(V) \cong \PP(V\oplus \mathcal O)  / \PP(V) \homotopic \frac{V}{V-X}
$$

which can be defined on a fiber
$$
\text{Th}(V_x) \cong \PP(V\oplus \mathcal O)  / \PP(V_x) \homotopic S^r
$$
where $\mathcal O$ is a trivial bundle and $X$ denotes the zero section.
:::

:::{.definition title="Orientation of a Bundle"}
A **bundle** $V$ is **oriented**  by a Thom class $u\in H^r(\text{Th}(V); \ZZ)$ if each restriction $H^r(\text{Th}(V_x); \ZZ)$ yields a generator.
:::

:::{.example title="?"}
This occurs when all transitions functions have positive determinant.
Let $\mathcal U$ be an open cover of $X$, then $V$ is described by clutching (transition) functions

\begin{align*}
\theset{\restrictionof{\varphi}{U \intersect W} \suchthat U,W\in\mathcal U} \text{ where } \det \restrictionof{\varphi}{U\intersect W} > 0
\end{align*}

if and only if $\det V = L^{\tensor 2}$ for some line bundle $L \surjects X$. Note that we can do this because if the determinant is greater than zero, we can take a square root, and if we take a positive square root the cocycle condition is still satisfied.


:::

:::{.definition title="Orientation of a Space"}
A **space** $X$ is **oriented** iff its tangent space $TX$ is oriented.
:::

Assume $X$ is a compact manifold and $d=r$, then by Poincaré duality we obtain an isomorphism $H^r(X; \ZZ) \cong \ZZ$, and so $e(V)\in \ZZ$ is an integer.
We can compute the Euler class in the following way: choose a section $\sigma$ with only isolated zeros, then
$$
e(V) = \sum_{~~x\in X \suchthat \sigma(x) \neq 0} \deg_x(\sigma)
$$
where we sum the local degrees, and $\sigma$ is locally identified with a function

\begin{align*}
\sigma: \RR^d &\to \RR^r \\
\text{coordinates on } X &\mapsto \text{local trivialization}
\end{align*}

by choosing local coordinates and a local trivialization compatible with the standard orientations of the spheres in the domain and codomain.
Note that if we composed the trivialization with an element of $\GL(U)$ with negative determinant, that would change the local degree so this definition wouldn't make sense for relative orientations -- however, if we change coordinates for $\RR^d$ and $\RR^r$ simultaneously, it will.

:::{.definition title="Relatively Oriented Bundle"}
The bundle $V\surjects X$ is **relatively oriented** iff $\hom(\det TX, \det V)$ is oriented.
:::

We know what it means for such a homomorphism to be positive, and this won't change the value of the local index.

Since $V$ has an orientation sheaf, let $\mathcal O(V)$ be a local system on $X$ with
$$
\mathcal O(V)_x = H^r(\text{Th}(V_x); \ZZ)
.$$
We can then use the Thom isomorphism to get a Thom class, so we have $e(V) \in H^r(X; \mathcal O(-V))$ which comes from a canonical map. So when $V\to X$ is relatively oriented, we again have $e(V) \in \ZZ$.

## $\Af^1$ Algebraic Topology

Let $X\in\Sm$ be a smooth scheme of dimension $d$ and $V\surjects X$ an algebraic bundle of rank $r$.

:::{.definition title="Oriented Algebraic Bundle"}
$V$ is *oriented* by the data $L\surjects X$ a line bundle and an isomorphism $\det V \cong L^{\tensor 2}$.
:::

:::{.definition title="Relatively Oriented Algebraic Bundle"}
$V$ is **relatively oriented** if $\hom(\det TX, \det V)$ is oriented.
:::

:::{.example title="?"}
Consider both $X = \PP^n$ and $X = \Gr(m,n)$ be the Grassmannian parametrizing subspaces $\PP^m \leq \PP^n$.
Then $\det TX = \mathcal O(n+1)$, the dual of the tautological tensored $n+1$ times -- for the Grassmannian, you put it in the Plucker embedding and pull back the $\mathcal O(1)$.

$\therefore X$ is orientable $\iff n$ is odd.

This follows because we can take $\mathcal O( \frac{n+1} {2})$ and choose the morphism required in the definition above.

:::

:::{.example title="?"}
$\mathcal O(n) \surjects \PP^1$ is orientable if and only if it is relatively orientable if and only if $n$ is even.
:::

:::{.example title="?"}
Take $\OO(d)\oplus \OO(e) \to \PP^2$. Since $2+1=3$ is odd, this is orientable if and only if $d+e$ is odd.
:::

> Note: S. McKean uses this to make an enriched Bezout's theorem for the intersection of plane curves of degree $d$ and $e$.

## Computing Euler Classes for Relatively Orientable Bundles

> Joint with Jesse Kass

In addition to the prior assumptions, let $\sigma$ be a section of $V$ with only isolated zeros and use the same definition of $e(V)$, which will land in the Grothendieck-Witt group $GW(k)$ instead of $\ZZ$.

what remains is to define the local degree. We'll proceed in the same way by finding a function, which will give us local coordinates and a local trivialization.

:::{.definition title="Nisnevich Coordinates"}
The **Nisnevich** coordinates near $x$ are given by
$$
\varphi: U \to \Af^d
$$
which induces an isomorphism on the function field, so the induced extension of residue fields $k(\varphi(p)) \injects k(p)$ is an isomorphism.
:::

:::{.remark}
\envlist

- Such coordinates determine a distinguished section of $\det TX(U)$
- A local trivialization $\restrictionof{\varphi}{U} \to \OO^r$ determines a distinguished section of $\det V(U)$

And so we can make the following definition:

:::

:::{.definition title="Compatibility of Coordinates and Trivialization"}
Local coordinates and a local trivialization are **compatible** if for these distinguished sections, we have
$$
\hom(\det TX(U), V(U)) \cong L^{\tensor 2}.
$$
:::

So we can get compatibility by varying the trivialization until we get a square (no problem). Nisnevich coordinates will always exist when $k(p)$ is a separable extension of $k$, or the dimension is 1 (by Galois theory).
So suppose we have local coordinates $\phi$ and a local trivialization $\pi$ that are compatible. If $\phi: U \injects \Af^d$ is an open immersion, then our section $\sigma$ is a function can be identified by pulling back $\sigma: \Af^d \to \Af^r$ and defining $\deg_p(\sigma) \definedas \deg_{\phi(p)}(\sigma)$.
Note that we don't actually need the immersion condition here, since the $\Af^1$ local degree is finitely determined, and so modifying the function by something in a high enough power of the maximal ideal doesn't change the degree. So if the $\phi$ given by Nisnevich coordinates is an etale map where the local rings aren't isomorphic, then $\sigma$ could fail to be pulled back from $\Af^d$. However, we could just add something from a really high power of the maximal ideal, and it can be shown that $\sigma$ is pulled back from $\Af^d$. These choices don't affect the outcome, so the assumption is not necessary by "finite determinacy of $\deg_p$".

> Need to show that it is well-defined (i.e. it doesn't depend on choice of section), which it is under some conditions.

## Relations to Chow Groups

Next up: some other perspectives.
Barge Morel has one that lands in the oriented Chow, $e(v) \in \widetilde{\text{Ch}}{}^r(X, \det (-V))$.

> Note that you can use $V$ or $-V$ here, since the action of $GW$ has trivial squares, and the definition of the twist for oriented chow groups means that changing the twist by the square of a bundle doesn't effect the oriented chow groups.

It is defined as follows:
There is a distinguished element $\generators{1}\in \widetilde{\text{Ch}}{}^0(X)$ which is determined by a complex
$$
\cdots \to \bigoplus_{z\in X^{(0)}} GW(k(Z), \det T_zX) \to \bigoplus_{z\in X^{(-1)}} GW(k(Z), \det T_zX)
$$

where $X^{(0)}$ are reduced irreducible subschemes of $X$, and the RHS disappears because it's the generic point.
In Algebraic Topology, the definition of the Thom class involves a canonical map $\text{Th}(-V)\to X$, making the class land in $H^0(\text{Th}(-V)$ which under the Thom isomorphism gives something in $H^r$ with a twist. An analog in this setting is the following pushforward.
Let $\sigma$ denote the zero section of $V\covers X$, then there is a pushforward map
$$
\sigma_*: \widetilde{\text{Ch}}{}^0(X) \to \widetilde{\text{Ch}}{}^r(V, \det p^* V)
$$

where the source with ordinarily have a twist by the canonical, but when pulled back it will disappear.

> Note: the difference between the canonical bundle of $V$ and the twist we had to do to get rid of $X$ is like the difference between $TV$ and $TX$, yielding the determinant appearing on the RHS.

The map $p$ also yields an isomorphism
$$
p^*: \widetilde{\text{Ch}}{}^r(X, \det V) \to \widetilde{\text{Ch}}{}^r(V, \det p^* V)
$$

and so we define
$$
e(V) \definedas (p^*)^{-1}\sigma_*(\generators{1}).
$$

If $V \surjects X$ is relatively oriented, there is a map $X \mapsvia \pi \spec(k)$ and so $\pi_* e(V) \in GW(k)$.

Other perspectives:

- There is a different perspective of Morel and Mark Levine, giving the Euler class as the principal obstruction to having a nonvanishing section. This is known to be equal to the one given above, up to a unit ($\generators{a}$)
- A six functor formalism
- Mike Hopkins
- Raxit and Levine?

## Example Computations

:::{.example title="?"}
Let $n$ be even, and $V = \OO_{\PP^1}(n)$ which can be thought of as meromorphic functions that have a pole of order at most $n$ at some point, say zero. Then in local coordinates, the function 1 looks like $x^n$, and so $e(V) = \deg_0 x^n = {n\over 2} h = {n\over 2}(\generators{1} + \generators{-1})$.
:::

:::{.remark}
Ordinary vector bundles in Algebraic Topology for odd-dimensional vector bundles are 2-torsion. Moreover, by a result of Levine, since this is a line bundle we know that the Euler class will be a multiple of $h$. A similar argument works here?
:::

:::{.example title="?"}
How many lines meet 4 general lines in $\PP^3$?
Follows joint work with Srinivasan, also in Schubert Calculus paper (Mathies Wendt)
Lines in $\PP^3$ are parameterized by $\Gr(1,3)$, which is equivalent to $W \subseteq k^{\oplus 4}, \dim W = 2$. Let

- $L_i$ be 4 lines, no two of which intersect
- $e_i$ be a basis of $k^4$
- $\phi_i$ be the corresponding dual basis

where $L_1 = \PP(ke_3\oplus ke_4) = \theset{\phi_1=\phi_2 = 0}$. Lets find a condition on bundles for lines that intersect $L_1$.
Let $L= \PP(k\tilde e_3 \oplus k\tilde e_4)$, the span of some two linearly independent vectors. If we wrote these out in terms of $e_i$, we'd need to find a combination where the coefficients of $e_1, e_2$ vanish, i.e. there needs to be a linear dependence in the part of their basis expansion involving these two elements. We thus get the condition
$$
L\intersect L_1 \iff (\phi_1 \wedge \phi_2)(\tilde e_3 \wedge \tilde e_4) = 0
$$

So we look at the line bundle $S\dual \wedge S\dual \covers \Gr(1,3)$, where the fiber above a dimension 2 subspace $W$ is given by $(S\dual \wedge S\dual)_{\PP W} = W\dual \wedge W\dual$.
Then $\theset{\phi_1, \phi_2}$ determine a section $\sigma_1$ of $S\dual \wedge S\dual$ by $\sigma_1(\PP W) = \restrictionof{\phi_1}{W} \wedge \restrictionof{\phi_2}{W}$, where lines intersection $L_1$ correspond exactly to zeros of $\sigma_1$.
We can do the same thing for the other $L_i$ and combine them to get a section of $V \definedas \oplus_{i=1}^4S\dual \wedge S\dual$, whose zeros are the lines we're looking for.
Is this bundle relatively orientable? $\det TX =\OO(4), \det V = (S\dual \wedge S\dual)^{\tensor 4}$, which are both tensor squares, so yes.
Following the recipe, we need to identify $\sigma$ with a function. To compute $\deg_{\PP W}(\sigma)$, choose local coordinates on $\Gr(1,3)$. So we need to choose dimension 2 subspaces parameterized by $\Af^4$, so we'll pick the lines which intersect $\theset{\phi_3= \phi_4 = 0}$, yielding a new basis
\begin{align*}
\tilde e_1 &= e_1 \\
\tilde e_2 &= e_2 \\
\tilde e_3 &= xe_1 + ye_2 + e_3 \\
\tilde e_4 &= x'e_1 + y'e_2 + e_4
\end{align*}

We then have an open subset

\begin{align*}
U =\spec(k[x,y,x',y']) \injects \Gr(1,3) \\
(x,y,x',y') \mapsto \PP(k\tilde e_3 +k\tilde e_4)
.\end{align*}

so we have some local coordinates. Let $\tilde \phi_i$ be the dual basis.
Next we choose a local trivialization, where $S\dual \wedge S\dual$ can be locally trivialized by $\tilde\phi_3 \wedge \tilde \phi_4$ which are compatible with some relative orientation.
The expression for the function $\sigma$ will depend on our choice of line, and instead of notating all of them, just assume that $L_1 = \PP(ke_3 \oplus ke_4)$. We then get $\sigma =(\phi_1 \wedge \phi_2, ?, ?, ?)$ where we just didn't notate the other components. So what is this first component in terms of $x', y'$? This amounts to finding the coordinate of $\tilde\phi_3 \wedge \tilde\phi_4$ is in $\phi_1 \wedge \phi_2$, which is just a linear algebra problem.

We want to find the coefficient $c$ in
$$
\restrictionof{(\phi_1 \wedge \phi_2)}{k\tilde e_3 \oplus k\tilde e_4} = c (\tilde\phi_3 \wedge \tilde\phi_4)
$$

How many $\tilde e_3$ are in $\phi_1$? We can evaluate $\phi_1(\tilde e_3)$ to get how many $\tilde \phi_3$s we need, but that's just $x$. So the RHS evaluates to $(x \tilde\phi_3 \wedge y\tilde\phi_4) + (x'\tilde\phi_3 \wedge y'\tilde\phi_4)$, and we obtain $c = xy' -yx'$. We can thus write

\begin{align*}
\sigma: \Af^4 \to \Af^4 \\
\sigma(x,y,x',y') = (xy' -yx', ?, ? , ?)
.\end{align*}

Now we can compute the local degree by taking the Jacobian and taking the determinant, but what AG/Arithmetic information is contained in this huge polynomial in $x,y,x',y'$s? Is there an AG interpretation of this local degree $\deg_P(\sigma)$, where $P=L$ is a point on the Grassmannian?
$L=\PP W$ intersects $L_i$, so we have 4 points on $L\cong \PP^1_{k(L)}$, and therefore we have a cross-ratio $\lambda$.
We can get another cross-ratio by looking at planes in $\PP^3$ containing $L$, i.e. dimension 3 subspaces $V$ containing $W$, so we have
$$
W \subseteq V \subseteq k(L)^4
$$

where $\dim V = 1$, so each plane is a $\PP^1_{k(L)}$. We get 4 planes containing $L$, namely the 4 planes spanned by each pair $(L, L_i)$. This provides a second cross-ratio $\mu$
Although there was choice, since our section was determined not by $L$ but rather by the zero set of some functions, normalizing things correctly yields
$$
\deg_L(\sigma) = \Tr_{k(L) / k}\generators{\lambda-\mu}.
$$

:::

We thus obtain a theorem:

:::{.theorem title="?"}
\begin{align*}
\sum_{\quad L \suchthat L \intersect L_i \neq\emptyset}\tr_{k(L) / k}\generators{\lambda-\mu} = \generators{1} + \generators{-1} = h
.\end{align*}
:::

## Where Things Are Going

- Gromov-Witten invariants with Jake and Jesse
- Welschinger invariants, Mark Levine

These produce more than just the 1s appearing in $h$, and have ties to things like modular forms.

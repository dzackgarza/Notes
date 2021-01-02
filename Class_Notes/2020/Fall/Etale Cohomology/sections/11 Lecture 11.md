# Lecture 11

## Pushforwards (Continued)

Last time: we saw the Leray spectral sequence, but no examples yet, so that's what we'll do now.
We had $X \mapsvia{f} Y \mapsvia{g} Z$ to which we associated the spectral sequence $R^i f_* R^jf_*(\wait) \abuts R^{i+j}(g\circ f)_* (\wait)$.
To deduce existence we used that pushforwards preserve injectives, and we looked at some $E_2$ differentials.

:::{.example title="?"}
Let $X \mapsvia{\pi}  Z \da \spec k$, where $k\neq \bar k$ necessarily. 
The spectral sequence for the functors $\pi_*, \Gamma$ yields the Leray spectral sequence $H^i(k, R^j \pi_* \mathcal{F}) \abuts H^{i+j}(X_\et, \mathcal{F})$.
The LHS is the étale cohomology of $\spec k$, i.e. Galois cohomology.
The Galois module corresponding to $R^j \pi_* \mathcal{F}$ is $H^j(X_{k^{s}}, \mathcal{F})$
by taking the $\bar k$ points of this functor
So the Leray spectral sequence yields
\[  
H^i(k, H^j(X_{k^{s}, \et}, \mathcal{F} )) \abuts H^{i+j}(X_\et, \mathcal{F})
.\]

Consider $k$ a finite field and $X_{/k}$ a smooth projective variety.
Then the Galois cohomology is given by
\[  
H^i(k, V) 
=
\begin{cases}
V^G & i = 0 \hspace{4em}\text{the invariants}\\
V_G & i = 1\hspace{4em}\text{the coinvariants} \\
0 & i>1
\end{cases}
\]
This follows from computing the cohomology of $\hat \ZZ$.
Supposing we knew that the cohomological dimension of a smooth projective variety was $2n$ over $\bar k$ (e.g. taking $\mathcal{F} \da \zlz$ above), then the cohomological dimension of $X$ would be $2n+1$.
This follows from $E_2$ vanishing for $i>1$ in this case.
:::

:::{.remark}
A general fact about the Leray spectral sequence for smooth proper morphisms: let $X \mapsvia{\pi} Y$ such a morphism, then there is a spectral sequence 
\[  
H^i(Y, R^j \pi_* \ul \QQ) \abuts H^{i+j}(X, \QQ)
.\]
A fact due to Deligne is that this degenerates at $E_2$, which is proved with $\ell\dash$adic cohomology (going through Weil II) using the theory of weights.
Note that this is false for smooth proper morphisms between manifolds!
Instead, for varieties, they behave more like products instead of "twisted" things.
:::

### Explicit Characterizations

We'll now be explicit about what these pushforwards are, so we'll give another description of them:

:::{.proposition title="?"}
Let $X  \mapsvia{\pi} Y$, then $R^i \pi_* \mathcal{F}$ is the sheaf associated to the presheaf $U\to H^i(\pi^{-1}(U)_\et, \mathcal{F})$.
:::

:::{.proof title="?"}
Choose an injective resolution $\mathcal{F}\to \mathcal{I}\wait$, then $\mathcal{H}^i(\pi_* \mathcal{I}^\wait) \da R^i \pi_* \mathcal{F}$.
Let's compute this pushforward in another way: we have 
\begin{tikzcd}
\Presh(X_\et) 
  \ar[r, "\pi_*"]
& \Presh(Y_\et)
  \ar[d, "a = \text{sheafification}", dotted]
\\
\Sh(X_\et) 
  \ar[r, "\pi_*"]
  \ar[u, "f = \text{forget}"']
& \Sh(Y_\et) 
\end{tikzcd}
Here the induced map on presheaves is exact although the forgetful functor may not be.
This is because a sequence of presheaves is exact iff it's exact on every open, but $\pi_*$ just pulls back opens.
This diagram commutes since what you get in the top-right corner is already a sheaf, and sheafification is the identity on sheaves.
We can thus factor $\pi_*$ to obtain
\[  
R^i \pi_* \mathcal{F} = \mathcal{H}^i*\pi_* \mathcal{I}^\wait
&= \mathcal{H}^i(a\circ \pi \circ f (\mathcal{I}^\wait)) \\
&= a\circ \pi_*\qty{\mathcal{H}^i(f(\mathcal{I}^\wait)) }
.\]
where we've used the fact that $\pi_*, s$ are exact.
Why isn't the inner term zero, since $\mathcal{I}^\wait$ is an exact complex of sheaves?
Epimorphisms are different in the categories of sheaves and presheaves, so it may not be exact when viewed as a complex of presheaves.
These terms are explicitly the functors $U\to H^i(U, \mathcal{F})$, since $\ro{\mathcal{I}^\wait}{U}$ is an injective resolution of $\mathcal{F}$.
We can now evaluate this on an open of $Y$, so we get
\[  
a \qty{ (U \mapsvia{\et} Y) \to H^i(\pi^{-1}(U), \mathcal{F}) }
,\] 
which is sheafifying the functor we want.

### Explicit Characterizations
:::

:::{.example title="?"}
Suppose $X$ is an integral scheme and $\eta\injectsvia{\iota} X$ is its generic point.
Suppose $\mathcal{F}\in \Sh(\eta_\et)$.
How to we understand $R^i \iota_* \mathcal{F}$?
We can compute its stalks: suppose $\bar x \to X$ is a geometric point, then
\[  
\qty{R^i \iota_* \mathcal{F}}_{\bar x} 
&= 
\directlim_{(U, \bar u)} \qty{R^i \iota_* \mathcal{F}}(U) \\
&=
H^i(U_\eta, \ro{\mathcal{F}}{U_\eta})
.\]
where we take limits over $U\mapsvia{\et} X$ and $\bar u\to U$ is a geometric point above $\bar x$.

:::

:::{.exercise title="Important, must-do"}
Let $\OO_{X, \bar x}$[^strictly_henselian_ring] be the stalk of $\OO_X$ at $\bar x$
and $K_{\bar x}$[^strictly_henselian_field]
be its fraction field. 
Then
\[  
\qty{R^i \iota_* \mathcal{F}}_{\bar x}
=
H^i(K_{\bar x}, \ro{\mathcal{F}} {K_{\bar x}} )
,\]
where the RHS is either the Galois cohomology of $k$ or the étale cohomology of $\spec k$.

[^strictly_henselian_ring]: 
The **strictly Henselian ring** of $X$ at $\bar x$.

[^strictly_henselian_field]: 
The **strictly Henselian field** of $X$ at $\bar x$.

:::

Idea: these are the étale local rings, and this says you can compute the stalk of a cohomology sheaf in terms of these strictly Henselian local rings.



## Étale Cohomology of Curves: Reducing to Galois Cohomology

Goal: we want to understand $H^{>1}(X, \GG_m)$ where $X_{/k}$ is a curve over $k = k^{s}$ which is separably closed.
We'll reduce this to questions in Galois cohomology.

:::{.proposition title="?"}
Let $X_{/k}$ (with $k$ not necessarily algebraically closed) be a regular (integral) variety and $\eta\injects X$ is the generic point.
Then there is a SES in $\Sh(X_\et)$:
\[  
0 \to
\GG_m
\mapsvia{\Res}
\eta_* \GG_m 
\mapsvia{\Div}
\bigoplus_{z\in X, \codim 1} \iota_{z_*} \ul \ZZ
\to 0
,\]
where the middle term can be thought of as pushing forward $\GG_m$ from the étale site of $\eta$ or pulling back $\GG_m$ to it, which is just $\GG_m$ again, and pushing forward again, and the last term is the **sheaf of divisors**.
:::

:::{.remark}
The first map is either the unit or the counit of the adjunction $\eta_* \mapstofrom \eta^*$, which is the restriction.
The second map comes from noting that on an étale morphism $U\to X$, this is a bunch of rational functions and you can take its divisor.
This gives a number for each codimension 1 point: the order of vanishing.
All but finitely many numbers will be zero, so you get a section to the last sheaf.
:::

:::{.proof title="of exactness"}
**1**: 
$\GG_m \to \eta_* \GG_m$ is injective.
This reduces to showing $\GG_m(U) \to \GG_m(U_\eta)$ is injective, where $U_\eta$ is the fiber over $\eta$, since this is $\OO_U\units \to \bigoplus_{\eta_i} \OO_{\eta_i}$ which is a sum over generic points of $U$.
This uses that $X$ is reduced.

**2**:
Exactness in the middle.
Given $f\in \eta_* \GG_m(U)$ with $\Div(f) = 0$, we want to show $f$ comes from $\GG_m(U)$.
We need to show $f, f^{-1}$ are regular, and it's enough to show that $f$ is regular.
We're using that if we have a finite type ring over a field $A$, then by a fact from commutative algebra,
\[
A = \Intersect_{\mathfrak{p}\in \spec^1(A)} A_{\mathfrak{p}}
\]
which is the intersection of localizations over all height 1 primes.
Being in this intersection is equivalent to having non-negative divisors, where here we've used that regularity implies normality.

**3**:
Surjectivity at the end.
We need to show that every divisor is étale locally principle, and thus Zariski locally.
A global section to the last sheaf is a Weil divisor, and we want to show each is principle.
This is equivalent to being Cartier, which is true here by regularity.
:::


:::{.corollary title="?"}
There's a LES:
\begin{tikzcd}
&
 \cdots
  \ar[r]
&
H^{i-1}(X_\et, \bigoplus_{\codim(z) = 1} \iota_{z_*} \ul \ZZ)
  \ar[dll]
\\
{\color{NavyBlue} H^i(X_\et, \GG_m) }
  \ar[r]
&
H^i(X_\et, \eta_* \GG_m)
  \ar[r]
&
H^i(X_\et, \bigoplus_{\codim(z) = 1} \iota_{z_*} \ul \ZZ)
  \ar[dll]
\\
\cdots
& 
&
\end{tikzcd}
The blue term is what we'd like to compute, and the other terms are the cohomology of pushforwards and thus appear in the Leray spectral sequence.
:::

:::{.proposition title="?"}
Let $X_{/k}$ be a curve where $k=k^{s}$.
Then
\[  
H^{i>0}(X_\et, \bigoplus_{\codim z = 1} \iota_{z_*} \ZZ) = 0
.\]
:::

:::{.proof title="?"}
It's enough to show that $H^{>0}(X_\et, \iota_{z_*} \ul \ZZ) = 0$ using that cohomology commutes with direct sums.
Using the Leray spectral sequence, we get 
\[
H^i(X_\et, R^j_{\iota_{z_*}} \ul \ZZ)\abuts H^{i+j}(z_\et, \ul \ZZ)
\]
What are the coefficients on the LHS?
We proved that pushforwards on closed immersions are exact, by checking on stalks, so we have

\[  
R^j _{\iota_{z_*}} \ul \ZZ
=
\begin{cases}
\iota_{z_*} \ul \ZZ & j = 0 \\
0 & j > 0
\end{cases}
.\]

We can also compute
\[  
H^s(z_\et, \ul \ZZ)
=
\begin{cases}
\ZZ & s = 0 \\
0 & s>0
\end{cases}
.\]
since the zero term is global sections and $k$ is separably (algebraically) closed, and the Galois cohomology vanishes in $i>0$.
So we get a degenerate spectral sequence with one column, yielding
\[  
H^i (X_\et, \iota_{z_*} \ul \ZZ) 
=
H^i(z_{\et}, \ZZ)
=
\begin{cases}
\ZZ & i = 0 \\
0 & i> 0
\end{cases}
.\]
:::

:::{.corollary title="?"}
If $X_{/k}$ is a smooth curve over $k=k^{s}$ then we have an isomorphism
\[  
H^{>1}(X_\et, \GG_m) \ms H^{>i}(X_\et, \eta_* \GG_m)
.\]
:::

New goal: compute the RHS, which is not quite Galois cohomology but is pushed forward from a field.
Using the Leray spectral sequence, we get
\[  
H^i(X_\et, R^j \eta_* \GG_m)
\abuts
H^{i+j}(\eta, \GG_m)
,\]
where the RHS is Galois cohomology.
We're interested in the $j=0$ region of the spectral sequence.
Let's try to understand the stalks at geometric points:
\[  
\qty{R^j \eta_* \GG_m}_{\bar x}
=
H^j(K_{\bar x}, \GG_m)
,\]
where the field appearing is the *strict Henselization* from the earlier discussion.
We'll be able to compute this if we have the following theorem:

:::{.theorem title="?"}
Let $K$ be the function field of a curve or an algebraically closed field, or $K = K_{\bar x}$ is the strict Henselian field of a geometric point of a curve over a separably (algebraically) closed field.
Then 
\[  
H^{>0}(K, \GG_m) = 0
.\]
:::

This will suffice since 
$R^{>0} \eta_*\GG_m = 0$, yielding a spectral sequence where $E_2 = E_ \infty$:
\[  
H^i(X_\et, \eta_* \GG_m)
=
H^i(\eta,\GG_m)
=
0 && \text{if }i>0
.\]

**Upshot**: this reduces the computation of the étale cohomology of a curve to Galois cohomology.
Proving this theorem is hard, and will lead us to Brauer groups.[^another_daniel_face]

[^another_daniel_face]: 
Another one of Daniel's favorite topics in the course!

## Brauer Groups


:::{.definition title="Cohomological Brauer Group" ref="def:cohom_brauer_group"}
Let $X$ be a scheme, then the **cohomological Brauer group** is defined as
\[  
\Br (X) \da H^2(X_\et, \GG_m)_{\tors}
.\]
:::
In good situations, this group has a good geometric interpretation, so let's true to understand it this way in terms of $\PGL_n\dash$torsors.

:::{.claim}
There is a natural map
\[  
\Union_n \ts{ \text{étale-locally split $\PGL_n\dash$torsors} }
\to
H^2(X_\et, \GG_m)
.\]
:::

Idea: there is a SES
\[  
1 \to \GG_m \to \GL_n \to \PGL_n \to 1
&& \in \Sh^{\Grp}(X_\et)
.\]
It's not obviously exact on the right, since it's not quite true that a map into $\PGL_n$ is an invertible matrix modulo scaling: this is true locally, but it's the *sheafification* of this, so why is there a surjection?
The key input is that $\GL_n\to \PGL_n$ is smooth, and thus has sections étale-locally.
This map is a $\GG_m\dash$torsor, which we know are Zariski-locally trivially, so this sequence is exact in the Zariski topology and thus also in the étale topology.

Suppose $T$ is an étale-locally trivial $\PGL_n\dash$torsor, then the LES essentially has the following map:
\[  
\cdots \to H^2(X_\et, \PGL_n) \mapsvia{\delta} H^2(X_\et, \GG_m) \to \cdots
.\]
This doesn't make sense *a priori* since this is not a sequence of abelian sheaves.
Let's true to associate to $T$ some $[T]\in H^2(X_\et, \GG_m)$.
We can first write down $[T] \in \Hc^1(X_\et, \PGL_n)$: we get a $\PGL_n$ cocycle out a torsor by choosing a trivializing map $U\to X$ so that 
$\ro T U  = \ro {\PGL_n} U$.
This yields a cocycle in $\PGL_n(U\cross_X U)$.

> To be continued.




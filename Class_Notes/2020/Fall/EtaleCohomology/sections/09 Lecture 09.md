# Lecture 09

Last time:

- The Čech-to-derived spectral sequence,
- The Mayer Vietoris LES,
  - Computes the étale cohomology of a scheme using a Zariski open cover.
- Étale cohomology of quasicoherent sheaves,
  - Agrees with Zariski cohomology, first legitimate computation!
  - Use this to compute:
- Étale cohomology of $\ul{\FF_p}$ in characteristic $p$.

## The LES of the Artin-Schreier Exact Sequence

Last time we had a scheme $X_{/\FF_p}$ and the *Artin-Schreier* exact sequence of sheaves of $X_\et$:
\[  
0\to \ul{\FF_p} \to \OO_X^\et \mapsvia{t\mapsto t^p - t} \OO_X^\et \to 0
.\]
The map appearing here is referred to as the *Artin-Schreier* map $f$
This works over arbitrary fields of characteristic $p$, with a modified definition replacing $t^p$.

:::{.exercise title="?"}
Check that this is an additive homomorphism of abelian sheaves.
This follows from the fact that Frobenius itself is.
:::

:::{.remark}
From here onward, $H^i$ will denote $H^i_\et$.
:::

Recall that we had a theorem last time (\cref{thm:et_qcs_zar}) showing that the étale cohomology of quasicoherent sheaves is equivalent to the usual Zariski cohomology.
From this we got a long exact sequence:

\begin{tikzcd}
  H^i(X_\et, \ul{\FF_p})
    \ar[r]
& H^i(X, \OO_X)
    \ar[r, "f"]
& H^i(X, \OO_X)
\\
& \cdots
    \ar[r]
& H^{i-1}(X, \OO_X) 
    \ar[ull, "\delta"]
\end{tikzcd}

We don't know how to compute $H^i(X_\et, \FF_p)$ generally, but the affine case is easy.
For $X$ affine, $H^{>0}(X, \OO_X) = 0$, which in facts holds for any quasicoherent sheave replacing $\OO_X$, and $H^0(X, \FF_p) = \qty{\FF_p}^{\abs {\pi_0 X} }$ where the exponent is the number of connected components of $X$.
So we get an exact sequence

\begin{tikzcd}
H^{1}(X, \OO_X) 
    \ar[r]
& 0
& 
\\
  H^0(X, \FF_p) = \qty{\FF_p}^{\abs {\pi_0 X} } 
    \ar[r]
& \OO_X(X) 
    \ar[r, "f"']
& \OO_X(X) 
    \ar[ull]
\\
&
& 0
    \ar[ull]
\end{tikzcd}

:::{.remark}
$H^1(X, \OO_X)$ is not finitely generated in general, e.g. take $X \da \AA^1$, then $\cok(t\mapsto t^p - t)$ as a map $k[t] \to k[t]$ is generally finite dimensional as a $k\dash$vector space.
So in characteristic $p$, cohomology with $\FF_p$ coefficients is ill-behaved: a nice cohomology theory would assign to every scheme a complex of finite dimensional vector spaces.
:::

:::{.remark}
An aside: $\GG_a$ is the representing object for $\OO_X^\et$.
:::

:::{.remark}
If $X$ is proper, $H^i(X_\et, \FF_p)$ is finite dimensional.
Why?
It follows from the exact sequence: by proper pushforward for coherent cohomology, the terms we're interested in are sandwiched between finite dimensional objects.
:::

:::{.example title="?"}
However, these groups still won't have the expected dimension.
For $X \da E_{/k}$ where $k=\bar k, \ch(k) = p$, we have
\[  
H^1(E, \FF_p) = 
\begin{cases}
\FF_p & \text{if $E$ is ordinary} \\
0 & \text{if $E$ is supersingular}.
\end{cases}
\]
This follows from the LES, since supersingularity is in terms of how Frobenius acts on the groups appearing.
This is not what you'd expect: $E$ is a torus, so you'd expect $\dim H^1 = 2$.
:::

:::{.remark}
So this cohomology don't form a "good" cohomology theory in the sense that they won't prove the Weil conjectures or behave like the usual cohomology in characteristic zero, but can still be interesting and useful.
This data is closely related to e.g. crystalline cohomology.
:::

## The Étale Cohomology of a Field

:::{.example title="?"}
We'll try to compute $H(\qty{\spec k}_\et, \mathcal{F})$, the cohomology of the étale site of a field, using Čech cohomology.
We had an equivalence of categories
\[  
\Sh^\Ab(\spec k)_\et \mapbackforth^{\iota}_{\pi} \ts{\text{Discrete $G\dash$modules}}
,\]
where $G = \Gal(\bar k / k)$ is the absolute Galois group of $k$.
What were the functors?
Given a sheaf, you want to evaluate it on $k^s$ (the separable closure), but this doesn't make sense since it's not an object on the étale site due to not being finitely presented.
So you choose a separable closure, look at all intermediate extensions, and take the direct limit of evaluating the sheaf on those extensions.
Going the other way, you can say what the value of a discrete $G\dash$module is on a finite extension $L/k$ by taking its Galois fixed points: the fixed points of $\Gal(\bar L/L)$.

:::{.corollary title="?"}
\[  
H^i\qty{\qty{ \spec k}_\et, \mathcal{F}} \ms H^i(G, \iota \mathcal{F})
.\]
:::
Recall that this is because derived functor cohomology only depends on the equivalence class of the ambient category.
Comparing this to Čech cohomology, suppose we have a cover $U \da \spec K$ where $L_{/k}$ is a separable field extension. 
Take the Čech complex
\[  
\Cc(U_{/\spec k}, \mathcal{F}) \da \qty{\mathcal{F}(U) \to \mathcal{F}(U\cross U) \to \cdots}
.\]
Assume $L_{/k}$ is Galois with Galois group $G(L_{/k})$.
We can rewrite this complex by identifying $U\cross U = G(L_{/k}) \cross \spec L$, yielding
\[  
\Cc(U/\spec k, \mathcal{F}) \da \qty{\mathcal{F}(U) \to \mathcal{F}(G(L_{/k}) \cross U) \to \mathcal{F}\qty{G(L_{/k})^2 \cross U}
\to \cdots
\cdots}
.\]


:::{.exercise title="?"}
Show that this complex is the standard complex computing Galois cohomology $H^i( G(L_{/k}), \mathcal{F}(U) )$.
The terms are the same, so just identify the differentials.
One can also take this as the definition of Galois cohomology.
:::

As a corollary, this complex is quasi-isomorphic to the usual complex computing Galois cohomology, since that complex is the direct limit $\Cc(U_{\spec k}, \mathcal{F})$.

:::

:::{.question}
When can étale cohomology can be computed as some kind of group cohomology?
:::

:::{.answer}
This is true when $X = K(\pi, 1)$: it's connected and all of its homotopy groups vanish above degree 1, i.e. it's a classifying space for a discrete group.
E.g. $S^1 = K(\ZZ, 1)$, or a compact orientable surface $\Sigma_g$ of genus $g\geq 1$ has a contractible universal cover, and thus $\Sigma_g = K(\pi_1 \Sigma_g, 1)$.
In these cases, singular cohomology is the group cohomology of $\pi_1$.
For $G$ a finite group, $BG$ will be an example, although e.g. this will not be true for $\GL_n$.
Another example will be affine curves.[^def_curves]

[^def_curves]: 
Here a curve will be a smooth separated scheme of finite type of dimension 1 over an algebraically closed field.
We won't assume properness, and we'll generalize to singular curves.

:::

## Torsors

Goal for the next few classes:
compute the étale cohomology of smooth (not necessarily projective) curves over $k=\bar k$, i.e. $H^i(C_\et, \zlnz)$ where $\ell \neq \ch(k)$.
We've seen what this is when $\ell = k$, and the answer will resemble the singular cohomology of a Riemann surface in terms of dimensions.
This will be hard for $i>2$, but we'll try to get to $i=0, 1$.
We can compute $i=0$, since we're just asking for global sections to a sheaf:
\[  
H^i (C_\et, \ul\zlnz) = \zlnz
,\] 
since the definition of this sheaf was maps into $\zlnz$, which is disconnected and so any map in is constant.
For $i=1$, we'll use an interpretation in terms of torsors, which are supposed to generalize principle homogeneous spaces.
Typical example: given a space $X$, a Galois covering space will be a torsor for the Galois group: $G$ acts on $X$ and simply transitively on every fiber.

:::{.definition title="$G\dash$Torsors"}
\envlist

- Idea: for $G\in\Sh^{\Grp}(X_\et)$ a sheaf of (not necessarily abelian) groups, a **$G\dash$torsor** is a sheaf $\mathcal{F}\in \Sh^\Set(X_\et)$ with a $G\dash$action such that $G$ acts on fibers simply and transitively.

- Actual definition: a **torsor** is a sheaf $T\in \Sh^\Set(X)$ with an action $G\cross T \mapsvia{a} T$ (so $G(U)$ acts on $T(U)$ for every $U\in X_\et$) such that the following map is an isomorphism:
\[  
G\cross T \mapsvia{(a, \pi_2)} T\cross T
,\]
  given by crossing the action with the projection.
:::

:::{.remark}
This says that $T\cross T \ms G\cross T$, and pulling back to $T$ yields a "trivial torsor", where e.g. $G$ itself is a $G\dash$torsor: a sheaf of sets with an action by a sheaf of groups, such taking $G\cross_G G$ the action becomes $G\actson G$.
This is similar to base-changing to cover to check something, as in the proof of fppf descent, and here we base-change to trivialize a torsor.
:::

:::{.example title="?"}
Suppose $G$ is a finite group and $\ul G \in \Sh(X_\et)$ is the constant sheaf regarding $G$ as a scheme.
Then e.g. a $G\dash$torsor is a finite étale cover with Galois group $G$.
If $X$ is a smooth curve, this is a Galois extension of the function field which is everywhere unramified.
:::

:::{.example title="?"}
$\GG_m \da (U\mapsto \OO_U(U\units))$ sending $U$ to the invertible functions of $U$.
Then $\GG_m = \hom(\wait, \spec k[t, t^{-1}])$ is representable.
E.g. a line bundle with the zero section deleted is a $\GG_m\dash$torsor:
\[  
\mathcal{L} \leadsto \spec_X \bigoplus_{n\in \ZZ} \mathcal{L}^{\tensor_{\OO_X} n}
,\]
where we take the relative spec.
Looking at fibers over a point in $X$, you get $k[t, t^{-1}]$, so these look like $\GG_m$.
How does $\GG_m$ act on this?
$t\actson \mathcal{L}^{\tensor n}$ by $t^n$.
So the functor this represents is a $\GG_m\dash$torsor.
We'll see later that there's a natural bijection between $\GG_m\dash$torsors and line bundles, which becomes an equivalence of categories if you only allow isomorphisms of line bundles.
:::

:::{.example title="?"}
For $G \da \ul \GL_n$, the claim is that $G\dash$torsors are in natural bijection with vector bundles of rank $n$.
Note that they are locally trivial, which is not obvious.
To get this, take $\mathcal{E}\leadsto \mathrm{Fr}(\mathcal{E})$, the frame bundle over $\mathcal{E}$.
This can be realized as the sheaf $\mathcal{E}\leadsto \mathrm{Isom}_{X_\et}(\OO^{\oplus n}, \mathcal{E})$, i.e. its value on a cover $U$ is the set of isomorphisms over $U$ of the trivial vector bundle $\mathcal{E}$.
So this gives a functor from vector bundles and isomorphisms to $\GL_n\dash$torsors, noting that an isomorphism between $\OO^{\oplus n}$ and $\mathcal{E}$ is like a basis of every fiber and thus a basis for $\mathcal{E}$.
The reverse functor is
\[  
T \leadsto \qty{T\cross \OO_X^{\oplus n}} / \ul \GL_n
,\]
using the diagonal action where we identify $\ul \GL_n \da \ul\Aut(\OO_X^{\oplus n})$ and
the quotient is in $\Sh^\et$.
This quotient kills $T$, so each fiber is isomorphic to the fiber of $\OO_X^{\oplus n}$, where this is like $\GL_n$ acting simply transitively on $T$, but this twist $\OO_X^{\oplus n}$ in a way corresponding to how $\mathcal{E}$ is twisted.

:::{.exercise title="?"}
Check that this is vector bundle.
This uses that $\GL_n$ is smooth.
:::

:::

:::{.definition title="?"}
A $G\dash$torsor $T$ is **split** by a cover $U\to X$ iff $\ro{T}{U_\et} \cong \ro{G}{U_\et}$ as a torsor.
If $T$ is split by some cover, we say $T$ is **locally trivial**.
:::

:::{.remark}
Suppose $T$ is representable, so $T\to X$.
Then for the étale or fppf sites, then $T$ is split by itself, using the fact that base changing $T$ to itself yields the trivial torsor.
:::

:::{.example title="?"}
Suppose $G$ is a finite étale group scheme over $X$, and $T$ is a locally trivial $G\dash$torsor split by some $U$.

:::{.claim}
\envlist

1. $T$ is representable

2. $T$ is split by $T$
:::

:::{.proof title="$1\implies 2$"}
$T\times T$ is trivial, so we need to verify that $T \covers X$.
Base changing to $T\times_X U \to U$ is a cover since it's finite étale, since it's isomorphic to $G\times U$ by the definition of local triviality.

:::{.exercise title="?"}
Check that base-changing along a cover yields a cover, following from the axioms of a site.
:::

:::


:::{.proof title="of 1"}
Observe that $\ro{T}{U_\et}$ is representable, since it's isomorphic to $\ro{G}{U_\et}$ as a scheme and $G$ was a finite étale group scheme.
How to we go from representability on $U$ to $X$?
We can use that descent is effective.
Note that descent is *not* generally effective for schemes, but it is for affine (over $X$) schemes.
We use that étale $\implies$ open and finite $\implies$ proper $\implies$ closed, yielding surjectivity of $T\cross_X U \to U$.
We proved effectiveness for quasicoherent sheaves, and an affine $X\dash$scheme is spec of a quasicoherent sheaf of algebras, so we descend that quasicoherent sheaf of algebras.
:::

:::

:::{.remark}
Given a torsor for a finite group scheme, it's represented by a $G\dash$cover which is not just a sheaf but rather an honest covering space.
:::

## Interpretation of $H^1$ as Torsors

:::{.proposition title="Interpretation of $H^1$"}
There is a bijection
\[  
\correspond{G\dash\text{torsors split by} \\ U\to X} / \sim
&\mapstofrom
\Hc^1(U_{/X}, G)
,\]
which makes sense for $G\in \Sh^\Grp(X_\et)$[^Group_Object] and any covering family.
I.e. looking at the formula for the differential in Čech cohomology, if you only go up to degree 1 you don't need to make any choices.

[^Group_Object]: 
A sheaf of groups is a group object in the category $\Sh^\Set$.

:::

:::{.proof title="?"}
$\ro{T}{U_\et} \mapsvia{\phi} \ro{G}{U_\et}$ is an isomorphism of torsors, so considering the two projections
\begin{tikzcd}
U\cross_X U
 \ar[d, shift right=0.75ex, "\pi_1"'] 
 \ar[d, shift left=0.75ex, "\pi_2"]
\\
U
  \ar[d]
\\
X 
\end{tikzcd}
we get an isomorphism $\pi_1*T \ms \pi_2^* T$ coming from the fact that we're pulling back along $U\to X$.
Using the isomorphism above, we can view this as
\begin{tikzcd}
  \pi_1^*T 
    \ar[r, "\sim"]
    \ar[d, "\pi_1^* \phi"']
& \pi_2^*T
    \ar[d, "\pi_2^* \phi"]
\\
  \pi_1^* G 
    \ar[r, "{g, \sim}"]
& \pi_2^* G 
\end{tikzcd}
I.e., we can view the descent data pulled back from $X$ as trivial torsors.
Moreover, $g\in \Gamma(U\cross_X U, G) \da \Cc^1(U_{/X}, G)$.

:::{.exercise title="?"}
Check that an automorphism of a trivial $G\dash$torsor is equivalent to an element of $G$.
Think about the case of a $G\dash$torsor for a point.
:::

:::{.claim}
The cocycle condition implies that $g$ is in the kernel of the Čech differential.
:::

:::{.exercise title="?"}
Check that if $T_1 \cong T_2$ as torsors, the corresponding cocycles differ by a coboundary. 
:::

:::

:::{.proposition title="Identification of $H^1$"}
For any site $\tau$ and any sheaf $\mathcal{F}$, we have correspondences
\[
\Hc^1(\tau, \mathcal{F})
&\mapstofrom
\correspond{\text{Locally trivial } \mathcal{F}\dash\text{torsors}} \\
&\ms H^1(\tau, \mathcal{F}) && \text{if $\mathcal{F}$ is abelian}
,\]
where the last line is derived functor cohomology.
:::

:::{.proof title="?"}
Omitted, see Milne.
Note that we know this for quasiprojective things, and the first isomorphism is more or less what we've just shown.
:::

:::{.corollary}
So torsors split by a cover $U$ are the same as Čech cohomology, so torsors split by some cover (i.e. locally trivial) are the same as Čech cohomology of $X_\et$:
\[  
\correspond{\text{Locally trivial $G\dash$torsors}}
&\mapstofrom
\Hc^1(X_\et, G)
.\]
:::

Why?
Take the direct limit of both sides.
Note that Čech $H^1$ always computes derived $H^1$.

:::{.theorem title="Grothendieck's Generalization of Hilbert 90" ref="thm:hilb90"}
The following is a bijection:
\[  
\Hc^1(X_\zar, \ul \GL_n)
\ms
\Hc^1(X_\et, \ul \GL_n)
\to
\Hc^1(X_\fppf, \ul \GL_n)
\]
:::

:::{.remark}
The content of this theorem: if you're étale locally trivial, then you're also Zariski locally trivial.
:::

:::{.proof title="?"}
You need the fact that the locally split torsors are the same, although it's true that any torsor will be locally split.

:::{.claim}
A locally split $\ul GL_n\dash$torsor is the same as fppf descent data for a vector bundle.
:::

Using fppf descent for vector bundles yields the theorem.

> To be continued!

:::


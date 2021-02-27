# Lecture 4:

> Note for this lecture: will use $L\dash$ functions, but we'll primarily be evaluating them at $s=0$.

## Review

We'll start by recalling the definition of an $L\dash$function.
In this setting, $X$ will be an algebraic variety defined over a finite field $\FF_q$.

Definition (Zeta Function)
:   One can associate a function to such a variety, namely a *zeta function*
    $$
    \zeta_X(s) = \prod_{x\in X} \frac{1}{1 - \abs{\kappa(x)}^{-s} }
    $$
    where the product is taken over all of the closed points of the variety, and the term in the denominator is the size of the residue field at each point.

This is a generating function which contains information about the number of points your that your variety has with values in various finite fields.
It contains the same information as points that that $X$ has in $\FF_q, \FF_{q^2}$, and so on, and packages this information in a useful way.
It's called the zeta function of $X$ because you can write down (more or less) the same definition replacing $X$ with $\spec \ZZ$, and in that case this yields the Riemann Zeta function.

The zeta function of a variety over a finite field is a much simpler object is a much simpler object than the classical Riemann Zeta function: it can be written as a rational function in $q^{-s}$.

Definition (Zeta Function, Alternate)
: $$
  \zeta_X(s) =  \prod_{i\geq 0} \det \qty{ 1 - \phi q^{-s} \suchthat H^i_c(\bar X)  }^{(-1)^{? + 1}}
  \definedas
  \det \qty{ 1 - \phi q^{-s} \suchthat H_c^i(\bar X)  }\inv
  $$
where $\phi$ is the Frobenius.

The equivalence of these two definitions is a consequence of the Grothendieck-Lefschetz trace formula mentioned earlier.

We now want to talk about a generalization of this: a zeta function "with coefficients".
Let $\mcf$ be an $\ell\dash$adic sheaf on $X$.
If I have a closed point of my variety $x\in X$, I can think of it as giving me a map $\spec \kappa(x) \mapsvia{x} X$ from the spectrum of the residue field at that closed point.
I would like to refine that to a geometric point by choosing an algebraic closure of that finite field, yielding a composite that we'll denote by $x$ with a bar over it:

\begin{center}
\begin{tikzcd}
\spec \bar{\kappa(x) } \ar[r] \ar[rr, bend left, "\bar x"] & \spec \kappa(x) \ar[r, "x"] X
\end{tikzcd}
\end{center}

This is just a geometric point lying over the point $x$ of the underlying topological space.
Then if $\mcf$ is an $\ell\dash$adic sheaf, we can talk about its stalk $\mcf_{\bar x}$, which is a finite dimensional $\QQ_\ell\dash$vector space.
It is obtained by taking the sheaf $\mcf$ which lives on $X$ and first restricting it to $x$, which gives a sheaf of the spectrum of a finite field, then restricting it to the spectrum of the algebraic closure of that finite field.
At the intermediate stage, we get some information: the $\QQ_\ell$ vector space $\mcf_{\bar x}$ has a canonical automorphism, namely the Frobenius $\phi_x$ associated to the field $\kappa(x)$.

Definition (Associated L Function)
:   $$
    L(\mcf, s) = \prod_{x\in X} \det \qty{1 - \abs{\kappa(x)}^{s} \phi_x \suchthat \mcf_{\bar x}  }\inv
    .$$

This definition holds provided that $\re(s)$ is sufficiently large, which guarantees that that this infinite product converges.
You can define it for almost all values of $s$ by analytically continuing.
In the case of the zeta function, this turns out to be a rational function in $q^{-s}$, and the same thing is true for this $L\dash$function since this is equivalent by the Grothendieck-Lefschetz trace formula to the following:

Definition (L Function, Alternative)
:   $$

  \det \qty{ 1 - \phi_{q} q^{-s} \suchthat H_c^i(\bar X, \mcf)  }\inv
  ,$$
  where the Frobenius now comes from $\FF_q$ and this determinant means an alternating product as before.

This is a relative version of the zeta function: if you specialize to $\mcf$ the constant sheaf $\QQ_\ell$ everywhere, it recovers the zeta function of the variety $X$.


We now want to talk about not a single $\ell\dash$adic sheaf, but rather a complex of such sheaves.
Let $D^b(X)$ be the bounded derived category of $\QQ_\ell$ sheaves on $X$.
Let $\mcf \in D^b(X)$ denote a typical element of this category.
Roughly speaking, these can be thought of as chain complexes of $\ell\dash$adic sheaves, although that's note quite right.

The objects of this category have the property that you can associate to them for each integer $i$ a $\mch^i(\mcf)$, the $i$th cohomology of $\mcf$ in the world of sheaves.
This will be an $\ell\dash$adic sheaf on $X$.
We want to consider the bounded derived category, so these $\mch^i$ vanish for almost all $i$.

Given such an object, you can associate an $L$ function in a stupid way

Definition (L Function of a Complex)
:   $$
    L(\mcf, s) = \prod_i L( \mch^i(\mcf), s )^{(-1)^i}
    $$

Depending on which definition of $L$ functions we take on $\ell\dash$adic sheaves, we get two definitions of what it means to take an $L$ function of a complex:

Definition
:   $$
    L(\mcf, s) = \prod_{x\in X} \prod_{i\in \ZZ} \det \qty{ 1 - \abs{\kappa(x)  }^{-s}\phi_x \suchthat \mch^i(\mcf)_{\bar x}  }^{(-1)^{i+1}}
    $$
    where we now take the stalks $\mch^i(\mcf)_{\bar x}$.


Definition
:   $$
    L(\mcf, s) = \det \qty{ 1 - \phi q^{-s} \suchthat H^*(\bar X; \mcf) }\inv
    $$
    where we are now considering *hypercohomology*.

The equivalence of these two definitions again follows from the Grothendieck-Lefschetz trace formula.

We would now like to cook up an $L$ function that is relevant to the situation in previous lectures.
We'll assert the existence of certain relevant objects.

Recall from a previous lecture: if $Y$ is a variety or a stack defined over a finite field $k$, where we assumed $H^1(\bar Y; \ZZ/\ell) \cong 0$ and $H^i(\bar Y; \ZZ/\ell)$ is finite for all $i$.
We should also say $H^0$ also vanishes, which we'll emphasize by assuming $Y$ is geometrically connected.
Under these assumptions, in the previous lecture we talked about assigning to $\bar Y$ its $\ell\dash$adic homotopy groups and homotopy type.

We then have $\pi_n(\bar Y)_{\QQ_\ell}$, the homotopy groups with $\ell\dash$adic coefficients.
These are finite dimensional $\QQ_\ell\dash$vector spaces and moreover if $\bar Y$ comes from a $Y$ defined over a finite field, then these vector spaces inherit a canonical automorphism coming from the ground field.

What we want to do now is a *relative* version of this: thinking of this now for a family of $Y$s parameterized by some other variety $X$.

**Relative Version**:

Let
$$
Y \to X \to \spec \FF_q
$$
is some variety over $\FF_q$ (which will ultimately be an algebraic curve as in the second lecture) and let $Y$ be some algebraic variety (or more likely an algebraic stack) mapping to $X$.
Assume that $Y\to X$ is smooth.

For each closed point $x\in X$, write $Y_{\bar x} \definedas Y \cross_X \spec \bar {\kappa(x)}$ by crossing with the geometric point mentioned earlier.
This is some smooth stack which is defined over the algebraic closure of a finite field.
Potentially, it is something that the previous story could be applied to.
In order for everything to work nicely, we need to make a lot of assumptions about how nice $Y$ is.

Assume

- Each $Y_{\bar x}$ has vanishing $H^1$ with $\ZZ/\ell$ coefficients
- Finite $H^i$ with $\ZZ/\ell$ coefficients,
- Vanishing $\pi_n(\cdots)_{\QQ_\ell}$ for $n\gg 0$, which can be chosen uniformly for all points $x$.

The claim is that in this situation, we can define a relative version of the $\ell\dash$adic homotopy groups.

Claim
:   There exists an object $\mcf_{Y/X} \in D^b(X)$ with the following features:

    - For each $x\in X$, we can take the stalk of the $\ell\dash$adic sheaf $\mch^{-i}(\mcf)_{\bar x}$.
      This is supposed to be a finite-dimensional $\QQ_\ell\dash$vector space; we want this to be isomorphic to $\pi_{i} Y_{\bar x}$ for all $i$.

      > The cohomology sheaves of $\mcf$ will be concentrated in negative degrees.

    - It is functorial in $Y$, i.e. given a commuting diagram
      \begin{center}
      \begin{tikzcd}
      Y' \ar[rr]\ar[rd] & & Y\ar[ld] \\
      & X &
      \end{tikzcd}
      \end{center}
      there is a map
      $$
      \mcf_{Y'/X} \to \mcf_{Y/X} \quad \in D^b(X)
      .$$

      > This is supposed to be a map that after passing to stalks and cohomology, it induces the maps on homotopy groups given by $Y' \to Y$.
      > I.e. the sheaves $\mcf_{Y/X}$ are some global version of taking the $\ell\dash$adic homotopy groups of the stalks, and functoriality is a global version of the fact that these homotopy groups are a functor of the scheme $Y$.

    - It is functorial in $X$, i.e. given a pullback
      \begin{center}
      \begin{tikzcd}
      Y' = Y\cross_X X' \ar[r]\ar[d] & Y\ar[d] \\
      X'\ar[r, 'f'] & X
      \end{tikzcd}
      \end{center}
      we have $\mcf_{Y'/X'} = f^* \mcf_{Y/X}$.

      > This is how things ought to work based on the first assertion: taking the stalks computes the homotopy groups of the fibers.
      > The pullback diagram says that the fibers of the vertical map on the right are the same as the fibers of the one on the left,
      > therefore they'll have the same $\ell\dash$adic homotopy groups, so we want this true not just on stalks but globally.

We haven't defined these sheaves yet, which we'll say something about at the end, so for the moment let's believe there is a natural construction with the described features.
Let's go back to the situation we're really interested in, where $X$ is an algebraic curve over $\FF_q$, and let $G\to X$ be a group scheme that is

- Smooth
- Affine
- Connected fibers
- The generic fiber is semisimple and simply connected.

This is the setup from lecture 2, where we forget to mention the properties we wanted the integral model to have (namely these properties).
Given any linear algebraic group defined over the generic fiber, you can always find an integral model of it with these properties.
If you started with a group that was semisimple and simply connected, it will also satisfy the last condition.

In this situation, we'd like to apply the previous ideas not to $G\to X$, but instead we'd like to take the classifying stack $BG$.
Since $G$ is a group scheme over $X$, the classifying stack is a stack in the world of algebraic stacks with a map to $X$.
To emphasize that this lives over $X$, we'll denote it $BG_X \to X$, and can be described as follows:

If $R$ is any ring, then there is an equivalence of data

\begin{align*}
\correspond{\text{Maps} \spec(R) \to BG_X} \iff \correspond{ \text{Maps}\spec(R)\to X \text{ and a } G\dash \text{ bundle on } \spec(R) }
.\end{align*}

Since $G$ is a group that lives over $X$, it makes sense to talk about a $G\dash$bundle on $\spec(R)$ whenever $\spec(R)$ maps to $X$.

This $BG_X$ is an example of the kind of thing we can take $Y$ to be from above:
.
We wanted it to have a smooth map to $X$, which is satisfied by $BG_X \to X$.
We wanted all of the geometric fibers simply connected, finite dimensional cohomology, finitely many homotopy groups.
In this case, the geometric fibers are classifying spaces of linear algebraic groups, and thus have cohomology rings isomorphic to polynomial rings with generators of even degree.
They are things for which the $\ell\dash$adic homotopy groups have a simple description in terms of $\ell\dash$adic cohomology.
So we are in the setup for which we can apply the previous construction.

We thus obtain a sheaf $\mcf_{BG_X/X} \in D^b(X)$, to which we can associate an $L$ function:
\begin{align*}
L(\mcf_{BG_X/S}, s) \definedas L(BG_X, s)
.\end{align*}

What can we say about this $L$ function?
We'd first like to write down what its values are.
We have two formulas to evaluate it.
By definition 1,
\begin{align*}
L(BG_X, s) = \prod_{x\in X} \det \qty{ 1 - \abs{\kappa(x)}^{-s} \phi_x \suchthat \qty{\mcf_{BG_X/X}}_{\bar x}  }\inv
,\end{align*}
where we're taking a product over closed points, and the Frobenius at the point $x$ on the sheaf for which we're talking stalks at a geometric point.

We know what these stalks are: the stalks at geometric points should be computing homotopy groups of the fiber, so
\begin{align*}
L(BG_X, s) = \prod_{x\in X} \det \qty{ 1 - \abs{\kappa(x)}^{-s} \phi_x \suchthat \pi_*(BG_{\bar x})  }\inv
.\end{align*}

But this appeared in the previous lecture, at least in the case $s=0$.
By Steinberg's formula,
\begin{align*}
L(BG_X, 0)
&= \prod_{x\in X} \frac{ \abs{ BG(\kappa(x))  }  }{ \abs{\kappa(x)}^{\dim BG}  } \\
&= \prod_{x\in X} \frac{\abs{\kappa(x)  }^{\dim G} }{ G(\kappa(x))  }
.\end{align*}

You might recognize this: it is one side of the mass formula.
What's the upshot?
\begin{align*}
L(BG_X, 0)
&=_{\text{Def 1}} \text{the RHS of the Mass formula for Weil's conjecture for } G
.\end{align*}

As you might guess, we'll try to get some mileage out of seeing what the second description of this $L$ function buys you.
This description says we shouldn't look at the stalks of the sheaf $\mcf_{BG_X}$; we should instead think about the cohomology of this sheaf.
We want to relate this to the moduli stack of $G\dash$bundles on $X$.

There is a relationship between the stack $BG_X \to X$ which lives over $X$, and the moduli stack $\bung(X) \to \spec(\FF_q)$ which lives over the point $\spec(\FF_q)$.
The relationship is that there is a natural map

\begin{center}
\begin{tikzcd}
X \cross \bung(X) \ar[rr, "\text{natural}"] \ar[rd] & & BG_X \ar[dl]\\
& X &
\end{tikzcd}
\end{center}

where both live over $X$.
What are the points of the LHS?
To give an $R\dash$valued point of the product, we have to specify an $R\dash$valued point of the curve together with a $G\dash$bundle on $X\cross \spec(R)$.
On the other hand, an $R\dash$valued point on $BG_X$ is an $R\dash$valued point and a $G\dash$bundle not on the entire curve, but at that point.
So the natural map is just given by **restriction to a point**.

What does this buy us?
If we believe that the earlier construction was functorial, this connects $\bung$ to $BG$.

This induces a map $\mcf_{X\cross \bung(X) / X} \to \mcf_{BG_X/X}$.
On the other hand, we have a pullback square which tells us how to describe the sheaf on the left, while the sheaf on the right is the one we're interested in.
Let $f$ be the projection map from $X$ to a point, then $\mcf_{X \cross \bung(X)/X} \cong f^* \mcf_{\bung(X) / \spec(\FF_q)}$.
Let's think of this a different way, using pushforwards instead:
this is the same as a map $\theta: \mcf_{\bung(X) / \spec(\FF_q)} \to Rf_* \mcf_{BG_X/X}$ where we're now taking the pushforward in the derived category and denoting it $Rf^*$.

Theorem (Gaitsgory, Lurie)
: The map $\theta$ is an isomorphism.

This is a type of local-to-global principle that describes the $\ell\dash$adic homotopy type of $\bung(X)$, and is one way of making precise the idea that the cohomology of $\bung(X)$ should be a "continuous tensor product" of the cohomologies of $BG$ at various points.

What does this buy us?
Assuming this theorem, this is an isomorphism in the derived category of $\ell\dash$adic sheaves on a point, or equivalently this induces an isomorphism on the cohomology sheaves when you take the stalk at the essentially unique geometric point $\spec \FF_q$.

Concretely, there is an isomorphism of $\QQ_\ell$ vector spaces by taking
$$
\pi_i \qty{\bung(X)  }_{\QQ_\ell} \mapsvia{\cong} H^{-i} \qty{\bar X; \mcf_{BG_X/X}  }
,$$
where the RHS is hypercohomology.

By definition 2 and using the theorem which describes what the hypercohomology groups look like, we have equalities
\begin{align*}
L(BG_X, s)
&= \det\qty{1 - q^{-s} \phi \suchthat H^*(\bar X; \mcf_{BG_X/X}) }\inv \\
&= \det \qty{  1 - q^{-s} \phi \suchthat \pi_* \bar{\bung(X)}_{\QQ_\ell} }
,\end{align*}
where the last term denotes the homotopy groups of the moduli stack of $G\dash$bundles.

When we evaluate at zero, we obtain
\begin{align*}
L(BG_X, 0)
&= \det \qty{  1 - \phi \suchthat \pi_* \bar{\bung(X)}_{\QQ_\ell} } \\
&= \frac{\abs{ \bung(X)(\FF_q) }}{q^{\dim \bung(X)}} \\
&= \text{LHS of Mass Formula from Weil's conjecture}
.\end{align*}
which follows from the analysis in the last lecture, where we assume that the Grothendieck-Lefschetz trace formula holds for $\bung(X)$ and everything converges.

The conclusion is a proof of Weil's conjecture: in particular, theorem A implies Weil's conjecture.
Why is this progress toward such an implication?
The conjecture is a statement about equality of complex numbers.
Here we have a theorem about $\QQ_\ell$ vector spaces and some map that is an isomorphism.
There is a geometric statement; note that theorem A does not reference the field $\FF_q$.
It makes sense for any group scheme over any curve over any field, so proving it doesn't involve the field at all.
So we are free to enlarge the field if necessary.
Thus it is "geometric" in the sense that we can replace $\FF_q$ by $\bar \FF_q$.

Moreover, over $\CC$ it reduces something familiar, which follows from the fact that $\bung(X)$ (which classifies algebraic $G\dash$bundles) also classifies topological $G\dash$bundles on $X$.
In other words, complex analytically, $G\dash$bundles on a curve satisfy an $H\dash$principle, i.e. understanding the moduli space of $G\dash$bundles in a complex-analytic sense ends up being homotopy equivalent to the object the classifies $G\dash$bundles topologically, for which topological invariant such as homotopy and cohomology can be computed.

The difficulty is then to make sense of the $H\dash$principle in algebraic geometry.
Since theorem A is such a principle, the difficulty is then in proving it.

## Next Time

We'll sketch the ideas that go into the proof of theorem A.
There's a theorem that goes into this conclusion, but also a definition.
So we'll say a few words about this construction, since a difficulty is even just defining the objects appearing in its statement.

Question: how do we define $\mcf_{Y/X} \in D^b(X)$, e.g. for $Y = \BG_X$ is the classifying stack of a linear algebraic group or a group scheme over $X$?
How classical of an object is this?
It's closely related to objects appearing in Steinberg's work, and in a paper of Dick Gross about the "motive of an algebraic group".
This is essentially that object.

An easy case would be if $G$ were everywhere semisimple, having good reduction at all points of the curve?
The object $\mcf_{Y/X}$ should be an object in the derived category that has the property

\begin{align*}
H^_{-i} (\mcf)_{\bar x} \cong \pi_i (BG_{\bar x})_{\QQ_\ell}
,\end{align*}

i.e. taking the cohomology sheaf should compute the homotopy groups of the classifying stack of a certain linear algebraic group.

This tells you what the cohomology sheaf should look like at the generic point of $X$.
Given an $\ell\dash$adic sheaf on $X$, we first need to describe what it looks at the generic point, which should be a finite dimensional $\QQ_\ell\dash$vector space with an action of some large galois group.

Letting $BG_\eta$ be the generic fiber of this group scheme (previously denoted $G_0$), then at the generic point we are seeing $\pi_i\qty{ \bar BG_\eta  }_{\QQ_\ell}$, where we are taking its classifying stack over an algebraic closure of the generic point of the curve, and you think of it as acted on by the absolute galois group of the function field you're interested in studying.

Thus the homotopy groups are classical objects, and are just dual to $I/I^2$ for $I$ the maximal ideal in the cohomology ring of this classifying stack.
So there is some galois representation that can be defined concretely.
The assumption that $G$ has good reduction everywhere guarantees that the sheaf $H^{-i}(\mcf)$ is ???, i.e. we should think of it as a local system.
Thus the galois representation is unramified and defines an $\ell\dash$adic sheaf $\mcf_i$ on $X$.

Idea: try to define $\mcf_{BG_X/S} \definedas \oplus_{i\in \ZZ} \mcf_i[i]$.
In the good reduction case, this is actually correct at the level of objects.
However, this is bad as a definition, since writing down the maps from functoriality does not make theorem A true.
So something smarter is needed, which requires some ideas from homotopy theory.

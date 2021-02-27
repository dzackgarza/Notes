Throughout this lecture, we'll let $X\covers \spec(\FF_q)$ be a smooth, projective, algebraic curve over a finite field. We'll also require that $X$ is geometrically connected, i.e. the ring of global functions on $X$ is exactly $\FF_q$. We'll also write $K_x$ for the fraction field of $X$. It determines and is determined by $X$ uniquely up to isomorphism, and this is what's referred to as the function field. Because of this, the data of a function field is the same as this algebro-geometric data.

# Analogies
There is a strong analogy between the behavior of number fields and that of function fields:

|Number Fields   | Function Fields  |
|---|---|
| A finite extension of $\QQ$  | Fields like $K_X$   |
|Prime numbers $p$ (or point at $\infty$)[^1] | Closed points $x\in X$ |
| $\ZpZ$ | The residue field $\kappa(x)$ at $x$ |
| The $p\dash$adic integers $\Zp$ | $\OO_x$ the completed local ring of $X$ at $x$ |
| $\Qp$, the fraction field of $\Zp$ (or $\RR$) |  $K_x\cong \kappa(x)((t))$ the fraction field of $\OO_x$ (a local field)|
| $A$ the ring of adeles | $A_X \definedas \prod^\text{res}_{x\in X} K_x$ |

Everywhere in this lecture, we'll take $x$ to be a closed point. Note that $\kappa(x)$ is a finite extension of $\FF_q$, which has size $q^t$ for some $t\in\ZZ$. We also have $\OO_x \cong \kappa(x)[[t]]$, which is not canonical until a local coordinate at $x$ is chosen. The restricted product is defined as the subset of the cartesian product where all but finitely many are required to lie in the subring $\OO_x$.

Continuing this analogy using ideas from the previous lecture, we have
|Number Fields   | Function Fields  |
|---|---|
| A quadratic form $q_0$ over $\QQ$ (or $SO_{q_0}$)[^2] | A semisimple algebraic group  $G_0$ over $K_x$ |
| The locally compact group $SO_{q_0}(A)$ | The locally compact group $G_0(A_x)$[^3] |
| The subgroup $SO_{q_0}(\QQ)$[^4]  | The subgroup $G_0(K_x)$  |
| $\mu_\text{Tam}$ | $\mu_\text{Tam}$[^5]|
| Weil's Conjecture $\mu_\text{Tam}\left(\frac{\text{Spin}_{q_0}(A)}{\text{Spin}_{q_0}(\QQ)}\right)=1$ | $ \mu_{Tam}\left(\frac{G_0(A_X)}{G_0(K_X)}\right) = 1$

[^1]: Where $\infty$ corresponds to the Archimedean completion.
[^2]: Every nondegenerate quadratic form over $\QQ$ yields a semisimple algebraic group by looking at its special orthogonal group.
[^3]: This is an algebraic group over the field $K_x$, so for any $K_x\dash$algebra $R$, we can take $R$ valued points. In particular, we can take its points with values in the ring of adeles.
[^4]: From the prior lecture, recall that this group has a canonical invariant measure called the tamagawa measure.
[^5]: The construction makes perfect sense in the function field case as well. Works for any semisimple group over a function field, where the tamagawa measure is on its adelic points. 

The Weil conjecture in the number field case is an abstract statement about the volumes of adelic groups, which we arrived at via the problem of counting quadratic forms within a genus. There is an analog in the function field case. Continuing the analogy table:

|Number Fields   | Function Fields  |
|---|---|
|$q$ quadratic forms over $\ZZ$ | A group scheme $G\covers X$[^6] |
| $\SO_q(\ZpZ)$ arising from counting quadratic forms over finite fields | $G(\kappa(x))$|
| $$\text{Mass}(q) = \sum_{\substack{q' \text{ of genus } q}} \frac{1}{\abs{O_{q'}(\ZZ)}}$$ | $$\text{Mass}(q) = \sum_{\substack{\text{Principal}\\ G\dash \text{bundles} \\  P \text{ on } X}} \frac{1}{\abs{\Aut(P)}}$$ |
| Segal mass formula | $$q^D \prod_{x\in X} \frac{\abs{G(\kappa(x))}}{\abs{\kappa(x)}^d}\\ d \definedas {\dim (G_0 / K_X)}$$[^7]

What does a group scheme buy us that having just an algebraic group defined at the generic point doesn't? For $G_0$, we were allowed to evaluate it on any $K_x\dash$algebra; for the group scheme, we can evaluate it on any commutative ring $R$ for which you have a $\spec(R)\to X$. So we can evaluate $G$ on things like the residue field $R=\kappa(x)$. Also note that a principal $G$ bundle on something like $G=X \cross \GL_n$ is just a vector bundle of rank $n$. For a semisimple group like $G=X\cross \SL_n$, this also includes a trivialization of its determinant.

One word of warning for the mass -- in the number field case, this was a finite sum, but the function field case will involve an infinite sum, since there are infinitely many $G\dash$ bundles up to isomorphism. However, we will find that once you start listing these symmetry groups out, the sizes grow fast enough for this sum to converge to something finite.

[^6]: Not just an algebraic group defined over the field $K_X$, i.e. not just something defined at the generic point of your algebraic curve. A group scheme is is a family of algebraic groups parameterized by the algebraic curve $X$. An example is crossing $X$ with your favorite algebraic group, e.g. $X\cross \GL_n$. This is not a great example because $\GL_n$ is not semisimple, but a good replacement is $\SL_n$.

[^7]: Something that looks like an Euler product, where the denominator is the naive estimate of the size. We'd hope that this ratio is close to 1, so this product converges, and it turns out that it does with some interpretation related to counting $G\dash$bundles. $D$ is some integer we will see later.

So we arrive at a statement of Weil's conjecture about function fields. We know the answer in the number field case, which is generally harder, so we expect this to be easier because we can take advantage of the connection between function fields and algebraic geometry. Here, the number field case was easy, because in trying to count quadratic forms within a genus, we just arrived at some unstructured set. Now we are trying to count principal $G\dash$ bundles on an algebraic curve, where there is more structure coming from a parameterization by an algebro-geometric object.

# Size of the Moduli Stack

Let $\bung(X)$ denote the moduli stack of $G\dash$bundles. If is defined by the following property: giving an $R$ valued point of $\bung(X)$, i.e. a map $\spec(R) \to \bung(X)$, is the same data as a principal $G\dash$bundle on $X\cross\spec(R)$, where we take all fiber products over $\spec(\FF_q)$. Since this is a stack, when we talk about these $R$ valued points, these should be thought of not as a set but rather as a groupoid or a category in which all morphisms are isomorphisms. Keep in mind that we want to know about the automorphism classes of $G\dash$bundles on $X$, so we need more than just a set structure here. For those not familiar with algebraic stacks, they behave very much like algebraic varieties.

The goal is to compute $\text{Mass}(q)$ on the function field side, and we can think of a principal $G\dash$bundle on $X$ as an $\FF_q$ valued point of $\bung(X)$, and these points are roughly what we're counting. In reality, we want to count them with multiplicity, where each multiplicity is related to these finite symmetry groups $\Aut(P)$. So we'll define
$$
\abs{\bung(X)} \definedas \sum \frac{1}{\abs{\Aut(P)}}.
$$

Digression -- imagine we weren't talking about a stack, but rather just an algebraic variety $Y$ over $\FF_q$. Then we can look at the $\FF_q$ valued points $Y(\FF_q)$, a finite set, and ask how big it is.

We'll use a bar everywhere to denote taking algebraic closures, i.e.
$$
\overline Y = Y \cross_{\spec(\FF_q)} \overline{\FF_q}
$$

Weil's idea for counting this set is to think of $Y(\FF_q) \subseteq \overline Y$. It sits inside this algebraic variety over an algebraically closed field. There is a canonical map, the geometric frobenius $\varphi: \overline Y \selfmap$, which is defined by choosing homogeneous local coordinates in $\PP^n$ and defining $\varphi([x_1:~\cdots ~:x_n]) = [x_1^q:~\cdots~:x_n^q]$. So if $\overline Y$ is defined by some solutions to a polynomial equation, this map sends solutions to solutions. Moreover, $Y(\FF_q) = \text{Fix}(\varphi)$, the fixed points of this map. 

Weil's idea is that we ought to be able to count these fixed points with some variant of the Lefschetz fixed-point formula, i.e. we'd heuristically expect some formula like this to hold:
$$
\text{The Grothendieck-Lefschetz Formula:} \\~\\
\abs{Y(\FF_q)} = \sum_{i\geq 0} (-1)^i \Tr(\varphi \mid H_c^i(\overline Y)) \\
$$

where a "usual cohomology" would work when $Y$ is a projective variety, but if $Y$ is quasi-projective then we'd need to take some kind of compactly supported cohomology.

Weil used this to make a number of prediction about the behavior of the number of points, which were eventually turned into theorems by Grothendieck and his students by making sense of the cohomology appearing here. Note that since we're in characteristic $p$, there's not a usual sort of topological space we can work with here, so we can't apply the usual constructions of cohomology and homotopy. They instead introduced adequate replacements that work for schemes, the $\ell\dash$adic cohomology groups, where $\ell\neq0\in\FF_q$ is some prime.

# Adapting the GL Formula for Stacks
Thus the goal we'd like to pursue now is to apply this not to an algebraic variety, but rather to an algebraic stack. 

Before doing that, we'd like to restate the above trace formula without appealing to compactly supported cohomology. As a replacement, assume $Y$ is smooth of dimension $d$ -- then $\ell\dash$adic cohomology will satisfy a form Poincare duality, i.e.
$$
H^i_c (\overline Y) \cong H^{2d-i}(\overline Y)^\dual
$$

where the isomorphism is sort of canonical, and we note that the RHS is not compactly supported. Being canonical actually depends on something called the orientation of $\overline Y$, for a which a choice can not be made in a way that is not $\varphi\dash$equivariant. This isomorphism comes from the fundamental class of $\overline Y$, while $\varphi$ is not a map of degree 1 -- instead, it's of degree $q^d$. So we apply some form of duality to both parts of the trace formula, which yields a new formula
$$
\frac{\abs{Y(\FF_q)}}{q^d} = \sum_{i\geq 0} (-1)^i \Tr(\varphi^{-1} \mid H^i(\overline Y)).
$$

Note that we'd expect the LHS to be 1, based on naive estimates for the number of points, and the $i=0$ term of the RHS is exactly 1. So we can think of the remaining pieces coming from higher cohomology as correction terms.

We'd now like to apply this to $Y=\bung(X)$.

**Definition**: $\bung(X)$ **satisfies the GL trace formula** if 
$$
q^{-\dim \bung(X)}\sum \frac{1}{\Aut(P)} = \sum_{i\geq 0} (-1)^i \Tr(\varphi^{-1} \mid H^i(\overline{\bung(X)})) \\ \definedas \Tr(\varphi^{-1} \mid H^*(\overline{\bung(X)})
$$

where the second bit of notation is defined on the graded ring $H^*$ because we will be using it often. Note that the $D$ from earlier is now equal to $\dim \bung(X)$. Weil's conjecture would then follow from two assertions:

1. $\bung(X)$ satisfies the GL trace formula, and
2. The trace appearing on the RHS has the Euler product expansion described earlier

This is summarized in the following equalities
$$
q^{-\dim \bung(X)}\sum \frac{1}{\Aut(P)} 
\overset{1} = \sum_{i\geq 0} (-1)^i \Tr(\varphi^{-1} \mid H^i(\overline{\bung(X)}))  \overset{2} = q^D \prod_{x\in X} \frac{\abs{G(\kappa(x))}}{\abs{\kappa(x)}^d}.
$$

The first part won't be covered in this series of lectures, but was first proved in the thesis of Behrend when $G$ is a constant group, and later generalized where $G$ is everywhere semisimple. Note that this can't always be arranged here. We're making some assumptions about the group scheme $G$ here, particularly that the generic fiber $G_0$ is semisimple and simply-connected. But in general, thinking of $G$ as a family of algebraic groups, you can't arrange that every member of that family also satisfies these conditions. You can arrange that they are all smooth, affine groups, but it's unavoidable that at finitely many points, the group will fail to be semisimple. Behrend's theorem was generalized to this sort of setting in Lurie's recent text, where the group may have bad reductions at finitely many points -- but the proof is not so great.

The second step given above is where the new ideas come in.

# Digression: The Euler Factors

What are the Euler factors appearing on the RHS? 

Let $x\in X$ be a closed point and define $BG_x \definedas \bung(\theset{x})$, a moduli stack of $G\dash$ bundles defined just at this point, which is the classifying stack obtained by taking the fiber at $x$. Let's say we're interested in counting 
$$
\bung(\theset{x})(\FF_q) = \theset{\text{principal $G\dash$bundles on $\spec(\kappa(x))$}}
$$

**Theorem (Lang)**:
If the fibers of $G$ are connected, this category of principal $G\dash$bundles has only one object, i.e. every such bundle is trivial.

But the symmetry group of this trivial bundle is $G(\kappa(x))$, so we have
$$
\abs{\bung(\theset{x})(\FF_q) } = \frac{1}{\abs{G(\kappa(x))}}
$$

There is also an equality
$$
\dim (\bung(\theset{x}) ) = \deg(\theset{x})(-\dim(G)) = \abs{\kappa(x)}^d
$$

and so
$$
\frac{\abs{\bung(\theset{x})(\FF_q) }}{\dim (\bung(\theset{x}) )} = \frac{\abs{\kappa(x)}^d}{\abs{G(\kappa(x))}}.
$$

It is also a fact that $\bung(\theset{x})$ satisfy the GL trace formula -- this will be addressed in the next lecture, but is not hard to prove. It essentially follows from a size formula of Steinberg's for the size of a finite group of Lie type. This allows us to write
$$
\deg(\theset{x})(-\dim(G)) = \abs{\kappa(x)}^d = \Tr(\varphi\inv \mid H^*(\bung(\theset{x}))~)
$$

where Weil's conjecture would be equivalent to
$$
\Tr(\varphi\inv \mid H^*(\bung(X))~) = \prod_{x\in X} \Tr(\varphi\inv \mid H^*(\bung(\theset{x}))~)
$$

where the intuition here can be lifted from the world of vector bundles -- we heuristically think of them as an assignment of vector spaces to every point in the space, such that they vary continuously as you move points, so we think of the total bundle as some kind of "continuous product" of the bundles over points. Note that if $X$ was a finite set instead of an algebraic curve, this would literally be true, using the cartesian product, and we would be able to get the total cohomology by some kind of Kunneth formula. 

Imagining we had some kind of Kunneth formula for these continuous products, we can heuristically write something like
$$
\bung(X) = `` \prod^\text{cts}_{x\in X} \bung(\theset{x})'' \\
\implies H^* \overline{\bung(X)} = `` \bigotimes^\text{cts}_{x\in X} H^* \bung(\theset{x})''.
$$

where we can actually make sense of the latter equality using factorization homology. The LHS is well defined using $\ell\dash$adic cohomology on stacks. If we can make sense of the RHS and show that it computes the LHS, we ought to be able to extract an equality of numbers by taking the trace of the frobenius on both sides. This is what we'll address next time.


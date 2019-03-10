# The Fundamental Group

## Lemma: The fundamental group of a CW-complex only depends on the 1-skeleton, and $H^k(X)$ only depends on the $k$-skeleton.

## Definition: Homotopy

Let $X, Y$ be topological spaces and $f,g: X \to Y$ continuous maps. Then a *homotopy* from $f$ to $g$ is a continuous function

$F: X \cross I \into Y$

such that

$F(x, 0) = f(x)$ and  $F(x,1) = g(x)$

for all $x\in X$. If such a homotopy exists, we write $f\homotopic g$. This is an equivalence relation on $\text{Hom}(X,Y)$, and the set of such classes is denoted $[X,Y] \definedas \hom (X,Y)/\homotopic$.

## Definition: Nullhomotopic

If $f$ is homotopic to a constant map, say $f: x \mapsto y_0$ for some fixed $y_0 \in Y$, then $f$ is said to be *nullhomotopic*. In other words, if $f:X\into Y$ is nullhomotopic, then there exists a homotopy $H: X\cross I \into Y$ such that $H(x, 0) = f(x)$ and $H(x, 1) = y_0$.

Note that constant maps (or anything homotopic) induce zero homomorphisms.

# Theorem: Any two continuous functions into a convex set are homotopic.

Proof: The linear homotopy. Supposing $X$ is convex, for any two points $x,y\in X$, the line $tx + (1-t)y$ is contained in $X$ for every $t\in[0,1]$.
So let $f, g: Z \into X$ be any continuous functions into $X$. Then define $H: Z \cross I \into X$ by $H(z,t) = tf(z) + (1-t)g(z)$, the linear homotopy between $f,g$. By convexity, the image is contained in $X$ for every $t,z$, so this is a homotopy between $f,g$.

## Definition: Homotopy Equivalence

Let $f: X \to Y$ be a continuous map, then $f$ is said to be a *homotopy equivalence* if there exists a continuous map $g: X \to Y$ such that

$f\circ g \homotopic \id_Y$ and $g\circ f \homotopic \id_X$.

Such a map $g$ is called a homotopy inverse of $f$, the pair of maps is a homotopy equivalence.

If such an $f$ exists, we write $X \homotopic Y$ and say $X$ and $Y$ have the same homotopy type, or that they are homotopy equivalent.

> Note that homotopy equivalence is strictly weaker than homeomorphic equivalence, i.e., $X\cong Y$ implies $X \homotopic Y$ but not necessarily the converse.

## Definition: Contractible

A topological space $X$ is *contractible* if $X$ is homotopy equivalent to a point, i.e. $X \homotopic \theset{x_0}$. This means that there exists a pair of homotopy inverses $f: X \into \theset{x_0}$ and $g:\theset{x_0} \into X$ such that $f\circ g = \id_{\theset{x_0}}$ and $g\circ f = \id_X$.

This is a useful property, because it supplies you with a homotopy.

# Definition: Deformation Retract

Let $X$ be a topological space and $A \subset X$ be a subspace, then a *retraction* of $X$ onto $A$ is a map $r: X\into X$ such that the image of $X$ is $A$ and $r$ restricted to $A$ is the identity map on $A$.

Note that this definition isn't very useful, as every space has at least one retraction - for example, the constant map $r:X \into \theset{x_0}$ for any $x\_0 \in X$.

A *deformation retract* is a homotopy $H:X\cross I \into X$ from the identity on $X$ to the identity on $A$ that fixes $A$ at all times. That is,
$$
H: X\cross I \to X \\
H(x, 0) = \id_X \\
H(x, 1) = \id_A \\
x\in A \implies H(x, t) \in A \quad \forall t
$$

Equivalently, this requires that $\restrictionof{H}{A} = \id_A$

A deformation retract between a space and a subspace is a homotopy equivalence, and further $X\homotopic Y$ iff there is a $Z$ such that both $X$ and $Y$ are deformation retracts of $Z$. Moreover, if $A$ and $B$ both have deformation retracts onto a common space $X$, then $A \homotopic B$.

## Definition: The Fundamental Group / 1st Homotopy Group

Given a pointed space $(X,x_0)$, we define the fundamental group $\pi_1(X)$ as follows:

- Take the set $L = \theset{\alpha: S^1\into X \mid \alpha(0) = \alpha(1) = x_0}$.
- Define an equivalence relation $\alpha \sim \beta$ iff there exists a homotopy $H: S^1 \cross I \into X$ such that $H(s, 0) = \alpha(s)$ and $H(s, 1) = \beta(s)$, i.e. if $f\homotopic g$ in $X$.
  - Symmetric:
  - Reflexive:
  - Transitive:
- Define $L/\sim$, which contains elements like $[\alpha]$ and $[\id_{x_0}]$, the equivalence classes of loops after quotienting by this relation.
- Define a product structure: for $[\alpha], [\beta] \in L/\sim$, define $[\alpha][\beta] = [\alpha \cdot \beta]$, where we just need to define a product structure on bona fide loops. Just do this by reparameterizing:
  $(f\cdot g)(s) = \mathbb{1}[s \in \left[0, \frac{1}{2}]\right]f(2s) + \mathbb{1}[s \in \left[\frac{1}{2}, 1]\right]g(2s-1)$
  - Continuous: by the pasting lemma and assumed continuity of $f, g$
  - Well-defined:
- Check that this is actually a group
  - Identity element:
  - Closure:
  - Associativity:
  - Inverses:
- Summary:
  - Elements of the fundamental group are *homotopy classes of loops*.
  - Continuous maps between spaces induce *some* homomorphism on fundamental groups.
    - Inclusions

# Theorem: $X$ is simply connected iff it has trivial fundamental group.

By definition, $X$ is simply connected iff $X$ is path connected and every loop contracts to a point.

$\Rightarrow$: Suppose $X$ is simply connected. Then every loop in $X$ contracts to a point, so if $\alpha$ is a loop in $X$, $[\alpha] = [\id_{x_0}]$, the identity element of $\pi_1(X)$. But then there is only one element in in this group.

$\Leftarrow$: Suppose $\pi_1(X) = 0$. Then there is just one element in the fundamental group, the identity element, so if $\alpha$ is a loop in $X$ then $[\alpha] = [\id_{x_0}]$. So there is a homotopy taking $\alpha$ to the constant map, which is a contraction of $\alpha$ to a point.

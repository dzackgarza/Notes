We have the following situation: a fiber bundle

$$
K(\pi, n) \to E \to B
$$

Where we might assume that $B$ is connected for simplicity.

# Classification

1. $\pi_1(B)$ acts on the fiber by self-homotopy equivalences, i.e. maps

$$
\pi_1(B) \to Aut(K(\pi, n)) \cong Aut(\pi),
$$

where the second equivalence is just a consequence of the simplicity of these spaces, i.e. its single homotopy group.

*Note: usually we are assuming that this action is **trivial**; otherwise, accounting for it makes things more complicated.*

2. Assuming that $\pi_1(B) = 0$, or equivalently that the above action is trivial, then isomorphism classes of these bundles correspond to certain cohomology elements. In particular, we have

$$
\theset{\text{isomorphism classes of bundles } K(\pi, n)\to E\to B}
\iff H^{n+1}(B; \pi)
$$

In general, the right hand side of this correspondence is referred to as cohomology *"with twisted coefficients"* in the *"bundle of groups"* $\pi \to G \to B$.

Why?

- Every $K(\pi, n)$ fibration is a pullback of the universal one, i.e.

$$
\begin{CD}
@. @.  \Omega K(\pi, n+1) = K(\pi, n)\\
@. @. @VVV \\
K(\pi, n) @>>> E = f^* PK(\pi, n+1) @>>> PK(\pi, n+1) \simeq \pt\\
@. @V{p}VV @V{p'}VV \\
@. B @>{f}>> K(\pi, n+1) \\
\end{CD}
$$

and so we can think of the universal bundle as the "classifying space for the $K(\pi, n)" bundle here.

We can also explicitly construct $f^* E = \theset{x, (p^{-1}\circ f)(x)}$.

- The universal bundle $K(\pi, n) \to PK(\pi, n+1) \to K(\pi, n+1)$ gives rise to a canonical element in

$$
H^{n+1}(K(\pi, n+1); \pi) \cong \hom(H_{n+1} (K(\pi, n+1), \pi) = \hom(\pi, \pi) = Aut(\pi)
$$

by the universal coefficient theorem, where $\ext$ disappears since $H_{<n+1}K(\pi, n) = 0$.

The group $Aut(\pi)$ a natural identity element, namely the identity automorphism, and so we define the corresponding element in cohomology to be the *characteristic class* of the bundle.

Thus, given any $f$ fitting into the following situation

$$
\begin{CD}
K(\pi, n) @>>> PK(\pi, n+1) \\
@. @VVV \\
X @>{f}>> K(\pi, n+1)
\end{CD}
$$

we can form $f^*C \in H^{n+1}(X; \pi)$.

**Remark**: Note that this gives us an alternative definition of cohomology in terms of homotopy, using the correspondence $$[X, K(\pi, n)] \cong H^n(X; \pi)$$.

**Claim**: This correspondence yields the desired isomorphism.

**Proof**:

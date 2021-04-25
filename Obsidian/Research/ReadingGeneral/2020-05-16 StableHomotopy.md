
Paper: [A Guide for Computing Stable Homotopy Groups](https://arxiv.org/abs/1801.07530)

- Main idea: certain types of "topological field theories" are classified by certain stable homotopy classes of maps between 2 specific spectra
- Main tool: Adams spectral sequence, invented to resolve Hopf invariant one. Relates cohomology of spaces/spectra to stable homotopy
- Mod-2 cohomology of any space is a module over the Steenrod algebra
- Two important classes of isomorphisms: chain homotopy equivalences vs quasi-isomorphisms.
  - Derived category inverts quasi-isomorphisms (not an equivalence relation!)
  - Homotopy category inverts chain homotopy equivalences. In theory, easier to do.
  - For bounded below projective chain complexes, quasi-iso implies chain homotopy equivalence, so can take derived category to be projective chain complexes with chain homotopy equivalences as morphisms
- Analogy:
  - Chain homotopy equivalences for modules $\iff$ homotopy equivalences
  - Quasi-isomorphisms $\iff$ weak homotopy equivalences
  - Derived category $\iff$ homotopy category of spectra
  - Projective chain complexes $\iff$ CW spectra
- Standard examples of spectra:
  - Suspension spectrum: for any space $X$, $$\Sigma^\infty X \definedas \qty{ X_0 \definedas X \to X_1 \definedas \Sigma X \to X_2 \definedas \Sigma^2 X \to \cdots},$$ yields a functor $\Sigma^\infty:\text{Top} \to \text{PreSpectra}$ with adjoint $\Omega^\infty$ where $X \mapsto X_0$.
  - $HG \definedas K(G, 0) \mapsvia{\omega_0^*} K(G, 1) \to \cdots$ where we take the adjoint of the homotopy equivalences $\omega_n: K(G, n) \to \OmegaK(G, n+1)$.
  - $K\dash$theory, where $K = \qty{\ZZ \cross BU \to U \to \ZZ \cross BU \to U \to \cdots}$ using the equivalences given by 2-fold Bott periodicity.
  - Real $K\dash$theory $KO = \qty{\ZZ\cross BO \to \cdots}$ using 8-fold Bott periodicity.
  - Any infinite loop space $X= X_0$, i.e. where $X \homotopic \Omega^k X_k$, then take $X_0 \to X_1 \to \cdots$.
  - Function spectrum $F(X, Y) = ?$.
- Coproduct in $\text{Top}_*$ is wedge
- $\text{Top}_*$ is a closed symmetric monoidal category, where the symmetric monoidal product is the smash product $A \smash B$ for which there is a homeomorphism $\hom_\top(A\smash B, C) \cong \hom_\top(A, \hom_\top(B, C))$.
- Alternate definition of hoTop/DTop as localizing equivalence: initial category receiving a functor which sends blah equivalences to isomorphisms 
- The "usual" category of spectra ios the homotopy category of spectra. Triangulated with shift functor $\Sigma(\wait)$ with inverse $\Omega(\wait)$.
- The sphere spectrum $S^0$ is the unit for the symmetric monoidal structure, i.e. $S^0 \smash X \homotopic X, F(S^0, X) \homotopic X$.
- Pushout and pullback diagrams coincide, exact triangles $X\to Y \to Z \to \Sigma X$ are equivalently fiber and cofiber sequences.
  - $X\to Y$ is null-homotopic iff $Z \homotopic Y \vee \Sigma X$.
- Spectra as generalized homology theories: take coproducts to direct sums and exact triangles to exact sequences
  - For $E$ a spectrum, the homology theory is $E^n(X) = \pi_n(E\smash X)$.
  - For $E = HG$, $HG^\wait (A) = \tilde H^\wait (X; G) \cong HG^\wait(\Sigma^\infty X)$.
- Homotopy groups are well-defined for any spectrum, can be nonzero in negative degrees
- Connective spectra: related to stages of Whitehead tower
- Ring spectra: cohomology theories have a multiplicative structure, gives rise to maps $H\ZZ \smash H\ZZ \to H\ZZ$. For any spectrum $R$ with
  - A multiplication map $R\smash R \to R$
  - A unit map $S^0 \to R$
  - Require that this diagram commutes:
  \begin{center}
  \begin{tikzcd}
  S^0 \smash R \ar[r]\ar[dr, "\homotopic"] & R\smash R\ar[d] & \ar[l] R\smash S\ar[dl, "\homotopic"] \\
  & R &
  \end{tikzcd}
  \end{center}
  - Commutativity: require that the swap map commutes with multiplication

- Thom spectra: let $\nu: E\to B$ be a real vector bundle over a space, take 1-point compactification of fibers to get the sphere bundle $\text{Sph}(E) \to B$, take the section $s(b) = \infty$ in each fiber, and define the Thom space as $B^\nu = \text{Sph}(E)/s(B)$.
  - Take the suspension spectrum to get the Thom spectrum.
- Virtual bundle: a formal difference of two bundles over a common base $B$
- Model for $BO_n = \colim_{\to k} \Gr(n, \RR^k)$
  - Can take the universal bundle $$E_n = \theset{(V, \vector x) \in G_n \cross \RR^\infty \suchthat \vector x \in V \in G_n  } \to BO_n$$
  - $MO_n$ is the associated Thom space
- Cohomology operation of degree $k$: a natural transformation $H^*(\wait; \ZZ/2\ZZ) \to H^{*+k}(\wait; \ZZ/2\ZZ)$. Stable if if commutes with the suspension isomorphism $H^*(\wait) \cong H^{*+1}(\Sigma(\wait))$.
  - Example: Bockstein morphism, take $0\to A \to B \to C \to 0$ in abelian groups to get a LES, the connecting morphism $H^*(\wait; \ZZ/2\ZZ) \to H^{*+1}(\wait, \ZZ/2\ZZ)$ is $\text{Sq}^1$, a stable operation of degree 1.
- Can form $\RP^2$ as a pushout:
  \begin{center}
  \begin{tikzcd}
  S^1 \arrow[dd] \arrow[rr] &  & D^2 \arrow[dd, dashed] \\
                            &  &                        \\
  S^1 \arrow[rr, dashed]    &  & \RP^2                 
  \end{tikzcd}
  \end{center}
  and $\CP^2$ as 
  \begin{center}
  \begin{tikzcd}
  S^3 \arrow[dd, "\eta"] \arrow[rr] &  & D^4 \arrow[dd, dashed] \\
                            &  &                        \\
  S^2 \arrow[rr, dashed]    &  & \CP^2                 
  \end{tikzcd}
  \end{center}
  where $\eta$ is the Hopf fibration.

- Steenrod algebra $\mca$: graded, non-commutative (cocommutative Hopf) $\FF_2\dash$algebra generated in degree $k$ by stable cohomology operations of degree $k$, multiplication given by composition of operations
  - Use Yoneda to show $\mca \cong H\ZZ/2\ZZ^*(H\ZZ/2\ZZ)$.
  - Axiomatically describe squares as $\text{Sq}^k: H^*(\wait; \ZZ/2\ZZ) \to H^{*+k}(\wait; \ZZ/2\ZZ)$.

- Adams Spectral Sequence: in good cases, $$E_2^{s, t} = \ext_{\mca}^{s, t}(H^*(X), \ZZ/2\ZZ) \implies \qty{\pi_{t-s}X}^{\smash}_2$$
- Hurewicz morphism: send a map $f: S^k \to X$ to its induced map on cohomology.
- Generalized EM spectrum: $Z \homotopic HV \homotopic \bigvee_{i\in I} \Sigma^i H\ZZ/2\ZZ$ where $V$ is a graded $\ZZ/2\ZZ\dash$vector space which is finite in every degree.
- Idea: for $X$ a suspension spectrum of a CW complex with finitely many cells in each dimension, resolve it (Adams resolution) by a sequence of spectra $X_n$ admitting maps to generalized EM spectra.
  - For such spectra, the Adams SS computes the 2-completion of the homotopy groups of $X$ 

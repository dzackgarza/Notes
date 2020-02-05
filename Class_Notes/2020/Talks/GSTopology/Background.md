# General

**Definition (Tangent Bundle):**
$TM = \disjoint_{p\in M} T_pM$, which fits into the vector bundle $\RR^n \to TM \to M$ so $T_p M \cong \RR^n$.

$T_p M = \spanof_\RR\theset{\partial x_i}$

**Definition (Cotangent Bundle):**
Since $T_p M$ is a vector space, we can consider its dual $T_p\dual M$, and similarly the cotangent bundle $\RR^n \to T\dual M \to M$.

$T_p\dual M = \spanof_\RR\theset{dx_i}$.

**Definition (Derivative of a Map):**
Recall that for any smooth function $H: M\to N$, the *derivative* of $H$ at $p\in M$ is defined by $dH_p: T_pM \to T_p N$ which we define using the derivation definition of tangent vectors: given a derivation $v\in T_p M: C^\infty(M) \to \RR$, we send it to the derivation $w_v \in T_{q}M = C^\infty(M) \to \RR$ where $w_v$ actson on $f\in C^\infty(M)$ by precomposition, i.e. $w_v \actson f = v(f \circ H)$.

![](2020-02-03-10-56-11.png)

**Definition: Fields and Forms**
A section of $TM$ is a vector field, and a section of $T\dual M$ is a 1-form.

More generally, differential $k\dash$forms are in $\Omega^k(M) \definedas \Gamma(\Lambda^k T\dual M)$, i.e. sections of exterior powers of the cotangent bundle.

**Definition (Closed and Exact Forms):**
Let $d_p: \Omega^p(M) \to \Omega^{p+1}(M)$ be the exterior derivative. 
Then a form $\omega$ is *closed* (or is a *cocycle*) iff $\omega \in \ker d_p$, and *exact* (or a *coboundary*) iff $\omega \in \im d_{p-1}$.

Note that closed forms are exact, since $d^2  = 0$, i.e. $\omega$ closed implies $\omega = d\lambda$ implies $d\omega = d^2 \lambda = 0$ implies $\omega$ is exact.

If $\alpha, \beta \in \Omega^p(M)$ with $\alpha-\beta$ exact, they are said to be *cohomologous*.

**Definition (Vector Field):**
A *vector field* $X$ on $M$ is a section of the tangent bundle $TM \mapsvia{\pi} M$.
Recall that these form an algebra $\mathfrak{X}(M)$ under the Lie bracket.

![](2020-02-03-20-52-40.png)

Note that vector fields can be *time-dependent* as a section of $T(M\cross I) \to M\cross I$.


**Definition (Flow):**
A *flow* is a group homomorphism $\RR \to \mathrm{Diff}(M)$ given by $t\mapsto \phi_t$.
Its integral curves are given by $\gamma_p: \RR \to M$ where $t\mapsto \phi_t(p)$.

> Remark: Note that $X(p) \in T_pM$ is a tangent vector at each point, so we can ask that $\dd{\phi_t}{t} (p) = X(\phi_t(p))$, i.e. that the tangent vectors to a flow are given by a vector field.
This works locally, and can be extended globally if $X$ is compactly supported.

**Definition (Interior Product):**
Let $M$ be a manifold and $X$ a vector field.
The interior product is a map
\begin{align*}
\iota_X: \Omega^{p+1}(M) 	&\to \Omega^p(M) 	&& & \\
\omega 										&	\mapsto \iota_X \omega: \Lambda^p TM \to \RR \\
& (X_1, \cdots, X_p) \to \omega (\vector X, X_1, \cdots, X_p)
.\end{align*}

> Note that this *contracts* a vector field with a differential form, coming from a natural pairing on $(i, j)$ tensors $V^{\tensor i}\tensor (V\dual)^{\tensor j}$.


**Definition (Lie Derivative):**

**General definition**: 
For an arbitrary tensor field $T$ (a section of some tensor bundle $V \to TM^{\tensor n} \to M$, example: Riemann curvature tensor, or any differential form) and a vector field $X$ (a section of the tangent bundle $W \to TM \to M$), we can define a "derivative" of $T$ along $X$.
Namely, 
$$
(\mathcal{L}_X T)_p = \left[\dd{}{t} \qty{(\phi_{-t})_* T_{\phi_t(p)}} \right]_{t=0}
$$ 
where

- $\phi_t$ is the 1-parameter group of diffeomorphisms induced by the flow induced by $X$,
- $(\wait)_*$ is the pushforward

> This measures how a tensor field changes as we flow it along a vector field.

![](2020-02-04-22-45-20.png)

**Specialized definition**:
If $\omega \in \Omega^{p+1}(M)$ is a differential form, we define 
$$
\mathcal{L}_x\omega = [d, \iota_x] \omega = d(\iota_x \omega) - \iota_x(d\omega)
$$ 
where $d$ is the exterior product.

> This is a consequence of "Cartan's Magic Formula", not the actual definition!

# Symplectic

**Definition (Symplectic Vector Field)**:
A vector field $X$ is symplectic iff $\mathcal{L}_X(\omega) = 0$.

> Remark: Then the flow $\phi_X$ preserves the symplectic structure.

**Definition (Hamiltonian Vector Field)**:
If $X$ is a vector field and $\iota_X \omega$ is both closed and exact, then $X$ is a *Hamiltonian vector field*.

# Contact

**Definition (Hyperplane Field):**
A *hyperplane* field $\xi$ is a codimension 1 sub-bundle $\RR^{n-1} \to \xi \to M$ of the tangent bundle $\RR^n \to TM \to M$.

**Definition (Contact Manifold)**
A smooth manifold with a hyperplane field $(M^{2n+1}, \xi)$ is *contact* iff $\xi = \ker \alpha$ for some $\alpha \in \Omega^1(M)$ where $\alpha \wedge (d\alpha)^n$ is a top/volume form in $\Omega^{2n+1}(M)$

**Definition (Overtwisted Contact Structure):**
$(M, \xi)$ is *overtwisted* iff there exists an embedded disc $D^n \mapsvia{i} M$ such that $T(\bd D^n)_p \subset \xi_p$ pointwise for all $p \in \bd D^n$ and $TD^n_p$ is transverse to $\xi$ for every $p\in  (D^n)^\circ$.

# Handles

**Definition (Normal Bundle):**
Let $i: S \injects M$ be an embedding, and let $N_M(S)$ denote the *normal bundle* of $S$ in $M$, which fits into an exact sequence
\begin{align*}
0 \to TS \to i^* TM \to N_M(S) \to 0
,\end{align*}

where $i*TM$ is the pullback:

\begin{tikzcd}
i^* TS \arrow[dd, dashed] \arrow[rr, dashed] &  & TM \arrow[dd] \\
                                             &  &               \\
S \arrow[rr, "i"]                            &  & M            
\end{tikzcd}

so we can identify $N_M(S) \cong \restrictionof{TM}{i(S)}/TS$.

> Remark: We can "symplectify" this definition by requiring that the pullback of $\omega$ is constant rank.

**Definition (Tubular Neighborhood):**
For $S\injects M$ an embedded submanifold, a *tubular neighborhood* of $S$ is an embedding of the total space of a vector bundle $E \to S$ along with a smooth map $J: E \to M$ making the following diagram commute:

\begin{tikzcd}
E \arrow[rrdd, "J"] \arrow[dd, "\pi"]                  &  &   \\
                                                       &  &   \\
S \arrow[rr, "i"] \arrow[uu, "0_E", dashed, bend left] &  & M
\end{tikzcd}

where $0_E$ is the zero section.

![](2020-02-05-00-40-02.png)
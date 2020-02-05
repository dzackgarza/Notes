**Definition (Derivative of a Map):**
Recall that for any smooth function $H: M\to N$, the *derivative* of $H$ at $p\in M$ is defined by $dH_p: T_pM \to T_p N$ which we define using the derivation definition of tangent vectors: given a derivation $v\in T_p M: C^\infty(M) \to \RR$, we send it to the derivation $w_v \in T_{q}M = C^\infty(M) \to \RR$ where $w_v$ actson on $f\in C^\infty(M)$ by precomposition, i.e. $w_v \actson f = v(f \circ H)$.

![](2020-02-03-10-56-11.png)


**Definition (Closed and Exact Forms):**
Let $d_p: \Omega^p(M) \to \Omega^{p+1}(M)$ be the exterior derivative. 
Then a form $\omega$ is *closed* (or is a *cocycle*) iff $\omega \in \ker d_p$, and *exact* (or a *coboundary*) iff $\omega \in \im d_{p-1}$.

Note that closed forms are exact, since $d^2  = 0$, i.e. $\omega$ closed implies $\omega = d\lambda$ implies $d\omega = d^2 \lambda = 0$ implies $\omega$ is exact.

If $\alpha, \beta \in \Omega^p(M)$ with $\alpha-\beta$ exact, they are said to be *cohomologous*.

**Definition (Vector Field):**
A *vector field* $X$ on $M$ is a section of the tangent bundle $TM \mapsvia{\pi} M$.
Recall that these form an algebra $\mathfrak{X}(M)$ under the Lie bracket.

![](2020-02-03-20-52-40.png)

**Definition (Interior Product):**
Given a vector field $X$ on $M$, the associated *interior product* $\iota_X$ is given by $\iota_X: \Omega^p(M) \to \Omega^{p-1}(M)$ is the map which sends a $p\dash$form $\omega$ to the $p-1\dash$form $\alpha$ characterized by $\alpha(X_1, \cdots, X_{p-1}) = \omega(X, X_1, \cdots, X_{p-1})$, i.e. $\alpha = \omega(X, \wait, \cdots, \wait)$.

**Definition (Interior Product):**
Let $M$ be a manifold and $X$ a vector field.
The interior product is a map
\begin{align*}
\iota_X: \Omega^{p+1}(M) 	&\to \Omega^p(M) 	&& & \\
\omega 										&	\mapsto \iota_X \omega: \Lambda^p TM \to \RR \\
& (X_1, \cdots, X_p) \to \omega (\vector X, X_1, \cdots, X_p)
.\end{align*}

> Note that this *contracts* a vector field with a differential form, coming from a natural pairing on $(i, j)$ tensors $V^{\tensor i}\tensor (V\dual)^{\tensor j}$.
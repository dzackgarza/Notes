**Definition (Derivative of a Map):**
Recall that for any smooth function $H: M\to N$, the *derivative* of $H$ at $p\in M$ is defined by $dH_p: T_pM \to T_p N$ which we define using the derivation definition of tangent vectors: given a derivation $v\in T_p M: C^\infty(M) \to \RR$, we send it to the derivation $w_v \in T_{q}M = C^\infty(M) \to \RR$ where $w_v$ actson on $f\in C^\infty(M)$ by precomposition, i.e. $w_v \actson f = v(f \circ H)$.

![](2020-02-03-10-56-11.png)


**Definition (Closed and Exact Forms):**
Let $d_p: \Omega^p(M) \to \Omega^{p+1}(M)$ be the exterior derivative. 
Then a form $\omega$ is *closed* iff $\omega \in \ker d_p$, and *exact* iff $\omega \in \im d_{p-1}$.

Note that closed forms are exact, since $d^2  = 0$, i.e. $\omega$ closed implies $\omega = d\lambda$ implies $d\omega = d^2 \lambda = 0$ implies $\omega$ is exact.

If $\alpha, \beta \in \Omega^p(M)$ with $\alpha-\beta$ exact, they are said to be *cohomologous*.
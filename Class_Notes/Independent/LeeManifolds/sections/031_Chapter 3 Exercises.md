[LeeManifolds](../LeeManifolds.md)

Tags: #manifolds #exercises 

## Recommended Problems 

Exercise (3-7)
:   Let $p\in M$ and $C_p^\infty(M, \RR)$ be the $\RR\dash$algebra of germs of functions at $p$.
    Let $D_p M$ denote the vector space of derivations of $C_p^\infty(M, \RR)$.
    Show that the map

    \begin{align*}
    \Phi: D_p M &\to T_p M \\
    \qty{\Phi_v} f &= v([f]_p)
    \end{align*}
    is an isomorphism.


Solution
:   \hfill
    First, clarify that this is the map
    \begin{align*}
    \Phi: D_p M &\to T_p M \\
    v &\mapsto \qty{ f \mapsto v([(f, U)]_p) }
    ,\end{align*}
    where $\Phi_v$ is the image of $v$ and $[(f, U)]$ is a germ, i.e. an equivalence class of ordered pairs.

    We note that $v: C_p^\infty(M) \to \RR$.
    For $w\in T_p M$, we have $w: C^{\infty}(M) \to \RR$, so define an inverse map
    \begin{align*}
    \Phi\inv: T_p M &\to D_p M \\
    w &\mapsto \qty{ [(f, U)] \mapsto w(\tilde f) }
    ,\end{align*}
    where $\tilde f$ is to be defined.

    Note that $w$ can't act directly on $f$, since $f$ is only defined on a subset $U\subseteq M$ whereas $w$ needs to act on functions defined on all of $M$.
    So take $\tilde f: M\to \RR$ to be $f$ extended by smooth bump functions to all of $M$.

    Things to check:

    - $\Phi$ is well-defined.
    - $\Phi$ is linear.
    - $\Phi\inv$ is well-defined.
    - $\Phi\inv$ is linear
    - $\Phi \circ \Phi\inv = \id_{T_p M}$ and $\Phi\inv \circ \Phi = \id_{D_p M}$.



Exercise (3-8)
:   Let $p\in M$ and $V_p M = \theset{\text{Curves starting at } p}/\sim$ where $\gamma_1\sim \gamma_2 \iff$ for every $f\in C^\infty(M, \RR)$, $\dd{(f\circ \gamma_1)}{t}(0) = \dd{(f\circ \gamma_2)}{t}(0)$.
    Show that the following map is well-defined and bijective:
    \begin{align*}
    \Psi: V_p M &\to T_p M \\
    \gamma &\mapsto \dd{\gamma}{t}(0)
    .\end{align*}

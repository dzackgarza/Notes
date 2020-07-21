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

    We note that $v: C_p^\infty(M) \to \RR$




Exercise (3-8)
:   Let $p\in M$ and $V_p M = \theset{\text{Curves starting at } p}/\sim$ where $\gamma_1\sim \gamma_2 \iff$ for every $f\in C^\infty(M, \RR)$, $\dd{(f\circ \gamma_1)}{t}(0) = \dd{(f\circ \gamma_2)}{t}(0)$.
    Show that the following map is well-defined and bijective:
    \begin{align*}
    \Psi: V_p M &\to T_p M \\
    \gamma &\mapsto \dd{\gamma}{t}(0)
    .\end{align*}

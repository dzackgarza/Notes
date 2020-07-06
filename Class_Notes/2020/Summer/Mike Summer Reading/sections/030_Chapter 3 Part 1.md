# Chapter 3

Definition
: For a fixed point $\vector a \in \RR^n$, define the *geometric tangent space* at $\vector a$ to be the set
  \begin{align*}
  \RR^n_{\vector a} \definedas \theset{\vector a} \cross \RR^n = \theset{(\vector a, \vector v) \suchthat \vector p \in \RR^n}
  .\end{align*}

Notation: $\vector v_a$ denotes the tangent vector at $\vector v$, i.e. the pair $(\vector a, \vector v)$.
Think of this as a vector with its base at the point $\vector a$.


Remark
: There is a natural isomorphism $\RR^n_a \cong \RR^n$ given by $(\vector a, \vector v) \mapsto \vector v$.\todo{This map is not explicitly stated.}


Proposition
: $D_v\evalfrom_a$ satisfies the product rule:
\begin{align*}
D_v\evalfrom_a(fg) = f(a) \cdot D_v\evalfrom_{a}g + D_v\evalfrom_{a}f \cdot g(a)
.\end{align*}

Picking the standard basis for $\RR^n_a = \theset{\vector e_{i, a}}_{i=1}^n$ and expanding $\vector v = \sum_{i=1}^n v^i \vector e_{i, a}$, we can explicitly write
\begin{align*}
D_v\evalfrom_a f = \sum_{i=1}^n v^i \dd{f}{x^i}(a)
.\end{align*}

Definition
:   Denote the space of all derivations of $C^\infty(\RR^n)$ at $a$ as 
    
    \begin{align*}
    T_a \RR^n \definedas \theset{w \in \hom_{\RR\dash\text{mod}}(C^\infty(\RR^n), \RR) \suchthat w(fg) = f(a)w(g) + g(a)w(f)}
    ,\end{align*}
    i.e. a derivation $w$ is an $\RR\dash$linear map satisfying the Leibniz Rule (LR).
    
\todo{What does this equality mean? Is $w(fg)$ a real number? Does $wg = w(g)$, so this is a number too?}


Example
:   Claim: if $f\in C^\infty(\RR^n)$ is constant, say $f(\vector p) = 1$ for all $\vector p\in \RR^n$, then $w(f) = 0$ for any derivation $w$.

    Proof: WLOG suppose $f(\vector p) = 1\in \RR$.
    Note that $f(\vector p) = f(\vector p) \cdot f(\vector p)$, so
    \begin{align*}
    w(f) = w(f\cdot f) \equalsbecause{LR} f(\vector p)w(f) + w(f)f(\vector p) = 2f(\vector p)w(f) = 2w(f) \quad\text{since } f(\vector p) = 1
    ,\end{align*}
    and thus $w(f) = 2w(f) \in \RR$ forcing $w(f) = 0$.

Remark
:   A geometric tangent vector provides a way of taking directional derivatives via the correspondence
  \begin{align*}
  \RR^n_a &\to C^\infty(\RR^n)\dual \\
  \vector v_a &\mapsto \restrictionof{D_{\vector v}}{a}
  \end{align*}
  where
  \begin{align*}
  \restrictionof{D_{\vector v}}{a}: C^\infty(\RR^n) &\to \RR \\
  f &\mapsto D_{\vector v} f(\vector a) \definedas \dd{}{t}\evalfrom_{t=0} f(\vector a + t\vector v)
  .\end{align*}

More precisely,

Proposition (Space of Derivations is Isomorphic to Geometric Tangent Space)
: For each geometric tangent vector $\vector v_a \in \RR^n_a$, the map $D_{\vector v}\evalfrom_a$ is a derivation at $a$, and the map $\vector v_a \mapsto D_{\vector v}\evalfrom_a$ is an isomorphism.


Theorem (Basis of Tangent Space)
: For any $\vector p\in \RR^n$, there is a basis for $T_{\vector p}\RR^n$ given by
\begin{align*}
\theset{\dd{}{x_i}\evalfrom_{\vector p} }
.\end{align*}


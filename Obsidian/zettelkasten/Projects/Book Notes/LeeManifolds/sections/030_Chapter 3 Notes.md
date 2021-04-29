[LeeManifolds](../LeeManifolds.md)


# Chapter 3: Tangent Vectors

## Notes

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

Facts:

1. If $f$ is a constant function then $v(f) = 0\in \RR$.
2. If $f(p) = g(p)$ for $p\in M$ then $v(fg) = 0\in \RR$.


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
$\theset{\dd{}{x^i}\evalfrom_{\vector p} \suchthat 1\leq i \leq n} \subset C^\infty(\RR^n, \RR)$ which are defined as
\begin{align*}
\dd{}{x^i}: \RR^n &\to \RR \\
f &\mapsto \dd{f}{x^i}(\vector p)
.\end{align*}

Definition (Tangent Vector on a Manifold)
: Let $M$ be smooth and $p\in M$, then 
\begin{align*}
T_p M \definedas \theset{v:C^\infty(M) \to \RR \suchthat v(fg) = f(p) vg + g(p) vg }
.\end{align*}

Definition (Differential of a Map)
:   For $F:M\to N$ a smooth map, for each $p\in M$, we define the *differential* of $f$ at $p$ as
    \begin{align*}
    dF_p: T_p M &\to T_{F(p)}N \\
    v &\mapsto (DF_p(v): f \mapsto v(f\circ F))
    .\end{align*}


Note that $f\in C^\infty(N)$ implies that $f\circ F \in C^\infty(M)$, and since $v\in T_p M$ is a functional in $C^\infty(M)\dual$, $v$ can act on such objects..
Moreover, $dF_p(v)$ is in fact a derivation at $F(p)$, since
\begin{align*}
dF_p(v)(fg) &= v((fg) \circ F) \\
&= v((f\circ F) \cdot (g\circ F) ) \hspace{8em}{Why?} \\
&= (f \circ F)(p) \cdot v(g\circ F) + v(f\circ F) \cdot (g \circ F)(p) \quad\text{since $v$ is a derivation}\\
&\definedas (f\circ F)(p) dF_p(v)(g) + (g\circ F)(p) dF_p(v)(f) \\
&\definedas f(F(p)) dF_p(v)(g) + g(F(p)) dF_p(v)(f) 
,\end{align*}
which puts it in the form $\bd(fg) = f(q)\bd(g) + \bd(f) g(q)$ where $q = F(p)$.


Facts:

- $dF_p$ is a linear map.
- $d(G\circ F)_p = dG_{F(p)} \circ dF_p$.
- If $F$ is a diffeomorphism, then $dF_p$ is an isomorphism with $(dF_p)\inv = d(F\inv)_{F(p)}$.

Proposition (Tangent Vectors Act Locally)
: If $f, g\in C^\infty(M)$ agree on any neighborhood of $p\in M$, then $v(f) = v(g)$.

Warning: the action of a derivation depends only on the values of a function in arbitrarily small neighborhoods, and in particular, can only be applied to functions defined in a neighborhood of $p$ (not necessarily on all of $M$).

Remark
: The tangent space of an $n\dash$manifolds is $n\dash$dimensional, even on boundary point.

Theorem
: If $U\subset M$ is an open subset of a manifold and $\iota:U\injects M$ is the inclusions, then for every $p\in M$, the differential $d\iota_p: T_p U \to T_p M$ is an isomorphism.

In words: the tangent space of any submanifold is isomorphic to the tangent space of the ambient manifold.

For a vector space $V$, there is a natural smooth structure (Example 1.24) and for any $\vector a, \vector v\in V$ we can similarly define a map
\begin{align*}
D_{\vector v}\evalfrom_{\vector a}: C^\infty(V) &\to \RR \\
f &\mapsto D_{\vector v}f(\vector a)\definedas \dd{}{t}\evalfrom_{t = 0} f(\vector a + t\vector v)
.\end{align*}

Proposition
: If $V$ is a vector space, for any $\vector a\in V$, the map $\vector a \mapsto D_{\vector v}\evalfrom_{\vector a}$ yields an isomorphism $V\cong T_{\vector a}V$.
Thus tangent vectors in $V$ are routinely identified with elements of $V$.

Example
: Combined with the fact that tangent spaces of submanifolds are isomorphic to tangent spaces of the entire manifold, note that $\mat(n\times n, \RR)$ is a vector space and thus identified with its own tangent space. 
Since $\Gl(n, \RR) \subset \mat(n\times n, \RR)$ is an open submanifold, if $p\in \Gl(n, \RR)$ then we can identify $T_p \Gl(n, \RR) \cong \mat(n\times n, \RR)$.


Definition
: The *tangent bundle* of a manifold is defined as $TM \definedas \disjoint_{p\in M} T_p M$.
Points in $TM$ are often written as $(p, v)$, and there is a natural projection map $\pi:TM \to M$ given by $(p, v) \mapsto p$.

Proposition
: If $F:M\to N$ is smooth with $p\in M$ and $v\in T_p M$, then $dF_p(v) = (F\circ \gamma)(0)$ where $\gamma: (-a, b)\to M$ is any smooth curve with $\gamma(0) = p$ and $\gamma'(0) = v$.

Definition (Germ of a Function)
: The *germ* of a function $f$ at $p$ is the equivalence class of ordered pairs $(f, U)$ where $U\subseteq M$ is open and $f\in C^\infty(U, \RR)$, where $(f, U) \sim (g, V)$ iff there exists a neighborhood $N \subset U\intersect V$ containing $p$ such that $\restrictionof{f}{N} \equiv \restrictionof{g}{N}$.
The set of germs of functions at $p$ is denoted $C_p^\infty(M)$ and is an associative $\RR\dash$algebra.

Remark
: This definition is the only one available for real or complex analytic manifolds, since there do not exist analytic bump functions.





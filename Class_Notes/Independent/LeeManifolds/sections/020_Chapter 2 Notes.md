[LeeManifolds](../LeeManifolds.md)

Tags: #manifolds #reading_notes

# Chapter 2: Smooth Structures

## Notes


Definition (Smooth Functionals on Manifolds)
: A function $f: M^n\to \RR^k$ is *smooth* iff for every $p\in M$ there exists a smooth chart $(U, \phi)$ about $p$ such that $f\circ \phi\inv: \phi(U) \to \RR^k$ is smooth as a real function.


Fact: $C^\infty(M) \definedas \theset{f:M\to \RR }$ is a vector space

Definition (Coordinate Representations of Functions)
: Given a function $f:M\to \RR^k$, the function $\hat f: \phi(U) \to \RR^k$ where $\hat f(x) = (f\circ \phi\inv)(x)$ is a *coordinate representation* of $f$.

Fact: $f$ is smooth $\iff$ $f$ is smooth (in the above sense) in *some* smooth chart about each point.

Definition (Smooth Maps Between Manifolds)
: $F:M\to N$ is *smooth* iff for every $p\in M$ there exists charts $p\in (U, \phi)$ and $F(p) \in (V, \psi)$ such that $F(U) \subseteq V$ and $\psi \circ F \circ \phi\inv: \phi(U) \to \psi(V)$ is smooth.

Fact: taking $N = V = \RR^k$ and $\psi=\id$ recovers the previous definition.


Proposition
: Every smooth map between manifolds is continuous.


Proposition (Smoothness is Local)
:   If $F:M\to N$, then

    1. If every $p\in M$ has a neighborhood $U\ni p$ such that $F$ restricted to $U$ is smooth, then $F$ is smooth.
    2. If $F$ is smooth, then its restriction to every open subset is smooth.

Definition
: For $F:M\to N$ and $(U, \phi)$, $(V, \psi)$ smooth charts in $M, N$ respectively, then $\hat F \definedas \psi \circ F \circ \phi\inv$ is the *coordinate representation* of $F$.

Proposition
:   \hfill

    1. Constant maps $c:M\to N$, $c(x) = n_0$ are smooth
    2. The identity is smooth
    3. Inclusion of open submanifolds $U \injects M$ is smooth
    4. $F:M\to N$ and $G:N\to P$ smooth implies $G\circ F$ is smooth.

Proposition
: A map $F:N \to \prod_{i=1}^k M_i$ with at most one $i$ such that $\del M_i \neq \emptyset$ is smooth iff each component map $\pi_i \circ F: N\to M_i$ is smooth.


Proving a map between manifolds is smooth:

1. Write the map as a composition of known smooth functions.
2. Write in *smooth local coordinates* and recognize the component functions as compositions of smooth functions

Fact: projection maps from products are smooth

- Every closed subset $A\subseteq M$ of a smooth manifold is the level set of some smooth nonnegative functional $f: M\to \RR$, i.e. $f\inv(0) = A$.

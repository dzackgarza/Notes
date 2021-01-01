# Lecture 1


## What is Etale Cohomology?

Suppose $X/\CC$ is a quasiprojective variety: a finite type separated integral $\CC\dash$scheme.

Suppose $X/\CC$ is a smooth projective variety and $[H] \in H^2(X(\CC), \CC)$ is a hyperplane class (corresponds to intersection of generic hyperplane or the first Chern class of an ample line bundle).
Suppose $F:X\to X$ is an endomorphism such that $f^*[H] = q[H]$ for some $q\in \ZZ_{\geq 1}$.

Define 
\[  
L(F^n) \definedas 
\sum_{i=0}^{2\dim(X)} (-1)^i \tr\qty{ F^n \st H^i(X_{\FF_q}, \QQ_\ell)}
.\]
and
\[  
\zeta_{X, F}(t) \da
\exp{\sum_{n=1}^\infty {L(F^n) \over n}t^n }
.\]

Then $\zeta_{X, F}(t)$ satisfies the RH: the zeros and poles are of absolute value $q^{i\over 2}$.
Equivalently, the eigenvalues $\lambda$ of $F^n$ actings on $H^i(X, \CC)$ all satisfy $\abs{\lambda} = q^{i\over 2}$.

Next time, to review

- Étale morphisms
- Definition of a site



# Topology Problems: Solutions

## Homotopy

1. Let $f: X \to S^n \subset \RR^{n+1}$ be an arbitrary map that fails to be surjective. Then, by definition, there is at least one point $s_0 \in S^n - f(X)$. 

   Then, $\forall x\in X$, since $f(x) \neq s_0$, there is a unique geodesic $C$ connecting $f(x)$ and $s_0$. So a  variant of the straight line homotopy will work, by interpolating between $f(x)$ and $s_0$ along $C$. 

   Let $S: X \into S^n$ be the map given by $S(x) = s_0$ for all $x\in X$. Then $S$ is a constant map, and the above construction yields a homotopy $H: X \cross I \into S^n$ such that $H(x,1) = S(x)$.

   **Alternative proof**: Since $s_0 \not\in f(X)$, perform spherical projection through $s_0$ using the homeomorphism $p$ and denoting its continuous inverse $p^{-1}$. Then $f$ descends to a map $p \circ f: X \into S^n - \theset{s_0} \cong \RR^n$.

   However, $\RR^n$ is convex, so pick any constant $c\in \RR^n$ and let $g_c: X \into \RR^n$ be a constant map given by $\forall x\in X, g(x) = c $. 
   Then define $H: X\cross I \into \RR^n$ by $H(x,t) = tc + (1-x)(p\circ f)(x)$, the linear homotopy between a constant and $p \circ f$. Then $H(x, 0) = (p\circ f)(x)$ and $H(x,1) = c = g(x)$, so $p\circ f \homotopic \text{g}$.
   So then define $F: X\times I \into S^n$ by $F(x,t) = (p^{-1} \circ H)(x,t)$. Then 
   $F(x, 0) = (p^{-1} \circ H)(x, 0) = p^{-1}(H(x,0)) = (p^{-1} \circ p \circ f)(x) = f(x)$, and 
   $F(x, 1) = (p^{-1} \circ H)(x,1) = (p^{-1}\circ g)(x) = p^{-1}(c) = c'$ for some $c' \in S^n$, so define $g':X \into S^n$ by $g'(x) = c'$. Then $g'$ is a constant map, and $F$ is a homotopy between $g'$ and $f$, so $f \homotopic g'$ as desired.

2. Let $f,g: X \into S^n$ such that $\forall x, f(x) \neq -g(x)$.
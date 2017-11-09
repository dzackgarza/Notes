# Topology Problems: Solutions

## Homotopy

1. Let $f: X \to S^n \subset \RR^{n+1}$ be an arbitrary map that fails to be surjective. Then, by definition, there is at least one point $s_0 \in S^n - f(X)$. 

   Then, $\forall x\in X$, since $f(x) \neq s_0$, there is a unique geodesic $C$ connecting $f(x)$ and $s_0$. So a  variant of the straight line homotopy will work, by interpolating between $f(x)$ and $s_0$ along $C$. 

   Let $S: X \into S^n$ be the map given by $S(x) = s_0$ for all $x\in X$. Then $S$ is a constant map, and the above construction yields a homotopy $H: X \cross I \into S^n$ such that $H(x,1) = S(x)$.

   **Alternative proof**: Since $s_0 \not\in f(X)$, perform spherical projection through $s_0$. This yields a homeomorphism $p$ and its continuous inverse $p^{-1}$ (which is known to exist since $S^n - \theset{\text{pt}}$ is homeomorphic to $R^n$). Then a map $p \circ f: X \into \RR^n$ is obtained.

   However, $\RR^n$ is convex, so pick any constant $c\in \RR^n$ and let $g_c: X \into \RR^n$ be a constant map given by $g(x) = c$ for all $x\in X$.

   Then define $H: X\cross I \into \RR^n$ by $H(x,t) = tc + (1-x)(p\circ f)(x)$, the linear homotopy between a constant and $p \circ f$. Then $H(x, 0) = (p\circ f)(x)$ and $H(x,1) = c = g_c(x)$, so $p\circ f \homotopic g_c$.
   ​
   So then define $F: X\times I \into S^n$ by $F(x,t) = (p^{-1} \circ H)(x,t)$. Then 

   $F(x, 0) = (p^{-1} \circ H)(x, 0) = (p^{-1} \circ p \circ f)(x) = f(x)$, and 

   $F(x, 1) = (p^{-1} \circ H)(x,1) = (p^{-1}\circ g_c)(x) = p^{-1}(c) = c'$ 

   for some $c' \in S^n$, so define $g':X \into S^n$ by $g'(x) = c'$. 

   Then $g'$ is a constant map, and $F$ is a homotopy between $g'$ and $f$, so $f \homotopic g'$ as desired.

2. Let $f,g: X \into S^n$ such that $\forall x, f(x) \neq -g(x)$. Since $S^n \subset \RR^{n+1}$, both $f,g$ lift to maps $\tilde{f}, \tilde{g}: X \into \RR^{n+1}$ where $f = \restrictionof{\tilde{f}}{S^n}$
   define a map $H: X\cross I \into S^n$ by $H(x,t) = tf(x) + (1-t)g(x)$. Then $H$ is a linear homotopy 
# Topology Problems: Solutions

## Homotopy

1. Let $f: X \to S^n \subset \RR^{n+1}$ be an arbitrary map that fails to be surjective. Then, by definition, there is at least one point $s_0 \in S^n - f(X)$. 

   Then, $\forall x\in X$, since $f(x) \neq s_0$, there is a unique geodesic $C$ connecting $f(x)$ and $s_0$. So a  variant of the straight line homotopy will work, by interpolating between $f(x)$ and $s_0$ along $C$. 

   Let $S: X \into S^n$ be the map given by $S(x) = s_0$ for all $x\in X$. Then $S$ is a constant map, and the above construction yields a homotopy $H: X \cross I \into S^n$ such that $H(x,1) = S(x)$.
# Topology Problems: Solutions

## Homotopy

1. **Main Idea**: "Linear" homotopy along the geodesic to any point not in the image of $f$ will work. Alternatively, $\RR^n$ is convex, so linear homotopy will always work there, and $S^n - \theset{\text{pt}} \cong \RR^n$. 
   ​
   Let $f: X \to S^n \subset \RR^{n+1}$ be an arbitrary map that fails to be surjective. Then, by definition, there is at least one point $s_0 \in S^n - f(X)$. 

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

   Then $g'$ is a constant map, and $F$ is a homotopy between $g'$ and $f$, so $f \homotopic g'$ as desired. $\qed$

2. **Main Idea**: Use linear homotopy in ambient $\RR^{n+1}$ and normalize/project onto $S^n$.
   Let $f,g: X \into S^n$ such that $\forall x, f(x) \neq -g(x)$. Since $S^n \subset \RR^{n+1}$, both $f,g$ extend to maps $X \into \RR^{n+1}$.
   ​
   So define a map $H: X\cross I \into \RR^{n+1}$ by $H(x,t) = tf(x) + (1-t)g(x)$. Then $H$ is a linear homotopy, since $\RR^{n+1}$ is convex. 
   Then $\tilde{H}: X\cross I \into S^n$ by $\tilde{H}(x,t) = \frac{H(x,t)}{\norm{H(x,t)}}$ is a candidate homotopy between $f$ and $g$, provided it is continuous and well-defined. 

   1. Continuity follows since $H$ is an affine combination of continuous functions (and thus itself continuous), the spherical projection $p: \RR^{n+1} \into S^{n}$ given by $p(x) = \frac{x}{\norm{x}}$ is continuous, and $\tilde{H} = p \circ H$ is a composition of continuous functions.

   2. This is well-defined, since $\norm{H(x,t)}$ is never zero. Why? If it were, we would then have$\norm{tf(x) + (1-t)g(x)} = \norm{t} + \norm{1-t} = 0$, since $\norm{f(x)} = \norm{g(x)} = 1 ~\forall x\in X$. 

      This implies that $\norm{t} = \norm{t-1}$, which is only satisfied when $t = \frac{1}{2}$. 

      But since a vector's norm is zero iff the vector itself is zero, this would force $tf(x) + (1-t)g(x) = 0$ as well, and so $\frac{1}{2}f(x) + \frac{1}{2}g(x) = 0$, implying that $f(x) = -g(x)$, contradicting the initial assumptions on $f$ and $g$. $\qed$

3. **Main Idea**: Embed in $\CC$, use complex rotation. (Homotopy from 2 fails continuity)
   ​
   Let $n$ be odd, so $n = 2m+1$ for some $m \geq 0 \in \NN$, and consider $S^n = S^{2m+1}\subset \RR^{2m+2} \cong \CC^m$, so that $\bar{z}\in S^n$ can be written as $\bar{z} = \thevector{z_1, z_2, \cdots , z_m}, z_i \in \CC,$ with $\norm{\bar{z}} = 1$. 
   Note that if we proceed as in the previous problem to construct the linear homotopy $H: \RR^{2m+2}\cross I \into \RR^{2m+2}$ given by $H(\bar{x}, t) = t\bar{x} + (1-t)(-\bar{x}) = (2t-1)\bar{x}$, we find that $H(x, \frac{1}{2}) = 0$ and so $\tilde{H} = \frac{H}{\norm{H}}$ will fail to be continuous at $t=\frac{1}{2}$.
   Instead, define $H: \CC^m \cross I \into \CC^m$ by $H(\bar{z}, t) = e^{i\pi t}\bar{z}$. Then, if $\bar{z} \in S^n$, we have $\norm{\bar{z}} = 1$ and since $\norm{e^{i\pi t}} = 1$, we obtain a homotopy on $S^n$ given be the restriction of $H$,  $\restrictionof{H}{S^{2m+1}}: S^{2m+1} \cross I \into S^{2m+1}$.
   We then have $H(\bar{z}, 0) = e^{0}\bar{z} = \bar{z}​$, the identity function, and
   $H(\bar{z}, 1) = e^{i \pi}\bar{z} = -\bar{z}$ the antipodal function. Thus these two maps are homotopic, as desired. $\qed$

4. $\Rightarrow$
   Suppose $X$ is contractible. Then, unpacking definitions, $X$ is homotopy equivalent to a point, say $p \in X$. So there exists maps $f: X \to \theset{p}, g: \theset{p} \to X$ such that $f\circ g\homotopic \id_{\theset{p}}$ and $g\circ f \homotopic \id_X$.
   This means that $(f \circ g)(p) = p$ and $(g\circ f)(x) = x$ for all $x\in X$. But since $\theset{p}$ is a one point set, we must have $f(x) = p$ for every $x$. So $(g\circ f)(x) = g(f(x)) = g(p) = x$
   We want to show that there exists a homotopy $H: X \cross I \into X$ such that $H(x, 0) = x$ and $H(x,1) = c$ for some constant $c\in X$.
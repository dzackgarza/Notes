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
   We then have $H(\bar{z}, 0) = e^{0}\bar{z} = \bar{z}$, the identity function, and
   $H(\bar{z}, 1) = e^{i \pi}\bar{z} = -\bar{z}$ the antipodal function. Thus these two maps are homotopic, as desired. $\qed$

4. $\Leftarrow$: **Main Idea**: Projection and inclusion are homotopy inverses. One composition is equality, the other is just equality *up to homotopy*, but that's all we need!

   Suppose $\id_X$ is nullhomotopic. Then there exists some constant map $g_c: X \into \theset{c}$ for some $c\in X$ (that is. $\forall x, g_c(x) = c$ ), and $\id_X \homotopic g_c$. 
   Thus there is a homotopy $F: X \cross I \into X$ such that $F(x,0) = \id_X(x) = x$ and $F(x,1) = g_c(x) = c$ for all $x \in X$.

   Then there is exactly one map $\pi: X \to \theset{c}$, (projection onto $c$) which is given by $\pi(x) = c$. 

   Then, since $c\in X$, let $\iota_c: \theset{c} \into X$ be the inclusion of $\theset{c}$ into $X$, so that $\iota_c(c) = c$.

   Then consider the map $(\pi\circ \iota_c): \theset{c} \into \theset{c}$. It need only be defined for $c$, so we compute $(\pi\compose\iota_c)(c) = \pi(c) = c$, so $(\pi\compose\iota_c) = \id_C$.

   Similarly, consider $(\iota_c \compose \pi): X \into X$. We compute $(\iota_c \compose \pi)(x) = \iota_c(c) = c$, so $\iota_c\circ \pi$ is the constant map $g_c:X \to \theset{c},  x \mapsto c$ for all $x\in X$. By assumption, $g_c \homotopic \id_X$, and so $\iota_c\circ \pi \homotopic \id_X$. Thus $\pi$ and $\iota$ are homotopy inverses, and we have $X \homotopic \theset{c}$, meaning $X$ is contractible.

   $\Rightarrow$: **Main Idea**: Post-composing with a constant function is still constant.

   Suppose $X \homotopic \theset{p}$, so that there exists a pair of homotopy inverses $f: X \into \theset{p}$ and $g: \theset{p} \into X$ such that $f\compose g \homotopic \id_{\theset{p}}$ and $g\compose f \homotopic \id_X$.

   But since $\theset{p}$ is a single point space, $f$ is necessarily a constant map (i.e. $f(x) = p$ for every $x\in X$.) But then for any $x\in X, (g\circ f)(x) = g(f(x)) = g(p) = p'$ for some fixed $p' \in X$, which means that $\pi \definedas (g\circ f): X \to X$ is given by $x\mapsto p'$, making this a constant map on $X$. Finally, by assumption, we have $\pi \homotopic \id_X$, which is what we wanted to show. $\qed$

5. **Main Idea**: Deformation retract $M$ onto its center circle
   Claim: $S^1 \cross I \homotopic S^1 \cross \theset{*}$
   This is because $I$ is contractible, so $I \homotopic \theset{*}$.

   Claim: $M \homotopic S^1 \cross \theset{*}$
   Identifying $M = I \cross I / \sim$ where $(x, 0) \sim (1-x, 1)$, fix $x=1/2$. Then consider the subspace $U = \theset{(1/2, y) \mid y \in [0,1]} \subset M$. Then $U$ can be written $\theset{1/2} \cross (I/\sim)$, and since $(1/2, 0) \sim (1/2,1)$, we have $I/ \sim =  I /\boundary I \cong S^1$, so $U \cong \theset{1/2}\cross S^1$ as desired.
   (taking $* = \frac{1}{2}$).

   However, we can define a homotopy from $M$ onto $U$, in the form of a deformation retract. Let $F: M \cross I \into M$ be defined by $F((x,y), t) = ((1-t)x + \frac{1}{2}t, y)$. Then $F((x,y), 0) = (x,y) = \id_M$, and $F((x,y), 1) = (\frac{1}{2}, y) \subseteq U$. Moreover, if $(x,y) \in U$, then $(x,y) = (\frac{1}{2}, y)$ and $F((x,y), t) = ((1-t)\frac{1}{2} + \frac{1}{2}t, y) = (\frac{1}{2} - t\frac{1}{2} + \frac{1}{2}t, y) = (\frac{1}{2}, y) = (x,y)$, so $F = \id_U$. This makes $F$ a deformation retract from $M$ onto $U$, and so $M \homotopic U$. 

   But then, summarizing our results, we have $S^1 \cross I \homotopic S^1 \cross \theset{*} \cong S^1 \cross \theset{\frac{1}{2}} = U \homotopic M$, and so $S^1 \cross I \homotopic M$ as desired.

6. **Main Idea**: Using a funky deformation retract. See Hatcher, PDF page 55, Example 1.23.

   Deformation retract $\\R^3 - S^1$ onto $S^2 - U$, where $U$ is a diameter inside $S^2$ also passing through the middle of $S^1$ in the interior. This can be done by moving points outside of $S^2$ towards the surface, and points inside $S^2$ just move away from the $S^1$ inside (either towards $U$ or towards the surface of $S^2$, so they don't hit $S^1$).

   Then take a geodesic between the endpoints of the diameter on $S^2$, pick any point $p$ on the geodesic, and move both diameter points towards it. This yields $S^2 \vee S^1$ at the point $p$.

7. **Main Idea**: Nothing to it

   1. $A \homotopic \Delta \homotopic S^1$
      1. $a \homotopic d \homotopic o \homotopic S^1$
   2. $B \homotopic 8 \homotopic S^1 \vee S^1$
      1. $b \homotopic o \homotopic S^1$
   3. $C \homotopic *$
      1. $c \homotopic l \homotopic *$
   4. $D \homotopic S^1$
      1. $d \homotopic o \homotopic S^1$
   5. $E \homotopic *$
      1. $e \homotopic d \homotopic S^1$
   6. $F \homotopic *$
      1. $f \homotopic *$
   7. $G \homotopic *$
      1. $g \homotopic 8 \homotopic S^1 \vee S^1$
   8. $H \homotopic *$
      1. $h \homotopic l \homotopic *$
   9. $I \homotopic *$
      1. $i \homotopic \theset{*_1, *_2}$
   10. $J \homotopic *$
      1. $j \homotopic i \homotopic \theset{*_1, *_2}$
   11. $K \homotopic *$
       1. $k \homotopic K \homotopic *$
   12. $L \homotopic *$
       1. $l \homotopic *$
   13. $M \homotopic *$
       1. $m \homotopic *$
   14. $N \homotopic *$
       1. $n \homotopic *$
   15. $O \homotopic S^1$
       1. $o \homotopic S^1$
   16. $P \homotopic D \homotopic S^1$
       1. $p \homotopic P \homotopic S^1$
   17. $Q \homotopic O \homotopic S^1$
       1. $q \homotopic p \homotopic o \homotopic S^1$
   18. $R \homotopic D \homotopic S^1$.
       1. $r \homotopic l \homotopic S^1$
   19. $S \homotopic *$
       1. $s \homotopic S \homotopic *$
   20. $T \homotopic *$
       1. $t \homotopic l \homotopic *$
   21. $U \homotopic *$
       1. $u \homotopic U \homotopic *$
   22. $V \homotopic *$
       1. $v \homotopic V \homotopic *$
   23. $W \homotopic *$
       1. $w \homotopic W \homotopic *$
   24. $X \homotopic *$
       1. $x \homotopic X \homotopic *$
   25. $Y \homotopic *$
       1. $y \homotopic v \homotopic *$
   26. $Z \homotopic *$
       1. $z \homotopic Z \homotopic *$
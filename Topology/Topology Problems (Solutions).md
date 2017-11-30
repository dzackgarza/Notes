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

7. **Main Idea**: Nothing to it. Homotopy:

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

   This results in a partition of the alphabet into the following homotopy types:

    - $\theset{A,D, O, P, Q, R, S^1} $
      $\union \theset{a,b,d,e,g,o,p,q}$
    - $\theset{C, E, F, G, H, I, J, K, L, M, N, S, T, U, V, W, X ,Y, Z, *}$
      $\union \theset{c,f,h,k,l,m,n,r,s,t,u,v,w,x,y,z}$
    - $\theset{B, S^1 \vee S^1}$
    - $\theset{i, j, \theset{*, *}}$

   Homeomorphisms: ignore ligatures!!

  8. $\theset{A, R}$
      Can remove a point to obtain two components homeomorphic to $\theset{I, F}$ respectively.
  9. $\theset{D, O, S^1}$
      These all have no single point that can be removed to disconnect the space.
  10. $\theset{B,S^1 \vee S^1}$
    Remove point at junction
  11. $\theset{C, G, I, J, L, M, N, S, U, V, W, Z, [0,1]}$
       These all have a point that can be removed to yield **two** components, but no points that yield **three**. (Intuitively, all can be obtained by twisting a straight wire.)
  12. $\theset{E, F, T, Y, \bigvee_{i=1}^3 [0,1]}$
       These all have a point that can be removed to yield 3 connected components homeomorphic to $I$. This is the "pasting" point in the vee.
  13. $\theset{H, K, \bigvee_{i=1}^5 [0,1]}$
       Can remove **two** points to disconnect each into **five** components.
  14. $\theset{P, Q, S^1 \vee [0,1]}$
       Both contain a nontrivial loop.
  15. $\theset{X, \bigvee_{i=1}^4 [0,1]}$
       Can remove **one** point to separate into **four** components.

16. **Main Idea**: Show that both spaces are a deformation retract of the same space. (See Hatcher, Proposition 0.18, p. 25)

    Suppose we have the following maps

    $f: S^1 \into X$

    $g: S^1 \into X$

    where $f \homotopic g$. Then there exists a homotopy

    $H: S^1 \cross I \into X$

    such that $H(z, 0) = f(z)$ and $H(z,1) = g(z)$.

    Then define 
    $P \definedas X \coprod_f B^2$ and

    $Q \definedas X \coprod_g B^2$

    We want to that $P$ and $Q$ are homotopy-equivalent. In order to do so, we will construct a larger space which deformation retracts onto both $P$ and $Q$, which is a homotopy equivalence.

    With $H$ in hand, we can define the space $R = X \coprod_H B^2 \cross I$, where we recognize $S^1 = \boundary B^2$. In particular, $S^1$ is a subspace of $B^2$.

    Claim: Both $P$ and $Q$ are subspaces of $R$.
    Since $H(z, 0) = f(z)$. So considering $X \coprod_H B^2 \times \theset{0} \cong X \coprod_f B^2 = P$. A similar argument holds at the point $1\in I$. (*Not a strong argument*)

    But note that $B^2 \cross I$ is a solid cylinder, and so can be deformation retracted onto the outer shell plus one of the "lids". Formally, this would be given by $S^1 \times I \cup B^2 \cross \theset{p}$ for some $p\in [0,1]. 

    Claim: choosing $p=0$ induces a deformation retract of $R$ onto $P$, and choosing $p=1$ induces a deformation retract of $R$ onto $Q$.

    Proof: ?




## Fundamental Group

1. **Main idea**: just algebraic manipulations using the $\pi_1$ functor and unravelling definitions. 
   ​
   Let $X$ be path connected and simply connected, and let $x,y \in X$ be two arbitrary points. Then consider two paths,
   $\gamma: I \into X, \gamma(0) = x, \gamma(1) = y$
   $\alpha: I \into X, \alpha(0) = x, \alpha(1) = y$.

   We would like to show $\gamma \homotopic \alpha$.
   Since $X$ is simply connected, we know that $\pi_1(X) = 0$. This means that for any $a,b \in \pi_1(X), a = b = e$, the identity element in this group. 

   So we construct two loops: one as $\gamma \bar\alpha$, the other as $\alpha\bar\gamma$. Apply the $\pi_1$ functor yields $[\gamma\bar\alpha] = e = [c_x] = [\alpha\bar\gamma]$, where $[c_x]$ is the equivalence class of the constant path at $x$, and equivalently the identity element in $\pi_1(X)$.
   Lemma: If $f\homotopic g$, then $f\circ h \homotopic g \circ h$ for any $h$.

   But this says $\gamma\bar\alpha \homotopic c_x$ and $\alpha\bar\gamma \homotopic c_x$. But $\gamma \homotopic c_x \circ \gamma \homotopic (\alpha\bar\gamma) \circ \gamma \homotopic \alpha\circ (\bar\gamma \circ\gamma) \homotopic \alpha$, which is what we desired.

2. **Main Idea** Homotopies on maps $S^1\into X$ are cylinders, find a way to continuously map a cylinder onto a disk given the existence of such a homotopy.
   Let $X$ be path connected, $\pi_1(X) = 0$, and let $f:S^1 \into X$ be arbitrary. Then $f(S^1) \subseteq X$ is a path in $X$, and since $\pi_1(X) = 0$, this path is homotopic to a point $x_0$. So $f$ is homotopic to the constant map $c_{x_0}: S^1 \into X, z \mapsto x_0$. 

   So let $H:S^1 \cross I \into X$ be this homotopy. We know that $H(z, 0) = f(z)$ and $H(z, 1) = c_{x_0}(z) = x_0$.

   Claim: Consider quotient $\frac{S^1\cross I}{S^1 \cross \theset{1}}$ with the projection map $p: S^1 \cross I \into S^1 \cross \theset{1}$. Then $H$ factors through the quotient uniquely, and there exists a unique $\hat H$ making this diagram commute:

   ![universal1](C:\Users\Zack\SparkleShare\Notes\Topology\universal1.png)

This follow from the universal property of the quotient in $\mathbf{Top}$, where it is sufficient that $H$ is constant on $S^1 \cross \theset{1}$ - but this is exactly what was deduced above.

However, the quotient object constructed is homeomorphic to $D^2$, as per the following diagram

![2017-11-24 14_59_29-Untitled page - OneNote](C:\Users\Zack\SparkleShare\Notes\Topology\2017-11-24 14_59_29-Untitled page - OneNote.png)

Here, we just recognize that $S^1 \cross I$ is a cylinder, and quotienting at the $t=1$ point in $I$ simply collapses the top portion of the cylinder to a point, forming a cone. We then take the flattening map to just project every point on the cone directly downwards onto the base circle, yielding $D^2$.

(Note: I guess this map can be constructed as $\Phi: S^1 \cross I \into D^2$ where $\Phi(z, t) = z(1-t)$. Since $t=1$ on $S^1 \cross \theset{1}$, $\Phi(z, 1) = 0$ and this is exactly the kernel of $\Phi$. Continuous as product of continuous functions, need to check injective/surjective and show inverse is continuous.)

Need to check injective/surjective, show that kernel is $S^1 \cross 1$, then use first isomorphism theorem.)

But then $\hat H$ is exactly a continuous map from $D^2 \into X$, as desired.

3. $\Rightarrow$ Let $[\alpha] \in \pi_1(X\cross Y, (x_0, y_0))$ be an arbitrary loop in $X \cross Y$. Then $\alpha$ is equivalently a map $S^1 \into X \cross Y$. Considering $S^1$ to be a subset of $\RR^2$, we can parameterize $\alpha$ as $\alpha(z) = \alpha(x+iy) = (\alpha_x(x), \alpha_y(y))$ in components. In particular, since $\alpha$ is continuous, so are $\alpha_x, \alpha_y$. Moreover, since $\alpha(0) = \alpha(0 + i0) = (x_0, y_0)$, we have $\alpha_x(0) = x_0, \alpha_y(0) = y_0$.
   (Note: alternatively, given the product, we have projections $p_X, p_y$, so we can define the map $\alpha \mapsto (p_X \circ \alpha, p_Y \circ \alpha)$)

   But then $\alpha_x: S^1 \into X$ and $\alpha_y: S^1 \into Y$ are loops entirely in $X, Y$ at the respective base points, and so we can define the map
   $F: \pi_1(X\cross Y, (x_0, y_0)) \into \pi_1(X, x_0) \cross \pi_1(Y, y_0)$ by
   $[\alpha] = [(\alpha_x, \alpha_y)] \mapsto ([\alpha_x], [\alpha_y])$

   This is injective, since $([a],[b]) = ([c],[d])$ on the RHS means that $[a] = [c], [b] = [d]$ in the fundamental groups, and thus $a\homotopic c, b\homotopic d$ in the spaces. We want to show that $[(a,b)] = [(c,d)]$, which would follow if $\alpha(x+iy) = (a(x),b(y)) \homotopic \beta(x+iy) = (c(x),d(y))$ in $X\ \cross Y$. ...?

   This is surjective, because if $([a], [b])$ are elements in the right-hand side, then $a(0) = a(1) = x_0$ and $b(0) = b(1) = y_0$, so we can consider $(a,b): I \into X \cross Y$ where $(a,b)(z) = (a,b)(x+iy) = (a(x), b(y))$. This is then a loop in $X\cross Y$, since $(a,b)(0) = (a(0), b(0)) = (0,0) = (x_0, y_0)$ and similarly $(a,b)(1) = (a(1), b(1)) = (x_0, y_0)$. So this is actually a map $(a,b): S^1 \into X \cross Y$, or in other words, a path in $X\times Y$ based at $(x_0, y_0)$, which lifts to an element of the fundamental group on the LHS.

   Maps in both directions are continuous, since a vector function is continuous iff its component functions are continuous.

   This is well-defined, due to the fact that if $a \homotopic b$, then $p_X \circ a \homotopic p_X\circ b$, and $F = (f_x, f_y)$ is a homotopy iff its components functions are homotopies.

4. Let $A = S^n - \theset{n_p = \text{North Pole}}, B = S^n - \theset{s_p = \text{South Pole}}$. Then $A\union B = S^n$ and $A\intersect B = S^n - \theset{n_p, s_p}$. Since $A,B$ are open and path connected, we can apply van Kampen's theorem to obtain $\pi_1(X) = \pi_1(A) * \pi_1(B)$ amalgamated over $\pi_1(A\cap B)$. But $A \cong \RR^{n} \cong B$ via stereographic projection, and since $\RR^n$ is contractible, $\pi_1(\RR^n) = 0 = \pi_1(A) = \pi_1(B)$. So $\pi_1(X) = 0 * 0 = 0$ as desired.

   This follow because we can compute $A \cap B \cong \RR^n - \theset{\text{pt}} \cong S^n{-1}$, and so $\pi_1(A\intersect B) = \pi_1(S^n) \cross \pi_1(\RR^1) = 0 \cross 0 = 0$, and so has the presentation $\pi_1(A\cap B) = \left< w \mid w^1 = e\right>$. We can then look at the inclusions
   $i: A\cap B \into A$
   $j: A\cap B \into B$
   and the induced homomorphisms
   $I: \pi_1(A\cap B) \into \pi_1(A)$
   $J: \pi_1(A\cap B) \into \pi_1(B)$.
   But since both sides in both maps are trivial, these are constant maps between identities.
   We can then present the group $0 = \pi_1(A) =\left< a\mid a^1 = e\right>$ and since $I(w) J(w)^{-1} = e e^{-1} = e$, we have $\pi_1(B) = \left< b \mid b^1 = e\right>$, so $\pi_1(A) *_{\pi_1(A\cap B)} \pi_1(B) = \left< a,b \mid a^1 =b^1 = e\right>$. 

   (See https://en.wikipedia.org/wiki/Seifert%E2%80%93van_Kampen_theorem for presentation of amalgamated product)

5. WLOG, assume $p_0, p_1$ are the north and south poles of $S^2$. We can then form a deformation retract of $X$ onto the equator of $S^2$, which is equal to $S^1$. To do so, just move every point $x$ along the unique great circle connecting $x, p_0, p_1$, and proceed at linear speed towards the equator. This is well defined at every point on $S^2$ *except* the poles, which are not included in $X$, and the equator is fixed at every instant. So this forms a deformation retract.
   Alternatively, use the fact that $\RR^n -\pt \cong S^{n-1} \cross \RR$ via polar coordinates, and $S^n - \pt \cong \RR^n$ by stereographic projection. So $S^2 - \theset{p_0, p_1} \cong \RR^2 - \theset{p_1} \cong S^{1} \cross \RR$. But since $\RR$ is contractible, the last one is homotopic to $S^1 \cross \theset {0} \cong S^1$. 
   **Alternatively**: use the lemma, then $k=2$ and so $S^2 - \theset{p_1, p_2} \homotopic \bigvee_{i=1}^{1}S^1 = S^1$.

6. Lemma: $S^n - \theset{p_i}_{i=1}^k = \bigvee_{k-1}S^{n-1}$, i.e. $S^n$ minus $k$ points is equal to $k-1$ copies of of $S^{n-1}$.
   Proof: $S^n - \theset{p_1} \cong \RR^n$ by stereographic projection, so $S^n - \theset{p_1, p_2 \cdots p_k} \cong \RR^n - \theset{p_2, \cdots p_k}$. WLOG, suppose none of these points are zero (otherwise, take a translation away from zero. This is affine and continuous.) Then fix 0 as the base point, and form $k-1$ loops $\alpha_i$, where the $i$th loop encircles $p_i$. Then $\RR^n$ deformation retracts onto $\cup_{i=1}^{k-1} \alpha_i$, which is homeomorphic to $\bigvee_{i=1}^{k-1} S^1$.

7. Theorem: $\pi_1(\bigvee_{i=1}^k S^1) \cong {\Large{*}}_{i=1}^n\ZZ$, the free product of $n$ copies of $\ZZ$.
   Proof: By induction, using Van-Kampen's theorem.
   Base case: Take $i=1$, then $\pi_1(S^1) = \ZZ$ as proved in Hatcher.
   Inductive step: Suppose this holds for all $k < n$, then we have $X = \bigvee^n S^1 = \left( \bigvee^{n-1}S^1\right) \vee S^1$. Let $p$ be the point of common intersection, then let
   $U = \bigvee^{n-1} S^1$
   $V = S^1 \union \theset{p}$

   Then $U\union V = X$, $U \intersect V = \theset{p}$, both $U,V$ are path-connected. Since we have $\pi_1(\pt) = 0$, the amalgamated free product reduces to the usual free product. By the IH, we have $\pi_1(U) = {\Large{*}}^{n-1}\ZZ$, so 

   $\pi_1(X) = \pi_1(U\cup V) = \pi_1(U) * \pi_1(V) =_{\text{IH}} ({\Large{*}}^{n-1} \ZZ ) * \pi_1(V) = ({\Large{*}}^{n-1} \ZZ) * \ZZ = {\Large{*}}^{n} \ZZ$.

   Definition: Let $F_n \definedas {\Large{*}^n} \ZZ$ be the free abelian group on $n$ generators.
   Lemma: If $n\neq m, F_n \not\cong F_m$.
   Proof: If $F^n \cong F^m$, then $\ZZ^n \cong \ZZ^m$. But then tensor both sides with $\ZZ_2$ over $\ZZ$, yielding $\ZZ^n \otimes_\ZZ \ZZ_2 \cong Z^m \otimes_\ZZ \ZZ_2$. But the LHS is isomorphic to $(\ZZ/2\ZZ)^n$, while the RHS is isomorphic to $(\ZZ/2\ZZ)^m$. *(Why?)*
   These are both finite groups - there are 2 elements in $\ZZ/2\ZZ$, so the first has $2^n$ elements and the latter has $2^m$ elements. But if $2^n=2^m$, then $n=m$. The lemma follows from the contrapositive.

   ​

   Now we have all we need - let $X = S^2 - \theset{p_1, p_2}$ and $Y = S^3 - \theset{q_1, q_2}$. Then by the previous problems, $X \homotopic S^1$ and $Y \homotopic S^2$, so if $S^2 \cong S^3$ then $X \homotopic Y$ and $S^1 \homotopic S^2$. But $\pi_1(S^1) = \ZZ$ and $\pi_1(S^2) = 0$, so $S^1 \not\simeq S^2$, a contradiction.

8. Here we go:

   1. Let $\alpha(t) = e^{2\pi it}$ where $t \in [0, 1]$, be a loop in $S^1$ parameterized by $t$, which goes around $S^1$ exactly once. Then under the map $f: z \mapsto z^n$, we obtain $f(\alpha(t)) = e^{2\pi n i t}$ where $t \in [0,1]$. This resulting loop then goes around $S^1$ $n$ times, so the induced homomorphism on $\pi_1(S^1) = \ZZ$ is the map $f^*: \ZZ \into \ZZ$ given by $f^*(a) = na$.
   2. Define $\alpha$ as above, and define $f: S^1 \into S^1$ to be the antipodal map, so $f(z) = -z$ for $z \in S^1 \subset \CC$. We then left $\alpha$ to the fundamental group, and define $f_*([\alpha]) = [f \circ \alpha]$. Computing, we have $(f\circ \alpha)(t) = f(\alpha(t)) = -e^{2\pi i t}$. Where $\alpha(0) = \alpha(1) = 1 + 0i$, we have $(f\circ \alpha)(0) = (f\circ \alpha)(1) = -1 + 0i$. But note that $\alpha$ was a counter-clockwise loop in $S^1$, and the image of $\alpha$ is also a counter-clockwise loop. So this maps the generator $[\alpha] \in \pi_1(S^1, 1)$ to the generator $[\alpha'] \in \pi_1(S^1, -1)$. But since $S^1$ is path-connected, the fundamental groups at these two base points are isomorphic. 
      Alternatively: the antipodal map on $S^1$ is homotopic to the identity map (since $n=1$ is odd), so $[f\circ \alpha] = [f][\alpha] = [\id][\alpha] = [\alpha]$, so the induced homomorphism on $\pi_1(S^1)$ is the identity map.
   3. Let $\alpha(t) = e^{it}$ where $t\in [0, 2\pi]$ be a counter-clockwise loop in $S^1$; then $[\alpha]$ generates the fundamental group. Then $f^*([\alpha]) = [(f\circ \alpha) (t)] = [e^{it} \mapsto e^{2\pi i \sin t}]$. Then just consider how $\sin$ behaves in each quadrant. In quadrant 1, as $t$ ranges from $0, \pi/2$ then $\sin t$ ranges from 0 to 1, so $\alpha$ is exactly traced out. In quadrant two, $\bar\alpha$ is traced out, since $\sin t$ decreases from 1 to 0. This happens again in the bottom quadrants, so we have $f^*([\alpha]) = [\alpha\bar\alpha\alpha\bar\alpha] = [\alpha][\alpha]^{-1}[\alpha][\alpha]^{-1} = [\id]$. But the identity element in $\ZZ$ is  0, so the induced homomorphism on $\ZZ$ is $f^*(a) = 0$, the homomorphism sending everything to 0.

9. From complex analysis, $W(f(\alpha(t))) = Z_f - P_f = 4 - 1 = 3$. No idea how to approach with induced maps on the fundamental group of $S^1$ or $\CC - \theset{0}$.

10. Let $M$ be the mobius strip, identified as $I\cross I / (t,0) \sim (1-t, 1)$, and let $x_0 = [(1, \frac{1}{2})] = [(0, \frac{1}{2})]$. Let $X$ be the line $(t, \frac{1}{2})$ for $t\in I$; by the identification of the endpoints this is actually a copy of $I / \boundary I \cong S^1$ inside of $M$ representing the middle circle of the strip. But then $M$ deformation retracts onto $S^1$ by just moving every point in $I\cross I$ horizontally towards this line, so $M \homotopic S^1$ and $\pi_1(M) \cong \ZZ$, generated by the loop described which we'll call $\alpha$.

  To see what the boundary curve is, label the corners $a,b$ with the suitable identification. Then take a path from $a$ to $b$ on the right-hand boundary of the square. By sliding this through $I\cross I$, this is homotopic $\alpha$. But similarly, the path from $b$ to $a$ on the LHS of the square is also homotopic to $\alpha$, so the loop $a\into b \into a \homotopic \alpha^2$, so if $[\alpha] = 1 \in \pi_1(M)$, then $[a\into b\into a] = 2$.

11. First note that $\pi_1(S^1\cross S^1) \cong F^2$, the free group on two generators, say $[\alpha], [\beta]$ corresponding to the two nontrivial loops on the torus - say $\alpha$ is the longitudinal loop, and $\beta$ is the meridian. Then if $\gamma$ is a loop on a torus, then you can just count how many times it winds longitudinally and around the meridian, say $m$ and $n$ times respectively. Then $\gamma$ can be homotoped into $m$ copies of $\alpha$ and $n$ copies of $\beta$ based at $x_0$. So the induced map is $f_\sharp: F^2 \into F^2$ given by $\alpha \mapsto \alpha^m, \beta \mapsto \beta^n$. Since $F^2 \cong Z\cross Z$, we equivalently have $[\alpha] = (1,0), [\beta] = (0,1)$, and then $f_\sharp : Z^2 \into Z^2$ is given by $(1,0) \mapsto (m,0)$ and $(0,1) \mapsto (0,n)$.

# Group Actions

1. ​
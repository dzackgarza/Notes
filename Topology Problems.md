# Topology Problems

## Homotopy

1.  Show that any non-surjective map $f: X \rightarrow S^n$ is homotopic to the constant map.
2. Let $f,g \rightarrow S^n$ be such that $\forall x\in X, f(x) \neq -g(x)$. Show that $f \simeq g$.
3. Given $f: x\mapsto -x$ the antipodal map, show that $n = 1\mod 2 \implies f \simeq \text{id}$.
4. Show that $X$ is contractible $\iff$ $\text{id}_X \simeq g$ for some constant map $g$. 
5. Show that $S^1 \times I \simeq M$, the Mobius strip.
6. Show that $\mathbb{R}^3 - S^1 \simeq S^1 \vee S^2$.
7. Classify the letters of the alphabet up to homeomorphism, and up to homotopy.
8. Let $f,g : S^1 \rightarrow X$,
   $P = X \cup_f B^2 \cong X \coprod B^2 / \sim$, where $x \sim f(x)$,
   $Q = X \cup_g B^2$.
   Show that $f\simeq g \implies P\simeq Q$.

## Fundamental Group

1. Show that $x,y\in X$ path & simply-connected $\implies$ all paths from $x$ to $y$ are homotopic rel $\{0, 1\}$.
2. Show that for $X$ path connected, $\pi_1(X) = \mathbb{1} \iff \forall \text{cts.}~f: S^1 \rightarrow X$ $f$, extends to a continuous map $F: B^2 \rightarrow X$.
3. Show $\pi_1(X\times Y, (x_0, y_0)) \cong \pi_1(X,x_0) \times \pi_1(Y, y_0)$.
4. Show $\pi_1(S^n) = 1$ for $n\geq 2$.
5. Show that $S^2 - \{p_0, p_1\} \simeq S^1$.
6. Show that $S^3 - \{p_0, p_1\} \simeq S^2$
7. Show that $S^2 \not\cong S^3$.
8. For each of the following $f: S^1 \rightarrow S^1$, identify the corresponding $f_*: \mathbb{Z} \to \mathbb{Z}$:
   1. $z\mapsto z^n$
   2. $\bar{x} \mapsto -\bar{x}$
   3. $e^{i\theta} \mapsto e^{2\pi i\sin\theta}$
9. Determine the winding number of the following map: $f: S^1 \to \mathbb{C}-\{0\}, z\mapsto 8z^4 + 4z^3 + 2z^2 + z^{-1}$
10. Identify $\pi_1(M, [(1, \frac{1}{2})])$, and identify the class of $\partial M$.
11. Let $X = S^1\times S^1$ and $\gamma$ a loop based at $x_0$. What is the induced map $\gamma_\sharp$?

## Group Actions

1. Show that octagon pasting is homeomorphic to the $T = \mathbb{R}^2 / \mathbb{Z}^2$.
2. Let $x_0$ be the image of $0$, show that there is an order 6 homeomorphism $f: T \to T$ fixing $x_0$. Find a representation of $f_*$ as a matrix, and find its determinant.
3. Show that $\pi_1(K)$, the Klein bottle, is given by pairs $(m,n)$ where $(m,n)\star (p,q) = (m+(-1)^np, n+q)$
   1. Show this is torsion-free
   2. Show that $T$ is a double cover of $K$.
4. For each of these actions of $\mathbb{Z}_2$ on $S^n$, compute $\pi_1(S^n/\mathbb{Z}_2)$
   1. $S^1, z\mapsto -z$
   2. $S^2, (x,y,z) \mapsto (-x,-y,z)$
   3. $S^3, (z,w) \mapsto (-z, -w)$

## Applications

1. Let $i: \mathbb{RP}^2 \to \mathbb{RP}^3$, induced by $S^2 \hookrightarrow S^3$ as the equator. Show that $i \not\simeq \text{const}$.
2. Show that there is no map $f: S^2 \to S^1$ that commutes with the antipodal map.
3. Prove that for any $f: S^2 \to \mathbb{R}^2$, there exists $x\in S^2$ such that $f(x) = f(-x)$.
4. Prove the Ham Sandwich theorem.
5. Show that $K$ can not be a topological group.

## Van Kampen's Theorem

1. Compute a presentation of $\pi_1(T)$ and prove it is isomorphic to $\mathbb{Z}_2$.
2. (Images)
3. Show that $T-D^1 := X \simeq S^1 \vee S^1$.
   1. Show there does not exist a retraction $r: X \to \partial X$.
4. Images
5. IMages
6. Images
7. Calculate a presentation of $\pi_1(S^3-K)$
8. Show that all 3 presentations of $\pi_1(K)$ are isomorphic
   1. Square with sides glued
   2. Two mobius strips glues along boundary
   3. Multiplication rule
9. Given a group $G = <A : R>$, show how to construct a CW-complex $X$ such that $\pi_1(X) = G$.
10. Write down the fundamental group of the following spaces:
    1. $\mathbb{R}^2 - \{0, 1\}$
    2. $\mathbb{R}^2 - I$
    3. The symbol $\oplus \in \mathbb{R}^2$
    4. $S^2 - \{p_i\}_{i=1}^4$
    5. $T - \{p_0\}$
    6. $S^2 / \mathbb{Z}_2$ via the antipodal map
    7. $S^2/\mathbb{Z}_3$ via a $2\pi/3$ rotation about the $z$-axis.
    8. $S_2 \cup \{(0,0,z) \mid -1 \leq z \leq 1 \}$
    9. $\mathbb{R}^3 - \{ (x,y,0) \mid x^2 + y^2 = 1\}$
    10. $\mathbb{R}^2 - H$, the Hopf link
11. Prove that the homophony group is trivial.
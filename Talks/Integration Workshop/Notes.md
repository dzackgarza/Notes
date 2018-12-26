# Integration Workshop Notes



## Background and Terminology

- The complex plane
  - Visualize as the vector space $\R^2$ via the injection $(x,y) \mapsto x + iy$, but remember there are a variety of other complex structures around (complex multiplication, conjugation, the derivative, etc). Many techniques from vector calculus in the plane will carry over.
- Contour
  - A smooth curve in the plane.
- Residue

## Computing Real Integrals Using Complex Analysis

- Goal: compute something like
  $$
  \int_{-\infty}^\infty f(x)~dx \text{ or just } \int_0^\infty f(x) ~dx
  $$

- Summary of approach:

  - Use the fact that $\R \hookrightarrow \C$ as the real line, so this is equivalent to a contour integral along $L_R = \{ x + 0i \mid -R \leq x \leq R\}$. So we’re equivalently computing this line integral: 
    $$
    \int_{L_R} f(z) ~dz
    $$

  - Note that we’ve implicitly identified the original $f: \R \to \R$ with a *new* $f: \C \to \C$ which is given by the same formula. It may be the case that the first $f$ was well-behaved, but the new $f$ has complex singularities - in fact, we are counting on it!

  - Line integrals aren’t much easier to compute, but complex integrals around *closed contours* are very easy. So pick a closed contour that includes $L_R$ - in this case, we’ll take half-circle of radius $R$ in the upper half plane, $C_R$:

    ![1545857433852](/home/zack/SparkleShare/github.com/Notes/assets/circular_contour.png)
    Note: this is not the only contour that works! 

  - We can then write
    $$
    \oint f(z) ~dz = \int_{L_R} f(z)~dz + \int_{C_R}f(z)~dz
    $$
    which can of course be rearranged to isolate the quantity we want:
    $$
    \int_{L_R} f(z)~dz = \oint f(z) ~dz - \int_{C_R}f(z)~dz
    $$

  - We can then take the limit as $R$ goes to infinity to obtain the final expression:
    $$
    \int_{-\infty}^\infty f(x) dx = \lim_{R \to \infty} \left( \oint f(z) ~dz - \int_{C_R}f(z)~dz \right)
    $$

- How to solve:

  - For the first term, we apply the residue theorem (will explain momentarily)
  - For the second term, we hope that the integral along this $C_R$ is easier to compute than the integral along $L_R$ (rare), or that the integral along $C_R$ vanishes in the limit (common!)
    - For the latter case, we'll need to prove that a limit goes to zero, so we'll need some bounds/inequalities

- The Tools We'll Need:

  - The Residue Theorem
  $$
  \oint f(z) ~dz = \sum_{z_i \in S_f} \mathrm{Res}(f, z_i)
  $$
    where $S_f$ is the set of singularities of $f$ and $\mathrm{Res}(f, z_i)$ is the residue of $f$ at $z_i$.
  - Test


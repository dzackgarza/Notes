# Integration Workshop Notes



## Background and Terminology

To cover if less than 50% of attendees haven't taken both courses in complex analysis (UCSD 120A/B). Assumptions: Students know some real single variable calculus and vector calculus, and basic complex arithmetic.

Some background definitions:

- The complex plane

  - Visualize as the vector space $\R^2$ via the injection $(x,y) \mapsto x + iy$, but there are a variety of other complex structures around (complex multiplication, conjugation, the derivative, etc). Many techniques from vector calculus in the plane will still carry over.

- Contour

  - A smooth curve in the plane (or many concatenated together). Recall from vector calculus that curves admit parameterizations, so we can write a curve as $\gamma(t): \R \to \C$. A *closed* contour is any contour which begins and ends at a single point, enclosing some region of the plane.

- Complex Integral

  - Basic idea: defined like a line/path integral in vector calculus, we use the parameterization to reduce it to a real integral. If $\gamma$ is supported on the real interval $[a, b]$ then we let
    $$
    \int_\gamma f(z)~dz = \int_a^b f(\gamma(t)) \gamma'(t) ~dt
    $$
    This is the first and most basic way to compute such an integral. 

- Complex Antiderivative

  - Defined like a potential function in vector calculus, a function $\phi: \C \to \C$ is an antiderivative of $f$ if and only if for all paths $\gamma$ from $z_a$ to $z_b$, we have
    $$
    \int_\gamma f(z) ~dz = \phi(z_b) - \phi(z_a) \text{ or equivalently for all closed contours, } \oint f(z) ~dz = 0
    $$
    

  - Note - a fundamental theorem of Calculus holds in $\C$ (much like in $\R$), but the problem is that many basic functions fail to have antiderivatives!

    - Example: $f(z) = \frac 1 z$ does not have the antiderivative $\ln z$ as in real calculus - in fact, it has no antiderivative because there is a closed contour for which $\oint f(z) \neq 0$, namely the unit circle.
    - So the workhorses from real calculus ($u$ subs, integration by parts, etc) become far less effective.

- Singularity

  - Broadly speaking, a point where the function goes to $\infty$ or fails to be defined. The prototypical example is the point $z=0$ for $f(z) = \frac{1}{z}$, or more generally $z=a$ for $f(z) = \frac{1}{z-a}$
  - We'll primarily be concerned with *poles*, which are relatively mild. These are singularities that can be "multiplied out", i.e. one can find an $n$ such that $a$ is a singularity of $f$, but $z_0$ is not a singularity of $g(z) = (z-z_0)^n f(z)$. 
    - A prototypical example is $f(z) = \frac{1}{z^2}$ at $z=0$, where $g(z) = z^2 f(z) = 1$ is no longer singular at zero.

- Holomorphic

  - Defined in open sets/neighborhoods $U$ of points. Actual definition: $f$ is complex differentiable, but in $\C$ this is equivalent to *analytic*, i.e. has a convergent power series in only positive powers. Generally means $f$ does not have singularities in $U$. 
  - E.g. A pole is a singularity such that there exists an $n$ where $g(z)=(z-z_0)^nf(z)$ is holomorphic at $z_0$.
  - Most theorems are stated in terms of holomorphic functions.

- Residue

  - For a complex function $f$ at a point $z_0$, one can compute a Laurent expansion of $f$ at $z_0$ (expand in a power series using powers of $z, z^{-1}$). The residue of $f$ at $z_0$ is then the coefficient of $z^{-1}$ in this expansion.

  

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

  - For any contour $\Gamma = \sum_{i=1}^n \gamma_i = \gamma_1 + \gamma_2 + \cdots + \gamma_n$, we have
    $$
    \int_\Gamma f(z)~dz = \sum_{i=1}^n \int _{\gamma_i} f(z)~dz
    $$

  - Cauchy's Integral Formula: for simplicity, assume $f$ is holomorphic in a neighborhood of $z_0$ (theorem: and thus smooth), then
    $$
    \oint \frac{f(z)}{(z-z_0)^{n}} ~dz = \frac {2\pi i}{(n-1)!} f^{(n-1)}(z_0)
    $$

    - The trick: reduce other problems to computing a contour integral on a circle around a single pole $z_0$ of order $n$, thus want to compute $\oint g(z)$. So rewrite $g(z) = \frac{f(z)}{(z-z_0)^n}$ (i.e. 'extract' the nonsingular part for the numerator) and apply this theorem.

  - The Residue Theorem:
  $$
  \oint f(z) ~dz = \sum_{z_i \in S_f} \mathrm{Res}(f, z_i)
  $$
    where $S_f$ is the set of poles of $f$ and $\mathrm{Res}(f, z_i)$ is the residue of $f$ at $z_i$.
  - Test


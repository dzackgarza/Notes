# Integration Workshop Notes



# Background and Terminology

To cover if less than 50% of attendees haven't taken both courses in complex analysis (UCSD 120A/B). Assumptions: Students know some real single variable calculus and vector calculus, and basic complex arithmetic (polar form, complex modulus, etc).

## Some Definitions:

- The complex plane

  - Visualize as the vector space $\R^2$ via the injection $(x,y) \mapsto x + iy$, but there are a variety of other complex structures around (complex multiplication, conjugation, the derivative, etc). Many techniques from vector calculus in the plane will still carry over.

- Contour

  - A smooth curve in the plane (or many concatenated together). Recall from vector calculus that curves admit parameterizations, so we can write a curve as $\gamma(t): \R \to \C$. A *closed* contour is any contour which begins and ends at a single point, enclosing some region of the plane.

- Complex Differentiation

  - Works about the same way you'd expect from real calculus.

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

  

## Conventions

$\gamma$ will denote a single contour (draw) while $\Gamma$ will denote a contour, potentially comprised of many smaller contours $\gamma_i$. The symbol $\int_\Gamma$ is complex integration along the contour $\Gamma$, while $\oint_\Gamma$ denotes integration along $\Gamma$ when $\Gamma$ is a closed contour (although $\Gamma$ may be suppressed when the contour is understood from context). 



---



# Computing Real Integrals Using Complex Analysis

- Goal: compute something like
  $$
  \int_{-\infty}^\infty f(x)~dx \text{ or just } \int_0^\infty f(x) ~dx
  $$

- Summary of approach:

  - Use the fact that $\R \hookrightarrow \C$ as the real line via $x \mapsto x+0i$, so this is equivalent to a contour integral along $L_R = \{ x + 0i \mid -R \leq x \leq R\}$and we’re equivalently computing the integral 
    $$
    \int_{L_R} f(z) ~dz
    $$

  - Note that we have implicitly identified the original $f: \R \to \R$ with a *new* $f: \C \to \C$ which is given by the same formula. It may be the case that the first $f$ was well-behaved, but the new $f$ has complex singularities - in fact, we are counting on it!

  - General line/path integrals are not much easier to compute, but complex integrals around *closed contours* are. So pick a closed contour that includes $L_R$ - in this case, we’ll take half-circle of radius $R$ in the upper half plane, $C_R$:

    ![1545857433852](/home/zack/SparkleShare/github.com/Notes/assets/circular_contour.png)
    Taking this clockwise, we'll write it as $\Gamma_R = L_R + C_R$ Note: this is not the only contour that works! 

  - We can then write
    $$
    \oint_{\Gamma_R} f(z) ~dz = \int_{L_R} f(z)~dz + \int_{C_R}f(z)~dz
    $$
    which can of course be rearranged to isolate the quantity we want:
    $$
    \int_{L_R} f(z)~dz = \oint_{\Gamma_R} f(z) ~dz - \int_{C_R}f(z)~dz
    $$

  - We can then take the limit as $R$ goes to infinity to obtain the final expression:
    $$
    \int_{-\infty}^\infty f(x) dx = \lim_{R \to \infty} \left( \oint_{\Gamma_R} f(z) ~dz - \int_{C_R}f(z)~dz \right)
    $$

- How to solve:

  - For the first term, we apply the residue theorem or Cauchy's integral formula (will explain momentarily)
  - For the second term, we hope that the integral along this $C_R$ is easier to compute than the integral along $L_R$ (rare), or that the integral along $C_R$ vanishes in the limit (common!)
    - For the latter case, we'll need to prove that a limit goes to zero, so we'll need some bounds/inequalities

## The Tools We'll Need:

- The triangle inequalities:
  $$
  \begin{align*}
  \left\lvert x+y\right\rvert &\leq \left\lvert x\right\rvert + \left\lvert y\right\rvert \\
  \left\lvert x-y \right\rvert &\geq \left\lvert {\left\lvert x\right\rvert - \left\lvert y \right\rvert} \right\rvert
  \end{align*}
  $$
  

- For any contour $\Gamma = \sum_{i=1}^n \gamma_i = \gamma_1 + \gamma_2 + \cdots + \gamma_n$, we have
  $$
  \int_\Gamma f(z)~dz = \sum_{i=1}^n \int _{\gamma_i} f(z)~dz
  $$

  - Corollary: If (say) $\gamma_1 = -\gamma_2$ , so that two components of the contour traverse the same curve in opposite directions, $\int_{\gamma_1} f(z) ~dz = -\int_{\gamma_2} f(z) ~dz$ and their contributions cancel.
  - Related fact: if there is a *homotopy* between two contours $\gamma_1, \gamma_2$ that does not pass through any singularities of $f$, then $\int_{\gamma_1} f(z)~dz= \int_{\gamma_2} f(z)~dz$
  - Big conclusion: integration about any contour $\Gamma$ can be broken up into a sum of integrals around circles enclosing the singularities of $f$.

- Cauchy's Integral Formula: for simplicity, assume $f$ is holomorphic in a neighborhood of $z_0$ (theorem: and thus smooth), then
  $$
  \oint \frac{f(z)}{(z-z_0)^{n}} ~dz = \frac {2\pi i}{(n-1)!} f^{(n-1)}(z_0)
  $$

  - The trick: only need to know how to compute a contour integral on a circle around a single pole $z_0$ of order $n$, thus want to compute some $\oint g(z)$. So just rewrite $g(z) = \frac{f(z)}{(z-z_0)^n}$ (i.e. 'extract' the nonsingular part for the numerator) and apply this theorem.

- The Residue Theorem:
  $$
  \oint f(z) ~dz = \sum_{z_i \in S_f} \mathrm{Res}(f, z_i)
  $$
  ​	  where $S_f$ is the set of poles of $f$ and $\mathrm{Res}(f, z_i)$ is the residue of $f$ at $z_i$.
    - Used as an alternative to Cauchy's Integral Formula, many ways to compute the residues on the right hand side e.g. just expand Laurent series about $z_i$, or:
    - **The Residue Computation Workhorse:**
      Supposing that $f(z)$ can be written as a rational function $f(z)= \frac{p(z)}{q(z)}$ , where $z_0$ is a simple pole (so that $p(z_0) \neq 0$ but $q(z_0) = 0$) and the following expression makes sense , we have

  $$
  \mathrm{Res}(f, z_0) = \frac{p(z_0)}{q'(z_0)}
  $$

  

- The estimation lemma:
  $$
    \left\lvert \int_\Gamma f(z) ~dz\right\rvert \leq \left\vert \Gamma\right\vert \sup_{z\in\Gamma}\left\lvert f(z)\right\rvert
  $$
  where the first term is the length of the curve $\Gamma$ and the second is the maximum value $f$ takes on points along $\Gamma$.

# Example 1

Want to compute the following integral:
$$
I = \int_{-\infty}^\infty \frac{1}{x^6+1} ~dx
$$
We'll use the semicircle contour $\Gamma_R = L_R + C_R$ from above. Letting $f(x) = \frac{1}{x^6+1}$ and thus $f(z) = \frac{1}{z^6+1}$, we then know that
$$
\int_{-\infty}^\infty \frac{1}{x^6+1} dx = \lim_{R \to \infty} \left( \oint_{\Gamma_R} \frac{1}{z^6+1} ~dz - \int_{C_R} \frac{1}{z^6+1} ~dz \right)
$$
First, to make sure this technique will go through as desired, we'll want to make sure (and show!) that the integral around $C_R$ goes to zero in the limit. This means we'll need two quantities - the length of $C_R$, and the supremum of $f(z)$ along it.

By design, we've chosen $C_R$ to be easy to work with - in particular, the arc length will just be half of the circumference. Since the latter is $2\pi R$, the former is just $\pi R$.

To compute the supremum, note that we can write any point on $C_R$ as $z=Re^{i\theta}$ where $\theta \in [0, \pi]$, and so $\left\lvert z\right\rvert = \left\lvert R e^{i\theta}\right\rvert = \left\lvert {R}\right\rvert \left\lvert e^{i\theta} \right\rvert = \left\lvert R \right\rvert$, since $e^{i\theta}$ is just a point on the unit circle and thus has modulus 1. We can then conclude that
$$
\left\lvert z^6+1 \right\rvert \geq \left\lvert {\left\lvert z^6\right\rvert - \left\lvert 1 \right\rvert}\right\rvert = \left\lvert R^6 - 1\right\rvert
$$
using the reverse triangle inequality. Taking reciprocals reverses the inequality, yielding the upper bound
$$
\left\lvert \frac{1}{z^6+1} \right\rvert \leq \left\lvert \frac{1}{R^6-1}\right\rvert
$$
where applying the estimation lemma and taking the limit yields
$$
\left\lvert \int_{C_R} \frac{1}{z^6+1}~dz \right\rvert  \leq \left\lvert \frac{\pi R}{R^6-1}\right\rvert \to 0
$$
It now only remains to compute the first term, the integral around the closed contour.

We first need examine the singularities that $\Gamma_R$ encloses. This amounts to looking at where $\frac{1}{z^6+1}$ blows up, which are exactly the points $z^6 = -1$, or the complex sixth roots of -1. We can generate one easily as $e^{\frac{i\pi}{6}}$ since $e^{i\pi} = -1$, and generate new ones by adding angle multiples of $2k\pi$. This yields 6 unique points $\zeta_k = e^{i(\frac \pi 6 + \frac {2k\pi} 6)} = e^{\frac{i\pi}{6}(2k+1)}$ where $k$ ranges from $0$ to $5$. 

Taking $R > 1$, three of these will fall inside the contour, as shown here:

![1545866865661](/home/zack/SparkleShare/github.com/Notes/assets/example1_contour_with_singularities.png)

We can now proceed in one of two ways, both of which will involve a computation at each $\zeta_k$:

- The Residue Theorem - compute Laurent expansions and look at coefficients of $z^{-1}$ (tricky in general, usually involves some clever manipulations of series)
- Cauchy's Integral Formula - take derivatives (formulaic)

Before proceeding, note that we can factor and write $\frac{1}{z^6+1} = \frac{1}{\prod_k (z-\zeta_k)}$. Moreover, we can then juggle terms  to isolate any given root in the denominator and for any $j$ write
$$
\frac{1}{z^6+1} = \frac{\prod_{k\neq j} \frac{1}{(z-\zeta_k)}}{z-\zeta_j}
$$
 
For example, $\frac{1}{x^2-4} = \frac{1}{(x-2)(x-(-2))} = \frac{1/(x-2)}{x+2} = \frac{1/(x+2)}{x-2}$.

### Residue Theorem

Noting that $e^{\frac{i\pi}{2}} = i$ and directly applying this theorem, we can write
$$
\oint_{\Gamma_R} \frac{1}{z^6+1} ~dz = \sum_{k=0}^2 \mathrm{Res}(f, \zeta_k) = \mathrm{Res}(f, e^{\frac{i\pi}{6}} ) + \mathrm{Res}(f, i) + \mathrm{Res}(f, e^{\frac{5 i \pi}{6}})
$$
Then, applying our residue workhorse and taking $p(z) = 1,~ q(z) = z^6+1$, and then computing $q'(z) = 6z^5$, we find that
$$
\mathrm{Res}(f, \zeta_k) = \frac{1}{6\zeta_k^5} = \frac{1}{6}\zeta_k^{-5}
$$
and thus
$$
\oint_{\Gamma_R} \frac{1}{z^6+1} ~dz = \frac{1}{6} \left( \zeta_0^{-5} + \zeta_1^{-5} + \zeta_2^{-5} \right)
$$
At this point, I find it most convenient to simplify this geometrically. For example, denote the right hand side $I_R$; we can observe that $\zeta_k ^{-1} = \bar{\zeta_k} = \zeta_{6-k}$, which is a symmetry about the real line, $f(z) = z^5$ turns out to be a symmetry across the imaginary axis, and $f(z) = -z$ is a symmetry about the line . So one can work out that
$$
\begin{align*}
I_R &= \frac{1}{6} \left( \zeta_0^{-5} + \zeta_1^{-5} + \zeta_2^{-5} \right) \\ &= \frac{1}{6} \left( \zeta_5^{5} + \zeta_4^{5} + \zeta_3^{5} \right) \\&= \frac{1}{6} \left( \zeta_3 + \zeta_4 + \zeta_5 \right) \\&= -\frac{1}{6} \left( \zeta_0 + \zeta_1 + \zeta_2 \right) \\&= -\frac{1}{6} \left( \zeta_0 + \zeta_1 - \bar{\zeta_0} \right)
\end{align*}
$$
We can identify $\zeta_1 = e^{i\pi/2} = i$ and use the identity $z-\bar{z} = 2i~\mathrm{Im}(z)$ and the fact that $\zeta_0 = e^{i\pi /6} = \cos(\pi/6) + i\sin(\pi/6) = \frac{\sqrt 3}{2} + \frac{1}{2}i$ to obtain $\zeta_0 + \bar{\zeta_0} = 2i(\frac{1}{2}) = i$ to find that 
$$
I_R= -\frac 1 6 (i + i) = -\frac{1}{3}i
$$

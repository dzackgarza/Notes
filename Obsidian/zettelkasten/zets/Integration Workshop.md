[Undergraduate](Undergraduate)
[Calculus](Calculus)
[../../Talks Index](../../Talks%20Index.md)

# Integration Workshop Notes

# Background and Terminology

To cover if less than 50% of attendees haven't taken both courses in complex analysis (UCSD 120A/B). Assumptions: Students know some real single variable calculus and vector calculus, and basic complex arithmetic (polar form, complex modulus, etc).

## Some Definitions:

- The complex plane

  - Visualize as the vector space $\RR^2$ via the injection $(x,y) \mapsto x + iy$, but there are a variety of other complex structures around (complex multiplication, conjugation, the derivative, etc). Many techniques from vector calculus in the plane will still carry over.

- Contour

  - A smooth curve in the plane (or many concatenated together). Recall from vector calculus that curves admit parameterizations, so we can write a curve as $\gamma(t): \RR \to \CC$. A *closed* contour is any contour which begins and ends at a single point, enclosing some region of the plane.

- Complex Differentiation

  - Works about the same way you'd expect from real calculus.

- Complex Integral

  - Basic idea: defined like a line/path integral in vector calculus, we use a parameterization of the contour to reduce it to a real integral. If $\gamma$ is supported on the real interval $[a, b]$ then we let
    $$
    \int_\gamma f(z)~dz = \int_a^b f(\gamma(t)) \gamma'(t) ~dt
    $$
    This is the first and most basic way to compute such an integral.
    Alternatively, if $f: \RR \to \CC$ can be written as a function of a real variable $t$ over an interval $[a,b]$, then it can be split into real imaginary parts and we can define
    $$
    \int_a^b f(t) ~dt = \int_a^b u(t) + iv(t) ~dt= \int_a^b u(t)~dt + i\int_a^b v(t) ~dt
    $$
    

- Complex Antiderivative

  - Defined like a potential function in vector calculus, a function $\phi: \CC \to \CC$ is an antiderivative of $f$ if and only if for all paths $\gamma$ from $z_a$ to $z_b$, we have
    $$
    \int_\gamma f(z) ~dz = \phi(z_b) - \phi(z_a) \text{ or equivalently for all closed contours, } \oint f(z) ~dz = 0
    $$

  - Note - a fundamental theorem of Calculus holds in $\CC$ (much like in $\RR$), but the problem is that many basic functions fail to have antiderivatives!

    - Example: $f(z) = \frac 1 z$ does not have the antiderivative $\ln z$ as in real calculus - in fact, it has no antiderivative because there is a closed contour for which $\oint f(z) \neq 0$, namely the unit circle.
    - So the workhorses from real calculus ($u$ subs, integration by parts, etc) become far less effective.

- Singularity

  - Broadly speaking, a point where the function goes to $\infty$ or fails to be defined. The prototypical example is the point $z=0$ for $f(z) = \frac{1}{z}$, or more generally $z=a$ for $f(z) = \frac{1}{z-a}$
  - We'll primarily be concerned with *poles*, which are relatively mild. These are singularities that can be "multiplied out", i.e. one can find an $n$ such that $a$ is a singularity of $f$, but $z_0$ is not a singularity of $g(z) = (z-z_0)^n f(z)$. 
    - A prototypical example is $f(z) = \frac{1}{z^2}$ at $z=0$, where $g(z) = z^2 f(z) = 1$ is no longer singular at zero.

- Holomorphic

  - Defined in open sets/neighborhoods $U$ of points. Actual definition: $f$ is complex differentiable, but in $\CC$ this is equivalent to *analytic*, i.e. has a convergent power series in only positive powers. Generally means $f$ does not have singularities in $U$. 
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

  - Use the fact that $\RR \hookrightarrow \CC$ as the real line via $x \mapsto x+0i$, so this is equivalent to a contour integral along $L_R = \{ x + 0i \mid -R \leq x \leq R\}$and we’re equivalently computing the integral 
    $$
    \int_{L_R} f(z) ~dz
    $$

  - Note that we have implicitly identified the original $f: \RR \to \RR$ with a *new* $f: \CC \to \CC$ which is given by the same formula. It may be the case that the first $f$ was well-behaved, but the new $f$ has complex singularities - in fact, we are counting on it!

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

- **The Residue Theorem**:
  $$
  \oint f(z) ~dz = 2\pi i \sum_{z_i \in S_f} \mathrm{Res}(f, z_i)
  $$
  ​	  where $S_f$ is the set of poles of $f$ and $\mathrm{Res}(f, z_i)$ is the residue of $f$ at $z_i$.
    - Used as an alternative to Cauchy's Integral Formula, many ways to compute the residues on the right-hand side e.g. just expand Laurent series about $z_i$, or:

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

- **Cauchy’s Integral Formula**: 
  For simplicity, assume $f$ is holomorphic in a neighborhood of $z_0$ (theorem: and thus smooth), then
  $$
  \oint \frac{f(z)}{(z-z_0)^{n}} ~dz = \frac {2\pi i}{(n-1)!} f^{(n-1)}(z_0)
  $$
  In particular, if $z_0$ is a pole of order 1, this reduces to
  $$
  \oint \frac{f(z)}{z-z_0} = 2\pi i f(z_0)
  $$
  

  - The trick: only need to know how to compute a contour integral on a circle around a single pole $z_0$ of order $n$, thus want to compute some $\oint g(z)$. So just rewrite $g(z) = \frac{f(z)}{(z-z_0)^n}$ (i.e. ‘extract’ the nonsingular part for the numerator) and apply this theorem.

# Example 1: A Reciprocal of a Polynomial

Suppose we want to compute the following integral:
$$
I = \int_{-\infty}^\infty \frac{1}{x^6+1} ~dx
$$
We'll use the semicircle contour $\Gamma_R = L_R + C_R$ from above. Letting $f(x) = \frac{1}{x^6+1}$ and thus $f(z) = \frac{1}{z^6+1}$, we then know that
$$
\begin{equation}\tag{2}
\int_{-\infty}^\infty \frac{1}{x^6+1} dx = \lim_{R \to \infty} \left( \oint_{\Gamma_R} \frac{1}{z^6+1} ~dz - \int_{C_R} \frac{1}{z^6+1} ~dz \right)
\end{equation}
$$
Keep this equation in mind! We will come back to it.

First, to make sure this technique will go through as desired, we'll want to make sure (and show!) that the integral around $C_R$ goes to zero in the limit. This means we'll need two quantities -- the length of $C_R$, and the supremum of $f(z)$ along it.

By design, we've chosen $C_R$ to be easy to work with -- in particular, the arc length will just be half of the circumference. Since the latter is $2\pi R$, the former is just $\pi R$.

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
Thus for $R$ large enough, the contribution the integral along the semicircular portion of the contour will vanish. It now only remains to compute the first term, the integral around the entire closed contour.

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

## Approach 1: Direct Residue Computation

This is rarely the method one would actually use in practice, but it's perhaps worth detailing it here. By definition, the residue of $f$ at $z_i$ is the coefficient of $\frac{1}{z-z_i}$ in the Laurent expansion of $f$  at $z=z_i$. In principal, this can always be done for rational functions, primarily using the known geometric series $\frac{1}{1-z} = 1 + z + z^2 + \cdots =  \sum_{k=1}^\infty z^k$. 

In this case, we can use partial fractions to expand $\frac{1}{z^6 + 1}$ - this is a messy but straightforward computation.[^partial_fraction] 

 This can be done by hand, but for our purposes, we'll use SAGE  to get the decomposition relatively quickly:
$$
\begin{align}
\frac{1}{z^6+1} &= \frac{e^{\frac{11 i\pi}{6}}}{6 \left(z- e^{\frac{5 i\pi}{6}} \right)} + \frac{e^{\frac{7 i\pi}{6}}}{6 \left(z- e^{\frac{i \pi}{6}}\right)} + \frac{e^{\frac{5 i\pi}{6}}}{6 \left(z- e^{\frac{11 i\pi}{6}}\right)} \\ 
\\ 
&+ \frac{e^{\frac{i \pi}{6}}}{6 \left(z- e^{\frac{7 i\pi}{6}} \right)} + \frac{e^{\frac{3 i\pi}{2}}}{6 \left(z- e^{\frac{i \pi}{2}} \right)} + \frac{e^{\frac{i \pi}{2}}}{6 \left(z- e^{\frac{3i \pi}{2}}\right)}
\end{align}
$$
(See the referenced notebook to get an idea of how this can be computed.)

To make things slightly cleaner, if we label the roots clockwise as $\zeta_i, i=0,1,\cdots 5$, this can be rewritten as 
$$
\begin{align*}
\frac{1}{z^6 + 1} &= \frac{1}{6} \left(  \frac{\zeta_5}{z-\zeta_2} + \frac{\zeta_3}{z-\zeta_0} + \frac{\zeta_2}{z-\zeta_5} 
+ \frac{\zeta_0}{z-\zeta_3} + \frac{\zeta_4}{z-\zeta_1}  + \frac{\zeta_1}{z-\zeta_4} \right)
\end{align*}
$$


These are all of the form $\frac{a}{b(z-\zeta)}$, which can manipulated into a form resembling a geometric series. The following computation shows how this is most commonly done:
$$
\begin{align*}
\frac{a}{z-\zeta_i} &= a \left( \frac{1}{z-\zeta_i} \right)  \\ 
&= a \left( \frac{1/\zeta_i}{\frac{z}{\zeta_i}-1}\right) \\
&= \frac{a}{\zeta_i} \left( \frac{1}{\frac{z}{\zeta_i}-1}\right) \\
&= -\frac{a}{\zeta_i} \left( \frac{1}{1 - \frac{z}{\zeta_i} }\right) \\
&= -\frac{a}{\zeta_i} \left( 1 + \frac{z}{\zeta_i} + (\frac{z}{\zeta_i})^2 + (\frac{z}{\zeta_i})^3 + \cdots\right)
\end{align*}
$$
So if we fix one $\zeta_k$ and wish to compute the Laurent expansion about that point, we find that all 5 other terms can be expanded in this way - but most importantly, none of these 5 will contribute a term of the form $\frac{1}{z-\zeta_k}$. We thus compute $\mathrm{Res}(f, \zeta_k)$ by picking the numerator off of the term with $\zeta_k$ in the denominator (and multiplying by $\frac 1 6$) which yields
$$
\begin{align*}
\mathrm{Res}(f, \zeta_0) &= \frac 1 6 \zeta_3 \\
\mathrm{Res}(f, \zeta_1) &= \frac 1 6 \zeta_4 \\
\mathrm{Res}(f, \zeta_2) &= \frac 1 6 \zeta_5 \\
\end{align*}
$$
Applying the Residue Theorem, we have
$$
\begin{align*}
\oint_{\Gamma_R} \frac{1}{z^6+1} ~dz 
&= 2\pi i\sum_{k=0}^2 \mathrm{Res}(f, \zeta_k) \\
&= \mathrm{Res}(f, \zeta_0) + \mathrm{Res}(f, \zeta_1) + \mathrm{Res}(f, \zeta_2) \\
&= \frac{1}{6} \left( \zeta_3 + \zeta_4 + \zeta_5 \right) \\
&= -\frac{1}{6} \left( \zeta_0 + \zeta_1 + \zeta_2 \right) \\
&= -\frac{1}{6} \left( \zeta_0 + \zeta_1 - \bar{\zeta_0} \right)
\end{align*}
$$

We can readily identify $\zeta_1 = e^{i\pi/2} = i$ and use the identity $z-\bar{z} = 2i~\mathrm{Im}(z)$ and the fact that 
$$
\zeta_0 = e^{i\pi /6} = \cos(\pi/6) + i\sin(\pi/6) = \frac{\sqrt 3}{2} + \frac{1}{2}i
$$
to obtain $\zeta_0 + \bar{\zeta_0} = 2i(\frac{1}{2}) = i$. We then find that 
$$
-\frac{1}{6} \left( \zeta_0 + \zeta_1 - \bar{\zeta_0} \right) = -\frac 1 6 (i + i) = -\frac{1}{3}i
$$
and thus
$$
\oint_{\Gamma_R} \frac{1}{z^6+1} ~dz = 2\pi i(-\frac 1 3 i) = \frac{2\pi} 3
$$
Since this does not depend on $R$, taking the limit in equation $(\ref{main})$ yields this as our solution.



## Approach 2: Nice Theorems

Noting that the prior approach is slightly onerous, we can instead apply some slick theorems to simplify computing residues.

In particular, applying the **residue workhorse** and taking $p(z) = 1,~ q(z) = z^6+1$, we can compute $q'(z) = 6z^5$ and find that
$$
\mathrm{Res}(f, \zeta_k) = \frac{1}{6\zeta_k^5} = \frac{1}{6}\zeta_k^{-5}
$$
and thus
$$
\begin{align*}
\oint_{\Gamma_R} \frac{1}{z^6+1} ~dz &= \oint_{\Gamma_R} \frac{1}{z^6+1} ~dz \\
&= 2\pi i\sum_{k=0}^2 \mathrm{Res}(f, \zeta_k)  \\
&=2\pi i \left(\frac{1}{6}\right) \left( \zeta_0^{-5} + \zeta_1^{-5} + \zeta_2^{-5} \right)
\end{align*}
$$
At this point, I find it most convenient to approach this geometrically by looking at how certain maps act on the shape spanned by the 6 roots (a hexagon in this case). 

Since $\left\vert \zeta_k \right\rvert = 1$ we can observe that $\zeta_k ^{-1} = \bar{\zeta_k} = \zeta_{6-k}$, which is a reflection about the real axis; one can also check that $f(z) = z^5$ is a reflection across the imaginary axis and $f(z) = -z$ is a reflection through the origin . This allows one to rewrite
$$
\begin{align*}
\oint_{\Gamma_R} \frac{1}{z^6+1} ~dz  
&= \frac{1}{6} \left( \zeta_0^{-5} + \zeta_1^{-5} + \zeta_2^{-5} \right) \\ 
&= \frac{1}{6} \left( \zeta_5^{5} + \zeta_4^{5} + \zeta_3^{5} \right) \\
&= \frac{1}{6} \left( \zeta_3 + \zeta_4 + \zeta_5 \right)
\end{align*}
$$

which is precisely what we obtained with the first approach.

## Approach 3: Cauchy's Integral Formula

Finally, we can use the fact that the full contour integral can be broken into a sum of integrals around the enclosed singularities. Recalling that these are $\zeta_0, \zeta_1, \zeta_2$ 
$$
\oint_{\Gamma_R} f(z) ~dz = \oint_{\gamma_0} f(z) ~dz + \oint_{\gamma_1} f(z) ~dz + \oint_{\gamma_2} f(z) ~dz
$$
where each $\gamma_i$ is a small circle around $\zeta_i$. Now we note that if $\gamma_i$ is small enough, the only singularity it encloses is $\zeta_i$ which is just a pole of order 1 (because each root has multiplicity one), and so the function $(z-\zeta_i)^1f(z)$ is holomorphic in this region and we can apply this theorem. (Note we don't have to compute any derivatives here exactly because the poles are only first order. )

For any fixed $\zeta_k$, we use the 'trick' of writing
$$
\frac{1}{z^6 + 1} = \frac{1}{\prod_{i=1}^6 (z - \zeta_i)} = \frac{ 1 / \prod_{i\neq k} (z-\zeta_i)}{(z-\zeta_k)^1}
$$
which allows us to directly write
$$
\oint_{\gamma_k} f(z)~dz = \prod_{i\neq k}\frac{1}{ (\zeta_k - \zeta_i)}
$$
These computations are again slightly onerous but straightforward, and we obtain
$$
\begin{align*}
\oint_{\gamma_0} f(z) ~dz = \frac{1}{(\zeta_0-\zeta_1)} \frac{1}{(\zeta_0-\zeta_2)} \frac{1}{(\zeta_0-\zeta_3)} \frac{1}{(\zeta_0-\zeta_4)} \frac{1}{(\zeta_0-\zeta_5)} = \frac 1 6 \zeta_3 \\
\oint_{\gamma_1} f(z) ~dz = \frac{1}{(\zeta_1-\zeta_0)} \frac{1}{(\zeta_1-\zeta_2)} \frac{1}{(\zeta_1-\zeta_3)} \frac{1}{(\zeta_1-\zeta_4)} \frac{1}{(\zeta_1-\zeta_5)} = \frac 1 6 \zeta_4 \\
\oint_{\gamma_2} f(z) ~dz = \frac{1}{(\zeta_2-\zeta_0} \frac{1}{(\zeta_2-\zeta_1)} \frac{1}{(\zeta_2-\zeta_3)} \frac{1}{(\zeta_2-\zeta_4)} \frac{1}{(\zeta_2-\zeta_5)} = \frac 1 6 \zeta_5 \\
\end{align*}
$$
and thus
$$
\oint_{\Gamma_R} f(z) ~dz  = \frac{1}{6}(\zeta_3 + \zeta_4 + \zeta_5)
$$
which is precisely what we obtained by the previous two methods.

## The Takeaway

In all cases, we end up reducing the hard (or sometimes impossible) problem of computing a real integral using calculus in $\RR$ to what are essentially algebra problems in $\CC$, primarily the manipulation of polynomials and roots of unity. Although these techniques may seem quite involved at first glance, a bit of practice makes them fast enough to rival the standard set of single variable real calculus techniques.

# Example 2: Integrals Containing Trig Functions

This technique is useful whenever one is trying to integrate functions of the form
$$
\int_a^b f(\cos(\omega_1 \theta), \sin(\omega_2 \theta)) ~d\theta
$$
where $a,b, \omega_1, \omega_2$ are constants. Example integrands might be things like $1+\sin(2\theta), \sin\theta + 4\cos(\pi \theta),$ or $\frac{13+\sin\theta}{5 + \cos^2\theta }$. While these may be amenable to the usual trigonometric substitutions from real calculus, but an alternative technique is to use a substitution to transform the integrands into polynomials in a complex variable $z$, and the real integral into a contour integral. From there, one can simply apply residue theorem or use any of the above techniques to compute it.





[^partial_fraction]: It is also worth noting that one could take $\frac{1}{x^6+1}$, factor the denominator, and break this into a product of 6 fractions. One can then proceed to expand each in a power series, and begin collecting terms to find the desired coefficients.
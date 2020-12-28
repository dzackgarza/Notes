# Lecture 10

:::{.remark}
What we've been calling a *torsor* (a sheaf with a group action plus conditions) is called by some sources a **pseudotorsor** (e.g. the Stacks Project), and what we've been calling a *locally trivial torsor* is referred to as a *torsor* instead.
:::

Recall that statement of \cref{thm:hilb90}; we'll now continue with the proof:

:::{.proof title="of Hilbert 90"}

:::{.observation}
Let $\tau = X_{\zar}, X_\et, X_{\fppf}$, then the data of a $\GL_n\dash$torsor split by a $\tau\dash$cover $U\to X$ is the same as descent data for a vector bundle relative to $U_{/X}$.
:::

\vspace{2em}

This descent data comes from the following: 
\begin{tikzcd}
U\cross_X U
 \ar[d, shift right=0.75ex, "\pi_1"'] 
 \ar[d, shift left=0.75ex, "\pi_2"]
\\
U
  \ar[d]
\\
X 
\end{tikzcd}

That $U$ trivializes our torsor means that $\pi^* T = \pi^* G$ as a $G\dash$torsor, where $G$ acts on itself by left-multiplication.
We have two different ways of pulling back, and identifications with $G$ in both, yielding
\begin{tikzcd}
\pi_1^* \pi^* T 
  \ar[d]
  \ar[r, "\sim"]
& 
\pi_2^* \pi^* T 
  \ar[d]
\\
\pi_1^* \pi^* G
  \ar[r, "\sim"]
&  
\pi_2^* \pi^* G
\end{tikzcd}
Both of the bottom objects are isomorphic to $\ro{G}{U\cross U}$.

:::{.claim}
The top horizontal map is descent data for $T$, and the bottom horizontal map is an automorphism of a $G\dash$torsor and thus is a section to $G$.
I.e. a section to $\GL_n$ is an invertible matrix on double intersections (satisfying the cocycle condition) and a cover, which is precisely descent data for a vector bundle.
:::

Using fppf descent, proved previously, we know that descent data for vector bundles is effective.
So if we have a locally trivial $\GL_n\dash$torsor on the fppf site, it's also trivial on the other two sites, yieldings the desired maps back and forth.
Thus $H^1(X_\et, \GL_n)$ is in bijection with $n\dash$dimensional vector bundles on $X$.
:::

:::{.exercise title="?"}
See if Hilbert 90 is true for groups other than $\GL_n$.
:::

## Representability and Local Triviality

:::{.question}
Suppose $G$ is an affine flat $X\dash$group scheme.
Are all $G\dash$torsors representable by a $X\dash$scheme?
:::

:::{.answer}
Yes, by the same proof as last time, try working out the details.
Idea: you can trivialize a $G\dash$torsor flat locally and use fppf descent.
:::

:::{.question}
Given a $G\dash$torsor $T$ that is fppf locally trivial, is it étale locally trivial?
:::

:::{.answer}
In general no, but yes if $G$ is smooth.
:::

:::{.proof title="Sketch"}
You can take an fppf local trivialization, trivialize by $p$ itself, then slice to get an étale trivialization.
Given a torsor $T\to X$, we can base change it to itself:
\begin{tikzcd}
T\cross_X T 
  \ar[d]
  \ar[r]
& T 
  \ar[d]
\\
T 
  \ar[r, "f"]
  \ar[u, bend right, "\exists"']
& X 
\end{tikzcd}
The torsor $T\cross_X T\to T$ is trivial since there exists the indicated section given by the diagonal map.
Another way to see this is that $T\cross T\cong T\cross G$ by the $G\dash$action map, which is equivalent to triviality here.
Here $f$ is smooth map since $G$ itself was smooth and the fibers of $T$ are isomorphic to the fibers of $G$.
We can thus find some $U$ such that
\begin{tikzcd}
&
T\cross_X T 
  \ar[d]
  \ar[r]
& T 
  \ar[d]
\\
&
T 
  \ar[r, "f"]
  \ar[u, bend right, "\exists"']
& X 
\\
U 
  \ar[ur, hook, "\text{closed}"]
  \ar[urr, bend right, "\exists \et"']
& &
\end{tikzcd}
Here "slicing" means finding such a $U$, and this can be done using the structure theorem for smooth morphisms.
:::

:::{.example title="non-smooth group schemes"}
\envlist

- $\alpha_p$, the kernel of Frobenius on $\AA^1$ or $\GG_a$,
- $\mu_p$ in characteristic $p$, representing $p$th roots of unity, the kernel of Frobenius on $\GG_m$,
- The kernel of Frobenius on any positive dimensional affine group scheme.
- $\mu_p \cross \GL_n$, etc.
:::

### What Hilbert 90 Means

:::{.example title="?"}
Let $X = \spec k, n=1$, so we're looking at $H^\wait(\spec k, \GG_m)$.
\[  
H^1 \qty{ \qty{ \spec k}_\zar, \GG_m} 
&= 0 \\
&= 
H^1 \qty{ \qty{ \spec k}_\et, \GG_m}  \\
&=
H^1(\Gal(k^s / k), \bar k \units)
.\]
The first comes from the fact that we're looking at line bundles of spec of a field, i.e. a point, which are all trivial.
The last line comes from our previous discussion of the isomorphism between étale cohomology of fields and Galois cohomology.
Etymology: the fact that this cohomology is zero is usually what's called **Hilbert 90**.[^why_90]

[^why_90]: 
This is called "90" since Hilbert numbered his theorems in at least one of his books.

:::


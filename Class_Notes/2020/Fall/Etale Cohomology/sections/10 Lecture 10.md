# Lecture 10

:::{.remark}
What we've been calling a *torsor* (a sheaf with a group action plus conditions) is called by some sources a **pseudotorsor** (e.g. the Stacks Project), and what we've been calling a *locally trivial torsor* is referred to as a *torsor* instead.
:::

Recall that statement of \cref{thm:hilb90}.

:::{.proof title="of Hilbert 90"}
Let $\tau = X_{\zar}, X_\et, X_{\fppf}$, then the data of a $\GL_n\dash$torsor split by a $\tau\dash$cover $U\to X$ is the same as descent data for a vector bundle relative to $U_{/X}$.
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
:::
:::

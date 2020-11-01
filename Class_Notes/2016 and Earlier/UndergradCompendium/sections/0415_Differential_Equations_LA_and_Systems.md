## Systems of Differential Equations 

:::{.definition title="Wronksian"}
For a collection of $n$ functions $f_i: \RR^n \to \RR$, define the $n\times 1$ column vector 
\[
W(f_i)(\vector p) \da 
\begin{bmatrix}
f_i(\vector p) \\
f_i'(\vector p) \\
f_i''(\vector p) \\
\vdots \\
f^{(n-1)}(\vector p)
\end{bmatrix}
.\]

The **Wronskian** of this collection is defined as
\[  
W(f_1, \cdots, f_n)(\vector p) \da
\det 
\begin{bmatrix}
\vertbar & \vertbar & & \vertbar \\
W(f_1)(\vector p) & W(f_2)(\vector p) & \cdots & W(f_n)(\vector p)\\
\vertbar & \vertbar & & \vertbar \\
\end{bmatrix}
.\]
:::

:::{.proposition title="Wronskian detects linear dependence of functions"}
A set of functions $\theset{f_i}$ is linearly independent on $I \iff \exists x_0 \in I: W(x_0) \neq 0$.
:::

:::{.warning}
$W \equiv 0$ on $I$ does *not* imply that $\theset{f_i}$ is linearly dependent!
Counterexample: $\theset{x, x+x^2, 2x-x^2}$ where $W \equiv 0$ but $x+x^2 = 3(x) + (2x-x^2)$ is a linear combination of the other two functions.
:::

\todo[inline]{Sufficient condition: each $f_i$ is the solution to a linear homogeneous ODE $L(y) = 0$.}


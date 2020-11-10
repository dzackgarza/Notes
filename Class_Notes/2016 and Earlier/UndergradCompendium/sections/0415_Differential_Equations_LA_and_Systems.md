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


### Linear Equations of Order $n$

The standard form of such equations is
\begin{align*}
	y^{(n)} + a_1y^{(n-1)} + a_2y^{(n-2)} + \cdots +a_ny'' + a_{n-1}y' + y = F(x).
\end{align*}

All solutions will be the sum of the solution to the associated homogeneous equation and a single particular solution.

In the homogeneous case, examine the discriminant of the characteristic polynomial. Three cases arise:
\begin{enumerate}
	\item $D>0 \Rightarrow$ 2 Real solutions, $c_1e^{r_1x} + c_2e^{r_2x}$
	\item $D=0 \Rightarrow$ 1 Real, 1 Complex, $(c_1 +c_2x)e^{r_1x}$
	\item $D<0 \Rightarrow$ 2 Complex, $e^{ax}(c_1\cos bx + c_2\sin bx)$
\end{enumerate}
That is, every real root contributes a term of $ce^{rx}$, while a multiplicity of $m$ multiplies the solution by a polynomial in $x$ of degree $m-1$.

Every pair of complex roots contributes a term $ce^r(a\cos \omega x + b\sin \omega x)$, where $r$ is the real part of the roots and $\omega$ is the complex part.

In the nonhomogeneous case, assume a solution in the most general form of $F(x)$, and substitute it into the equation to solve for constant terms. For example,
\begin{enumerate}
	\item $F(x) = P(x^n) \Rightarrow y_p = a+bx+cx^2+\cdots+(n+1)x^n$
	\item $F(x) = e^x \Rightarrow y_p = Ae^x$
	\item $F(x) = A\cos (\omega x) \Rightarrow y_p = a\cos(\omega x) + b\sin(\omega x)$
\end{enumerate}

\subsection{Annihilators}
Use to reduce a nonhomogeneous equation to a homogeneous one as a polynomial in the operator $D$.
\begin{enumerate}
	\item $(D-a) \Rightarrow e^{ax}$
	\item $(D-a)^{k+1} \Rightarrow x^k e^{ax}, x^{k-1}e^{ax}, \cdots, e^{ax}$
	\item $D^{k+1} \Rightarrow x^k, x^{k-1}, \cdots,C$
	\item $D^2-2aD+a^2+b^2 \Rightarrow e^{ax}\cos(bx), e^{ax}\sin(bx)$
	\item $(D^2-2aD+a^2+b^2)^{k+1} \Rightarrow x^k e^{ax}\cos(bx), x^{k-1} e^{ax}\cos(bx), x^k e^{ax}\sin(bx), x^{k-1}e^{ax}\sin(bx),\cdots$
\end{enumerate}

\subsection{Complex Solutions}
$F(x)$ of the form $e^{ax}sin(kx)$ can be rewritten as $e^{(a+ki)x}$

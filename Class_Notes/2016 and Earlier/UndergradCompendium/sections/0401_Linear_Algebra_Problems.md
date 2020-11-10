## Example Problems

:::{.problem title="?"}
Determine a basis for
\[
S = \left\{a_0 + a_1 x + a_2 x^2\mid a_0,a_1,a_2 \in \mathbb{R} \land a_0 - a_1 -2a_2 =0\right\}.
\]
:::

\hrulefill

:::{.solution}
Let $a_2=t, a_1=s, a_0=s+2t$, then
\[
S 	  &= \left\{ (s+2t) + (sx+tx^2)\mid s,t\in\mathbb{R} \right\} \\
&= \left\{ (s+sx) + (2t+tx^2)\mid s,t\in\mathbb{R} \right\} \\
&= \left\{ s(1+x) + t(2+x^2)\mid s,t\in\mathbb{R} \right\} \\
&= \text{span}\left\{(1+x),(2+x^2)\right\}
\]

and a basis for $S$ is
\[
\left\{(1+x), (2+x^2)\right\}
\]

:::


:::{.problem title="?"}
\textbf{T/F}: If $V$ is an $n$-dimensional vector space, then every set $S$ with fewer than $n$ vectors can be extended to a basis for $V$.



:::

:::{.solution}
\textbf{False.} Only \textit{linearly independent} sets with fewer than $n$ vectors can be extended to form a basis for $V$.
:::

:::{.problem title="?"}
\textbf{T/F}: The set of all 3 x 3 \textit{upper triangular} matrices forms a three-dimensional subspace of $M_{3}(\mathbb{R})$.
:::

:::{.solution}
\textbf{False.} This set forms a 6-dimensional subspace. A basis for this space would require six elements.
:::


:::{.problem title="?"}
Given $A=$
\[\begin{bmatrix}
  1 	& 3 `	\\
  -2 	& -6
\end{bmatrix}\]
what is the dimension of the null space of $A$?
:::

:::{.solution}
The augmented matrix for the system $A\mathbf{x} = \mathbf{0}$ is
\[\begin{bmatrix}[cc|c]
1 & 3 & 0	\\
0 & 0 & 0
\end{bmatrix}\]
which has one free variable.

Writing one variable in terms of another results in $x_1 + 3x_2 = 0 \Rightarrow x_1 = 3x_2$.

Let $x_2 = r$ where $r \in R$, then $S = \left\{ x \in \mathbb{R}^2 : \mathbf{x} = r(3,1), r \in \mathbb{R}\right\} = \text{span}\left\{(3,1)\right\}$.

So, the set $B = \left\{(3,1)\right\}$ is a basis for the null space of $A$ and\\ \underline{the dimension of the null space is 1}.


:::

:::{.problem title="?"}
Let $S$ be the subspace of $\mathbb{R}^3$ that consists of all solutions to the equation $x-3y+z = 0$. Determine a basis for $S$, and find dim[$S$].
:::

:::{.solution}
The first goal is to find a way to express the set of 3-tuples that satisfy this equation.

Let $y=r$ and $z=s$, then $x=r-s$. Then vectors $\mathbf{v}$ that satisfy the equation are all of the form
\[
\mathbf{v} = (3r-s, r, s) = (3r,r,0)+(-s,0,s) = r(3,1,0) + s(-1,0,1).
\]
(Note - the goal here is to separate the dependent variables into different vectors so they can be written as a linear combination of something.)

The set $S$ that satisfies this equation is then
\[
S &= \left\{ \mathbf{v} \in \mathbb{R}^3 : \mathbf{v} =r(3,1,0) + s(-1,0,1) \land r,s\in\mathbb{R} \right\} \\
&= \text{span}\left\{ (3,1,0), (-1,0,1)\right\}
\]

All that remains is to check that the vectors in this span are linearly independent. This can be done by showing that \textbf{if}
\[
a(3,1,0) + b(-1,0,1) = (0,0,0)
\]
\textbf{then} $a=b=0$.

Since the two vectors are linearly independent and span the solution set $S$, they form a basis for $S$ of dimension 2.


:::


:::{.problem title="?"}
Determine a basis for the subspace of $M_2(\mathbb{R})$ spanned by
\[\begin{bmatrix}
-1 & 3 \\
-1 & 2
\end{bmatrix}\]

\[\begin{bmatrix}
0 & 0 \\
0 & 0
\end{bmatrix}\]

\[\begin{bmatrix}
-1 & 4 \\
1 & 1
\end{bmatrix}\]

\[\begin{bmatrix}
5 & 6 \\
-5 & 1
\end{bmatrix}\].\
:::

:::{.solution}
Note that because the set contains the zero matrix, it is linearly dependent. So only consider the other three, as they span the same subspace as the original set.

First, determine if $\left\{ A_1, A_2, A_3\right\}$ is linearly independent. Start with the equation
\[
c_1A_1 + c_2A_2 + c_3A_3 = 0_2
\]

which gives
\[
c_1 - 	c_2 + 	5c_3 	&= 0 \\
3c_1 + 	4c_2 -	6c_3 	&= 0 \\
-c_1 +	c_2 - 	5c_3 	&= 0 \\
2c_1 + 	c_2 + 	c_3 	&= 0
\]

which has the solution $(-2r,3r,r)$. So the set is linearly dependent by the relation
\[
-2A_1 + 3A_2 + A_3 = 0 \text{ or }\\
A_3 = 2A_1 - 3A_2
\]

So $\left\{A_1, A_2\right\}$ spans the same subspace as the original set. It is also linearly independent, and therefore forms a basis for the original subspace.

:::


:::{.problem title="?"}
Let $A, B, C \in M_2 (\mathbb{R})$. Define $\langle A,B\rangle = a_{11}b_{11}+2a_{12}b{12}+3a_{21}b_{21}$. Does this define an inner product on $M_2 (\mathbb{R})$?
::: 

:::{.problem title="?"}
Instead, let $\langle A,B\rangle = a_{11} + b_{22}$. Does this define an inner product on $M_2(\mathbb{R})$?
::: 

:::{.problem title="?"}
Let $p=a_0 + a_1 x + a_2 x^2$ and $q=b_0 + b_1 x + b_2 x^2$.
Define $\langle p,q\rangle = \sum_{i=0}^{2}(i+1)a_i b_i$. Does this define an inner product on $P_2$?
::: 




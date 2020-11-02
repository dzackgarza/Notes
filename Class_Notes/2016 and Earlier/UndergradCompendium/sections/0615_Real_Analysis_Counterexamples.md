## Counterexamples

:::{.proposition title="?"}
There are functions differentiable only at a single point.
Example:
\[  
f(x) = 
\begin{cases}
x^2 & x\in QQ\\
-x^2 & x\in \RR\sm\QQ
\end{cases}
.\]

This is discontinuous everywhere except for $x=0$, and you can compute
\[  
\lim_{h\to 0} {f(x+h) - f(x) \over h}\evalfrom_{x=0} = 
\lim_{h\to 0}
\begin{cases}
h & x\in \QQ \\
-h & x\in \RR\sm\QQ 
\end{cases}
=0
.\]
:::

:::{.proposition title="?"}
The product of two non-differentiable functions can be differentiable: take $f(x) = g(x) = \abs{x}$ which are not differentiable at $x=0$, then $fg(x) = \abs{x}^2$ is differentiable at $x=0$.
:::

:::{.proposition title="?"}
A continuous function that is zero on a dense set $A\subset X$ is identically zero.

:::{.proof title="?"}
Since $A$ is dense, for any $x\in X\sm A$ take a sequence $\ts{x_n}$ in $A$ converging to $x$.
Then $0 = f(x_n) \to f(x)$ implies $f(x) = 0$.
:::
:::

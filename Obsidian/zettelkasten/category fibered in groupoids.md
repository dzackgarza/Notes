> Reference: <http://www.maths.qmul.ac.uk/~noohi/papers/quick.pdf>

- Fix $\cat{C}$, then the data $F: \cat{X} \to \cat{C}$ is a **category fibered in groupoids** if 
	- Arrows lift: for every morphism $f\in \cat{C}(C_1, C_2)$ with $F(X) = C_2$ there is a lift $\tilde f$,

\begin{tikzcd}
	{\cat{X}} && {\exists Y} && X \\
	\\
	{\cat{C}} && {a} && {b}
	\arrow["g", from=3-3, to=3-5]
	\arrow["F"{description}, from=1-5, to=3-5]
	\arrow["G", dashed, from=1-3, to=1-5]
	\arrow["F"{description}, dashed, from=1-3, to=3-3]
	\arrow["F"', from=1-1, to=3-1]
\end{tikzcd}

  > [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwyLCJcXGNhdHtDfSJdLFsyLDIsIkNfMSJdLFs0LDIsIkNfMiJdLFswLDAsIlxcY2F0e1h9Il0sWzQsMCwiWCJdLFsyLDAsIlxcZXhpc3RzIFkiXSxbMSwyLCJnIl0sWzQsMiwiRiIsMV0sWzUsNCwiRyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDEsIkYiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMywwLCJGIiwyXV0=)

  - Triangles lift: 
\begin{tikzcd}
	{\cat{X}} && A && B \\
	\\
	&&& C \\
	{\cat{C}} && a && b \\
	\\
	&&& c
	\arrow["{g_1}"{description}, from=4-3, to=6-4]
	\arrow["{g_2}"{description}, from=4-5, to=6-4]
	\arrow["{g_3}"{description, pos=0.8}, from=4-3, to=4-5]
	\arrow["F"{description}, from=3-4, to=6-4]
	\arrow["{G_1}"{description}, from=1-3, to=3-4]
	\arrow["{G_2}"{description}, from=1-5, to=3-4]
	\arrow["F"{description}, from=1-3, to=4-3]
	\arrow["F"{description}, from=1-5, to=4-5]
	\arrow["{\exists G_3}"{description}, dashed, from=1-3, to=1-5]
	\arrow["F"', from=1-1, to=4-1]
\end{tikzcd}

> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMyw1LCJjIl0sWzIsMywiYSJdLFs0LDMsImIiXSxbMCwzLCJcXGNhdHtDfSJdLFszLDIsIkMiXSxbMiwwLCJBIl0sWzQsMCwiQiJdLFswLDAsIlxcY2F0e1h9Il0sWzEsMCwiZ18xIiwxXSxbMiwwLCJnXzIiLDFdLFsxLDIsImdfMyIsMSx7ImxhYmVsX3Bvc2l0aW9uIjo4MH1dLFs0LDAsIkYiLDFdLFs1LDQsIkdfMSIsMV0sWzYsNCwiR18yIiwxXSxbNSwxLCJGIiwxXSxbNiwyLCJGIiwxXSxbNSw2LCJcXGV4aXN0cyBHXzMiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNywzLCJGIiwyXV0=)


For a fixed object $C\in \cat{C}$, define the **fiber of $\cat{X}$** or the **$\cat{C}\dash$points of $\cat{X}$** as $\cat{X}(C) \:= F\inv(C) \leq \cat{X}$ to be the groupoid of all objects $X\in \cat{X}$ such that $F(X) = C$, where morphisms of fibers are morphisms in the original category $\phi\in \cat{X}(X, Y)$ where, noting that $F(X) = F(Y) = C$, we require $F(\phi) = \id_C$.

- View objects $X\in \cat{X}(C)$ as a family parameterized by $C$, or equivalently as a ${C}\dash$valued point of $\cat{X}$, i.e. a map $C\to \cat{X}$.

- Categories fibered over $\cat{C}$ in sets are equivalent to set-valued presheaves over $\cat{C}$.


- There is a 2-category of categories fibered in groupoids.

  - 1-morphisms $F_i$ between objects are functors $F_i$ over $\cat{C}$, and 2-morphisms are natural transformations $\eta: F_1 \to F_2$ where $\eta \circ \pi_{\cat Y}$ is the identity transformation $\id_{\pi_{\cat X}}: \pi_{\cat X} \to \pi_{\cat{X}}$:

\begin{tikzcd}
	& {} \\
	{\cat{X}} && {\cat{Y}} \\
	\\
	\\
	& {\cat{C}}
	\arrow["{\pi_{\cat X}}"', from=2-1, to=5-2]
	\arrow["{\pi_{\cat Y}}", from=2-3, to=5-2]
	\arrow[""{name=0, anchor=center, inner sep=0}, "{F_1}"{description}, curve={height=-30pt}, from=2-1, to=2-3]
	\arrow[""{name=1, anchor=center, inner sep=0}, "{F_2}"{description}, curve={height=30pt}, from=2-1, to=2-3]
	\arrow["\eta", shorten <=8pt, shorten >=8pt, Rightarrow, from=0, to=1]
\end{tikzcd}

> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwxLCJcXGNhdHtYfSJdLFsyLDEsIlxcY2F0e1l9Il0sWzEsNCwiXFxjYXR7Q30iXSxbMSwwXSxbMCwyLCJcXHBpX3tcXGNhdCBYfSIsMl0sWzEsMiwiXFxwaV97XFxjYXQgWX0iXSxbMCwxLCJGXzEiLDEseyJjdXJ2ZSI6LTV9XSxbMCwxLCJGXzIiLDEseyJjdXJ2ZSI6NX1dLFs2LDcsIlxcZXRhIiwwLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfX1dXQ==)



Variant of Yoneda lemma: for $\mathfrak{Fib}_2$ the category of categories fibered in groupoids, 
![](attachments/Pasted%20image%2020210511204947.png)
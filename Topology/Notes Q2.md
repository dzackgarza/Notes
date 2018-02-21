[toc]

# Mayer Vietoris

Given $A,B \subset X$ such that $A^\circ \cup B^\circ = X$, there is a long exact sequence in homology:

```latex {cmd:true, hide:false, run_on_save:true}
\documentclass[crop, tikz]{standalone}
\usepackage{tikz}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usetikzlibrary{matrix, cd}
\begin{document}

\begin{tikzcd}
 &  &  &  & \cdots \arrow[lllldd, out=0, in=-180, "\delta_3"'] \\
 &  &  &  &  \\
H_2(A\cap B) \arrow[rr] \arrow[rr, "{(i^*, -j^*)_2}"] &  & H_2 A \oplus H_2 B \arrow[rr, "(l^* - r^*)_2"] &  & H_2 (A\cup B) \arrow[lllldd, "\delta_2"', out=0, in=-180] \\
 &  &  &  &  \\
H_1(A\cap B) \arrow[rr, "{(i^*, -j^*)_1}"] &  & H_1 A \oplus H_1 B \arrow[rr, "(l^*-r^*)_1"] &  & H_1 (A\cup B) \arrow[lllldd, "\delta_1"', out=0, in=-180] \\
 &  &  &  &  \\
H_0 (A\cap B) \arrow[rr, "{(i^*, -j^*)_0}"] &  & H_0 A \oplus H_0 B \arrow[rr, "(l^* - r^*)_0"] &  & H_0 (A\cup B) \arrow[lllldd, "\delta_0"', out=0, in=-180] \\
 &  &  &  &  \\
0 &  &  &  &
\end{tikzcd}

\end{document}
```

Where

$i: A\cap B \hookrightarrow A$ induces $i^*: H_*(A\cap B) \to H_*(A)$

$j: A\cap B \hookrightarrow B$ induces $j^*: H_*(A\cap B) \to H_*(B)$

$l: A \hookrightarrow A\cup B$ induces $l^*: H_*(A) \to H_*(X)$

$r: B \hookrightarrow A\cup B$ induces $r^*: H_*(B) \to H_*(X)$

The connecting homomorphisms $\delta_n :H_n(X) \to H_{n-1}(X)$ are defined by taking a class $[\alpha] \in H_n(X)$, writing it as an $n$-cycle $z$, then decomposing $z = \sum c_i$ where each $c_i$ is an $x+y$ chain. Then $\del(c_i) = \del(x+y) = 0$, since the boundary of a cycle is zero, so $\del(x) = -\del(y)$. So then just define $\delta([\alpha]) = [\del x] = [-\del y]$.

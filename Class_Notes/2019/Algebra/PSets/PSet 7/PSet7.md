---
title: Homework 7
---


# Problem 1

## Part 1

In order for $IS$ to be a submodule of $A$, we need to show the following implication:
$$
x\in IS,~a\in A \implies xa, ax \in IS.
$$

Suppose $x\in IS$.
Then by definition, $x = \sum_{i=1}^n r_i a_i$ for some $r_i \in R, a_i\in A$.

But then
\[
\begin{align*}
xa &= \left( \sum_{i=1}^n r_i a_i \right) a \\
&= \sum_{i=1}^n r_i a_i a \\
&\coloneqq \sum_{i=1}^n r_i a_i',
\end{align*}
\]

where $a_i' \coloneqq a_i a$ for each $i$, which is still an element of $A$ since $A$ itself is a module and thus closed under multiplication.

But this expresses $xa$ as an element of $IS$. Similarly, we have
\[
\begin{align*}
ax &= a \left( \sum_{i=1}^n r_i a_i \right)\\
&= \sum_{i=1}^n a r_i a_i a \\
&\coloneqq \sum_{i=1}^n r_i a a_i, \\
&\coloneqq \sum_{i=1}^n r_i a_i',
\end{align*}
\]

and so $ax \in IS$ as well.

## Part 2

Letting $R/I \actson A/IA$ be the action given by $r+I \actson + IA \coloneqq ra + IA$, we need to show the following:

- $r.(x + y) = r.x + r.y$,
- $(r + r').x = r.x + r'.x$,
- $(rs).x = r.(s.x)$, and
- $1.x = x$.

Letting $\oplus$ denote the addition defined on cosets, we have
\[
\begin{align*}
r \actson (x + IA \oplus y + IA) 
&\coloneqq r \actson x + y + IA \\
&\coloneqq r(x+y) + IA \\
&= rx + ry + IA \\
&\coloneqq rx + IA \oplus ry + IA \\
&\coloneqq (r \actson x + IA) \oplus (r\actson y + IA)
.\end{align*}
\]

\[
\begin{align*}
(r + s) \actson x + IA 
&\coloneqq (r+s)x + IA \\
&\coloneqq rx + sx + IA \\
&\coloneqq rx + IA \oplus sx + IA \\
&\coloneqq (rs \actson IA) \oplus (sx \actson IA)
.\end{align*}
\]

\[
\begin{align*}
(rs) \actson x + IA &\coloneqq rsx + IA \\
&= r(sx) + IA \\
&\coloneqq r \actson(sx + IA) \\
&= r \actson (s \actson x + IA)
.\end{align*}
\]


\[
\begin{align*}
1 \actson x + IA &\coloneqq 1x + IA = x + IA
.\end{align*}
\]

# Problem 2

## Part 1
We want to show that every simple $R\dash$module $M$ is cyclic, i.e. if the only ideals of $M$ are $(0)$ and $M$ itself, that $M = \generators{m}$ for some element $m\in M$.

Towards a contradiction, let $M$ be a simple $R\dash$module and suppose $M$ is not cyclic, so $M\neq \generators{m}$ for any $m\in M$. 
But then let $a\in M$ be an arbitrary nontrivial element; then $(a)$ is a non-empty ideal (since it contains $a$), so $(a) \neq 0$. Since $M$ is simple, we must have $(a) = M$, a contradiction.

## Part 2
Let $\phi: A \to A$ be a module endomorphism on a simple module $A$.
Then $\im \phi \coloneqq \phi(A)$ is a submodule of $A$. 
Since $A$ is simple, we have either $\im \phi = 0$, in which case $\phi$ is the zero map, or $\im \phi = A$, so $\phi$ is surjective.
In this case, we can also consider $\ker \phi$, which is a submodule of $A$. 
Since $A$ is simple, we can again only have $\ker \phi = A$, which can not happen if $\phi$ is not the zero map, or $\ker \phi = 0$, in which case $\phi$ is both a surjective and an injective map and thus an isomorphism of modules.

# Problem 3

## Part 1

We want to show that if $A, B$ are $R\dash$modules then $X = (\hom_{R\dash\text{mod}}(A, B), +$ is an abelian group.
Let $f, g, h \in X$, we then need to show the following:

a. Closure: $f + g \in X$
b. Associativity: $f + (g + h) = (f + g) + h$
c. Identity: $\id \in X$
d. Inverses: $f\inv \in X$
e. Commutativity: $f + g = g + f$

Closure: 
This follows from the definition, because $(f + g) \actson x \coloneqq f(x) + g(x)$ pointwise, which is well-defined homomorphism $A \to B$.

Associativity:
We have 
\[
\begin{align*}
f + (g + h) \actson x &\coloneqq f(x) + (g + h)(x) \\
&\coloneqq f(x) + (g(x) + h(x)) \\
&= (f(x) + g(x)) + h(x) \\
&= (f+g) + h \actson x
.\end{align*}
\]

Identity: 
We can define $\vector 0: A \to B$ by $\vector 0(x) = 0 \in B$. 
Then 
$$(f + \vector 0)\actson x = f(x) + 0 = f(x) = 0 + f(x) = (\vector 0 + f) \actson x.$$

Inverses:
Given $f\in X$, we can define $-f: A \to B$ as $-f(x) = -x$.
Then
\[
\begin{align*}
(f + -f) \actson x = f(x) + -f(x) &= f(x) - f(x) = x - x = 0 = \vector 0 \actson x \\
(-f + f) \actson x = -f(x) + f(x) &= -f(x) + f(x) = -x + x = 0 = \vector 0 \actson x
.\end{align*}
\]

Commutativity:
Since $B$ is a module, by definition $(B, +)$ is an abelian group. Thus

\[
\begin{align*}
(f + g) \actson x &= f(x) + g(x) = g(x) + f(x) = (g+f)\actson x
.\end{align*}
\]
## Part 2

By part 1, $(\hom_{R\dash\text{mod}}(A, A), +)$ is an abelian group, We just need to check that $(\hom_R(A, A), \circ)$ is a monoid, i.e.:

- Associativity: $f \circ (g\circ h) = (f\circ g) \circ h$
- Identity: $\id \circ f = f$
- Closure: $f\circ g \in \hom_{R\dash\text{mod}}(A, A)$


Associativity: 
We have 
\[
\begin{align*}
f\circ (g\circ h) \actson x &\coloneqq (f \circ (g \circ h))(x) \\
&= f((g\circ h)(x)) \\
&= f(g(h(x))) \\
&= (f\circ g)(h(x)) \\
&= ((f\circ g) \circ h)(x)\\
&\coloneqq (f \circ g) \circ h \actson x
.\end{align*}
\]

Identity: 
Take $\id_A: A \to A$ given by $\id_A(x) = x$, then
\[
\begin{align*}
f\circ \id_A \actson x = f(\id_A(x)) = f(x) = \id_A(f(x)) = \id_A \circ f \actson x
.\end{align*}
\]

Closure:
If $f: A\to A$ and $g: A\to A$ are homomorphisms, then $f\circ g: A \to A$ as a set map, and is an $R\dash$module homomorphism because
\[
\begin{align*}
f\circ g \actson (r+s)(x+y) &= f(g((r+s)(x+y)))\\
&= f((r+s)(g(x) + g(y))) \\
&= (r+s)(f(g(x)) + f(g(y))) \\
&= (f \actson (r+s)(x+y)) \circ (g \actson (r+s)(x+y))
.\end{align*}
\]
## Part 3

For arbitrary $x, y \in A$, we need to check the following:

a. $f\actson (x+y) = f\actson x + f \actson y$
b. $(f+g)\actson x = f \actson x + g \actson x$
c. $f\circ g \actson x = f \actson (g \actson x)$
d. $\id_a \actson x = x$


For (a):
\[
\begin{align*}
f \actson (x + y) &\coloneqq f(x + y) \\
&= f(x) + f(y)\quad\quad\text{since $f$ is a homomorphism} \\
&= f\actson x + f \actson y \\
.\end{align*}
\]

For (b):
\[
\begin{align*}
(f+g)\actson x &= (f+g)(x) \\
&= f(x) + g(x) \\
&= f \actson x + g \actson x
.\end{align*}
\]

For (c):
\[
\begin{align*}
f\circ g \actson x &= (f\circ g)(x)  \\
&= f(g(x)) \\
&= f \actson g(x) \\
&= f \actson (g \actson x)
.\end{align*}
\]

For (d):
\[
\begin{align*}
\id_A \actson x &= \id_A(x) = x
.\end{align*}
\]

# Problem 4

**Injectivity**:
We have the following situation:

```{=latex}
\begin{center}
\begin{tikzcd}
a'                                              & a                                          & x                             & 0                                     \\
A_1 \arrow[dd, "\alpha_1", two heads] \arrow[r] & A_2 \arrow[dd, "\alpha_2", hook] \arrow[r] & A_3 \arrow[dd, "f"] \arrow[r] & A_4 \arrow[dd, "\alpha_4", two heads] \\
                                                &                                            &                               &                                       \\
B_1 \arrow[r]                                   & B_2 \arrow[r]                              & B_3 \arrow[r]                 & B_4                                   \\
0                                               & \alpha_2(a)                                & y = f(x) = 0                  & 0                                    
\end{tikzcd}
\end{center}
```

where we would like to show that $f$ is a monomorphism, i.e. that $\ker f = 0$. So let $x\in \ker f$, so $y \coloneqq f(x) = 0 \in B_3$. 

We will show that $x=0 \in A_3$:

- Since $y = 0 \in B_3$, applying $B_3 \to B_4$ yields $y \mapsto 0 \in B_4$ since these maps are homomorphisms and always map zero to zero.
- Pull back $0 \in B_4$ to $0 \in B_3$ along $\alpha_4$, which can be done since $\alpha_4$ is injective, giving $0 \in A_4$.
- Since this is $0$ in $A_4$, it is in the kernel of $A_3 \to A_4$, yielding some $x\in A_3$.
- By commutativity of the third square, $x\mapsto f(x)$ under $f: A_3 \to B_3$.
- Since $x\in \ker (A_3 \to A_4) = \im(A_2 \to A_3)$ by exactness, there is some $\alpha \in A_2$ such that $\alpha_2(a) = x \in A_3$.
- By injectivity of $\alpha_2$, $a$ maps to a unique element $\alpha_2(a) \in B_2$.
- By commutativity of the middle square, since $a \in A_2 \mapsto 0 \in B_3$, we must have $\alpha_2(a) \mapsto 0 f(x)$ under $B_2 \to B_3$.
- Then $\alpha_2(a) \in \ker(B_2 \to B_3) = \im (B_1 \to B_2)$, so it pulls back to some $b\in B_1$.
- By surjectivity of $\alpha_1$, $b$ pulls back to some $a' \in A_1$.
- By commutativity of square 1, $a' \mapsto a$ under $A_1 \to A_2$.
- So $a \mapsto x$ under $A_1 \to A_3$.
- But then $a \in \im(A_1 \to A_2) = \ker(A_2 \to A_3)$, so $a \mapsto 0$ under $A_1 \to A_3$.
- So $x=0$ as desired.

\newpage

**Surjectivity:**
We now have this situation:

```{=latex}
\begin{center}
\begin{tikzcd}
A_2 \arrow[dd, "\alpha_2", two heads] \arrow[r] & A_3 \arrow[dd, "f"] \arrow[r] & A_4 \arrow[dd, "\alpha_4", two heads] \arrow[r] & A_5 \arrow[dd, "\alpha_5", hook] \\
                                                &                               &                                                 &                                  \\
B_2 \arrow[r]                                   & B_3 \arrow[r]                 & B_4 \arrow[r]                                   & B_5                             
\end{tikzcd}
\end{center}
```

Let $y \in B_3$; we want to then show that there exists an $x\in A_3$ such that $f(x) = y$.

- Apply $B_3 \to B_4$ to $y$ to obtain $y_4 \in B_4$.
- By surjectivity of $\alpha_4$, this pulls back to some $a_4 \in A_4$.
- Also by exactness of $B_3 \to B_4 \to B_5$, $y_4$ pushes forward to $0 \in B_5$
- By injectivity of $\alpha_5$, this pulls back to $0\in A_5$.
- By commutativity of the right square, $y_4 \mapsto 0$ under $A_4 \to A_5$.
- Since $a_4 \in \ker(A_4 \to A_5)$, it pulls back to some $x\in A_3$ by exactness of $A_3 \to A_4 \to A_5$.
- Then $f(x) \in B_3$, and it remains to show that $f(x) = y$.
- By commutativity of the middle square, $f(x) \mapsto y_4$ under $B_3 \to B_4$.
- Since $a \mapsto y_4$ we as well, we have $z \coloneqq f(x) - y \in B_3$ maps to $0\in B_4$.
- Since $z\in \ker(B_3 \to B_4)$, by exactness it pulls back to some $b_2 \in B_2$.
- By surjectivity of $\alpha_2$, this pulls back to some $a_2 \in A_2$.
- By commutativity of the first square, $a_2 \mapsto z \in B_3$.
- $a_2 \mapsto a_3 \in A_3$, where $a_3$ may not equal $x$, but $f(a_3) = z \coloneqq f(a) - y$.
- Then $f(a_3) = f(x) - y \implies y = f(x) - f(a_3) = f(x - a_3)$ since $f$ is a homomorphism.
- This shows that $x-a_3 \mapsto y$ under $f$, which is the element we wanted to produce.

# Problem 5

## Part (a)

We want to show that if $(p) \normal R$ is a prime ideal then $R/(p)$ is a field, so we'll proceed by letting $x + (p) \in R/(p)$ be arbitrary where $x\not \in (p)$ and producing a multiplicative inverse.

Since $R$ is a principal ideal domain, prime ideals are maximal, so $(p)$ is maximal.
Then $x\in R \setminus (p)$, so define
$$
I \coloneqq \theset{p + rx \suchthat p\in (p), r\in R} \normal R,
$$

which is an ideal in $R$.

In particular, since $x\not\in (p)$, we have a strict containment $(p) < I$, but since $(p)$ was maximal this forces $I = R$.

Then $1 \in I$, so there exists some $p, r$ such that $p + rx = 1$, i.e. $rx - 1 \in (p)$.

But then

$$
r + (p) \cdot x + (p) = rx + (p) = 1 + (p),
$$

which says that $(x + (p))\inv = r + (p)$ in $R/(p)$.

## Part (b)

Images and kernels of module homomorphisms are always submodules, so define
\[
\begin{align*}
\phi: A \to A \\
x \mapsto px
.\end{align*}
\]

This is a module homomorphism, and
\[
\begin{align*}
\im \phi &\coloneqq \theset{px \suchthat x \in A} \coloneqq pA,\\
\ker \phi &\coloneqq \theset{a\in A \suchthat pA = 0} \coloneqq A[p]
.\end{align*}
\]

## Part (c)

Since $R/(p)$ is a field, we just need to show that $A/pA \actson R/(p)$ defines a module.

$r\cdot(x + y) = rx + ry$:
\[
\begin{align*}
r + (p) \actson x + pA \oplus y + pA &\coloneqq r + (p) \actson x + y + pA \\
&\coloneqq r(x+y) + pA \\
&= rx + ry + pA \\
&\coloneqq rx + pA \oplus ry + pA \\
&\coloneqq r\actson x + pA \oplus r \actson y + pA
.\end{align*}
\]

$(r + s)\cdot x = rx + sx$:
\[
\begin{align*}
r + (p) \oplus s + (p) \actson x + pA &\coloneqq
r + s + (p) \actson x + pA \\
&\coloneqq (r+s)x + pA \\
&= rx + sx + pA \\
&\coloneqq rx + pA \oplus sx + pA \\
&\coloneqq r+(p) \actson x + pA \oplus s+(p) \actson x + pA
.\end{align*}
\]

$rs\cdot x = r\cdot (s\cdot x)$:
\[
\begin{align*}
r+ (p) \cdot s + (p) \actson  x + pA &\coloneqq rs + (p) \actson x + pA \\
&= rsx + pA \\
&\coloneqq r + (p) \actson sx + pA \\
&\coloneqq r + (p) \actson s + (p) \actson x + pA
.\end{align*}
\]

$1\cdot x = x$:
\[
\begin{align*}
1_R + (p) \actson x + pA &= 1_R x + pA = x + pA
.\end{align*}
\]

## Part (d)
Similarly, since $R/(p)$ is a field, it suffices to show that $R/(p)\actson A[p]$ defines a module.

$r\cdot(x + y) = rx + ry$:
\[
\begin{align*}
r + (p) \actson (a + a') &\coloneqq r(a + a') \\
&= ra + ra' \\
&= r\actson a + r\actson a'
.\end{align*}
\]
$(r + s)\cdot x = rx + sx$:
\[
\begin{align*}
r + s + (p) \actson a &= (r+s)a \\
&= ra + sa \\
&= r\actson a + s\actson a
.\end{align*}
\]

$rs\cdot x = r\cdot (s\cdot x)$:
\[
\begin{align*}
rs + (p) \actson a &= rsa \\
&= r \actson sa \\
&= r \actson s \actson a
.\end{align*}
\]
$1\cdot x = x$:
\[
\begin{align*}
1_R + (p) \actson a &= 1a = a
.\end{align*}
\]

# Problem 6


Supposing that $\dim V = n$, let $\mathcal B \coloneqq \theset{\vector b_k \mid 1 \leq k \leq n}$ be a basis for $V$, and define
$$
\vector e_i \coloneqq [0, 0, \cdots, 1, \cdots, 0] \in V^{\oplus m}
$$

where the $1$ occurs in the $i$th position. The claim is that $\mathcal{B}^{m} \coloneqq \theset{\vector e_i \vector b_k \mid 1 \leq i \leq n,~~1\leq k \leq m}$ forms a basis for $V^{\oplus m}$.

Elements in $\mathcal{B}^{m}$ are of the form
\[
\begin{align*}
[\vector b_1, 0, 0, \cdots, 0]\\
[\vector b_2, 0, 0, \cdots, 0]\\
\cdots \\
[0, \vector b_1, 0, \cdots, 0]\\
[0, \vector b_2, 0, \cdots, 0]\\
\cdots
,\end{align*}
\]

and by construction, $\abs{\mathcal B} = mn = m\dim V$.

To see that this is a spanning set, let $\vector x \in V^{\oplus m}$, so $\vector x = [\vector v_1, \vector v_2, \cdots, \vector v_m]$ where each $\vector v_i \in V$.

Then each $\vector v_i \in \mathcal B$, so $\vector v_i = \sum_{k=1}^n \alpha_{k, i} \vector b_k$. But then
$$
\vector x = [\sum_{k=1}^n \alpha_{k, 1} \vector b_k, \sum_{k=1}^n \alpha_{k, 2} \vector b_k, \cdots, \sum_{k=1}^n \alpha_{k, m} \vector b_k] \coloneqq \sum_{i=1}^m \sum_{k=1}^n \alpha_{k, i} \vector b_k \vector e_i,
$$

which exhibits $\vector x \in \mathcal{B}^m$.

To see that it is linearly independent, supposing that $\vector x = \sum_i \sum_k \alpha_{k, i} \vector b_k \vector e_i = 0$, this says that $\vector x = [0, 0, \cdots, 0]$, which forces $\sum_k \alpha_{k, i} \vector b_k$ to be zero for each $i$.

But for a fixed $i$, since $\theset{\vector b_k}$ was a basis for $V$, this means that $\alpha_{k, i} = 0$ for all $k$. But then $\alpha_{k, i} = 0$ for all pairs $i, k$.

# Problem 7

Let $F_1, F_2$ be free, so they have bases $\mathcal B_1 = \theset{b_{1, k}}, \mathcal B_2 = \theset{b_{2, k}}$. 
Supposing that they have the invariant dimension property, we can assume that $\#\mathcal B_1 \coloneqq \rank F_1$ and similarly $\#\mathcal B_2 \coloneqq \rank F_2$.

The claim is that the set $\mathcal B = \theset{(v, 0) \mid v\in \mathcal{B}_1 } \union \theset{(0, w) \mid w \in \mathcal{B}_2}$ is a basis for $F_1 \oplus F_2$, where $\# \mathcal B = \# \mathcal B_1 + \# \mathcal B_2 = \rank F_1 + \rank F_2$.

So see that $\mathcal B$ spans $F_1 \oplus F_2$, let $x\in F_1 \oplus F_2 = (f_1, f_2)$ be arbitrary. 
Since $f_1 \in F_1$, we have $f_1 = \sum_i r_i b_{1, i}$.

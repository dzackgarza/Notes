---
title: Exercise
---


# Modules

Reminder of definitions:
For $M$ an abelian group and $R$ a ring,
an $R\dash$module structure on $M$ is a choice of a morphism 
\begin{align*}
(\cdot)\in \hom_{\text{set}}(R\cross M,  M) \text{ or } \Phi\in \hom_{\text{ring}}(R, M^M)
.\end{align*}

In the first instance, we think of $\cdot$ as a binary operation $(r, m) \mapsto r\cdot m$ and in the second case, a choice of morphism $r\mapsto \phi_r$.

For any group element $m\in M$, we define
\begin{align*}
\ann(m) \definedas \theset{r\in R \suchthat r\actson_f m = 0_m} \leq R
.\end{align*}

This is an ideal, because $R$ is an $R\dash$module over itself, so we can define a morphism of $R\dash$modules:
\begin{align*}
g_m: R &\to M \\
r &\mapsto r\actson_f m
.\end{align*}

Then clearly $\ann(m) = \ker g_m$, which is a $R\dash$submodule of $R$, which correspond precisely to ideals of $R$.

Proposition
: Let $R$ be a ring and $M$ a cyclic $R\dash$module.
  Then $M \cong R/\ann(M)$ as $R\dash$modules.


Proof
:   **Outline:**

    - Does the statement make sense categorically? I.e. are both sides actually $R\dash$modules?
    - Construct an element of $f \in \hom_{R\dash\text{mod}}(R, M)$
    - Show that $f$ is surjective and $\ker f = \ann(M)$, finish by 1st isomorphism theorem.

    Lemma
    : For any $I\normal R$, the quotient $R/I$ **does** in fact have an $R\dash$module structure.


    Suppose the Lemma holds.
    To see that this finishes the proof, let $M$ have an $R\dash$module structure $(\cdot)\in \hom_{\set}(R\cross M, M)$.

    Since $M$ is cyclic, we can write $M = Rm = \theset{r\cdot m \suchthat r\in R}$ for some group element $m\in M$. 

    > I.e. the $R\dash$orbit of $m$ is transitive.

    We then define the usual map:
    \begin{align*}
    g_m: R &\to M \\
    r &\mapsto r\cdot m
    .\end{align*}


    - It's clear that this is a morphism of $R\dash$modules: we have $(rx+_Ry)\cdot m = r(x\cdot m) +_M (y\cdot m)$ which just follows because $\cdot$ is a well-defined action.
    - $g_m$ is surjective: obvious from $M = Rm$.
    - $\ker g_m = \theset{r\in R \suchthat r\cdot m =0} \definedas \ann(m)$.

    So $R/\ann(m) = R/\ker g_m \cong M$.

*Proof of lemma:*
Note that $R$ is an $R\dash$module with action given by $f: R \to \endo(R)$ given by $f(r) = (x\to rx)$ using the ring multiplication.

Then we are supplied with a map $\Phi:R \to \endo(R)$ where, say, $m \mapsto (\phi_r: R\to R)$.
Let $\pi: R \to R/I$ be the canonical projection.
We want to build a map $\Psi: R \to \endo(R/I)$, so fix an $r$ and examine the obvious thing:

\begin{align*}
\tilde \phi_r: R &\to R/I \\
x &\mapsto \pi\circ\phi_r(x) = \phi_r(x) + I
.\end{align*}

Note the alternative, i.e. we could try defining this on the quotient directly: 
\begin{align*}
R/I &\to R/I \\
x + I &\mapsto \phi_r(x) + I
.\end{align*}

but we'd need to check if this was well-defined.

We can instead appeal to the universal property: any morphism $f:R\to S$ such that $I\subset \ker f$ factors uniquely through $R/I$.
So here we can just take $S = R/I$, and check that $I \subset \ker \tilde\phi_m$.

If $i\in I$, then $\tilde\phi_r(i) = \phi_r(i) + I$.
Here, we actually need to use the fact that $\phi_r(i) = ri$ and $I$ is an ideal, so $ri \in I$, and this $\phi_r(i) + I = (ri) + I = 0 + I$, which is indeed the zero element of $R/I$.

> Note: it's not clear that the analogous theorem "If $R$ is an $M\dash$module then $R/I$ is an $M\dash$module" goes through with this approach!


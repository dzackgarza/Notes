---
title: Problem Set 4
---

# The Fundamental Group

## 1

Proposition:
$\gamma_1 \homotopic \gamma_2 \iff \gamma_1, \gamma_2$ are conjugate in $\pi_1(X, x_0)$, i.e. $\exists [\alpha] \in \pi_1$ such that $[\gamma_1] = [\alpha][\gamma_2][\alpha]\inv$.

Proof:

$\implies$:
Clear, since $\gamma_1 \sim \gamma_2 \implies [\gamma_1] = [\gamma_2] \in \pi_1(X)$, so take $\alpha(t) = x_0$ the constant loop for all $t$.


$\impliedby$:
? Forgot how these arguments go.

![Image](figures/2020-02-04-20:23.png)\

$\qed$


Counterexample where homotopic loops are not equal in $\pi_1$, but just conjugate:

![Image](figures/2020-02-04-20:00.png)\

# Covering Spaces

## 1b


Homotopy lifting property:

\begin{tikzcd}
                                                                   &  & \tilde X \arrow[dd, "\pi"] \\
                                                                   &  &                            \\
Y\cross I \arrow[rr, "H"] \arrow[rruu, "\exists \tilde H", dashed] &  & X                         
\end{tikzcd}

$\pi$ clearly induces a map $p_*$ on $\pi_1$ by functoriality, so we'll show that $\ker p_*$ is trivial.
Let $\gamma: S^1 \to \tilde X \in \pi_1(\tilde X)$ and suppose $\alpha \definedas p_*(\gamma) = [e] \in \pi_1(X)$. 
We'll show $\gamma \homotopic [e]$ in $\pi_1(\tilde X)$.


Since $\alpha = [e]$, $\alpha \homotopic \const$ and thus there is a homotopy $H: I\cross S^1 \to X$ such that $H_0 = \const(x_0)$ and $H_1 = \gamma$.
By the HLP, this lifts to $\tilde H: I\cross S^1 \to \tilde X$.
Noting that $\pi\inv(\const(x_0))$ is still a constant loop, this says that $\gamma$ is homotopic to a constant loop and thus nullhomotopic. 

## 1c

Since both spaces are path-connected, the degree o the covering map $\pi$ is precisely the index of the included fundamental group.
This forces $\pi$ to be a degree 1 covering and hence a homeomorphism.


## 6

Note $\pi_1 \RP^2 = \ZZ/2\ZZ$, so $\pi_1 X = (\ZZ/2\ZZ)^2$.

The pullback of any neighborhood of the basepoint needs to be locally homeomorphic to one of

- $S^2 \vee S^2$
- $\RP^2 \vee S^2$

And so *all* possibilities for regular covering spaces are given by

- $\bigvee^{2k} S^2$ "beads" wrapped into a necklace for any $k \geq 1$
- $\RP^2 \vee (\bigvee^k S^2) \vee \RP^2$
- $\vee^\infty S^2$, the universal cover


To get a threefold cover, we want the basepoint to lift to three preimages, so we can take

- $S^2 \vee S^2 \vee S^2$ wrapped
- $\RP^2 \vee S^2 \vee \RP^2$.


## 7

- $\RP_3 \vee S^2 \vee \RP^3$, which has $\pi_2 = 0 \ast \ZZ \ast 0 = \ZZ$ since $\pi_{i\geq 1} X = \pi_{i\geq 1}\tilde X$ and $\tilde \RP^3 = S^3$.
- $\RP^2 \vee S^3 \vee \RP^2$, which was $\pi_2 = \ZZ \ast 0 \ast \ZZ = \ZZ\ast \ZZ \neq \ZZ$

## 8

Yes,

![Image](figures/2020-02-04-21:50.png)


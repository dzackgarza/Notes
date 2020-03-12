# Spring 2019

## 1
Let $C([0, 1])$ denote the space of all continuous real-valued functions on $[0, 1]$.
  
a. Prove that $C([0, 1])$ is complete under the uniform norm $\norm{f}_u := \displaystyle\sup_{x\in [0,1]} |f (x)|$.
b. Prove that $C([0, 1])$ is not complete under the $L^1\dash$norm $\norm{f}_1 = \displaystyle\int_0^1 |f (x)| ~dx$.

## 2
Let $\mathcal B$ denote the set of all Borel subsets of $\RR$ and $\mu : \mathcal B → [0, \infty)$ denote a finite Borel measure on $\RR$.
  
  a. Prove that if $\{F_k\}$ is a sequence of Borel sets for which $F_k \supseteq  F_{k+1}$ for all $k$, then
  $$
  \lim _{k \rightarrow \infty} \mu\left(F_{k}\right)=\mu\left(\bigcap_{k=1}^{\infty} F_{k}\right)
  $$
  b. Suppose $µ$ has the property that $µ(E) = 0$ for every $E \in \mathcal B$ with Lebesgue measure $m(E) = 0$.
    Prove that for every $ε > 0$ there exists $δ > 0$ so that if $E \in \mathcal B$ with $m(E) < δ$, then $µ(E) < ε$.

## 3 
Let $\{f_k\}$ be any sequence of functions in $L^2([0, 1])$ satisfying $\norm{f_k}_2 ≤ M$ for all $k ∈ \NN$.
  
Prove that if $f_k → f$ almost everywhere, then $f ∈ L^2([0, 1])$ with $\norm{f}_2 ≤ M$ and
$$
\lim _{k \rightarrow \infty} \int_{0}^{1} f_{k}(x) dx = \int_{0}^{1} f(x) d x
$$

> Hint: Try using Fatou’s Lemma to show that $\norm{f}_2 ≤ M$ and then try applying Egorov’s Theorem.

## 4
Let $f$ be a non-negative function on $\RR^n$ and $\mathcal A = \{(x, t) ∈ \RR^n × \RR : 0 ≤ t ≤ f (x)\}$.

Prove the validity of the following two statements:

  a. $f$ is a Lebesgue measurable function on $\RR^n \iff  \mathcal A$ is a Lebesgue measurable subset of $\RR^{n+1}$
  
  b. If $f$ is a Lebesgue measurable function on $\RR^n$, then
  $$
  m(\mathcal{A})=\int_{\mathbb{R}^{n}} f(x) d x=\int_{0}^{\infty} m\left(\left\{x \in \mathbb{R}^{n}: f(x) \geq t\right\}\right) d t
  $$

## 5

a. Show that $L^2([0, 1]) ⊆ L^1([0, 1])$ and argue that $L^2([0, 1])$ in fact forms a dense subset of $L^1([0, 1])$.

b. Let $Λ$ be a continuous linear functional on $L^1([0, 1])$.
  
    Prove the Riesz Representation Theorem for $L^1([0, 1])$ by following the steps below:


    i. Establish the existence of a function $g ∈ L^2([0, 1])$ which represents $Λ$ in the sense that
$$
Λ(f ) = f (x)g(x) dx \text{ for all } f ∈ L^2([0, 1]).
$$

    > Hint: You may use, without proof, the Riesz Representation Theorem for $L^2([0, 1])$.

    ii. Argue that the $g$ obtained above must in fact belong to $L^∞([0, 1])$ and represent $Λ$ in the sense that
$$
\Lambda(f)=\int_{0}^{1} f(x) \overline{g(x)} d x \quad \text { for all } f \in L^{1}([0,1])
$$
    with
$$
\|g\|_{L^{\infty}([0,1])}=\|\Lambda\|_{L^{1}([0,1])\dual}
$$

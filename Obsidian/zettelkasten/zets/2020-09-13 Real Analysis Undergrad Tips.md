# Sunday, September 13

[Advice](Advice)
[Real Analysis](../Subjects/Real%20Analysis.md)
[Undergraduate](Undergraduate)
[Expository](Expository)

## General Notes

- Say what you're assuming at the start of the proof.
  - If flipping logic and not using a direct proof (contradiction, contrapositive, etc), then signpost/announce it near the beginning of the proof.
  - Examples: for $P\implies Q$,
    - Direct proof: "Suppose $P \cdots$"
    - Contradiction: "Suppose toward a contradiction $P$ but not $Q\cdots$" 

      (Usually show $\lnot P$. If you show $Q$, a direct proof might be simpler.)
    - Contrapositive: "Suppose by contrapositive that $\lnot Q$ holds, $\cdots$"

- Put any important equations (i.e. major steps of the proof) on their own lines or in displaymath environments.
- Use some whitespace to separate parts of the proof and increase readability.
- Remember that limits of sequences need not exist, but liminfs/limsups always do 
  
  (just may be $\pm \infty$).

- Try to avoid abbreviating the names of major theorems (example: "AP" can stand for many results, not just the Archimedean property!)
- It's not generally true that $a\leq M \implies \abs{a} \leq M$, e.g. take $a=-1 \leq M = 0$. 
  This only holds for $a\geq 0$.

- A generic set **may not** contain its inf or sup. 
  Example: $\inf \ts{1\over n} = 0$ and $0\not\in \ts{1\over n}$, or $\sup \ts{1-{1\over n}} = 1$ with $1\not \in \ts{1-{1\over n}}$.

- If there exists some element of a set or sequence with a given property, try to say where it comes from and why the property holds for it.
- Similarly, if a property holds for all elements of a set or sequence, try to say why.

- The crux of many proofs are certain inequalities, so try to justify every inequality that appears. 
- If you use a theorem, be sure to mention it by its full name.
- Useful counterexamples:
  - $x_n = (-1)^n$
  - Literal lists of numbers: $[0, 1, 0, 2, \cdots]$.

## 1.a

:::{.proof title="$A \implies B$"}
\hfill

- Suppose $\ts{a_n}$ is not bounded above.
- Then any $k\in \NN$ is not an upper bound for $\ts{a_n}$.
- So choose a subsequence $a_{n_k} > k$, then by order-limit laws,
\[  
a_{n_k} > k \implies \liminf_{k\to\infty} a_{n_k} > \liminf_{k\to\infty} k = \infty
.\]
:::

:::{.proof title="$\not A \implies \not B$"}
\hfill

- Suppose $\ts{a_n}$ is bounded by $M$, so $a_n < M < \infty$ for all $n\in \NN$.
- Then if $\ts{a_{n_k}}$ is a subsequence, we have $a_{n_k} \in \ts{a_n}$, so $a_{n_k} < M$ for all $k\in \NN$.
- But then
\[  
a_{n_k} < M \implies \limsup_{k\to\infty} a_{n_k} \leq M 
,\]
  
- Now note that if $\lim_{k\to\infty} a_{n_k}$ exists,
\[  
\lim_{k\to\infty} a_{n_k} < \limsup_{k\to\infty} a_{n_k} \leq M < \infty
,\]
 so every subsequence is bounded and thus can not converge to $\infty$. 
:::


## 3.a

:::{.proof title="Using definition (i)"}
\hfill

- Suppose $x_n \leq M$ for all $n$, we will show that every subsequential limit is also bounded by $M$.
- Let $$S \da \ts{x\in \RR \st x \text{ is a subsequential limit of } \ts{x_n}}$$ be the set of subsequential limits.
  - Note that $\inf S \da \liminf_{n\to\infty} x_n$ by definition (i).
- Let $\ts{x_{n_k}}\in S$ be an arbitrary convergent subsequence (since we are only concerned about subsequences with well-defined limits).
- Then for every $k$ we have $x_{n_k} \in \ts{x_n}$, so
\[  
\abs{x_{n_k}} \leq M
.\]

- By order limit laws,
\[  
\abs{x_{n_k}} \leq M \implies 
\lim_{k\to\infty} \abs{x_{n_k}} \leq M
,\]

- Since the map $x\mapsto \abs{x}$ is continuous, using the sequential definition of continuity we can pass the limit through the absolute value to obtain
\[  
\abs{ \lim_{k\to\infty} x_{n_k}} \leq M
.\]

- Since the subsequence was arbitrary, we find that $M$ is an upper bound for $S$ and so $\sup S \leq M$.
- But
\[  
\inf S \leq \sup S \leq M \implies \inf S \leq M
.\]

:::


:::{.proof title="Using definition (ii)"}
\hfill

- Suppose $\abs{x_n} \leq M$ for every $n$, we will directly show that $\abs{\lim_{n\to\infty}\inf_{k\geq n} x_n} \leq M$.
\

- By order-limit laws, for every fixed $n$ we have
\[  
\abs{x_{n}} \leq M \iff -M \leq x_{n} \leq M \implies -M \leq \inf_{k>n} {x_{k}} \leq M 
,\]
  where we've used the fact that $x_n \geq -M$ for all $n$ implies that $\inf_{k\geq n} x_k \geq -M$.

- Again applying order-limit laws,
\[  
-M \leq \inf_{k\geq n} {x_{k}} \leq M  \implies 
-M \leq 
\lim_{n\to\infty} \inf_{k\geq n} {x_{k}} \leq M 
\iff 
\abs{\lim_{n\to\infty} \inf_{k\geq n} x_{n_k}  } \leq M
.\]


:::


## 3.b


:::{.proof title="Using definition (i)"}
\hfill

> Note that here we define $S$ to be the set of all subsequential limits of $\ts{x_n}$ and \[\liminf_n x_n \da \inf S.\]

- Suppose toward a contradiction that $\beta < \liminf_{n} x_n$ **but** there does not exist any $N$ such that $n\geq N \implies x_n > \beta$.
- Then for all $N$ there exists an $n> N$ with $x_n \leq \beta$, so the set $$B \da \ts{n \in \NN \st x_n \leq \beta}$$ is countably infinite.
- Then by Bolzano-Weierstrass, since $B$ is bounded it contains a convergent subsequence $x_{n_k}$ which satisfies
\[  
x_{n_k} \leq \beta \quad \forall k \implies L\da \lim_{k\to\infty} x_{n_k} \leq \beta
\]
  where we've used order-limit laws.

- We now have $L\in S$, a subsequential limit satisfying $L\leq \beta$
  and since $\inf S$ is a lower bound for $S$,
\[  
\inf S \leq L \leq \beta
.\]
  which contradicts $\beta < \liminf_n x_n$.

:::

:::{.proof title="Using definition (ii)"}
\hfill

> Note that here we define 
\[  
\liminf_n x_n \da \lim_{n\to\infty} S_n \qtext{where } S_n \da \inf \ts{x_k \st k\geq n}
.\]

- Write $L\da \lim_{n\to\infty} S_n$ and suppose $\beta < L$.

- Then we have
\[  
\forall\eps>0,\, \exists N\qtext{such that} n\neq N \implies \abs{S_n - L} < \eps
.\]

- Since $\beta < L \iff L-\beta > 0$, we can set $\eps \da L-\beta$ to produce an $N$ such that
\[  
n\geq N \implies \abs{L-S_n} < L-\beta \iff \beta - L < S_n - L < L-\beta
.\]

- Just taking the first part of this composite inequality we have
\[  
n\geq N \implies \beta - L < S_n - L \iff \beta < S_n \da \inf_{k\geq n} x_k \leq x_n
,\]
  supplying the $N$ for which $n\geq N \implies \beta < x_n$ as desired.

:::

:::{.proof title="Using definition (ii), alternative"}
\hfill

- Suppose toward a contradiction that $\beta < \liminf_n x_n$ **but** there is no $N$ such that $n\geq N \implies x_n> \beta$.
- Then for all $N$ there exists an $n$ with $x_n \leq \beta$, so if we form the set
\[  
B_n \da \ts{k\in \NN \st k\geq n \text{ and } x_k \leq \beta}
,\]
  then $B_n$ is countably infinite for every $n$

- But then $B_n\subseteq \ts{k\in \NN \st k\geq n}$ for every $n$ implies that
\[  
\inf_{k\geq n} x_k \leq \inf_{k\in B_n} x_k \leq \beta \qquad \forall n
,\]
  since an infimum over a larger set can only get smaller. 


- Applying order-limit laws, we then have
\[  
\inf_{k\geq n} \leq \beta \,\,\forall n \implies \lim_{n\to \infty}\inf_{k\geq n} x_n \leq \beta
,\]
 but this contradicts $\liminf_{n} x_n > \beta$.

:::


## 4.a

:::{.proof}
\hfill
- Suppose $\ts{x_n}$ is bounded and $\limsup \abs{x_n} = 0$.
- Then using the supremum definition, $\lim_{n\to\infty} \sup_{k\geq n} \abs{x_k} = 0$.
- Note that
\[  
\lim_{n\to\infty} x_n = 0 \iff \forall \eps \quad \exists N \text{ such that } n\geq N \implies \abs{x_n} < \eps
.\]
- So let $\eps>0$ be arbitrary.
- By the definition of the limit appearing in the $\limsup$, there exists an $N_0$ such that 
$$n\geq N_0 \implies \sup_{k\geq n} \abs{x_k} < \eps.$$
- But then taking $N = N_0$ in the first equation yields the result, since
\[  
n\geq N_0 \implies \abs{x_n} \leq \sup_{k\geq n} \abs{x_k} < \eps
.\]
:::


## 4.c

:::{.proof}
\hfill
- Note that $-1 \leq \sin(x) \leq 1$ and $\sin(x) = \pm 1 \iff x = 2k\pi \pm {\pi \over 2}$.
- Since $\pi$ is irrational, $\sin(n)$ will never be of this form, so $-1 < \sin(n) < 1$.
- Taking floors, we have $-1 \leq \floor{\sin(n)} \leq 0$, which in fact means that $\sin(n) \in \ts{-1, 0}$ can only take on one of two values.
- The set of subsequential limits is then just $\ts{-1, 0}$.
- **Claim**: $\limsup \floor{\sin(n)} = 0$.
  - It suffices to show that $\floor{\sin(n)} = 0$ infinitely often
  - But note that there is an integer in any interval of the form $[2k\pi, 2k\pi + \pi]$ for $k\in \NN$, since it is of length $\pi > 1$.
  - In these intervals, $0 < \sin(n)  < 1$, and so $\floor{\sin(n)} = 0$, and there infinitely many such intervals.
  - So form a subsequence $x_{n_k} = \floor{\sin(n_k)}$ by choosing $n_k$ to be any integer in 
- **Claim**: $\liminf \floor{\sin(n)} = -1$.
  - By the exact same argument applied to intervals of the form $[3k\pi,3k\pi + \pi]$ where $-1 < \sin(n) < 0$, we find that $\floor{\sin(n)} = -1$ infinitely often. 
:::

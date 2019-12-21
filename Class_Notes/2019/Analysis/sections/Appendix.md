# Appendix

## Undergraduate Analysis Review 

- **Bolzano-Weierstrass**: 
Every bounded sequence has a convergent subsequence.

- **Heine-Borel**:
$$
X \subseteq \RR^n \text{ is compact } 
\iff 
X \text{ is closed and bounded}
.$$

- **Baire Category Theorem:**
If $X$ is a complete metric space, then

- For any sequence $\theset{U_k}$ of open, dense sets, $\intersect_k U_k$ is also dense.
- $X$ is *not* a countable union of nowhere-dense sets

- **Nested Interval Characterization of Completeness:** 
$\RR$ being complete $\implies$ for any sequence of intervals $\theset{I_n}$ such that $I_{n+1} \subseteq I_n$, $\intersect I_n \neq \emptyset$.

- **Convergence Characterization of Completeness:**
$\RR$ being complete is equivalent to "absolutely convergent implies convergent" for sums of real numbers.

- Compacts subsets $K \subseteq \RR^n$ are also *sequentially compact*, i.e. every sequence in $K$ has a convergent subsequence.

- **Urysohn's Lemma:**
For any two sets $A, B$ in a metric space or compact Hausdorff space $X$, there is a function $f:X \to I$ such that $f(A) = 0$ and $f(B) = 1$.

- Continuous compactly supported functions are
  - Bounded almost everywhere
  - Uniformly continuous

    *Proof:*
    ![](figures/2019-12-19-16-49-56.png)\

- Uniform convergence allows commuting sums with integrals

- Closed subsets of compact sets are compact.

- Every compact subset of a Hausdorff space is closed 

- Showing that a series converges: 
(Todo)

## Big Counterexamples

### For Limits

- Differentiability $\implies$ continuity but not the converse: 

  - The Weierstrass function is continuous but nowhere differentiable.

- $f$ continuous does not imply $f'$ is continuous: $f(x) = x^2 \sin(x)$.

- Limit of derivatives may not equal derivative of limit:
  $$
  f(x) = \frac{\sin(nx)}{n^c} \text{ where } 0 < c < 1.
  $$
  - Also shows that a sum of differentiable functions may not be differentiable.

- Limit of integrals may not equal integral of limit: 
$$
\sum \indic{x = q_n \in \QQ}
.$$

- A sequence of continuous functions converging to a discontinuous function: 
$$
f(x) = x^n \text{ on } [0, 1]
.$$

- The Thomae function (todo)

### For Convergence

- Notions of convergence: 
  - Uniform 
  - Pointwise 
  - Almost everywhere 
  - In norm

- Uniform Continuity:
$$
\left\|\tau_{y} f-f\right\|_{u} \rightarrow 0 \text { as } y \rightarrow 0
$$

## Less Important Errata

- **Equicontinuity**:
If $\mathcal F \subset C(X)$ is a family of continuous functions on $X$, then $\mathcal F$ *equicontinuous* at $x$ iff

\begin{align*}
\forall \varepsilon > 0 ~~\exists U \ni x \text{ such that } y\in U \implies \abs{f(y) — f(x)} < \varepsilon \quad \forall f\in \mathcal{F}
.\end{align*}

- **Arzela - Ascoli 1**:
If $\mathcal{F}$ is pointwise bounded and equicontinuous, then $\mathcal{F}$ is totally bounded in the uniform metric and its closure $\overline{\mathcal{F}} \in C(X)$ in the space of continuous functions is compact.

- **Arzela - Ascoli 2**:
If $\theset{f_k}$ is pointwise bounded and equicontinuous, then there exists a continuous $f$ such that $f_k \mapsvia{u} f$ on every compact set.


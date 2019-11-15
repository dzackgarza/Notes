#  CW and Simplicial Complexes

## Useful Facts
- To build a Moore space $M(n, \ZZ_p)$, take $X = S^n$ and attach $e^{n+1}$ via a map $\Phi: S^n = \del B^{n+1}\to X^{(n)} = S^n$ of degree $p$.
	- To obtain $M(n, \prod G_i)$ take the corresponding $\bigvee X_i$
	- Can also use Mayer Veitoris to conclude $H_{n+1}(\Sigma X) = H_n(X)$, and just suspend spaces with known homology.

## Theorem: Van Kampen's Theorem

Claim: If $X = U \union V$ and $U \intersect V$ is nonempty and "nice", then $\pi_1(X) = \pi_1(U) ~\bigast_{\pi_1(U \intersect V)}~ \pi_1(V)$.

### Proof

- Construct a map going backwards
- Show it is surjective
  - "There and back" paths
- Show it is injective
  - Divide $I\times I$ into a grid

## Definition: CW Complex

### Examples

- $\mathbb{RP}^n = e^1 \cup e^2 \cup \cdots \cup e^n$
- $\mathbb{CP}^n =e^2 \cup e^4 \cup \cdots e^{2n}$
- $S^\infty = \varinjlim S^n$

# Definition: The Degree of  Map $S^n \into S^n$

Given any $f: S^n \into S^n$, there are induced maps on homotopy and homology groups. Taking $f^*: H^n(S^n) \into H^n(S^n)$ and identifying $H^n(S^n) \cong \ZZ$, we have $f^*: \ZZ \into \ZZ$. But homomorphisms of this type are entirely determined by their action on generators. So if $f^*(1) = n$, define $n$ to be the degree of $f$.

Properties and examples:

- $\text{deg}~\id_{S^n} = 1$
- $\text{deg} (f\circ g) = \text{deg}~f \cdot \text{deg}~g$
- $\text{deg}~r = -1$ where $r$ is any rotation about a hyperplane, i.e. $r(\thevector{x_1 \cdots x_i \cdots x_n}) = \thevector{x_1 \cdots -x_i \cdots x_n}$.
- The antipodal map on $S^n\subset \RR^{n+1}$ is the composition of $n+1$ reflections, so $\text{deg}~\alpha = (-1)^{n+1}$.

# Definition: Simplicial Complex

Given a simplex $\sigma = [v_1 \cdots v_n]$, define the face map $\del_i:\Delta^n \into \Delta^{n-1}$, where $\del_i\sigma = [v_1 \cdots \hat v_i \cdots v_n]$.

A simplicial complex is a set $K​$ satisfying

1. $\sigma \in K \implies \del_i\sigma \in K$
2. $\sigma,\tau\in K \implies \sigma\intersect\tau = \emptyset,~ \del_i\sigma,~\text{or}~\del_i\tau$
   1. This amounts to saying that any collection of $(n-1)$-simplices uniquely determines an $n$-simplex (or its lack thereof), or that that map $\Delta^k \into X$ is a continuous injection from the standard simplex in $\RR^n$.
3. $\abs{K\intersect B_\varepsilon(\sigma)} < \infty$ for every $\sigma\in K$, identifying $\sigma \subseteq \RR^n$.

To write down a simplicial complex, label the vertices with increasing integers. Then each $n$-cell will correspond to a set of $n+1$ of these integers - throw them in a list.

## Examples of Simplicial Complexes

![Torus](../../assets/1513062466927.png)

![Klein Bottle and $\RP^2$](../../assets/1513062526623.png)

For counterexamples, note that this fails to be a triangulation of $T$:

![Not a Torus](../../assets/1513062599096.png)

This fails - for example, the simplex $[1,2,1]$ does not uniquely determine a triangle in the above picture.

## Templates for Triangulation

You can always triangulate a space by triangulating something homeomorphic, so for common spaces you can work with these fundamental domains:

![1513064067523](../../assets/1513064067523.png)

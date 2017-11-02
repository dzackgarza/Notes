# Algebraic Topology Review Notes

## Definition: Homotopy

## Definition: Homotopy Equivalence

## Definition: Contractible

## Definition: Homotopic rel $A$

## Definition: Linear Homotopy

## Definition: The Fundamental Group $\pi_1(X)$



## Theorem: The fundamental group is a group

## Definition: Fundamental Groupoid

## Definition: Natural Transformation

## Definition: Covering Spaces

## Theorem: Homotopies lift to covering spaces

## Theorem: $\pi_1(S^1) = \mathbb{Z}$

- Build reverse map
- Use $\mathbb{R}$ as a cover of $S^1$
- Show it's a homomorphism
- Show it's injective
- Show it's surjective

## Definition: Freely and Properly Discontinuous Group Actions

## Theorem: If $G$ induces a free and properly discontinuous group action on $X$, then $p: X \rightarrow X/G$ is a covering space

Here $X/G$ denotes $X/\sim$  where $\forall x,y\in X, x\sim y \iff \exists g\in G \mid g.x = y$, i.e. all elements in a single orbit are identified.

### Proof:

Construct a map $\phi: G \rightarrow \pi_1(X/G, G.x_0)$ by $g \mapsto [p \circ \gamma_g]$ 

where $\gamma_g(0) = x_0$ and $\gamma_g(1) = G.x_0$.

- This is homomorphism:
- This is well-defined:

## Theorem: $\pi_1(\mathbb{RP}^n) \cong \mathbb{Z}_2$

## Definition: Fibration

### Example: The Hopf Fibration



## Theorem: $X\simeq Y \implies \pi_1(X) \cong \pi_1(Y)$



## Definition: Coproduct

## Definition: Pushout

## Definition: Colimit



## Definition: Free Product with Amalgamation

## Theorem: Van Kampen's Theorem

Claim: If $X = U \cup V$, then $\pi_1(X) = \pi_1(U) \ast \pi_1(V)$.

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

## Definition: The weak topology
---
aliases: ["framing", "parallelizable"]
---

# References

> Recommendations from Akram:
Milnor-Stasheff p.148 12-b and Section 12

# Definitions

:::{.definition title="parallelizable"}
If the tangent bundle of a manifold is trivial, the manifold is said to be **parallelizable**.
:::

- Parallelizable/framed: a trivialization of the tangent bundle.
	- Equivalently, the [principal](principal%20bundle.md) [frame bundle](frame%20bundle) has a smooth [global section](section%20of%20a%20bundle.md).


## Results

- Fact: the only parallelizable spheres are 
$$
S^0, S^1, S^3, S^7
$$ 
corresponding to $\RR, \CC, \mathbb{H}, \mathbb{O}$.

:::{.proposition title="?"}
$S^1$ is parallelizable.
:::

:::{.proof title="?"}
Let $M = S^1$, then there is a rank 1 vector bundle
$$
\RR \to TM \to M
$$
and since $TM = S^1 \cross \RR$ , we find that $S^1$ is parallelizable.
:::

> Todo: 

:::{.proposition title="?"}
$S^2$ is not parallelizable.
:::

:::{.proof title="?"}
Let $M = S^2$, which is associated to the rank 2 vector bundle
$$\RR^2 \to TM \to M$$

Then $TM$ is trivial iff there are 2 independent global sections. Since there is a zero section, a second independent section must be everywhere-nonzero - however, this would be a nowhere vanishing vector field on $S^2$, which by the Hairy Ball theorem does not exist.
:::

:::{.proof title="Alternative"}
Any such a vector field would allow a homotopy between the identity and the [antipodal map](antipodal%20map) on $S^2$, a contradiction.
:::

> Why is there no such map? #unanswered_questions 








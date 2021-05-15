---
aliases: ["quasicoherent sheaves", "QCoh"]
---

> Reference: <https://arxiv.org/pdf/1410.1716.pdf>

- A Noetherian [scheme](scheme.md) $X$ can be reconstructed from $\QCoh(X)$, see Gabriel 1962.
	- Idea: associate to an [abelian category](Abelian%20category.md) $\cat{A} \in \Ab\Cat$ a [ringed space](ringed%20space.md) $\spec \cat{A}$ and show 
	$$X \underset{\Ringedspace}{\mapsvia{\cong}} \spec \cat{\QCoh(A)}$$
- A smooth variety $X$ can *not* generally be reconstructed from its [derived category](derived%20category.md) $\D^b \QCoh(X)$, it can if the [canonical](canonical%20bundle.md) bundle is [ample](ample%20bundle.md).
- In 2002 Balmer reconstructs a [Noetherian scheme](Noetherian%20scheme)
from its [tensor triangulated category](tensor%20triangulated%20category) of [perfect complexes](perfect%20complexes.md).
	- Lurie 2006ish: some more general result?
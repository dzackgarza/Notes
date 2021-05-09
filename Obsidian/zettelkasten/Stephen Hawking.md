[Expository](Expository)
[../Physics](../Physics.md)
[Riemannian geometry](../Riemannian%20geometry.md)



# Stephen Hawking: Some of the Mathematics of His Work

Main Contributions
- Singularties: incomplete timelike [geodesics](geodesics) imply "The Big Bang" and time ending in [black holes](black%20hole).
- Second law of black holes: area never decreases (even in black hole mergers)
- Hawking radiation
- "Information paradox": all information is stored on the boundary event horizon, things escape but into different universes (2015)

History
- 1915 [General relativity](General%20relativity) established by Einstein
- 60s: collaborated with Penrose on singularity theory, he was in his mid-20s
- Began developing amyotrophic lateral sclerosis (ALS)
- All 3 major contributiosn from above by the mid 70s


Tools Needed:
- Vectors
- Tensors
- Manifolds
- Tangent Spaces
- [curvature](curvature.md)
	- [parallel transport](parallel%20transport)
	- [Riemann curvature tensor](Riemann%20curvature)
- [covariant derivative](covariant%20derivative)
- [metric tensor](metric%20tensor)
- [Einstein equations](Einstein%20equations.md)
- The [geodesic equations](geodesics)

# General vs Special Relativity

[General relativity](General%20relativity)

# Definition of Spacetime

[spacetime](spacetime)

Story:
Hawking did his thesis in the 60s - by then, GR was firmly established based on the results of the "3 big tests":
1. Precession of mercury
2. Gravitational redshift
3. Bending light in gravitational fields

However, the same equation that yields these productions also admits singularities. Are these artifacts of the model, or of coordinate choices? Hawking set off to investigate these singularities.

What is the math of GR? We take spacetime to be a 4 dimensional Riemannian manifold. Then equation the pivotal equation is the Einstein [field equations](Einstein%20equations.md)


A priori, this gives 16 tensor equations, each of which is a nonlinear PDE. Using some symmetry, it can be reduced to around 10 equations, but Einstein believed these would be impossible to analytically solve when he published them (< 1915).

![](Einstein%20equations.md#^1adff7)

From this, it is clear that there are two potential singularities - areas where the metric seems to diverge.

The first is a "space-like singularity" at $r=r_s$, which would indicate a singularity over an entire spherical hyper-surface. As it turns out, this is an artifact of coordinates and charts, much like a non-essential singularity in complex analysis, and disappears under a suitable transformation. Inside the event horizon $r < r_s$, a separate equation is needed.

However, the other "time-like" singularity at $r=0$. As it turns out, this one is more serious, and can be shown to be coordinate-independent. Inside the event horizon, worldines at a constant radius do not exists, and all light cones point inwards towards the singularity.
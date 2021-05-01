[Expository](Expository)
[Physics](Physics)
[Riemannian geometry](../../Riemannian%20geometry.md)

# Stephen Hawking: Some of the Mathematics of His Work

Main Contributions
- Singularties: incomplete timelike geodesics imply "The Big Bang" and time ending in black holes.
- Second law of black holes: area never decreases (even in black hole mergers)
- Hawking radiation
- "Information paradox": all information is stored on the boundary event horizon, things escape but into different universes (2015)

History
- 1915 General relativity established by Einstein
- 60s: collaborated with Penrose on singularity theory, he was in his mid-20s
- Began developing amyotrophic lateral sclerosis (ALS)
- All 3 major contributiosn from above by the mid 70s


Definitions
- "No Hair" conjecture: all singularities in the field equations are completely distinguished by only a few invariants/parameters (mass/charge/angular momentum)
	- Example: can't distinguish a hole made of antimatter from one made of matter

Tools Needed:
- Vectors
- Tensors
- Manifolds
- Tangent Spaces
- Curvature
	- Parallel transport
	- Riemann Curvature Tensor
- Covariant Derivative
- Metric tensor
	- Gives a notion of distance along paths in a manifold, generalizing the Pythagorean theorem in Euclidean space.
	- Can be written as a symmetric matrix $$\begin{pmatrix} g_{xx}&g_{xy}\\ g_{yx}&g_{yy}\end{pmatrix}$$
	where we then define the squared distance between two points as
	$$
	\mathrm{d}s^2= g_{xx}\mathrm{d}x^2+g_{yy} \mathrm{d}y^2 + 2 g_{xy}\mathrm{d}x \mathrm{d}y= \sum_{\mu,\nu\in\{x,y\}}g_{\mu\nu}\mathrm{d}l^\mu \mathrm{d}l^\nu
	$$
	Can recover usual metric: by Pythagorean theorem, we have
	$$\mathrm{d}s^2=\mathrm{d}x^2+\mathrm{d}y^2= \sum_{\mu,\nu\in\{x,y\}}g_{\mu\nu}\mathrm{d}l^\mu \mathrm{d}l^\nu$$
	and so we recover a "flat" metric
	$$
	g_{\mu\nu}=\begin{pmatrix} g_{xx}&g_{xy}\\ g_{xy}&g_{yy}\end{pmatrix}= \begin{pmatrix} 1&0\\0&1\end{pmatrix}
	$$

	This allows us to measure lengths of paths $\gamma$ by computing $$L = \int_\gamma \mathrm{d}s$$
- The Field Equations
	- $R_{ij} - \frac{1}{2}R g_{ij} + \Lambda g_{ij} = T_{ij}$
	- Postulated by Einstein, fixed by Hilbert
	- $\Lambda < 0$ the cosomological constant introduced by Einstein in order to obtain non-expanding universe - but by evidence from Hubble, it is expanding (and accelerating)
		- Nonzero implies that there is some nonzero energy everywhere, in every metric - used to account for "dark energy".
	- The stress-energy tensor:
		- Can be written as a $4\times 4$ matrix, where the $i,j$ component denotes a "flow of $i$ momentum in the $j$ direction". Flow of $t$ along $t$ is energy, while the others are pressure (think of an ideal gas).
		- English interpretation: drop a sphere full of particles; the rate of shrinkage of the sphere is proportional to its volume, energy density, and pressure in 3 spatial coordinates (so dense objects in small volumes generate gravity!).
- The Geodesic Equations
	- $n$ ODE IVPs for $M^n$, luckily has existence/uniquness

# General vs Special Relativity
Special: light travels at a constant speed for all observers, plus the laws of motion are the same in all inertial (non-accelerating) frames. Makes all physical laws "covariant" (really invariant) under a certain group of coordinate transformations. Encodes quantities like energy and momentum with scalars and 4-vectors. Models spacetime as a manifold that is locally $\RR^3 \cross \RR$ with metric signature $(+,-,-,-)$. Works for reformulating classical laws, but doesn't incorporate gravity.

General: Want a theory that works for accelerating frames and incorporates gravity. Requires bringing together energy, momentum, stress, and pressure, and moving to $4\times4$ tensors instead of 4-vectors. Recover SR by defining inertial frames to travel along geodesics with constant velocity (setting acceleration equal to zero).

# Definition of Spacetime
Spacetime is 4-dimensional topological manifold with a smooth atlas carrying a torsion-free section compatible with a Lorentizan metric and a time orientation satisfying the Einstein equations.


Story:
Hawking did his thesis in the 60s - by then, GR was firmly established based on the results of the "3 big tests":
1. Precession of mercury
2. Gravitational redshift
3. Bending light in gravitational fields

However, the same equation that yields these productions also admits singularities. Are these artifacts of the model, or of coordinate choices? Hawking set off to investigate these singularities.

What is the math of GR? We take spacetime to be a 4 dimensional Riemannian manifold. Then equation the pivotal equation is the Einstein field equations
$$R_{ij} + \frac{1}{2}R g_{ij} + \Lambda g_{ij} = T_{ij}$$

where
- $R_{ij}$ is the Ricci curvature
- $R$ is the scalar curvature
- $g_{ij}$ is the metric tensor
- $\Lambda$ is the "cosmological constant"
- $T_{ij}$ is the stress-energy tensor

The left hand side represents properties of the geometry of space time, while the right hand side indicated properties of matter in a given region.

A priori, this gives 16 tensor equations, each of which is a nonlinear PDE. Using some symmetry, it can be reduced to around 10 equations, but Einstein believed these would be impossible to analytically solve when he published them (< 1915).

Note that solutions to this equation are _metrics_ on spacetime, which in turn can be fed into geodesic equations which give the lengths _worldlines_. Most importantly, gravity acts by moving other bodies along these geodesic paths.

An exact solution that was found almost immediately  (1916) is the Schwarzschild metric, which assumes that the RHS involves a spherical mass with "nice" stress-energy properties and $\Lambda = 0$. The solution metric can be expressed in polar coordinates as
$$ ds^2 = (1-\frac{r_s}{r}) dt^2 - \left( \frac{1}{1-\frac{r_2}{r}} \right)dr^2 - r^2d\theta^2  -r^2\sin^2\theta d\phi^2)
$$

taking $c^2 = 1$, where $r$ is a parameter indicating your distance from the spherical mass and $r_2$ is the "Schwarzschild radius" that is proportional to the mass of the sphere - this is commonly known as the "event horizon".

From this, it is clear that there are two potential singularities - areas where the metric seems to diverge.

The first is a "space-like singularity" at $r=r_s$, which would indicate a singularity over an entire spherical hyper-surface. As it turns out, this is an artifact of coordinates and charts, much like a non-essential singularity in complex analysis, and disappears under a suitable transformation. Inside the event horizon $r < r_s$, a separate equation is needed.

However, the other "time-like" singularity at $r=0$. As it turns out, this one is more serious, and can be shown to be coordinate-independent. Inside the event horizon, worldines at a constant radius do not exists, and all light cones point inwards towards the singularity.
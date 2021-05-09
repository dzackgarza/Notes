---
aliases: ["field equations"]
---


Simplest exact solution: Schwarzchild

- $R_{ij} - \frac{1}{2}R g_{ij} + \Lambda g_{ij} = T_{ij}$
- $\Lambda < 0$ the cosomological constant introduced by Einstein in order to obtain non-expanding universe - but by evidence from Hubble, it is expanding (and accelerating)
- Nonzero implies that there is some nonzero energy everywhere, in every metric - used to account for "dark energy".
- The [stress-energy tensor](stress-energy%20tensor):
	- Can be written as a $4\times 4$ matrix, where the $i,j$ component denotes a "flow of $i$ momentum in the $j$ direction". Flow of $t$ along $t$ is energy, while the others are pressure (think of an ideal gas).
- English interpretation: drop a sphere full of particles; the rate of shrinkage of the sphere is proportional to its volume, energy density, and pressure in 3 spatial coordinates (so dense objects in small volumes generate gravity!).
- Postulated by Einstein, fixed by Hilbert


# Definition

^1adff7

$$
R_{ij} + \frac{1}{2}R g_{ij} + \Lambda g_{ij} = T_{ij}
$$

where
- $R_{ij}$ is the [Ricci curvature](Ricci%20curvature.md)
- $R$ is the [Scalar curvature](Scalar%20curvature.md)
- $g_{ij}$ is the [metric tensor](metric%20tensor.md)
- $\Lambda$ is the "cosmological constant"
- $T_{ij}$ is the [stress-energy tensor](stress-energy%20tensor)

The left hand side represents properties of the geometry of space time, while the right hand side indicated properties of matter in a given region.

Note that solutions to this equation are [metric](Riemannian%20metric.md) on [spacetime](spacetime.md), which in turn can be fed into [geodesic equation](geodesic%20equation) which give the lengths _worldlines_. Most importantly, gravity acts by moving other bodies along these geodesic paths.

An exact solution that was found almost immediately  (1916) is the Schwarzschild metric, which assumes that the RHS involves a spherical mass with "nice" stress-energy properties and $\Lambda = 0$. 

The solution metric can be expressed in polar coordinates as
$$ ds^2 = (1-\frac{r_s}{r}) dt^2 - \left( \frac{1}{1-\frac{r_2}{r}} \right)dr^2 - r^2d\theta^2  -r^2\sin^2\theta d\phi^2)
$$

taking $c^2 = 1$, where $r$ is a parameter indicating your distance from the spherical mass and $r_2$ is the "Schwarzschild radius" that is proportional to the mass of the sphere - this is commonly known as the "event horizon".
# Background

**Terms to look up**

- $n\dash$forms valued in $M$:
$$
\Omega^p(E) := \globalsec{\Extalg^p T\dual M \tensor E}
$$
- Curvature tensor: $R\in \Omega^2(M; \Endo(TM))$?
- Riemann-Roch
- Darboux charts
- Dolbeaut derivative
- Elliptic regularity
- Integrable systems
- Symplectic field theory
- The adjunction inequality
- 2nd Baire category
- Hahn-Banach theorem
	(When the image is not dense)
- Elliptic bootstrapping
- Lagrangian boundary conditions
- Totally geodesic


# Outline
Recommended approach: 3,4,9,10,11.

1. ?
2. Regularity
3. Transversality
	(Recommended, but I skipped 3.4)
4. Compactification and Bubbling
5. More bubbling
	Only look at 5.1 and 5.2.
	Main results are 5.2.1, 5.3.1, skip the rest
6. ?
7. Defining $\GW_{\mathrm{A}_k}^M$?
	See 7.1, add marked points in 7.3.
	Count ration curves in $\PP^n$ in 7.4.
	Needed to understand applications in chapter 9.
8. ?
9. Applications.
	Need background from 7.1.

# Overview

- Idea: count solutions to a non-linear elliptic PDE

Goal: define Gromov-Witten invariants for genus 0 curves and some restricted classes of symplectic manifolds, particularly 4-manifolds
- Bubbling
	- See Ch.4, Ch.5
	- How is energy measured, and how do we deal with bubbling
- Needs a $\Spinc$ structure?
- Donaldson invariant: difficult to work with due to compactness issues.
	Easier in SW since the moduli space (up to gauge transformation) is compact
	
![](../../zettelkasten/attachments/Pasted%20image%2020210613123207.png)
![Definition of curvature forms](../../zettelkasten/attachments/Pasted%20image%2020210613123239.png)
![](../../zettelkasten/attachments/Pasted%20image%2020210613123343.png)
![](../../zettelkasten/attachments/Pasted%20image%2020210613123746.png)
![](../../zettelkasten/attachments/Pasted%20image%2020210613123931.png)
![](../../zettelkasten/attachments/Pasted%20image%2020210613125636.png)
![](../../zettelkasten/attachments/Pasted%20image%2020210613125901.png)
![](../../zettelkasten/attachments/Pasted%20image%2020210613132212.png)

## Applications
Of SW:

- Kronheimer/Mrowka: proved the Thom conjecture:for $\CP^2$, a holomorphic curve is genus-minimizing among curves that represent homology classes
- - Morgan, Szabo, and Taubes to prove that a smooth symplectic curve of nonnegative self-intersection in a symplectic four-manifold is genus minimizing
- Computable for Kalher manifolds, allowing enumeration of algebraic curves.
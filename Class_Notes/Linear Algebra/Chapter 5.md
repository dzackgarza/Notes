# Chapter 5: Orthogonality

The point of this chapter is to show how an inner product can induce a notion of "angle", which agrees with our intuition in Euclidean spaces such as $\RR^n$, but can be extended to much less intuitive things, like spaces of functions.

Given an inner product 
$$
\inner{\wait}{\wait}: \RR^n \cross \RR^n \to \RR,
$$

we can define a **norm**
$$
\norm {\vector x} = \sqrt{\inner{\vector x}{\vector x}},
$$

which has the often useful alternative formulation

$$
\inner{\vector x}{\vector x} = \norm{\vector x}^2
$$

We can define a notion of angle:
$$
\inner{\vector x}{\vector y} = \norm{\vector x} \norm{\vector y} \cos\theta_{x,y}
\implies \cos \theta_{x,y} \definedas \frac{\inner{\vector x}{\vector y}}{\norm{\vector x} \norm{\vector y}} = \inner{\hat{\vector x}}{\hat{\vector y}}
$$

where $\theta_{x,y}$ denotes the angle between the vectors $\vector x$ and $\vector y$.

Note that $\cos \theta=0$ exactly when $\theta = \pm \pi/2$, 

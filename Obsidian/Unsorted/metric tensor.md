Gives a notion of distance along paths in a manifold, generalizing the Pythagorean theorem in Euclidean space.
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
# Notes

Using Fatou to compute the limit of a sequence of integrals:

\begin{align*}
\lim _{n \rightarrow \infty} \int_{0}^{\infty} \frac{n^{2}}{1+n^{2} x^{2}} e^{-\frac{x^{2}}{n^{3}}} d x 
\geq 
\int_{0}^{\infty} \lim _{n \rightarrow \infty}  \frac{n^{2}}{1+n^{2} x^{2}} e^{-\frac{x^{2}}{n^{3}}} d x \to \int \infty
.\end{align*}

> Note that MCT might work, but showing that this is non-decreasing in $n$ is difficult.


Lemma:
$f_k \to f$ a.e. and 
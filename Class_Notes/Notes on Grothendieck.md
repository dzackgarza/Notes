# Notes on Grothendieck

- History of Algebraic Geometry
  - Roots in geometry, intersections of conics
  - Intersections of curves
  - Synthetic vs. Analytic Geometry
    - Analytic wins out (Calculus!)
  - Resurgence in 19th century
    - Due to realization of non-euclidean geometries
  - Algebraization in the 20th century
    - Hilbert's basis theorem and the nullstellensatz
- What is Algebraic Geometry
- Notable Figures
  - Hilbert
  - The Italian School
    - And their mistakes
  - Zariski and Weil (1930s)
    - The Weil Conjectures
      - Relates topology of complex projective varieties to number of points over finite fields
  - Serre and Grothendieck (1950s)
    - Stacks
    - Schemes
    - Sheaves
    - Etale Cohomology
  - Wiles and Fermat's Last Theorem

Narrative - building Algebraic Geometry in the 20th century
Include contributions of 
Weil, Zariski, Serre
Italian school: Castelnuovo, Enriques and Severi

Technical innovations: schemes, motives and topoi

Important Articles: Kansas and Tohoku



Achievements: Proving the Weil Conjectures
(What are they?)
Suggested that topological methods of cohomology applied to algebraic geometry might have huge consequences for number theory

Most famous work: Foundations of algebraic geometry

The general idea is to shift from considering points of a manifold to certain ideals of a ring of functions on this manifold.

Contributions: Unified many cohomology theories, schemes



> Schemes are important even for geometry over the complex numbers. Ancient Greek geometers already debated whether or not a circle tangent to a line meets it in a "bigger" point than when two lines cross. In scheme theory the answer is simply "yes." With schemes a point of tangency includes an infinitesimal neighborhood of an ordinary point. 



Italian school producing incorrect proofs:

> As for a result that was not simply incorrectly proved, but actually false, there is the case of the [Severi bound](http://www.ams.org/mathscinet/search/publdoc.html?arg3=&co4=AND&co5=AND&co6=AND&co7=AND&dr=all&pg4=AUCN&pg5=TI&pg6=PC&pg7=MR&pg8=ET&r=1&review_format=html&s4=severi&s5=massimo&s6=&s7=&s8=All&vfpref=html&yearRangeFirst=&yearRangeSecond=&yrop=eq)(*) for the maximum number of singular double points of a surface in P^3. The prediction implies that there are no surfaces in P^3 **of degree 6** with more than 52 nodes, but in fact there are such surfaces in P^3 with 65 nodes such as the Barth sextic

![img](http://mathworld.wolfram.com/images/gifs/BarthSexticNodes.gif)



# References

- On the Italian school and Severi's errors
  - The Legacy of Niels Henrik Abel (Oslo 2002), Springer-Verlag 2004: Brigaglia, Ciliberto, Pedrini, *The Italian school of algebraic geometry and Abel's legacy*, 295--347
- R´ecoltes et Semailles
- *The Historical Development of Algebraic Geometry*, The Amer. Math. Monthly, Vol. 79, No. 8, pp. 827-866
- [Dieudonne](https://www.amazon.com/s/ref=dp_byline_sr_book_1?ie=UTF8&text=Jean+Dieudonne&search-alias=books&field-author=Jean+Dieudonne&sort=relevancerank) - History of Algebraic Geometry
- [https://www.maa.org/sites/default/files/pdf/upload_library/22/Ford/Dieudonne.pdf](https://www.maa.org/sites/default/files/pdf/upload_library/22/Ford/Dieudonne.pdf)
- [http://smf4.emath.fr/Publications/RevueHistoireMath/3/pdf/smf_rhm_3_1-48.pdf](http://smf4.emath.fr/Publications/RevueHistoireMath/3/pdf/smf_rhm_3_1-48.pdf)
- [http://www.ams.org/notices/200409/fea-grothendieck-part1.pdf](http://www.ams.org/notices/200409/fea-grothendieck-part1.pdf)
- [http://xahlee.info/math/i/Alexander_Grothendieck_cartier.pdf](http://xahlee.info/math/i/Alexander_Grothendieck_cartier.pdf)
- [http://www-groups.dcs.st-and.ac.uk/~history/Biographies/Grothendieck.html](http://www-groups.dcs.st-and.ac.uk/~history/Biographies/Grothendieck.html)

# The Math

$\textbf{Definition}:$ Given a field $\mathbb{K}$ and a projective space $\mathbb{P}^n = \{ (a_i)_n \in \mathbb{K} / 0 \} /\sim$ where $(a_i)_n \sim (\lambda a_i)_n$ for $\lambda \in \mathbb{K}/0$, if $F \in \mathbb{K}[\{x_i\}_n]$ is a polynomial in $n$ variables, a **projective variety** is given by $Z(F) = \{ (a_i)_n \in \mathbb{P}^n \vert F((a_i)_n) = 0\}$, the zero set of this polynomial.

$\textbf{Examples}: $ 
$$\mathbb{P}(\mathbb{C}) = \mathbb{C}\cup\inf \cong S^2$$
$$ \mathbb{P}^2(\mathbb{C}) \cong S^1 \times S^1 $$

$\textbf{Definition}:$ **Singularity**




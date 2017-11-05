# What is Homological Algebra



- Why was it invented?
- What is it used for?
- What are some easily understandable results that rely on it?
  - Universal coefficient theorem?
  - Used to prove Fermat's Last Theorem (cohomology in relation to modular elliptic curves)
- Where does it come up
  - Stoke's theorem: an integral over an $n$-dimensional region $R$ of a manifold can be realized as an $n-1$ dimensional integral over $\boundary R$.



## Content

- Homology and cohomology
  - Used to detect $n$-dimensional holes, distinguishes manifolds. Given a manifold $M$,
    - A *cycle* is a closed submanifold
    - A *boundary* is a cycle which is also the boundary of another cycle
    - A *homology class* is an equivalence of **cycles modulo boundaries**
  - If such a class is nontrivial, this represents a cycle that is *not* the boundary of any submanifold - i.e. a hole.
    - That is, a cycle would be considered a “trivial hole” if it is a boundary, and two “different” cycles would be considered the same hole if their difference is a k-boundary.
  - Easy example: all paths on $S^2$ are homotopic to a point, not the case for $S^1 \times S^1$.
    - Note: $S^n \neq \prod_{i=1}^n S^1$
  - Construction: a generalization of the Euler characteristic computation
  - Index by the integers, $H_i$. We can look at the Betti numbers, $b_i = \text{dim}_{\QQ}H_i(X: \QQ)$
    - Give the number of $n$-dimensional cuts that must be made to disconnect a surface
    - $b_0$ is the number of connected components
    - $b_1$ is the number of holes 
      - $H_1(S^1\times S^1) = \ZZ \oplus \ZZ$
    - $b_2$ is the number of "2-dimensional" holes, i.e. an empty volume.
      - Number of plugs you'd need to blow air into to inflate the object!
- Modules
  - Most important classes
    - Projective
    - Injective 
    - Flat
  - Other nifty types (not mutually exclusive)
    - Free
    - Graded
- Short Exact Sequences
  - Splitting of sequences
    - Realize as an isomorphism
  - Importance/use of exactness
- Chain Complexes and maps
- Tensor Product and Hom
  - As an adjoint pair
- Derived Functors
- $\tor$
  - Generalize the tensor product: $\text{Tor}^R_0(A,B) \cong A \otimes_R B$.
  - Formally: For a fixed module $M$ over a ring $R$, derived functor of $M \tensor_R \placeholder$
  - Measures failure of tensor product to preserve exact sequences
- Projective Resolutions
  - Exists for any module $M$, yielding an exact sequence 
    $\cdots \to Pn \to \cdots \to P_1 \to P_0 \surjects  M \to 0$
  - Projective resolution of $M$ can be used to calculate $\text{Tor}_n^R(M,N)$ for all $n$.
- $\ext$
  - Derived functor of $\hom_R(M, \placeholder)$
  - Measures failure of $\hom$ to preserve exactness
- Spectral Sequences
- Snake Lemma
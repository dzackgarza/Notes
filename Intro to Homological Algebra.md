# What is Homological Algebra



- Why was it invented?
- What is it used for?
- What are some easily understandable results that rely on it?
  - Universal coefficient theorem?



## Content

- Homology and cohomology
  - Used to detect $n$-dimensional holes, distinguishes manifolds. Given a manifold $M$,
    - A *cycle* is a closed submanifold
    - A *boundary* is a cycle which is also the boundary of another cycle
    - A *homology class* is an equivalence of cycles modulo boundaries
  - If such a class is nontrivial, this represents a cycle that is *not* the boundary of any submanifold - i.e. a hole.
  - Easy example: all paths on $S^2$ are homotopic to a point, not the case for $T^2$.
- Modules
  - Free
  - Projective
  - Flat
  - Graded
- Short Exact Sequences
  - Splitting of sequences
    - Realize as an isomorphism
  - Importance/use of exactness
- Chain Complexes and maps
- Tensor Product and Hom
  - As an adjoint pair
- Tor
  - Generalize the tensor product: $\text{Tor}^R_0(A,B) \cong A \otimes_R B$.
- Projective Resolutions
  - Exists for any module $M$, yielding an exact sequence 
    $\cdots \to Pn \to \cdots \to P_1 \to P_0 \surjects  M \to 0$
  - Projective resolution of $M$ can be used to calculate $\text{Tor}_n^R(M,N)$ for all $n$.
- ​
- Ext
- Spectral Sequences
- Snake Lemma
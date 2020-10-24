# Proofs Workshop

## Propositional Logic

- Propositions
    - Statements that can be assigned a true or false value. Examples:
        - $1+1 = 2$
        - $1+1 = 3$
        - $1+1 \not = 5$
        - It is raining today.
        - $\sqrt{2}$ is irrational
        - If $x$ is even, then $x^2$ is even.
        - 13 is prime
    - Counterexamples:
        - It is sunny enough today.
        - 13 is a nice number.
        - $1+1$
        - $x^2$
    - Generally label a proposition by a letter, usually $P,Q$
        - $P :=$ "2 is even"
        - $Q :=$ "4 is even"
    - Can also have propositions depend on a variable (called a "predicate")
        - $P(x) :=$ "$x$ is even"
        - Note that "$x$ is even" is not inherently true or false! Variable isn't instantiated yet.
- Combining
    - Conjunction
    - Disjunction
    - Negation
    - Combinations of propositions are themselves propositions (can have true/false value)
        - Example: $(P \vee (\not Q \vee S)) \vee (R \wedge \not T)$
- Truth Tables
    
    - General Example
        | $P$ | $Q$ | $P \vee Q$  |
        | --- | --- | ---           |
        | F   | F   | F             |
        | F   | T   | T             |
        | T   | F   | T             |
        | T   | T   | T             |
    
    - Systematic Way
        | $P$ | $Q$ | $P \vee Q$  |
        | --- | --- | ---           |
        | 0   | 0   | 0             |
        | 0   | 1   | 1             |
        | 1   | 0   | 1             |
        | 1   | 1   | 1             |
- Implications
    -  $P \implies Q$, in English: "If $P$ is true, then $Q$ is true," or in shorthand, "If $P$, then $Q$."
        -  $P$ is the "premise", $Q$ is the conclusion
        - Difference in coloquial use: we often think $P \implies Q$ is the same as $\not P \implies \not Q$. This is not generally true!
        - Example: "If it is sunny today, then I will go outside."
            - Let $P$ = "It is sunny today"
            - Let $Q$ = "I will go outside"
            - I then assert $P \implies Q$.
            - If I tell you "It is not sunny today," what can you conclude?
            - Answer: nothing! Maybe I will go outside in the rain too!
    - Insert truth table for $P \implies Q$
    - "Sufficient" and "necessary"
    - Sometimes useful conversions:
        - $A \implies B \iff (A \vee \tilde{} B)$
- Determining Truth and/or Equivalence
    - Tautologies: Truth table only has "True" as a result.
    - Iff, if and only if, $\iff$
    - When are two propositions equal?
        - When they have the exact same truth table, or
        - When one can be reduced to another using relations
    - Truth Tables (Exhaustive Analysis)
    - De Morgan's Law (Algebra)
        - "And" is like *
        - "Or" is like +
        - "Not" is like a negative sign
        - Example:
            - Is this valid? 
                $P \wedge (Q \vee R) = (P \wedge Q) \vee (R \wedge Q)$
            - Write LHS as $P(Q + R) = PQ + PR$, done.
- Contrapositive
    - Truth table for contrapositive $\not Q \implies \not P$
    - Show equal to $P \implies Q$
- Converse
    - $P \implies Q$, then the converse is $Q \implies P$
    - Equivalently, $\tilde{} P \implies \tilde{} Q$ (use contrapositive)
- Quantifiers
    - Recall predicates
    - $\exists, \forall, \exists !$, and negations
    - Need a universe! Examples:
        - $\mathbb{N} \subset \mathbb{Z} \subset \mathbb{Q} \subset \mathbb{R} \subset \mathbb{C} \subset \mathbb{H} \subset \mathbb{O}$
        - Or any set $S$ really.
    - Examples
        - $(\forall x \in \mathbb{N})(x^2 \geq x)$
    - Converting quanitifers to implications
    - Commuting quantifiers
    - Negating a proposition
        - $\tilde{} \forall x, P(x) \iff \exists x \mid \tilde{} P(x)$
        - $\tilde{} \exists x \mid P(x) \iff \forall x, \tilde{} P(x)$
- Definitions and Theorems
    - A definition is just an $\iff$ statement.
    - Just a implication of the form $(P_1 \wedge P_2 \wedge \cdots \wedge P_n) \implies Q$ where the $P_i$ are some conditions and $Q$ is the desired result.
    - TFAE
- Summary:
    - Propositions: True or False
    - Predicates: Not propositions, usually depend on a variable. Subbing in the variable *creates* a proposition.
    - Tautologies: Always true
    - Implications: $P \implies Q \iff P \vee \tilde{} Q$
    - Contrapositive: $P \implies Q \iff \tilde{}Q \implies \tilde{}P$
    - Converse: $P \implies Q \not = Q \implies P$
    - Combine with $\tilde{}, \forall, \exists$
    - $P \iff Q$ means $P,Q$ have identical truth tables
    - De Morgan's 

## Proof Techniques

Summary, always trying to prove $P \implies Q$:
- Direct
    - By Cases
    - Equivalence
- Contrapositive
- Contradiction
- (Disproof) Counterexample
- Induction

Details:

Direct $P \implies Q$:
- Example:
    - $p \mid a \wedge p \mid b \implies p \mid (a\pm b)$
    - Write $a = kp, b = lp$, then $(a\pm b) = (kp \pm lp) = p(k\pm l)$.
- Technique:
    - Assume that $P$ is true
    - Smaller intermediate implications:
        - $P \implies R_1$
        - $R_1 \implies R_2$
        - $\cdots$
        - $R_n \implies Q$
    - Conclude $Q$
- Note: we don't actually care if $P$ is actually true! We just want to show that $P$ is connected to $Q$ by implication.

Direct $P \iff Q$:
- First prove $P \implies Q$
- Then prove $Q \implies P$

Contapositive
- Example: Show that $\forall n \in \mathbb{N},~ \forall d \in \mathbb{N} \ni d\mid n,~$ ($n$ odd $\implies d$ odd).
    - Contrapositive: $d$ even $\implies n$ even.
    - Suppose $d\mid n$, then $n = kd$
    - Suppose $d$ is even, then $d=2l$
    - Then $n = kd = (2l)d = 2(ld) = 2c$ for some integer $c$, so even by defn. Done.
- Let $n = d^2$, then this says that $d^2$ odd $\implies d$ odd, and simultaneously that $d$ even $\implies d^2$ even. Nice!

Contradiction
- Technique: to prove $P \implies Q$, assume $P$ is true. Then show that somehow $P \implies R$ for some $R$ that is known to be false.
    - General use: Show that $P \implies S$ for some statement (*any* statement really) and also that $P \implies \tilde{} S$. (Then take  $R = S \wedge \tilde{} S$, which can never be true.)
    - By truth table, $P \implies \text{False}$ is always a false implication.
- Example: Show that $\sqrt{2}$ is irrational.
    - Suppose $\sqrt{2}$ were rational 
        - Note: this is our $P$. 
    - Then $\sqrt{2} = p/q$ where $\gcd{(p,q)} = 1$ (i.e., it just has some fraction in lowest terms). 
        - Note: this is our $S$ that will be contradicted.
    - Then square both sides, so $2 = p^2 / q^2$
    - Then $2q^2 = p^2 \implies p^2 \text{ even } \implies p \text{ even }$
    - So write $p = 2k$, so $p^2 = (2k)^2 = 4k^2$
    - Then $2q^2 = p^2 = 4k^2 \implies q^2 = 2k^2 \implies q^2 \text{ even } \implies q \text{ even }$
    - But then $p$ even and $q$ even $\implies p/q$ wasn't in lowest terms (so $\tilde{} S$) and we have our contradiction. So we must reject $P$.
- Another common example: equations leading to $1=0$ or $2=1$ or something.


## Summary: $P \implies Q$
- Direct: Assume $P$ is true, then show that $Q$ is true
- Contrapositive: Assume $Q$ is false, show that $P$ is false.
- Contradiction: Assume $P$, show that a known false statement $S$ is true as a consequence.


# Induction
Used to prove statements of the form $\forall n\in \mathbb{N}, P(n)$. Two parts: base case and inductive step.

General idea: you can generate all of $\mathbb{N}$ using the number $1$ and the $+$ operation. So if you show something is true at one number (base case), and that it remains true when you increment by 1, then it must be true for any finite number.

So we say it is true for all $n\in \mathbb{N}. Why? Give me a number $n$. If I've proved by induction, I know it's true for (say) 1, and it's true for $1+1 = 2$, and I know it's true for $2+1 = 3$, and $\cdots$ it's true for $(n-1) + 1 = n$.

Formally, written as $\forall x\in \mathbb{N}, P(x) \iff P(1) \wedge (P(n) \implies P(n+1))$.

Some variants:
- A fixed number of multiple base cases: 
$\forall x\in \mathbb{N}, P(x) \iff P(1) \wedge P(2) \wedge \cdots P(k) \wedge (P(n) \implies P(n+1)))$
- "Bigger" base case:
$\forall x\in \mathbb{N} \ni x\geq k, P(x) \iff P(k) \wedge (P(n) \implies P(n+1))$
- "Strong Induction": 
$\forall x\in \mathbb{N}, P(x) \iff P(1) \wedge (\forall k\leq n, P(k) \implies P(n+1))$
$\iff (P(1) \wedge P(2) \cdots \wedge (P(n)) \implies P(n+1))$

- Template:
    - Base Case: Show that $P(1)$ is true.
    - Inductive step: Supposing that $P(n)$ is true, show P(n+1) is also true. (i.e. $P(n) \implies P(n+1))$
        - Note: you can also equivalently suppose $P(n-1)$ is true and show $P(n)$ is true.
    - Alternative strong induction step: Supposing that $P(1)$ and $P(2)$ and $\cdots P(n)$ are all true, show $P(n+1)$ is also true. (i.e. $P(1)\wedge \cdots P(n) \implies P(n+1))$
        - Similarly, you can also just show that $P(1)\wedge \cdots P(n-1) \implies P(n)$


- Induction Example
Todo

- Strong Induction Example:
    - Every $n\in \mathbb{N}$ can be written as a product of prime power.
        - Examples: $4 = 2^2, 10 = 5*2, 180 = 2^2*3^2*5$
        - Base case: Show $P(1)$. Well, 1=1, so nothing interesting here.
            - Sometimes 1 is not considered prime - in that case, start with $P(2)$ and write 2=2
        - Inductive Step (Strong): Suppose every $k< n$ is a product of prime powers. Then two cases: 
            - $n$ is prime, in which case writing $n=n$ fulfills $P(n)$
            - Else, $n$ is composite, so $n=ab$ where $1 < a, b < n$. But by hypothesis, $P(a)$ and $P(b)$ are true because they are smaller than $n$!
            - Formally, write $n=ab$ where $a = p_0^{e_0} p_1^{e_1} \cdots p_i^{e_i}, b = p_0^{f_0} p_1^{f_1} \cdots p_j^{f_j}$. Just some products of some primes to some powers. Without loss of generality, take $i \leq j$ (otherwise just switch $a,b$)
            - Then write 
$$
ab = (p_0^{e_0} p_1^{e_1} \cdots p_i^{e_i})(p_0^{f_0} p_1^{f_1} \cdots p_j^{f_j}) \\
= p_0^{e_0 + f_0} p_1^{e_1 + f_1} \cdots p_i^{e_i + f_i} \cdots p_j^{f_j}
$$
            - This means that $n$ is *some* product of primes, which says that $P(n)$ is true, and we're done.
            - Note: It doesn't really matter what the primes and exponents are here, it just mattered that there was *some* way to write $n$ as *some* product of primes. We actually prove something stronger here by showing *exactly* how to write it!
            
# Combinatorial Proofs
For statements about integer equalities of the form $f(n) = g(n)$, we can prove the equality by establishing a bijection.

# Epsilon Delta

Single Variable
Multivariable ($\mathbb{R}^2$)

# Proofs of Algorithm Correctness


# Definitions to Know
- $p \mid a \iff \exists k\in \mathbb{Z} \ni a = kp$
- $p \cong q \mod m \iff \exists k\in\mathbb{Z} \ni p = q+km$
- $p-q\cong 0\mod m \iff m\mid p-q$
- $\forall (a,b) \in \mathbb{Z}, \exists (q,r) \in \mathbb{Z} \ni (a = bq + r)\wedge (0\leq r < b)$ [Division Algorithm]
- 
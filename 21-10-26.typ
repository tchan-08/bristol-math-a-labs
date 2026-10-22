1. Let $A={a,b,..,z},B={0,1,..9}$ and $C={0,1,2,3,4}$ with these relations:

- $R$ on $A times B$ with $R(a,b)$ if $a$ is the first letter of the English name of digit $b$ and

- $S$ on $B times C$ with $S(b,c)$ if $c$ is the remainder of $b mod 5$.

_What are $S^(-1)$ and $S compose R$?_

$S^(-1)=S(c,b)$, where $b$ is the number which leaves remainder $c$ after applying $mod 5$.

$S compose R = A times C$
=
2. Let $R,S,T subset.eq A times A$ be relations on the same set $A$. Prove or disprove each of the following statements. If the equality does not always hold, give a concrete counterexample.

    a. $(R compose S)^(-1)=S^(-1) compose R^(-1)$

    Let $(a,c) in (R compose S)^(-1)$

    $(c,a) in R compose S$ _via inverse_

    $(c,b) in S, (b,a) in R$ _via composition_
    
    $(b,c) in S^(-1), (a,b) in R^(-1)$ _via inverse_

    $(a,c) in S^(-1) compose R^(-1)$ _via composition_

    $((R compose S)^(-1) subset.eq S^(-1) compose R^(-1)) and (S^(-1) compose R^(-1) subset.eq (R compose S)^(-1))$

    $top$

    b. $(R^(-1))^(-1)=R$

    Let $(a,b) in (R^(-1))^(-1)$

    $(b,a) in R^(-1)$ _via inverse_

    $(a,b) in R$ _via inverse_

    $((R^(-1))^(-1) subset.eq R) and (R subset.eq (R^(-1))^(-1))$

    $top$

    c. If $R subset.eq S$, then $R compose T subset.eq S compose T$

    Let $(a,c) in R compose T$

    $(a,b) in T, (b,c) in R$ _via composition_

    $(b,c) in S$ _via subset_

    $(a,b) in T, (b, c) in S$

    $(a,c) in S compose T$ _via composition_

    $R compose T subset.eq S compose T$

    $top$

    #colbreak()

    d. $R compose (S union T) = (R compose S) union (R compose T)$

    Let $(a,c) in R compose (S union T)$

    $(a,b) in S union T, (b,c) in R$ _via composition_

    $((a,b) in S) or ((a,b) in T), (b,c) in R$ _via union_

    $(a,c) in R compose S or (a,c) in R compose T$ _via composition_

    $(R compose S) union (R compose T)$ _via union_

    $(R compose (S union T) subset.eq (R compose S) union (R compose T)) and ((R compose S) union (R compose T)) subset.eq (R compose (S union T))$

    $top$

    e. $R compose (S inter T)=(R compose S) inter (R compose T)$

    Let $(a,c) in R compose (S inter T)$

    $(a,b) in S inter T, (b,c) in R$ _via composition_

    $((a,b) in S and (a,b) in T), (b,c) in R$ _via intersection_

    $(a,c) in R compose S and (a,c) in R compose T$ _via composition_

    $(R compose T) inter (R compose S)$ _via intersection_
=
3. Give an example of a partial order that is not total.

The subset operator ($subset.eq$) is a partial order as it satisfies:

- Reflexivity: e.g. $a subset.eq a$

- Antisymmetry: e.g If $a subset.eq b and b subset.eq a$, then $a = b$

- Transitivity: e.g. If $a subset.eq b and b subset.eq c$, then $a subset.eq c$

However, it is not a total order:

Totality is defined as: $forall a,b:S. space (a R b or b R a)$

Let $a={1}, b={2}$, with the relation $R=subset.eq$

$a subset.eq.not b and b subset.eq.not a$, therefore subset is not total.
=
4. On the set of integers, the relation | pronounced 'divides' is defined as follows: $a|b$ if there is some integer $k$, such that $a k = b$. Is this reflexible, symmetric, antisymmetric, transitive, a partial order, an equivalence?

- Reflexivity $checkmark$: $a|a$, e.g. $2|2$

- Symmetric $crossmark$: If $a|b$, $b|a$ does not necessarily hold. e.g. $2|4$ does not imply $4|2$

- Antisymmetric $crossmark$: If $a|b and b|a$, then $a=b$. e.g. $2|2$ implies $2 = 2$

- Transitive $checkmark$: If $a|b and b|c$, then $a|c$ since $c$ is just a multiple of $a$. e.g. $2|4 and 4|8$, and $2|8$

- Partial order $crossmark$: It's not antisymmetric, thus it is not partial order.

- Equivalence $crossmark$: It's not symmetric, thus it is not equivalent.
=
5. Suppose $(A, (lt.eq)_A)$ and $(B, (lt.eq)_B)$ are partially ordered sets. Prove that the product order is a partial order, but not necessarily total.

$(a_1,b_1) lt.eq (a_2,b_2) <==> (a_1 (lt.eq)_A space a_2) and (b_1 (lt.eq)_B space b_2)$

- Reflexivity $checkmark$. e.g. $(1,2) <= (2,3), (1<=2) and (2 <= 3)$

- Antisymmetric $checkmark$. e.g. $(0,1) <= (0,1), (0 <= 0) and (1 <= 1), (0,1) = (0,1)$

- Transitive $checkmark$. e.g. $(0,1) <= (1,2) and (1,2) <= (2,3) => (0,1) <= (2,3), (0 <= 2) and (1 <= 3)$

- Totality $crossmark$. e.g. $(1,2) lt.eq.not (2,1) and (2,1) lt.eq.not (1,2)$
=
6.

The ancient Chinese book _I Ching_ contains eight trigrams.

A broken line is called a _yin_ line, and a solid line is called a _yang_ line.

It is said in the West that binary numbers are partly the invention of the German Philosopher and Mathematician (among many other things) Gottfried Wilhelm Leibniz. However, Leibniz was definitely aware of the I
Ching and even came up with the analogy *yin=0*, *yang=1*, so the invention of binary might be better credited to China some time around 1000 B.C

    a. The relation $R$ on the set of eight trigrams is defined as follows: $R(A,B)$ if in all the places where you put ink to draw $A$, you also put ink to draw $B$; equivalently, you could transform $A$ into $B$ by possibly adding ink, but not removing any. For example, $R("water", "lake")$ holds because you can add ink to complete the lowest line, but $not R("lake", "earth")$ because once you have drawn 'lake', you cannot make 'earth' without erasing anything.

    *What kind of relation is $R$? Prove your answer.*

    - Reflexivity $checkmark$: $R("heaven", "heaven")$

    - Symmetric $crossmark$: $R("lake", "heaven") eq.not R("heaven", "lake")$

    - Antisymmetric $checkmark$: $a R b and b R a => a = b$

    - Transitive $checkmark$: $R("earth", "mountain") and R("mountain", "wind") => R("earth", "wind")$

    - Partial $checkmark$: Reflexivity, antisymmetric and transitive.

    - Totality $crossmark$: $not (R("lake", "earth") and R("earth", "lake"))$

    b. The relation $S$ on the set of eight trigrams is defined as follows: $S(A,B)$ if you can change $A$ into $B$ by changing at most one line (that is changing a _yin_ into a _yang_ line, or the other way around).

    *What kind of relation is $S$? Which properties of relations does it have?*

    - Reflexivity $checkmark$: $S("heaven", "heaven")$

    - Symmetric $checkmark$: $S("earth", "water") and S("water", "earth")$

    - Antisymmetric $crossmark$: $S("earth", "water") and S("water", "earth") and "water" eq.not "earth"$

    - Transitive $crossmark$: $S("earth", "water") and S("water", "wind") arrow.r.double.not S("earth", "wind")$

    - Partial $crossmark$: Not antisymmetric nor transitive.

    - Totality $crossmark$: Not partial.

    
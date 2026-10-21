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

    #colbreak()

    d. $R compose (S union T) = (R compose S) union (R compose T)$

    Let $(a,c) in R compose (S union T)$

    $(a,b) in S union T, (b,c) in R$ _via composition_

    $((a,b) in S) or ((a,b) in T), (b,c) in R$ _via union_

    $(a,c) in R compose S or (a,c) in R compose T$ _via composition_

    $(R compose S) union (R compose T)$ _via union_

    $(R compose (S union T) subset.eq (R compose S) union (R compose T)) and ((R compose S) union (R compose T)) subset.eq (R compose (S union T))$

    $top$
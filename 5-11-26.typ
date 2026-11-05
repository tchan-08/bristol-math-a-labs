1. Let a fuzzy set $C$ on $RR$ have triangular membership.

#text(size: 1.2em)[
  #align(center)[
    $ mu_C (x) = cases(
      0 &"if" x <= -1,
      (x+1)/1 &"if" -1<x<0,
      (1-x)/1 &"if" 0<= x <1,
      0 &"if" x >= 1
    ) $
  ]
]

a. Find the following:

i. $mu_C (-0.5) = (-0.5 + 1)/1 = 0.5$

ii. $mu_C (0.5) = (1 - 0.5))/1 = 0.5$

iii. $mu_C (2) = 0$

b. Sketch the graph and indicate where membership is maximal

#image("5-11-26-1B.png", width: 80%)

Membership is maximal at $x=0$.

c. Interpret the meaning of $mu_C (x) = 0.3$ in words.

A membership value of 0.3 equates to a partial membership $x in C$.
=
2. Show that $((A inter B^c) union (A^c inter C))^c = (A^c union B) inter (A union C^c)$.

a. Using algebraic set laws.

$((A inter B^c) union (A^c inter C))^c = (((A inter B^c) union A^c) inter ((A inter B^c) union C)))^c$

$= ((A^c inter B^C) inter (A union C inter B^c union C))^c$

$= A union B union A^c inter C union B inter C^c$

$= (A^c union B) inter (A union C^c)$
#pagebreak()
b. By membership function.

#align(center)[
  #table(
    columns: 9,
    inset:5pt,
    align: horizon,
    table.header(
      [$A$], [$B$], [$C$], [$A inter B^c$], [$A^c inter C$], [$((A inter B^c) union (A^c inter C))^c$], [$A^c union B$], [$A union C^c$], [$(A^c union B) inter (A union C^c)$]
    ),
    [0], [0], [0], [0], [0], [1], [1], [1], [1],
    [0], [0], [1], [0], [0], [1], [1], [1], [1],
    [0], [1], [1], [0], [1], [0], [1], [0], [0],
    [0], [1], [0], [0], [0], [1], [1], [1], [1],
    [1], [1], [0], [0], [1], [1], [1], [1], [1],
    [1], [0], [0], [1], [0], [0], [0], [1], [0],
    [1], [1], [1], [0], [0], [1], [1], [1], [1],
    [1], [0], [1], [1], [0], [0], [0], [1], [0] 
  )
]
=
3. Let $A={1,2,3,4,5,6}$ and define a relation $R$ on $A$ by

$ R(a,b) <==> 3 | a - b $

a. Show that $R$ is an equivalence relation on $A$.

Symmetric: $checkmark$

$R(b,a) <==> 3 | b - a$

Reflexive: $checkmark$

$R(a,a) <==> 3 | a - a -> 3 | 0 -> top$

Transitive: $checkmark$

$R(a,b) and R(b,c)$

$a - b = 3n and b - c = 3m$

$b = a - 3n and a - 3n - c = 3m$

$a - c = 3m + 3n$

$a - c = 3(m + n)$

$top$

Therefore, $R$ is an equivalence relation on $A$.

b. List all the equivalence classes of $R$.

$[1] = {1,4}$

$[2] = {2,5}$

$[0] = {3, 6}$

c. Prove that these equivalence classes form a partition of $A$.

$[1], [2], [3] != emptyset$, all classes are non-empty.

$[1] union [2] union [3] = {1,2,3,4,5,6} = A$. All classes in combination cover all of $A$.

$[1] inter [2] inter [3] = emptyset$. All classes are disjoint.
=
4. Let $cal(U)$ denote the universe set and let ${A_i}_(i in I)$ be a family of subsets of $cal(U)$. Suppose that

$ forall i != j, A_i inter A_j = emptyset "and" cal(U) = union.big_(i in I) overline(A_i). $

Every element $x in cal(U)$ belongs to *at most one* of the set $A_i$.

a. Prove or disprove: $cal(U) = union.big_(i in I) overline(A_i).$

$x in cal(U)$

$x in union.big_(i in I) overline(A_i)$

$x in overline(A)_1 union overline(A)_2 union ... union overline(A)_n$

$x in.not A_1 inter A_2 inter ... inter A_n$

This claim is false, consider $x in A_1 inter A_2$. This would still be valid, therefore the claim is invalid.

b. If the statement is false, construct a counterexample and describe a *partition* of $cal(U)$ using both the sets $A_i$ and their complements.
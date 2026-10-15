#import "@preview/fitchcraft:1.0.1": *
#import "@preview/frederic:0.1.0": *

#set par(first-line-indent: 1em)

1. 

Consider the following questions:

_Find two non-empty sets, $A,B$, such that $A in B$ but $A subset.eq.not B$_

Let $A={1}, B={{1}}$

$A in B$, $A subset.eq.not B$

_Find two non-empty sets, $A,B$, such that $A in.not B$ but $A subset.eq B$_

Let $A={-1,-2}, B={-1,-2,{-1}}$
=
2. 

Let ${A_i}_(i in I)$ be a family of sets indexed by $I$ in a universe $cal(U)$. Prove that $overline(union.big_(i in I) A_i) = inter.big_(i in I)overline(A_i)$ 

- $overline(union.big_(i in I) A_i) = overline({A_0 union ... union A_i})$

- $not {A_0 or ... or A_i}$

- ${not A_0 and ... and not A_i}$

- ${overline(A_0) inter ... inter overline(A_i)}$

- $inter.big_(i in I) overline(A_i)$
=
3.

Write the power set of $S={a,b,c}$

$cal(P)(S) = {emptyset,{a},{b},{c},{a,b}{a,c},{b,c},{a,b,c}}$

4. 

Let $A = {1,2}, B={2,3}$

a. Compute $abs(A), abs(B), abs(A union B), abs(A inter B)$.

$abs(A) = 2$

$abs(B) = 2$

$abs(A union B) = 3$

$abs(A inter B) = 1$

b. Write out $cal(P)(A union B)$ and verify that $abs(cal(P)(A union B)) = 2^abs(A union B)$

$cal(P)(A union B)={emptyset,{1},{2},{3},{1,2},{1,3},{2,3},{1,2,3}}$

$abs(cal(P)(A union B)) = 8$

$2^(abs(A union B)) = 2^3 = 8$

$abs(cal(P)(A union B)) equiv 2^(abs(A union B))$
#pagebreak()
5. 

For the sets $A = {a}$ and $B = {a,b}$, write down the following:

a. $cal(P)(A)={emptyset,{a}}$

b. $cal(P)(B)={emptyset,{a},{b},{a,b}}$

c. $cal(P)(B\\A)={emptyset, {b}}$

d. $cal(P)(B)\\cal(P)(A)={{b},{a,b}}$

e. $A times cal(P)(B)={(a,emptyset),(a,{a}),(a,{b}),(a,{a,b})}$

f. $cal(P)(A times B)={emptyset,{(a,a)},{(a,b)},{(a,a),(b,b)}}$
=
6. 

For the same sets above, which of the following are true?

a. $A in cal(P)(B): top$

b. $A subset.eq cal(P)(B): bot$

c. $cal(P)(A) in cal(P)(B): top$

d. $cal(P)(A) subset.eq cal(P)(B): top$
=
7. Let $A,B$ be arbitrary sets (which could be empty). If $A subset.eq B$, which of the four statements in the above question hold in general? Prove the ones that do, and find counterexamples for the others.

a.

- $cal(P)(B)$ is defined as the set of all possible subsets of $B$

- As $A subset.eq B$, $A$ is part of the possible subsets of $B$

- Therefore, $A in cal(P)(B)$

b. 

- Let $A={a},B={a,b}$

- $cal(P)(B)={emptyset,{a},{b},{a,b}$

- $A subset.eq.not cal(P)(B)$

c. 

- Let $A={1},B={1}$

- $cal(P)(A)={emptyset,{1}},cal(P)(B)={emptyset,{1}}$

- $cal(P)(A) in.not cal(P)(B)$

d.

- Let $A={1},B={1}$

- $cal(P)(A)={emptyset,{1}},cal(P)(B)={emptyset,{1}}$
- $cal(P)(A) subset.eq cal(P)(B)$

#pagebreak()
8.  Answer the following questions on Cartesian product:

a. Is the Cartesian product commutative? What about associative?

Let $A={1,2},B={3,4}, C={5}$

$A times B = {(1,3),(1,4),(2,3),(2,4)}$

$B times A = {(3,1),(3,2),(4,1),(4,2)}$

$B times C = {(3,5),(4,5)}$

$(A times B) times C = {((1,3),5),((1,4),5),((2,3),5),((2,4),5)}$

$A times (B times C) = {(1,(3,5)),(1,(4,5)),(2,(3,5)),(2,(4,5))}$

- The Cartesian product is not commutative, as the product produces ordered pairs, which are changed depending on the order of operands.

- The Cartesian product is not associative, as ordered pairs differ when changing the grouping of terms.

b. Show that for sets $A,B$ we have $(A times B = emptyset) <-> ((A = emptyset) or (B = emptyset))$

Case 1: $(A times B = emptyset) => ((A = emptyset) or (B = emptyset))$

- The Cartesian product of $A,B$ is the set of all ordered pairs between elements of $A,B$

- There must be at least 2 elements in an ordered pair

- Therefore, if $A times B = emptyset$, then $A=emptyset or B=emptyset$, as only one of the sets need to be empty, as it will prevent ordered pairs from forming.

Case 2: $((A = emptyset) or (B = emptyset)) => (A times B = emptyset)$

- The $emptyset$ consists of no elements. If at least one of $A,B$ consist of no elements, this means that no pairs can be formed, thus $A times B = emptyset$

- *Therefore, $(A times B = emptyset) <-> ((A = emptyset) or (B = emptyset))$*

c. What can be said, for any sets $A,B$, about $(A times B) inter (B times A)$

- An ordered pair $(x,y)$ only exists in $(A times B) inter (B times A)$ when $X in A, y in B and x in B, y in A$

- Therefore, $(A times B) inter (B times A) = (A inter B) times (B inter A)$

d. Can you find example sets $A,B$ so that both $A subset.eq B$ and $A subset.eq cal(P)(B)$

- Let $A=emptyset, B={1}$

- $cal(P)(B)={emptyset,{1}}$

- $A subset.eq B$ and $A subset.eq cal(P)(B)$
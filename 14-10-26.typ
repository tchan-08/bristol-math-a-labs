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
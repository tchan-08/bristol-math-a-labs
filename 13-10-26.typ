#import "@preview/fitchcraft:1.0.1": *
#import "@preview/frederic:0.1.0": *

#set par(first-line-indent: 1em)

1. 

Consider the following questions:

a. How many elements does the set ${0,2,4,6} union {0,3,6}$ have, and what are they?

5 elements, ${0,2,4,3,6}$

b. How many elements does the set ${0,2,4,6} - {0,3,6}$ have, and what are they?

3 elements, {2,4,6}

2. 

Over the universe $cal(U)={1,2,3,4,5,6,7,8,9,10}$, consider the sets $A={1,4,7,10}, B={1,2,3,4,5}$, and $C={2,4,6,8}$. What are the following sets?

a. $overline(A)={2,3,5,6,8,9}$

b. $A union overline(B)={1,4,6,7,8,9,10}$

c. $overline(B) inter (C - A)={6,8}$ 

d. $overline(A inter B) union C={2,3,4,5,6,7,8,9,10}$

3. Let $cal(U)$ denote the universe set and $A,B subset.eq cal(U)$. Show that if $overline(A) subset.eq overline(B)$, then $B subset.eq A$.

- Let $x in overline(A) subset.eq overline(B)$, where $x$ is an arbitrary element.

- $forall x. (x in overline(A) => x in overline(B))$

- $forall x. (x in B => x in A)$

- $x in B subset.eq A$ 

- $B subset.eq A$

4. 

Here are some properties of sets that do not hold in general. What can we deduce about sets A, B
from these properties, if they do hold?

a. "$A inter B = A$": If this holds, then $A = B$

b. "$A union B = A$": If this holds, then $B = emptyset$

c. "$overline(A) union B = emptyset$": If this holds, then $B = emptyset$

d. "$overline(A union B) = overline(B)$": If this holds, $A inter overline(B) = emptyset$
#pagebreak()
5. 

State De Morgan’s law for sets without looking up the definition. Write the proof of De Morgan’s law
for sets.

*De Morgan's Law*: $overline(A union B) equiv overline(A) inter overline(B)$ and $overline(A inter B) equiv overline(A) union overline(B)$

- Case 1: $overline(A union B) equiv overline(A) inter overline(B)$

- Let $x in overline(A union B)$, where $x$ is an arbitrary element.

- $x in.not A union B$

- $x in.not A and x in.not B$

- $not(x in A or x in B)$

- $x in overline(A) and x in overline(B)$

- $x in overline(A) inter overline(B)$

- $top$

- Case 2: $overline(A inter B) equiv overline(A) union overline(B)$

- Let $x in overline(A inter B)$, where $x$ is an arbitrary element.

- $x in.not A inter B$

- $x in.not A inter x in.not B$

- $not(x in A and x in B)$

- $x in overline(A) or x in overline(B)$

- $x in overline(A) union overline(B)$

- $top$

6. Which of the following laws are true for all sets A, B, C? Prove or disprove each one.

a. $A inter B = B inter A$

- Let $x in A inter B$, where $x$ is an arbitrary element.

- $x in A and x in B$

- $x in B and x in A$

- $x in B inter A$

- $top$

b. $A-B = B-A$

- Let $A={1,2,3,4,5}$

- Let $B={1,2,3,6}$

- $A-B={4,5}$

- $B-A={6}$

- $bot$
#pagebreak()
c. $(A-B) inter C = (A inter C) - B$

- Case 1:

- Let $x in (A-B) inter C$, where $x$ is an arbitrary element.

- $x in (A and not B) and C$

- $x in A and not B and C$

- $x in (A and C) and not B$

- $x in (A inter C) - B$

- Case 2:

- Let $x in (A inter C) - B$, where $x$ is an arbitrary element.


- $x in (A and C) and not B$

- $x in A and C and not B$

- $x in A and not B and C$


- $x in (A - B) inter C$

d. $A - (B inter C) = (A - B) inter (A - C)$

- Let $A={1,2,3,4,5,6,7,8,9,10}$

- Let $B={4,5,6,7}$

- Let $C={1,2,3,4,5}$

- $A-(B inter C)={1,2,3,8,9,10}$

- $(A-B) inter (A-C)={8,9,10}$

- $bot$
=
7. 

The symmetric difference of two sets is defined as: $A Delta B = (A - B) union (B - A)$. 

Prove the following properties for all sets $A,B,C$:

a. $A Delta B = B Delta A$

- Let $x in A Delta B$, where $x$ is an arbitrary element.

- $x in (A-B) union (B-A)$

- $x in (A-B) or x in (B-A)$

- $x in A and not B or x in B and not A$

- $x in B and not A or x in A and not B$

- $x in (B-A) or x in (A-B)$

- $x in (B-A) union (A-B)$

- $x in B Delta A$

- Hence, $A Delta B = B Delta A$

b. $(A Delta B) Delta C = A Delta (B Delta C)$

- Let $x in (A Delta B) Delta C$, where $x$ is an arbitrary element.

- $x in ((A-B) union (B-A)) Delta C$

- $x in (((A-B) union (B-A)) - C) union (C - ((A-B) union (B-A)))$

- $x in (((A-B) union (B-A)) - C) or x in (C-((A-B) union (B-A)))$

- $x in (((A and not B) or (B and not A)) and not C) or x in (C and not((A and not B) or (B and not A)))$

- $x in (((A and not B) or (B and not A)) and not C) or x in (C and ((not A or B) and (not B or A)))$

- $x in (A and not B and not C) or (B and not A and not C) or (C and not A and not B) or (C and A and B)$

- $x in (A and ((not B and not C) or (B and C))) or (not A and ((B and not C) or (not B and C)))$

- $x in (A and not(B Delta C)) or (not A and (B Delta C))$

- $x in (A - (B Delta C)) union ((B Delta C) - A)$

- $x in A Delta (B Delta C)$

- $top$

c. $A Delta A = emptyset$

- Let $x in A Delta A$, where $x$ is an arbitrary element.

- $x in (A-A) union (A-A)$

- $x in emptyset union emptyset$

- $x in emptyset$

- $top$
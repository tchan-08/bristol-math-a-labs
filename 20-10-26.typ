#import "@preview/fitchcraft:1.0.1": *
#import "@preview/frederic:0.1.0": *

1. Write the function $f(x)=x^2 + 1$ on the domain {0,1,...,5} as a set.

Let $I={0,1,...,5}$

Let $O={f(0),f(1),...,f(5)}$

$O={1,2,5,10,17,26}$
=
2. What is the difference between the range and the image of a function? What can we say about functions where the two are equal?

- The range of a function is the set of all possible outputs that could be met (e.g. the range of $f(x) = x^2$ would be $RR^+$)

- The image of a function is the set of all outputs that are 'hit' when inputs are passed in. 
=
3. Consider the function $f:{0,1,...,9} -> {a,b,...,z}$ that maps digits to the first letter of the digit, when spelled out as an English word. For example, $f(0) = z$ because 0 is spelled 'zero'. 

  a. What is the image of $f$? 

  $"im"(f)={z,o,t,f,s,e,n}$

  b. What is the preimage of the letter 's' under $f$?

  $"im"^(-1)(f,s)={6,7}$ _(funny)_

  c. What is the (direct) image of ${1,2,3}$ under $f$?

  $"im"(f,{1,2,3})={o,t}$
=
4. For $A={0,1,2}$, compute the set ${(3x+1) mod 6 | x in A}$, where $a mod b$ is the remainder when dividing $a$ by $b$. How many elements does this set have?

Applying the operation to $A$ gives: ${4,1}$, giving 2 elements.
=
5. Give an example of a surjective function that does not have an inverse.

$f(x)=x^2$. This is because $f$ is not a 1:1 function, so every output could have more than one input.
=
6. Consider the function $f:{0,1,...,9} -> {a,b,...,z}$ that maps digits to the first letter of the digit, when spelled out as an English word. Is $f$ injective, surjective, both (bijective), or neither?

Neither. It's not injective, as some inputs have the same outputs (e.g. $f(6) = f(7)$). It's not surjective either, as not all outputs are mapped with an input (e.g. $a$ is not mapped to any inputs). Since it's neither injective nor surjective, it's not bijective either.
=
7. For each of the following functions, determine whether they're injective, surjective, or bijective.

  a. $f(x)=x+1, x in NN$

  Injective $checkmark$: All inputs have a unique output.
  
  Surjective $crossmark$: 0 does not have a natural input.

  Bijective $crossmark$: Injective but not surjective.

  b. $f(x)=x^2,x in NN$

  Injective $checkmark$: All inputs map to a unique output.

  Surjective $crossmark$: Not all outputs map to at least one input.

  Bijective $crossmark$: Injective but not surjective.

  c. $f(x)=x^2,x in RR$

  Injective $crossmark$: Not all inputs map to unique outputs.

  Surjective $crossmark$: Not all outputs map to at least one input.

  Bijective $crossmark$: Neither injective nor surjective.

  d. $f(x)=e^x, x in RR$

  Injective $checkmark$: All inputs map to a unique output.

  Surjective $crossmark$: Not all outputs map to at least one input.

  Bijective $crossmark$: Injective, but not surjective.

  e. $f(x)=e^x, f:RR -> RR^+$

  Injective $checkmark$: All inputs map to a unique output.

  Surjective $checkmark$: All outputs map to at least one input.

  Bijective $checkmark$: Both injective and surjective.

  f. Logical negation ($not$) as a function $V->V$, where $V={T,F}$

  Injective $checkmark$: All inputs map to a unique output.

  Surjective $checkmark$: All outputs map to at least one input.

  Bijective $checkmark$: Both injective and surjective.
=
8. Find a non-trivial bijection between $(0,1)$ and $(1,infinity)$. What is the inverse of your function?

$f(x)=1/x$

$f^(-1)(x)=1/x$
=
9. On the set $A={0,1,2}$, consider $f(a)=a+1 mod 3$ and $g(a)=2a mod 3$. What is $g compose f$ as a set and as a formula?

$g compose f equiv g(f(a)) = 2(a+1 mod 3) mod 3$

$g compose f = {2,1,0}$
=
10. Note that not all books define function composition the same way. Use the definition in the lecture.

  a. On $RR -> RR$, consider the functions $f(x)=2x, g(x)=x+1$, and $h(x)=x^2$. What is the function $k= f compose h compose g$, both as a function and evaluated at $x=4$?

  $f compose h compose g = f(h(g(x)))$

  $k = f(h(x+1))$

  $= f((x+1)^2)$

  $= 2((x+1)^2)$

  $= 2(x^2 + 2x + 1)$

  $= 2x^2+4x+2$

  $f compose h compose g$ at 4 $= 50$

  b. The same as above, but for the function $j = g compose h compose f$?

  $g compose h compose f = g(h(f))$

  $j = g(h(2x))$

  $= g((2x)^2)$

  $= (2x)^2 + 1$

  $=4x^2 + 1$

  c. On the set $S={1,2,3,4}$, consider the functions $f,g$ with signature $S->S$ defined as \ $f={(1,2),(2,4),(4,1),(3,3)}$ and $g={(1,3),(3,1),(2,2),(4,2)}$. \ What is $f compose g compose g$ both as a function, and evaluated at 2?

  $f compose g compose g=f(g(g))$

  $f compose g compose g$

  | $1 -> 2$

  | $2 -> 4$

  | $3 -> 3$

  | $4 -> 4$ 
=
11. $f: A -> B$ and $g: B -> C$. If $g compose f$ is injective, what can you say about $f$ and $g$?

$f$ is injective, $g$ doesn't have to be injective. This is because $f$ needs to have unique outputs, for $g$ to produce unique outputs. $g$ doesn't necessarily need to be injective, as it only needs to map unique outputs to the image of $f$, not the entire set of $B$.
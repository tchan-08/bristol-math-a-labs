#import "@preview/fitchcraft:1.0.1": *
#import "@preview/frederic:0.1.0": *

#set par(first-line-indent: 1em)

1. 
Let $T(x,y)$ represent the statement "$x$ trusts $y$" over the domain over the people in the world, and let $C$ be a constant representing "Charlie". Write a statement as a _WFF_ in predicate logic.

a. "There is exactly one person who trusts everybody."

$exists !x. forall y. T(x,y)$ 

b. "Charlie trusts at most 2 people."

$exists !x. exists !y. (T(C, x) or T(C,y) and x != y)$

c. "Everybody is trusted by someone other than themselves."

$forall x. exists y. (T(y,x) and x != y)$

d. "There is a person who is trusted by everyone but themselves."

$exists x. forall y. (T(y,x) and y != x)$
=
2.

Translate each formula back into natural language, determining a truth value for each statement.

a. $forall x. exists y. (T(x,y) and not T(y,x))$

Everybody trusts someone who doesn't trust them back.

b. $forall x. forall y. (T(x,y) => exists z. (T(x,z) and T(z,y)))$

If everybody trusts anyone, everybody trusts someone who trusts anyone.
=
3. 

Negate the following and simplify the statements.

a. $not exists x. forall y. (T(x,y) => T(y,x))$

$forall x. exists y. not(T(x,y) => T(y,x))$

$forall x. exists y. (T(x,y) and not T(y,x))$

b. $not forall x. (T(C,x) => exists y. (T(x,y))$

$exists x. not(T(C,x) => exists y. (T(x,y)))$

$exists x. (T(C,x) and not exists y. (T(x,y)))$

$exists x. (T(C,x) and forall y. not T(x,y))$
#pagebreak()
4. _Prove the following claim using the direct proof strategy._ 

*Claim*: For any integer $n$, if $n$ is divisible by 3, then $n^2$ is divisible by 9.

Let $n = 3m, m in ZZ$

$n^2 = (3m)^2$

$n^2 = 9m^2$

$n^2 = 9(m^2)$

*Hence, the claim is $top$*
=
5. _Prove the following claim in the integer domain using the indirect proof (contrapositive)
strategy._ 

*Claim*: If $a + b >= 100$, then $a >=50$ or $b >= 50$.

Assume that $a + b < 100$ when $a < 50$ and $b < 50$.

$a + b < 50 + 50$

$a + b < 100$

*Hence, the claim is $top$*
=
6. _Prove the following claim using any proof strategy you see fit._ 

*Claim*: For any integer $n$, if $3n + 7$ is even, then $n$ is odd.

Case 1: $n$ is even:

Let $n = 2m, m in ZZ$

$3n + 7 = 3(2m) + 7$

$= 6m + 7$

$= 2(3m) + 7$

*Hence, when $n$ is even, $3n + 7$ is odd*

Case 2: $n$ is odd:

Let $n = 2m + 1, m in ZZ$

$3m + 7 = 3(2m+1) + 7$

$= 6m + 10$

$= 2(3m + 5)$

*Hence, when $n$ is odd, $3n+7$ is odd*

*Therefore, claim is $top$*
#pagebreak()
7. _Prove the following claim in the integer domain using proof by contradiction._ 

*Claim*: If $a^2 + b^2$ is odd, then $a$ is even or $b$ is even.

Assume that if $a^2 + b^2$ is odd, $a$ and $b$ are odd.

Let $a, b = 2n + 1, 2m + 1, {n,m in ZZ}$

$a^2 + b^2 = (2n+1)^2 + (2m+1)^2$

$= 4m^2 + 4n^2 + 4m + 4n + 2$

$= 2(2m^2 + 2n^2 + 2m + 2n + 1)$

*Contradiction, hence statement is $top$*
=
8. _Prove the following claim in the integer domain using case distinction._ 

*Claim*: For each integer $n$, the remainder of $n^2$ when divided by 4 is either 0 or 1.

Let the integer $r$ represent the remainder.

Case 1: $n$ is even:

Let $n = 2m, m in ZZ$

$n^2 = 4m^2$

$= 4(m^2)$

$r = 0$

Case 2: $n$ is odd:

Let $n = 2m + 1, m in ZZ$

$n^2 = (2m+1)^2$

$4m^2 + 4m + 1$

$4(m^2 + m) + 1$

$r = 1$

*Therefore, claim is $top$*
=
9. 

For each statement below, decide whether it is true or false. Prove the true statements,
choosing your own proof strategy. For the false statements, give a counterexample.

a. "The product of two odd integers is odd."

Let $x, y = 3, 5$

$x + y = 8$, which is even.

*Hence, claim is $bot$*

b. If $x dot y$ is even, then $x$ and $y$ are even.

Let $x = 2, y = 5$

$x dot y = 10$, yet $y$ is odd.

*Hence, claim is $bot$*

c. The sum of two primes is always even.

Let two primes, $x, y = 2, 3$

$x + y = 5$, which is odd.

*Hence, claim is $bot$*

d. For all integers $n$, the term $n^3 + n$ is even.

Case 1: $n$ is even:

Let $n = 2m, m in ZZ$

$n^3 + n = (2m)^3 + 2m$

$= 8m^3 + 2m$

$= 2(4m^3 + m)$

Case 2: $n$ is odd:

Let $n = 2m + 1, m in ZZ$

$n^3 + n = (2m+1)^3 + (2m+1)$

$= 8m^3 + 12m^2  + 8m + 2$

$= 2(4m^3 + 6m^2 + 4m + 1)$

*Hence, claim is $top$*

5. If $n^2$ is divisible by 4, then $n$ is divisible by 4.

Let $n = 4m, m in ZZ$

$n^2 = (4m)^2$

$= 16m^2$

$= 4(4m^2)$

*Hence, claim is $top$*
=
10. 

Prove each of the following existential statements by providing a witness. State the witness
explicitly and verify that it satisfies the predicate.

a. $exists x : ZZ. x^2 = 4x$

Let $x = 4$

$x^2 = 4^2 = 16$

$4x = 4(4) = 16$

$16 = 16 space {x^2 = 4x}$

*Hence, statement is $top$*
#pagebreak()
b. $exists x : ZZ, x^3 < x$

Let $x = -2$

$x^3 = (-2)^3 = -8$

$-8 < -2 space {x^3 < x}$

*Hence, statement is $top$*

c. $exists x : ZZ. 2x + 1 = x - 4$

Let $x = -5$

$2x+1 = 2(-5)+1 = -9$

$x-4 = -5-4 = -9$

$-9 = -9 space {2x+1 = x-4}$

*Hence, statement is $top$*

d. $exists x : RR. x^2 - 3x + 2 = 0$

Let $x = -2$

$x^2 -3x + 2 = (-2)^2 -3(-2) + 2 = 0$

*Hence, statement is $top$*
=
11.

For each statement below, decide whether to disprove it (find a counterexample) or prove
it. If disproving, give an explicit counterexample and explain why it works. If proving, use the
arbitrary element strategy.

a. $forall x : ZZ. x^2 >= 2x$

Let $x = 1$

$x^2 = 1^2 = 1$

$2x = 2(1) = 2$

$1 gt.eq.not 2 space {x^2 gt.eq.not x} $

*Hence, statement is $bot$*

b. $forall x : RR. x^2 + 1 > 0$

Let $x$ be an arbitrary real number.

$x^2 >= 0$, as all real numbers squared are non-negative.

*Hence, statement is $top$*

c. $forall x : ZZ. x^2 + 2x + 1 >= 0$

Let $x$ be an arbitrary integer.

$x^2 + 2x + 1 = (x+1)^2$

$(x+1)^2 >= 0$ as all integers squared are non-negative.

*Hence, statement is $top$*

d. $forall x : ZZ. x^3 >= x$

Let $x = -2$

$x^3 = -8$

$-8 gt.eq.not -2 space {x^3 gt.eq.not x}$

*Hence, statement is $bot$*
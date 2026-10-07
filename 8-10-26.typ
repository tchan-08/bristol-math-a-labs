#import "@preview/fitchcraft:1.0.1": *
#import "@preview/frederic:0.1.0": *

#set par(first-line-indent: 1em)


1. 
Let p(x, y) represents the statement “x loves y” over the domain of all people in the world, and a constant O that represents “Oliver”. Write the statement as well-formed formulas in predicate logic.

a. "There is exactly one person whom everybody loves."

$exists !y.forall x.p(x,y)$

b. "There are exactly two people whom Oliver loves."

$exists !y.(exists !x.(p(O,x) and p(O,y)))$

c. "There is somebody who loves nobody but themselves."

$exists x forall y(p(x,x) and not p(x,y))$

2.
_Prove the following claim using the direct proof strategy._

*Claim*: For any even integer $n,n^2$ is even.

Let $n$ be an arbitrarily even integer.

$n = 2k, k in ZZ$

$n^2 = 4k^2$

$n^2 = 2(2k^2)$

*Hence, $n^2$ is even.*
=
_Prove the following claim in the integer domain using the indirect proof strategy._

*Claim*: If $a b$ is even, then $a$ is even or $b$ is even.

Let $a b$ be an even number, such that both $a$ and $b$ are odd.

$a = 2k + 1, b = 2m + 1, k, m in ZZ$

$(2k+1)(2m+1) = 4k m + 2k + 2m + 1$

$2(2k m + m + k) + 1 equiv 2p + 1, p in ZZ$

$2p + 1 equiv.not 2n, n in ZZ$

*Hence, $a$ or $b$ are even.*
=
_Prove the following claim in the integer domain using the indirect proof strategy._

*Claim*: For any integer $n$, if $n^3 + 5$ is odd, then $n$ is even.

Let $n^3 + 5$ be odd, where $n$ is odd.

$n = 2k + 1, k in ZZ$

$(2k + 1)^3 + 5 = 8k^3 + 12k^2 + 6k + 6$

$2(k^3 + 6k^2 + 3k + 3) equiv 2m, m in ZZ$

*Contradiction, hence $n$ is even.*
=
=
_Prove the following claim in the integer domain using proof by contradiction._

*Claim*: If $a b$ is odd, then $a$ is odd or $b$ is odd.

Let $a b$ be odd, where $a$ and $b$ are even.

$a = 2k, b = 2m, k, m in ZZ$

$(2k)(2m) = 4k m$

$2(2k m) equiv 2p, p in ZZ$

*Contradiction, hence $a$ and $b$ are odd.*
=
_Prove the following claim in the integer domain using case distinction._

*Claim*: $n(n+1)$ is always even.

Case 1: Let $n$ be even.

$n = 2k, k in ZZ$

$2k(2k+1) = 4k^2 + 2k$

$2(2k^2 + k) equiv 2m, m in ZZ$

Hence, for when $n$ is even, $n(n+1)$ is even.

Case 2: Let $n$ be odd.

$n = 2k+1, k in ZZ$

$(2k+1)(2k+2) = 4k^2 + 6k + 2$

$2(2k^2 + 3k + 1) equiv 2m, m in ZZ$

Hence, for when $n$ is odd, $n(n+1)$ is even.

*Therefore, $n(n+1)$ is always even.*
=
3. 
For the following statements, decide whether they are true or false. Prove the true statements, picking your own proof strategy. For the false statements, find a counterexample.

a. 

*Claim*: The sum of an even integer and an odd integer is an odd integer.

Let $a$ and $b$ be even and odd integers respectively.

$a = 2k, b = 2m + 1, k, m in ZZ$

$2k + (2m + 1) = 2k + 2m + 1$

$2(k + m) + 1 equiv 2p + 1, p in ZZ$

*Hence, the sum of even and odd integers is odd.*
=
b. 

*Claim*: If $x + y$ is even, then $x$ and $y$ have the same parity _(parity is the property of being odd or even)_

Case 1: Let $x$ and $y$ be even.

$x = 2k, y = 2m, k, m in ZZ$

$2k + 2m $

$2(k + m) equiv 2p, p in ZZ$ 

Hence, when $x$ and $y$ are even, $x + y$ is even.

Case 2: Let $x$ and $y$ be odd.

$x = 2k + 1, y = 2m + 1, k, m in ZZ$

$(2k + 1) + (2m + 1) = 2k + 2m + 2$

$2(k + m + 1) equiv 2p, p in ZZ$

Hence, when $x$ and $y$ are odd, $x + y$ is even.

Case 3: Let $x$ and $y$ be even and odd respectively.

$x = 2k, y = 2m+1, k, m in ZZ$

$2k + 2m + 1$

$2(k + m) + 1 equiv 2p + 1, p in ZZ$

Hence, when $x$ is even and $y$ is odd, $x + y$ is not even.

Case 4: Let $x$ and $y$ be odd and even respectively.

$x = 2k+1, y = 2m, k, m in ZZ$

$2k + 1 + 2m$

$2(k + m) + 1 equiv 2p + 1, p in ZZ$

Hence, when $x$ is odd and $y$ is even, $x + y$ is not even.

*Therefore, claim is $top$*
=
*Claim*: All primes are odd.

Let $n = 2$

$2 = 2(1)$, thus 2 is even.

However, 2 is a prime number, only divisible by $1$ and itself.

*Therefore, claim is $bot$*
=
*Claim*: For all integers $n$, the term $n^3 - n$ is even.

Case 1: Let $n$ be even.

$n = 2m, m in ZZ$

$(2m)^3 - 2m = 8m^3 - 2m$

$2(4m^3 - m) equiv 2p, p in ZZ$

Hence, when $n$ is even, $n^3 - n$ is even.

Case 2: Let $n$ be odd.

$n = 2m + 1, m in ZZ$

$(2m+1)^3 - (2m+1) = 8m^3 + 12m^2 + 4m$

$2(4m^3 + 6m^2 + 2m) equiv 2p, p in ZZ$

Hence, when $n$ is odd, $n^3 - n$ is even.

*Therefore, claim is $top$*
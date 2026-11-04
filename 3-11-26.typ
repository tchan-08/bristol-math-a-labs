#import "@preview/frederic:0.1.0": *

1. The *factorial function* $n!$ is defined as $1 dot 2 dot dot dot dot n$, i.e. it is $product_(i=1)^n i$. Consider the following _*incorrect*_ example of proof by induction.

*Claim*: For all natural numbers $n >= 1$, $n! > 2^n$.

*Proof*: Let us proceed by induction over $n$. Suppose that $n! > 2^n$ for some $n >= 1$. We shall show that $(n+1)! > 2^(n+1).$. By definition, $(n+1)! = (n+1) dot 2^n >= 2^(n+1)$. Therefore, $(n+1)! > 2^(n+1)$; thus completing our proof by induction.

Find an example $n >= 1$ such that $n! > 2^n$ and explain why the proof is incorrect.

Let $n = 1$. Following, $n! = 1, 2^n = 2$. $n! gt.not 2^n$. Therefore, this proof is incorrect. This is because the proof hasn't considered the base case of $n = 1$.
=
2. Prove the following claim.

*Claim*: For all integers $n >= 4$, we have $n! > 2^n$.

Consider the base case $n = 4$. Following, $n! = 24$ and $2^n = 16$. $n! > 16$.

Let $F(n)$ be the factorial function, and $G(n)$ be $2^n$.

Now consider the case $F(n+1) = (n+1) dot F(n)$.

Also consider the case $G(n+1) = 2 dot 2^n$.

Assume $F(n+1) > G(n+1)$.

$(n+1) dot n! > 2 dot 2^n$.

$((n+1) dot n!) / 2 > 2^n$. IH

Since $n! > 2^n$, we have proved it.
=
3. Consider the following proof by induction.

*Claim*: For all natural numbers $n$, the sum of the first $n$ odd numbers is $n^2$.

$ sum_(i=0)^(n-1) (2i+1) = n^2 $

Let $S(n) = sum_(i=0)^(n-1) (2i+1)$ and

$R(n) = n^2$

Consider the base cases $S(1), R(1)$.

$S(1) = R(1) = 1$

Now consider the cases $S(n+1), R(n+1)$.

$S(n+1) = (2n+1) + sum_(i=0)^(n-1) (2i+1)$

Using IH and assuming $S(n) = R(n)$:

$S(n+1) = (2n+1) + R(n)$

$S(n+1) = (2n+1) + n^2$

$S(n+1) = n^2 +2n + 1$

$S(n+1) = (n+1)^2$, which is just $R(n+1)$.

4. For each of the following claims, write a proof by induction:

a. $sum_(i=0)^n 2^i = 2^(n+1) - 1$;

Let: 

$S(n) = sum_(i=0)^n 2^i$ and

$R(n) = 2^(n+1)-1$

Consider the base case $S(0), R(0)$:

$S(0) = R(0) = 1$

Consider $S(n+1), R(n+1)$

$S(n+1) = 2^(n+1) + sum_(i=0)^n 2^i$

Using IH, and assuming $S(n) = R(n)$:

$S(n+1) = 2^(n+1) + (2^(n+1)-1)$

$S(n+1) = 2(2^(n+1)) - 1$

$S(n+1) = 2^(n+2) - 1$, which is just $R(n+1)$.

b. $sum_(i=0)^n r^i = (1-r^(n+1))/(1-r), r != 0, r != 1$;

Let:

$S(n) = sum_(i=0)^n r^i$ and 

$R(n) = (1-r^(n+1))/(1-r)$

Consider the base case $S(0), R(0)$:

$S(0) = 1$

$R(0) = (1-r)/(1-r) = 1$

$S(0)=R(0)$

Consider the cases $S(n+1), R(n+1)$:

$S(n+1) = r^(n+1) + sum_(i=0)^n r^i$

Using IH, and assuming $S(n)=R(n)$:

$S(n+1) = r^(n+1) + R(n)$

$S(n+1) = r^(n+1) + (1-r^(n+1))/(1-r)$

$S(n+1) = (r^(n+1)(1-r))/(1-r) + (1-r^(n+1))/(1-r)$

$S(n+1) = (r^(n+1) - r^(n+2))/(1-r) + (1-r^(n+1))/(1-r)$

$S(n+1) = (1- r^(n+2))/(1-r)$, which is just $R(n+1)$
#pagebreak()
5. Prove that $n^3 - n$ is divisible by 3 for all $n in NN$.

Let $S(n) = 3 | n^3 - n$

Consider the base case $S(1)$:

$S(0) = top$

$S(n) => S(n + 1)$

Consider the case $S(n+1)$:

$S(n+1) = 3 | (n+1)^3 - (n+1)$

$S(n+1) = 3 | n^3 + 3n^2 + 3n + 1 - n - 1$

$S(n+1) = 3 | 3n^2 + 3n + 1 + n^3 - n - 1$

Using IH, and assuming $S(n+1)$

$S(n+1) = 3 | 3n^2 + 3n + 1 + S(n) - 1$

$S(n+1) = 3 | (3n^2 + 3n) + (n^3 - n)$

$S(n+1) = 3 | 3(n^2 + n) + 3b$

$S(n+1) = 3 | 3a + 3b$

$S(n+1) = 3 | 3(a + b)$

$S(n+1) = top$

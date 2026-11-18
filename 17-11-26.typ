A coin is tossed repeatedly, an indefinite number of times. Let $A_k$ be the event that the $k"th"$ toss is a head for $k in NN$.

a. Explain in words what the event $inter.big_(k=n)^infinity A_k$ represents.

The probability of every toss being a heads.

b. Explain in words what the event $union.big_(k=n)^infinity A_k$ represents.

The probability of at least one toss being heads.

c. Explain in words what the event $union.big_(n=0)^infinity inter.big_(k=n)^infinity A_k$ represents.

The probability that at least some starting point $n$, in which all tosses following are heads.
=
2. The expression $m"d"n$ (for example 2d6) means roll $m$ identical $n$-sided fair dice with sides numbered from 1 to $n$ and add the sides following.

a. What is the probability of rolling a prime number with $1"d"20$?

$8/20$, there are 8 prime numbers in the sample space of 20.

b. What is the probability of rolling a dice of 4 with $2"d"6$?

$11/36$, there are 36 possible pairs, the pairs containing at least one 4 are: ${(n,4), (4,n), (4,4)}, (4,4) "is repeated"$.

c. What is the probability of an even number with $2"d"6$?

Odd pairs: 9 cases in which both are odd.

$1-9/36 = 27/36$

d. What is the probability of rolling a multiple of 3 with $2"d"4$?

Pairs where  you don't roll a multiple of 3: ${(1,4),(4,1),(1,2),(2,1),(4,2),(2,4)}$

$1-6/16=10/16$

e. What is the probability of rolling an even number with $3"d"2$?

Odd pairs: 1 case in which all 3 are odd.

$1-1/8=7/8$

f. You roll a $"d"12$ twice. What is the probability that exactly one of the rolls is a 7?

$(1/12 times 11/12) + (11/12 times 1/12) = 11/72$
#pagebreak()
g. Alice and Bob are playing a game where each rolls a d6. Alice wins if her roll is higher or equal to Bob's. What is the probability that Bob that wins?

$A=6,P("Bob wins") = 0$

$A=5, P("Bob wins") = 1/6$

$A=4, P("Bob wins") = 2/6$

$A=3, P("Bob wins") = 3/6$ 

$A=2, P("Bob wins") = 4/6$

$A=1, P("Bob wins") = 5/6$

$1/6 times 1/6 + 1/6 times 2/6 + 1/6 times 3/6 + 1/6 times 4/6 + 1/6 times 5 /6 = 5/12$

h. The same as above, but for general d$n$?

$(1/n times 1/n) + (1/n times 2/n) + ... + (1/n times (n-1)/n)$

i. The same as above, but back to them each using a d$6$, however this time Bob has a bonus that lets him add 2 to his dice roll.

$A=6, P("Bob wins") = 2/6$

$A=5, P("Bob wins") = 3/6$

$A=4, P("Bob wins") = 4/6$

$A=3, P("Bob wins") = 5/6$

$A=2, P("Bob wins") = 6/6$

$A=1, P("Bob wins") = 6/6$

$(1/6 times 2/6) + (1/6 times 3/6) + (1/6 times 4/6) + (1/6 times 5/6) + (1/6 + 6/6) + (1/6 + 6/6) = 13/18$

j. You roll a d6 and a d8. What is the probability that both dice show the same number.

$"d6"=1, P("d8"="d6") = 1/8$

$"d6"=2, P("d8"="d6") = 1/8$

$"d6"=3, P("d8"="d6") = 1/8$

$"d6"=4, P("d8"="d6") = 1/8$

$"d6"=5, P("d8"="d6") = 1/8$

$"d6"=6, P("d8"="d6") = 1/8$

$(1/6 times 1/8) times 6 = 1/8$

k. The same as above, but for general d$n$ and d$m$, where $n < m$?

$(1/n  times 1/m) times n = 1/m$
#pagebreak()
3. Let $(Omega, P)$ be a probability space. Prove the following theorems from the lecture notes, for arbitrary events $S,T$:

a. $P(emptyset) = 0$.

For a probability space, for all events $A_k$, $A_0$ + ... + $A_n$ = 1.

All events within the probability space have an $x$ chance of occuring, where $x > 0$.

Therefore, the act of no event occuring is 0.

b. If $S subset.eq T$, then $P(S) <= P(T)$.

If $S subset.eq T$, then $|S| <= |T|$

$P(S) = (|S|)/(|Omega|), P(T) = (|T|)/(|Omega|)$

$P(S) <= P(T)$

c. $P(overline(S)) = 1 - P(S)$.

The probabilities of all events in $Omega$ sum to 1.

Therefore, the probability of an event occuring, that is not $S$ is simply $1-P(S)$

d. $P(S union T) = P(S) + P(T) - P(S inter T)$.

The probability of events $S,T$ are $(|S|)/(|Omega|), (|T|)/(|Omega|)$.

$|S union T| = |S| + |T| - |S inter T|$

Therefore, $P(S union T) = P(S) + P(T) - P(S inter T)$

e. $P(S union T) <= P(S) + P(T) and P(S inter T) <= min(P(S),P(T))$

Via the double counting principle, $P(S union T) <= P(S) + P(T)$ as $P(S) + P(T)$ includes the intersection twice. 

$|S times T| <= |S| and |S times T| <= |T|$
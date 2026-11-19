1. In the winter, roads in Switzerland often get closed due to snow. On any given day, a road is closed with probability $p$, where $0 < p < 1$, independently of all other roads.

a. Imagine that there are $k$ roads between two Swiss villages $X$ and $Y$. What is the probability of:

i. all roads being open?

$P(k "roads open") = (1-p)^k$

ii. all roads being closed?

$P(0 "roads open") = p^k$

iii. at least one road being open?

$P(0 "roads open") = p^k$

$P(>= 1 "roads open") = 1 - p^k$

Suppose there are three Swiss villages $A,B,C$ and that there are two roads from $A$ to $B$ and two roads from $B$ to $C$.

b. Assume that one day, there is no way to reach $C$ from $A$. What is the probability that you can get from $A$ to $B$?

Let $T(x,y)$ represent the ability to go from $x$ to $y$.

$P(T(A,B) | overline(T(A,C))) = P(T(A,B) inter overline(T(A,C)))/P(overline(T(A,C)))$

$P(T(A,B) inter overline(T(A,C))) = (1-p^2)p^2$

$P(overline(T(A,C))) = 1 - (1-p^2)^2$

$P(T(A,B)| overline(T(A,C))) = ((1-p^2)p^2)/(1-(1-p^2)^2)$

c. The swiss government decides to improve the situation by building a tunnel from $A$ to $C$ directly. However the tunnel too is closed with probability $p$ on any one day (independently of all other roads) for maintenance. What is the answer to the previous question now there is a tunnel.

$P(T(A,B) | overline(T(A,C))) = P(T(A,B) inter overline(T(A,C)))/P(overline(T(A,C)))$

$P(T(A,B) inter overline(T(A,C))) = (1-p^2)p^3$

$P(overline(T(A,C))) = p(1-(1-p^2)^2)$

$P(T(A,B) | overline(T(A,C))) = ((1-p^2)p^3)/(p(1-(1-p^2)^2))$
#pagebreak()
2.  In this exercise, the task for each part is to write a joint probability table and then to answer the given questions from this table. Some of these questions can be tackled directly with Bayes' Theorem. For these, try to solve them using a table as well as with Bayes' to see how they relate to each other.

a. In a library where all books have either blue or yellow spines, $4/5$ of books with yellow spines are about mathematics, but only $1/5$ of books with blue spines are about mathematics. There are as many yellow as blue-spined books overall.

i. You pick a book at random. What is the probability that it is about mathematics?

Let $n$ be the total amount of books at the library.

$P("yellow book about mathematics") = 4/5 times n/2 = 4/10 n$

$P("blue book about mathematics") = 1/5 times n/2 = 1/10 n$

$P("book about mathematics") = (n/2)/n = 1/2$

ii. You come across a book on the table that is about mathematics. What is the chance that it has a yellow spine?

There are $n/2$ books about mathematics overall.

There are $4/10 n$ yellow-spined mathematics books.

$P("yellow" | "mathematics") = ((4n)/10 )/(n/2) = 4/5$

b. You want to go for a walk. However, when you wake up the day is cloudy and half of all raining days start off cloudy. On the other hand, two days in five start off cloudy and it's been rather dry recently with rain only on one day in ten.

a. What is the chance it will rain today?


$P(R | C) = 1/2$

b. You wake up again tomorrow. What is the chance it is not cloudy?

$P(C) = 2/5, P(R) = 1/10$

$P(C | R) = (P(R | C) dot P(C))/(P(R | C) dot P(C) + P(R | overline(C)) dot P(overline(C))) = (0.5 dot 0.4)/(0.5 dot 0.4 + 0.5 dot 0.9) = 4/13$

c.  In the original 1st generation Pokémon games, you could pick either a Fire, Water or Grass Pokémon
as your starter. Let's assume all choices are equally popular so $1/3$
of new players pick each of the three types. In your first Gym battle, you face Brock and if you fight him with your starter Pokémon then
how easy the battle is, depends on which one you picked. Let's say that if you picked Water or Grass, you have a $3/4$ chance of winning the first time and if you picked Fire, you have a $1/4$ chance.

i. Based on these numbers, what proportion of new players would beat Brock the first time they fight him?

$1/3 times 1/4 + 2/3 times 3/4 = 7/12$

ii. A kid called Ash plays Gen 1 Pokémon and beats Brock on the first fight. What is the probability that Ash picked the Water starter?

$P("Water" | "Win") = (P("Win" | "Water") times P("Water"))/P("Win") = (3/4 times 1/3)/(7/12) = 3/7$

#pagebreak()
d. One night in a bar in Las Vegas you meet a dodgy character who tells you that there are two types of slot machine in the Topicana, one that pays out 10% of the time, the other 20%. One sort of machine
is blue, the other red. Unfortunately the dodgy character is too drunk to remember which is which. The next day you randomly select red to try, you find a red machine and put in a coin. Assuming they are telling the truth and that both scenarios are equally likely until you do an experiment,

i. What is the probability that the red machines pay out more, if you lose?

$P("Red pays more" | "You lose") = (P("You lose" | "Red pays more") times P("Red pays more"))/P("You lose")$

$P("You lose") = P("You lose" | "Red pays more") times P("Red pays more") + P("You lose" | "Red pays less") times P("Red pays less") = 0.8 times 0.5 + 0.9 times 0.5 = 0.85$

$P("Red pays more" | "You lose") = (0.8 times 0.5)/(0.85) = 8/17$

ii. What is the probability that the red machines pay out more, if you win?

$P("Red pays more" | "You win") = (P("You win" | "Red pays more") times P("Red pays more"))/(P("You win"))$

$P("You win") = P("You win" | "Red pays more") times P("Red pays more") + P("You win" | "Red pays less") times P("Red pays less") = 0.2 times 0.5 + 0.1 times 0.5 = 0.15$

$P("Red pays more" | "You win") = (0.2 times 0.5)/0.15 = 2/3$ 
=
3. Craps is a gambling game played with dice.

In one version of craps, in the first phase you roll 2d6 called the “come out” roll. If you score a sum of 7 or 11, you win; if you score a sum of 2, 3, or 12, you lose; otherwise you proceed to the next stage of the game.

a. What is the probability of each of these outcomes (win, lose, next stage)?

$|Omega| = 6 times 6 = 36$

$W = {(1,6),(6,1),(2,5),(5,2),(3,4),(4,3),(5,6),(6,5)}$

$P(W) = 8/36$

$L = {(1,1),(1,2),(2,1),(6,6)}$

$P(L) = 4/36$

$N = 1 - (4/36 + 8/36) = 24/36$

If the game proceeds to the second stage, then the sum rolled in the “come out” roll is called the “point”. You repeatedly roll 2d6 as follows: if you roll values that sum to the point again, you win; if your dice sum to 7, you lose; otherwise, you reroll.

b. Suppose your point is 4. What is the probability that you win the second stage?

$W = {(1,3),(3,1),(2,2)}$

$P(W_1) = 3/36$

$L = {(1,6),(6,1),(2,5),(5,2),(3,4),(4,3)}$

$P(L) = 6/36$

$P(R) = 1 - (3/36 + 6/36) = 27/36$

$P(W_n) = 3/36 times (27/36)^n$
#pagebreak()
4. The probability of breast cancer is 1% for a person at age forty who participates in routine screening. If a person has breast cancer, the probability is 80% that they will get a positive mammography. If a person does not have breast cancer, the probability is 9.6% that they will also get a positive mammography. A person in this age group had a positive mammography in a routine screening. What is the probability that they actually has breast cancer?

$P(B) = 0.01$

$P("Positive test" | B) = 0.8$

$P("Positive test" | overline(B)) = 0.096$

$P(B | "Positive test") = (P("Positive test" | B) times P(B))/(P("Positive test"))$

$P("Positive test") = P("Positive test" | B) times P(B) + P("Positive test" | overline(B)) times P(overline(B))$

$= 0.8 times 0.01 + 0.096 times 0.99 = 0.10304$

$P(B | "Positive test") = (0.8 times 0.01)/(0.10304) = 25/322$

=
5. Adam decides to play 10 games of chess against Zarah, recording all the outcomes. They are both equally good at chess and both bad at forcing a draw, so they each win 50% of the time. Define the following events:

- $S$ is the event that Adam wins the first game.

- For each $k in {0,1,2,...,10}, T_k$ is the event that Adam wins $k$ games in total.

For which (if any) values in $k$ are the events of $S$ and $T$ independent?

_Independence when_ $P(A inter B) = P(A) times P(B)$

$P(S) = 0.5$

$P(T_k) = binom(10, T_k) times 0.5^(T_k) times 0.5^(10 - T_k)$

$P(T_k) = binom(10,T_k) times 0.5^10$

$P(S inter T_k) = binom(9,k-1) times 0.5^10$

$P(S) times P(T_k) = binom(9,k-1) times 0.5^10$

$0.5 times P(T_k) = binom(9,k-1) times 0.5^10$

$0.5 times binom(10,k) times 0.5^10 = binom(9,k-1) times 0.5^10$

$0.5 times binom(10,k) = binom(9,k-1)$

$0.5 times 10!/(k!(10-k)!) = 9!/((k-1)!(10-k)!)$

$10!/(k!(10-k!)) = (9!2)/((k-1)!(10-k)!)$

$10!/k! = (9!2)/(k-1)!$

$(10 times 9!)/(k times (k-1)!) = (9!2)/(k-1)!$

$10/k = 2$

$k = 5$

Events only independent at $k=5$
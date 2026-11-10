1. Use the sum rule, the product rule, or both to answer the following:

a. How many 3-digit codes can be formed if the first digit cannot be 0, and digits may repeat?

$9 times 10 times 10 = 900$ 3-digit codes

b. A student ID consists of either 2 letters + 3 digits, or 4 digits only. How many distinct IDs are possible?

$(26 times 26 times 10 times 10) + (10 times 10 times 10 times 10) = 77600$

c. A cafe offers 4 coffee types and 3 cake types.

i. How many possible orders of "one coffee + one cake"?

$4 times 3 = 12$

ii. How many ways to order either a coffee or a cake, but not both?

$4 + 3 = 7$

d. A multiple choice test has 10 questions, and for each question there are 5 possible answers A-E. Each question has exactly one correct answer. How many valid (but not necessarily correct) ways are there to fill in the answer sheet?

$5^10 = 9765625$
=
2. Answer the following questions on permutations:

a. How many ways can 6 people stand in a line for a photo?

$6! = 720$

b. How many 4-letter strings can be made from the letters of ```python BRISTOL```?

i. Without repetition. $7 times 6 times 5 times 4 = 840$

ii. With repetition. $7^4 = 2401$

c. How many anagrams are there of the word ```python POKER```?

$5 P 5 = 120$

d. How many anagrams are there of the word ```python ROSSLARE```?

$(8!)/(2!) = 20160$

e. How many ways are there to pick one representative and one vice-representative from a class of 20?

$20 P 2 = 380$

f. How many distinct arrangements of ```python COMMITTEE``` are there?

$(9!)/(2!2!2!) = 45360$
#pagebreak()
3. Answer the following questions, taking into account the restrictions in each problem.

a. In how many ways can ```python ALGORITHM``` be arranged such that ```python A``` appears before ```python M```?

$9!/2 = 181440$

b. Eight students are to sit in a row; two particular students insist on sitting together.

$7! times 2! = 10080$

c. Eight students sit around a round table, two particular students must sit together.

$(7! times 2!) - 1 = 10079$

d. A password consists of 4 symbols chosen from 26 letters + 10 digits. How many passwords contain at least one digit?

$36^4 - 26^4 = 1222640$

e. How many distinct arrangements can be formed using the letter of ```python BALLOON```?

i. Without restriction. $(7!)/(2!2!) = 1260$

ii. With ```python L```'s adjacent. $6 times (5!)/(2!) = 360$

iii. With ```python L```'s non adjacent. $(7!)/(2!) - 360 = 2160$
=
4. Let $A,B$ be finite sets, with $|A| = a$ and $|B| = b$. Find a formula and explain in combinatorial terms:

a. How many functions $f : A -> B$ are there?

$b^a$, a function cannot be one to many, thus each output $b in B$ has $a$ inputs.

b. How many relations from $A$ to $B$ are there?

$2^(a b)$, a relation is any connection between 2 elements in 2 sets, in this case $A$ and $B$, giving us a domain to form relations on of $A times B$. For each pair of elements, $R(a,b)$ and $R(b,a)$ are valid relations. Therefore, each pair has two possibilities, thus $2^(a b)$.

c. How many relations on $A$ are there?

$2^(a^2)$, the domain to form relations on is $A times A$, therefore $2^(a a)$, or $ 2^(a^2)$.

d. How many reflexive relations on $A$ are there?

$2^(m^2-m)$, the relations where elements are equal ($m$) must be included, thus take them out of the amount of combinations, but you can also include all of the elements were relations *can* be formed ($m^2$).
#pagebreak()
5. Tic-Tac-Toe is played on a $3 times 3$ grid.

Two players, normally called X and O, take turns to place their symbol in any one of the remaining empty
cells. X goes first. The first player to get three of their symbols in a row horizontally, vertically, or diagonally,
wins the game; if the grid fills up without this happening, the game is a draw.

a. How many possible games of Tic-Tac-Toe are there that end after exactly 5 moves? A game is not just
a final state, but a sequence of moves; two games with the same final state but played in a different
order are considered distinct.

$(9 times 6 times 7 times 5 times 4) times 8 = 60480$


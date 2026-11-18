#show link: underline

= Combinatorics Practice
#link("https://madasmaths.com/archive/maths_booklets/further_topics/various/combinatorics.pdf")
#divider()
Q1. The Oakwood Jogging Club consists of 7 men and 6 women who go for a 5 mile run every Thursday. It is decided that a team of 8 runners would be picked at random out of the 13 runners, to represent the club at a larger meeting. Determine the proportion of teams of 8 , which have more women than men.

We want the proportion of teams, such that $w >= 5$.

$binom(6,5) times binom(7,3) = 210$ ways such that there are 5 women and 3 men.

$binom(6,6) times binom(7,2) = 21$ ways such that there are 6 women and 2 men.

$binom(13,8) = 1287$ different ways to choose 8 runners from the club.

$(210 + 21)/1287 = 7/39$
=
Q2. A football manager has available for selection 3 goalkeepers, 8 defenders, 7
midfielders and 4 strikers.


a) Determine the number of possible teams of 11 he can select, assuming that all 22 players are equally likely to be picked up, and equally likely to play in any position.

$binom(22,11) = 705432$ possible teams.

b) Find the number of possible teams he can pick with 1 goalkeeper, 4 defenders, 4 midfielders and 2 strikers.

$binom(3,1) times binom(8,4) times binom(7,4) times binom(4,2) = 44100$ possible teams.
=
Q3. A taxi which can carry at most 5 passengers on any journey, makes two journeys in transporting 8 passengers from their hotel to the airport. Determine the number of different ways in which the people for the first journey may be selected.

$binom(8,5) = 56$ ways to choose when picking up 5 passengers first.

$binom(8,4) = 70$ ways to choose when picking up 4 passengers first.

$binom(8,3) = 56$ ways to choose when picking up 3 passengers first.

$56 + 70 + 56 = 182$ distinct ways to choose the first set of people.
#pagebreak()
Q4. There are 8 boys and 7 girls in the student council of a school.
A committee of 8 people is to be selected from the members of this council to organize a sports day.

a) Find the number of different ways in which the committee can be selected if all the members are available.

$binom(15,8) = 6435$ different selections.

b) Determine the number of different ways in which the committee can be
selected if the committee is to have more girls than boys.

$binom(7,7) times binom(8,1) = 8$ ways if there's 7 girls and 1 boy.

$binom(7,6) times binom(8,2) = 196$ ways if there's 6 girls and 2 boys.

$binom(7,5) times binom(8,3) = 1176$ ways if there's 5 girls and 3 boys.

$8 + 196 + 1176 = 1380$ ways such that there are more girls than boys in the selection.
=
Q5. A five member committee is to be selected at random from a group consisting of 8 men and 4 women.
Find the number of possible committees which contain …

a) … exactly 2 women.

$binom(4,2) times binom(8,3) = 336$ possible committees.

b) … no more than 2 women.

$binom(4,2) times binom(8,3) = 336$ ways when there are 2 women.

$binom(4,1) times binom(8,4) = 280$ ways when there is one woman.

$binom(4,0) times binom(8,5) = 56$ ways when there are no women.

$336 + 280 + 56 = 672$ ways when there are a maximum of 2 women.
=
Q6. A committee of 4 people is to be chosen at random from a group of 5 men and 7 women. Determine the probability that the committee will consist …

a) … of members of the same gender.

$binom(5,4) = 5$ ways when all members are male.

$binom(7,4) = 35$ ways when all members are female.

$binom(12,4) = 495$ ways to choose in general.

$P("all members are the same gender") = (5 + 35)/495 = 8/99$

b) … of members of both genders but at least as many women as men.

$binom(5,2) times binom(7,2) = 210$ ways when there are 2 men (and 2 women).

$binom(5,1) times binom(7,3) = 175$ ways when there is one man (and 3 women).

$binom(12,4) = 495$ ways to choose in general.

$P("at least as many women as men") = (210+175)/495 = 7/9$
#pagebreak()
Q7. A committee of 4 people is to be chosen at random from the members of a school council which consists of 5 pupils, 4 teachers and 3 administrators. Determine the probability that the committee will contain ...

a) … no teachers.

$binom(8,4) = 70$ ways without a teacher.

$binom(12,4) = 495$ ways in general.

$P("no teacher") = 70/495 = 14/99$

b) … at least 2 pupils, no more than 1 teacher and no more than 1 administrator

$binom(5,2) times binom(4,1) times binom(3,1) = 120$ ways such that there are two students, one teacher and one administrator.

$binom(5,3) times binom(4,1) times binom(3,0) = 40$ ways such that there are 3 students, one teacher and no administrator.

$binom(5,3) times binom(4,0) times binom(3,1) = 30$ ways such that there are 3 students, no teacher and one administrator.

$binom(5,4) times binom(4,0) times binom(3,0) = 5$ ways such that there are 4 students, no teacher and no administrator.

$binom(12,4) = 495$ ways in general.

$P("at least 2 pupils, no more than one teacher/administrator") = (120 + 40 + 30 + 5)/495 = 13/33$
=
Q8. A committee of 3 people is to be picked from 9 individuals, of which 4 are women and 5 are men. One of the 4 women is married to one of the 5 men. The selection rules state that the committee must have at least a member from each gender and no married couple can serve together in a committee. Determine the number of possible committees which can be picked from these 9 individuals.

$binom(9,3) = 84$ ways in general.

$binom(5,3) + binom(4,3) = 14$ ways if committees are single-gender.

$binom(7,1) = 7$ ways if we have a married couple.

$84 - 14 - 7 = 63$ valid selections.
=
Q9. From a total of 6 men, 3 women and 3 children, two teams of six people are selected at random. Find the probability that both teams contain women.

Let $R_n$ denote the round.

$binom(12,6) times binom(6,6) = 924$ ways in general.

$binom(6,6) times binom(3,3) times binom(3,3) = 1$ way such $R_1 = 6M, R_2 = 3C + 3W$

$binom(6,3) times binom(3,3) = 20$ ways such that $R_1 = 3M + 3C, R_2 = 3W + 3M$

$binom(6,5) times binom(3,1) = 18$ ways such that $R_1 = 5M + 1C, R_2 = 1M + 3W + 2C$

$binom(6,4) times binom(3,2) = 45$ ways such that $R_1 = 4M + 2C, R_2 = 2M + 3W + 1C$

Invalid ways = $2 times (1 + 20 + 18 + 45) = 168$ (we need to multiply by 2 as we only counted the cases in which women are absent in $R_1$).

$P("both teams contain women") = (924-168)/924 = 9/11$
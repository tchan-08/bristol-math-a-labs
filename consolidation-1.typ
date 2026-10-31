#import "@preview/tdtr:0.6.1": tidy-tree-graph
#import "@preview/frederic:0.1.0": *
= Section 1: Booleans and Truth Tables
#divider()
1.1. Let $p, q$ and $r$ stand for the statements: $p = $ "the server is overloaded", $q = $ "the requests are being dropped" and $r = $ "the backup job is running".

a. Write each statement as a Boolean term, using only $not, and, or, =>$.

i. "The server is overloaded, but requests are not being dropped."

$ p and not q $

ii. "Requests are being dropped if, and only if, the server is overloaded or the backup job is running."

$ ((p or r) => q) and (q => (p or r)) $
=
1.2. A Boolean term can be drawn as a tree with no brackets, determined by precedence and associativity rules. For example, $not p or q and r$ has the tree shown below.

#align(center)[
  #tidy-tree-graph(compact: true)[
    - $or$
      - $not$
        - $p$
      - $and$
        - $q$
        - $r$
  ]
]

For each term below, draw its term tree and rewrite the term using as few brackets as possible while keeping exactly the same tree.

a. $((p and q) or (not r)) => (s or ((not p) and q))$

#align(center)[
    #tidy-tree-graph(compact: true)[
        - $=>$
            - $or$
                - $and$
                    - $p$
                    - $q$
                - $not$
                    - $r$
            - $or$
                - $s$
                - $and$
                    - $not$
                        - $p$
                    - $q$
    ]
]

$ (p and q or not r) => (s or not p and q) $

b. $(p => (q => r)) => ((p => q) => r)$

#align(center)[
    #tidy-tree-graph(compact: true)[
        - $=>$
            - $=>$
                - $p$
                - $=>$
                    - $q$
                    - $r$
            - $=>$
                - $=>$
                    - $p$
                    - $q$
                - $r$
    ]
]

$ (p => q => r) => ((p => q) => r) $
#pagebreak()
1.3. Consider the term $phi = (p or q => r) and not(p and r)$.

a. Construct its truth table, using a column for each sub-term.

#align(center)[
    #table(
        columns: 6,
        table.header([$p$], [$q$], [$r$], [$p or q => r$], [$not(p and r)$], [$(p or q => r) and not(p and r)$]),

        [$bot$], [$bot$], [$bot$], [$bot$], [$top$], [$bot$],
        [$bot$], [$bot$], [$top$], [$top$], [$top$], [$top$],
        [$bot$], [$top$], [$bot$], [$bot$], [$top$], [$bot$],
        [$top$], [$bot$], [$bot$], [$bot$], [$top$], [$bot$],
        [$bot$], [$top$], [$top$], [$top$], [$top$], [$top$],
        [$top$], [$bot$], [$top$], [$top$], [$top$], [$top$],
        [$top$], [$top$], [$bot$], [$bot$], [$bot$], [$bot$],
        [$top$], [$top$], [$top$], [$top$], [$bot$], [$bot$]
    )
]

b. In how many rows does $phi$ evaluate to $top$? 3
=
1.4. The truth tables of a function $f(p,q,r)$ and a function $g(p,q)$ are shown below.

#align(center)[
  #table(
    columns: (auto, auto, auto, auto),
    align: center,
    inset: 6pt,
    stroke: none,
    table.hline(),
    $p$, $q$, $r$, $f(p,q,r)$,
    table.hline(),
    $bot$, $bot$, $bot$, $top$,
    $bot$, $bot$, $top$, $bot$,
    $bot$, $top$, $bot$, $bot$,
    $bot$, $top$, $top$, $top$,
    $top$, $bot$, $bot$, $bot$,
    $top$, $bot$, $top$, $top$,
    $top$, $top$, $bot$, $top$,
    $top$, $top$, $top$, $bot$,
    table.hline(),
  )
  #h(1.5em)
  #table(
    columns: (auto, auto, auto),
    align: center,
    inset: 6pt,
    stroke: none,
    table.hline(),
    $p$, $q$, $g(p,q)$,
    table.hline(),
    $bot$, $bot$, $bot$,
    $bot$, $top$, $top$,
    $top$, $bot$, $top$,
    $top$, $top$, $bot$,
    table.hline(),
  )
]

a. Write down a term for $f$, using only $and, or,$ and $not$

$(not p and not q and not r) or (not p and q and r) and (p and not q and r) or (p and q and not r)$

b. Write down a term for $g$, using only $and, or$ and $not$.

$(not p and q) or (p and not q)$
#pagebreak()
1.5. These questions concern Boolean functions of $n$ input variables, where $and, or, not$ are conjunctives.

a. How many different Boolean functions are there on $n$ input variables? Explain your answer.

$2^(2^n)$. This is because each variable can either be 0 or 1, giving us two choices. For each input combination, the function can produce either 0 or 1, giving us 2 choices for the $2^n$ input combinations. Thus, $2^(2^n)$.

b. A Boolean function is _symmetric_ if its output depends on how many inputs are $top$ (for example, $and$ and $or$ are symmetric.) How many _symmetric_ Boolean functions are there on four variables? Justify your answer.

For 4 variables, the number of $top$ can either be 0, 1, 2, 3, 4, 5. A _symmetric_ boolean function would need to produce an output for each of these 5 input combinations. Each output can either be 0 or 1, giving us two output choices. Thus, $2^5=32$ _symmetric_ functions.

= Section 2: Boolean Algebra
#divider()
2.1. Which of the following terms are equivalent to $(p and not q) => r$. Select _all_ that apply; no justification is needed.

a. $not p or q or r$ $checkmark$

b. $p => q and r$ $crossmark$

c. $p => q or r$ $checkmark$

d. $p and not q and not r$ $crossmark$

e. $not r => not p or q$ $checkmark$
=
2.2. A term is in _negation normal form_ (NNF) if negation is applied only directly to variables, and in _conjunctive normal form_ (CNF) if it is a conjunction of disjunctions of variables, and negated variables. Show your steps.

a. Find an NNF term equivalent to $not((p or not q) => not r)$.

$ not((p or not q) => not r) $

$ not(not (p or q) or r) $

$ (p or q) and not r $

b. Find a CNF term equivalent to $(p and q) or (r and s)$.

$ (p and q) or (r and s) $

$ (r or (p and q)) and (s or (p and q)) $

$ (r or p) and (r or q) and (s or p) and (s or q) $
#pagebreak()
c. Find a CNF term equivalent to $(p => q) => r$.

$ (p => q) => r $

$ (not p or q) => r $

$ not(not p or q) or r $

$ (p and not q) or r $

$ (r or p) and (r or not q) $
=
2.3. The operators $arrow.t$ (nand) and $arrow.b$ (nor) are defined by $p arrow.t q equiv not(p and q)$ and $p arrow.b q equiv not(p or q)$.

a. Using only $arrow.t$ (and variables), write terms equivalent to $not p$ and to $p and q$.

$ not p equiv p arrow.t 1 $

$ p and q equiv not(p arrow.t q) $

b. Using only $arrow.b$, write a term equivalent to $p or q$. Then, using this together with De Morgan's laws, explain briefly why $arrow.b$ alone can express every Boolean function.

$ p or q equiv not(p arrow.b q) $

#align(center)[
    $arrow.b$ is universal, as it is compromised of $or, not$, and $and$ when De Morgan's laws are applied. Hence, it can be used to express any Boolean function.
]

c. Show that $arrow.t$ is not associative, giving values of $p,q,r$ for which $p arrow.t (q arrow.t r)$ and $(p arrow.t q) arrow.t r$ differ.

#align(center)[
    Let $p, q, r = 0, 0, 1$.
    
    $p arrow.t (q arrow.t r) = 1$

    $(p arrow.t q) arrow.t r = 0$

    Hence, $arrow.t$ is not associative.
]
=
2.4. For each formula, decide whether it is equivalent to $top$, to $bot$, or to neither. If it is neither, give one assignment that makes it true and one that makes it false.

a. $(p => q) or (q => p) equiv top$

b. $(p => q) and (p and not q) equiv bot$

c. $p or q => p and r$ is neither.

- When $p, r, q = top, top, bot$, then the statement is $top$.

- Otherwise, the statement is $bot$.
#pagebreak()
2.5. An implication $phi => psi$ is a tautology exactly when every row of the truth table that makes $phi$ true also makes $psi$ true. By comparing truth tables of antecedent and consequent, decide whether each implication is a tautology. If it is not, give a row that falsifies it.

a. $(p or q) and not p => q$ 

#align(center)[
    #table(
        columns: 6,
        table.header([$p$], [$q$], [$not p$], [$p or q$], [$(p or q) and not p$], [$(p or q) and not p => q$]),

        [$bot$], [$bot$], [$top$], [$bot$], [$bot$], [$top$],
        [$bot$], [$top$], [$top$], [$top$], [$top$], [$top$],
        [$top$], [$bot$], [$bot$], [$top$], [$bot$], [$top$],
        [$top$], [$top$], [$bot$], [$top$], [$bot$], [$top$]
    )
    The implication is a tautology, proven by Row 2.
]

b. $(p => q) and (q => r) => (r => p)$

#align(center)[
  #table(
    columns: 8,
    table.header(
      [$p$], [$q$], [$r$], [$p => q$], [$q => r$], [$(p => q) and (q => r)$], [$r => p$], [$(p => q) and (q => r) => (r => p)$]
    ),

    [$bot$], [$bot$], [$bot$], [$top$], [$top$], [$top$], [$top$], [$top$],
    [$bot$], [$bot$], [$top$], [$top$], [$top$], [$top$], [$bot$], [$bot$],
    [$bot$], [$top$], [$bot$], [$top$], [$bot$], [$bot$], [$top$], [$top$],
    [$bot$], [$top$], [$top$], [$top$], [$top$], [$top$], [$bot$], [$bot$],
    [$top$], [$bot$], [$bot$], [$bot$], [$top$], [$bot$], [$bot$], [$top$],
    [$top$], [$bot$], [$top$], [$bot$], [$top$], [$bot$], [$top$], [$top$],
    [$top$], [$top$], [$bot$], [$top$], [$bot$], [$bot$], [$bot$], [$top$],
    [$top$], [$top$], [$top$], [$top$], [$top$], [$top$], [$top$], [$top$],
  )
  The implication is not a tautology, disproven by Rows 2 and 4.
]
=
2.6. Let $phi, psi, rho$ be arbitrary formulas. For each statement, say whether it is correct. Briefly justify the correct ones, and give a concrete counterexample for the others.

a. If $phi => psi$ and $phi => rho$ are tautologies, then $phi => psi and rho$ is a tautology.

This statement is true, as the implications ensure that whenever $phi$ is true, $psi$ and $rho$ always follow.

b. If $phi => psi or rho$ is a tautology, then $phi => psi$ is a tautology.

This statement is false. Consider $phi, psi, rho = top, bot, top$. The overall expression still holds, but $phi => psi$ does not.

c. If $phi and psi => rho$ is a tautology, then $phi => rho$ is a tautology, or $psi => rho$ is a tautology.

This statement is false. Consider $phi, psi, rho = p, not p, bot$. The overall expression holds, but both conclusions do not.
#pagebreak()
= Section 3: Natural Deduction
#divider()
3.1. Write a natural deduction proof of $(p => q) and (r => s) => (p and r => q and s)$

#proof(
    assume(1, $(p => q) and (r => s)$),
    step(2, $p => q$, rule: $and E space [1]$),
    step(3, $r => s$, rule: $and E space [1]$),
    subproof(
        assume(4, $p and r$),
        step(5, $p$, rule: $and E space [4]$),
        step(6, $r$, rule: $and E space [4]$),
        step(7, $q$, rule: $=> E space [2,5]$),
        step(8, $s$, rule: $=> E space [3,6]$),
        step(9, $q and s$, rule: $and I space [7,8]$),
        step(10, $p and r => q and s$)
    ),
    step(11, $(p => q) and (r => s) => (p and r => q and s)$, rule: $=> I space [1:10]$)
)
=
3.2. Write a natural deduction proof of $((p and q) and r => s) => (p => (q => (r => s)))$

#proof(
    assume(1, $((p and q) and r) => s$),
    subproof(
        assume(2, $p$),
        subproof(
            assume(3, $q$),
            subproof(
                assume(4, $r$),
                step(5, $p and q$, rule: $and I space [2,3]$),
                step(6, $((p and q) and r)$, rule: $and I space [5,4]$),
                step(7, $s$, rule: $=> E space [1,6]$),
            ),
            step(8, $r => s$, rule: $=> I space [4,7]$),
        ),
        step(9, $q => (r => s)$, rule: $=> I space [3,8]$),
    ),
    step(10, $p => (q => (r => s))$, rule: $=> I space [2,9]$),
)
#pagebreak()
3.3. Formalise the following argument and prove it in natural deduction (you may use double negation elimination).

#align(center)[
    "Either the train is late or the bus is late. If the train is late, I will miss my meeting. I will not miss my meeting. Therefore, the bus is late".

    Let $t$ mean "the train is late", $b$ "the bus is late" and $m$ "I will miss my meeting".
]

a. State the argument as a single claim (a formula). $((t or b) and (t => m) and not m) => b$

b. Prove the claim.

#proof(
    assume(1, $(t or b) and (t => m) and not m$),
    step(2, $t or b$, rule: $and E space [1]$),
    step(3, $t => m$, rule: $and E space [1]$),
    step(4, $not m$, rule: $and E space [1]$),
    subproof(
        assume(5, $t$),
        step(6, $m$, rule: $=> E space [3,5]$),
        step(7, $bot$, rule: $not E space [4,6]$),
        step(8, $b$, rule: $bot E space [7]$)
    ),
    subproof(
        assume(9, $b$),
        step(10, $b$, rule: $R space [9]$)
    ),
    step(11, $b$, rule: $or E space [5:9]$),
    step(12, $((t or b) and (t => m) and not m) => b$, rule: $=> I space [1:10]$)
)
= Section 4: Predicates
#divider()
5.1. For each formula, list its free variables.

a. $forall x. space (p(x,y) and q(x))$: $y$ is a free variable.

b. $(forall x. space p(x)) and q(x)$: $x$ is a free variable.

c. $exists x. forall y. space (r(x,y) => s(z))$: $z$ is a free variable.
5.2. Let the domain be all users of a social network, let $F(x,y)$ mean "$x$ follows $y$", and let the constant $Z$ denote Zoe. Write each statement as a formula.

a. "Zoe follows everyone who follows her.": $forall x. space (F(x,Z) => F(Z,x))$

b. "Everybody follows somebody.": $forall x. exists y. space F(x,y)$

c. "Somebody is followed by everybody.": $exists y. forall x. space F(x,y)$

d. "There is somebody whom Zoe follows, but who does not follow Zoe.": $exists x. space (F(Z,x) and not F(x,Z))$
#pagebreak()
5.3. In the following, $s$ ranges over servers and $j$ over jobs. $D(s)$ means "server $s$ is down", $C(j)$ means "job $j$ has crashed", and $R(s,j)$ means "job $j$ is running on server $s$". Translate each formula into natural language.

a. $forall s. space (D(s) => not exists j . space R(s,j))$: "Every server that is down has no jobs running on it."

b. $forall j. space (C(j) => exists s. space (D(s) and R(s,j)))$: "If a job has crashed, then there's a server that is down but still running jobs on it."
=
5.4. Let the domain be all people at a university. For each statement below: (i) define suitable predicates and write the statement as a formula; (ii) negate it and simplify so that negation only appears directly in front of predicates; (iii) state the negation in natural language, without simply writing "it is not true that...".

a. Some student is liked by every lecturer.

i. Let $L(x,y)$ denote that lecturer $x$ likes $y$. $exists y. forall x. space L(x,y)$

ii. $not (exists y. forall x. space L(x,y)) equiv forall y. exists x. space not L(x,y)$

iii. "Every student is disliked by at least one lecturer."

b. No lecturer is both late and unprepared.

i. Let $L(x)$ mean that $x$ is late and $U(x)$ denote that $x$ is unprepared. $forall x. space not(L(x) and U(x))$

ii. $not (forall x. space not(L(x) and U(x))) equiv exists x. space (L(x) and U(x))$

iii. "There is a lecturer that is both late and unprepared."
=
5.5. Work over the domain of the integers $ZZ$.

a. Let $P(x)$ be the statement $x^2 <= x + 2$. Determine the truth value of the following:

i. $P(-2): bot$

ii. $P(2): top$

iii. $exists x. space P(x): top$ e.g. $P(2)$

iv. $forall x. space P(x): bot$ e.g. $P(-2)$

v. $exists x. space not P(x): top$ e.g. $P(-2)$

b. Translate each statement into natural language and decide whether it is true over the domain of integers. Give a brief justification.

i. $forall x. exists y. space x + y = 0:$ "All integers $x$ have another integer $y$, such that they sum to 0."

This is true, as all integers have an inverse, that when summed with the original number lead to 0.

ii. $exists x. forall y. space x <= y:$ "There is an integer $x$ that is less than all integers $y$."

This is false, as the set of integers is infinite, meaning that there will always be a $y$ less than $x$.

iii. $forall x. forall y. space (x < y => exists z. space (x < z and z < y)):$ "For any pair of integers $x,y$, if $x$ is less than $y$, there will be an integer $z$ in between them."

This is false, as integers can only be whole numbers. Consider $x=1,y=2$. There is no integer $z$ between the two.
=
5.6. Which of the following formulas are identical to $forall x. space (p(x) => exists y. space q(x,y,z))$ after renaming bound variables? Select all that apply.

a. $forall y. space (p(y) => exists x. space q(y,x,z)): checkmark$

b. $forall y. space (p(y) => exists x. space q(x,y,z)): crossmark$

c. $forall z. space (p(z) => exists y. space q(z,y,z)): checkmark$

d. $forall w. space (p(w) => exists v. space q(w,v,z)): checkmark$

e. $forall x. (p(x) => exists x. space q(x,x,z)): crossmark$

= Section 5: Predicate Logic and Proofs
#divider()
_In this section, an integer $n$ is *even* if $n = 2k, k in ZZ$, and *odd* if $n = 2k + 1, k in ZZ$._

6.1. Let the domain be of all users of a social network, let $F(x,y)$ mean "$x$ follows $y$", and let the constant $Z$ denote Zoe. You may use equality. Write each statement as a well-formed formula.

a. "Zoe follows exactly one person.": 

$exists !y. space F(Z,y)$

b. "At most two people follow Zoe.": 

$exists x. exists y. exists w. space (F(x,Z) and F(y,Z) and F(w,Z) => (x = y or x = z or y = z))$
=
6.2. Use a _direct proof_ to show: if $a, b$ are odd integers, then $a b + a + b$ is odd.

Let $a = 2n + 1$ and $b = 2m + 1$, where $n,m in ZZ$

$a b + a + b equiv (2n + 1)(2m + 1) + (2n + 1) + (2m + 1)$

$= 4 n m + 4n + 4m + 3$

$= 2(n m + 2n + 2m) + 3$

$= 2k + 1, k = n m + 2n + 2m + 1$

_Therefore, $a b + a + b$ is odd._
=
6.3. Use _proof of the contrapositive_ to show: for every integer $n$ if $3n + 2$ is odd, then $n$ is odd.

Prove: If $n$ is even, then $3n + 2$ is even.

Let $n = 2m, m in ZZ$

$3n + 2 equiv 3(2m) + 2$

$= 6m + 2$

$= 2(3m + 1)$

$= 2k$

_Therefore, if $3n + 2$ is odd, then $n$ is odd._
=
6.4. Use _proof by contradiction_ to show that there are no integers $x,y$ with $x^2 - y^2 = 2$.

Assume that there are integers $x,y$ such that $x^2 - y^2 = 2$ 

$x^2 - y^2 = 2 equiv (x-y)(x+y) = 2$

$((x-y),(x+y))$ can either be: $(1,2), (-1,-2), (2,1), (-2,-1)$

$(x+y) - (x-y) = 2y$

As the difference between the factors are even, this means that they have the same parity.

This is a contradiction.

_Therefore, there are no integers $x,y$ such that $x^2-y^2 = 2$_
=
6.5. Use _case distinction_ to show that $n^2 + 3n + 4$ is even for every integer $n$.

Case 1: $n$ is even.

Let $n = 2m, m in ZZ$

$n^2 + 3n + 4 equiv (2m)^2 + 3(2m) + 4$

$= 4m^2 + 6m + 4$

$= 2(2m^2 + 3m + 2)$

$= 2k$

Case 2: $n$ is odd.

Let $n = 2m + 1, m in ZZ$

$n^2 + 3m + 4 equiv (2m+1)^2 + 3(2m + 1) + 4$

$= 4m^2 + 10m + 8$

$= 2(m^2 + 5m + 4)$

$= 2k$

_Therefore, $n^2 + 3n + 4$ is even for every integer $n$_
=
6.6. For each statement, decide whether it is true. If it is, prove it: give an explicit witness for an existential statement, or use an arbitrary element for a universal one. If it is false, give a counterexample and explain why it works.

a. $exists x in ZZ. space x^2 + x = 6: top$ e.g. $x = 2$

b. $forall x in RR. space x^2 - 4x + 5 > 0: top$

Let $x$ be an arbitrary real number.

$x^2 - 4x + 5 equiv (x-2)^2 + 1$

$(x-2)^2 >= 0$

$(x-2)^2 > 0$

_Therefore, proven._

c. $forall x in ZZ. space x^2 > 2x: bot$ e.g. $x = 0$, plugging this in gives us $0 > 0$, which is false.
=
6.7. Given the premises $forall x. space (P(x) => Q(x))$ and $forall x. space P(x)$, give a natural deduction proof of $forall x. space Q(x)$.

#proof(
    premise(1, $forall x. space (P(x) => Q(x))$),
    premise(2, $forall x. space P(x)$),
    step(3, $"Let" a "be an arbitrary element."$),
    step(4, $P(a)$, rule: $forall E space [2]$),
    step(5, $P(a) => Q(a)$, rule: $forall E space [1]$),
    step(6, $Q(a)$, rule: $=> E space [5,7]$),
    step(7, $forall x. space Q(x)$, rule: $forall I space [6]$)
)

= Section 6: Sets
#divider()
7.1. Let the universe be $cal(U)={1,2,...,12}$ and let:

 $A={2,4,6,8,10,12}, B={3,6,9,12},C={1,2,3,4,5,6}$

 Write each of the following sets explicitly, and state its cardinality.

 a. $overline(A) inter B = {3,9}, |overline(A) inter B| = 2$

 b. $(A union C) \\ B = {1,2,4,5,8,10}, |(A union C) \\ B| = 6$

 c. $overline(A union B) union C = {1,5,7,11}, |overline(A union B) union C| = 4$
=
7.2. For each property below, what can you deduce about the sets of $A$ and $B$ if it holds?

a. $A \\ B = emptyset: A subset.eq B$

b. $A \\ B = A: B subset.eq overline(A)$

c. $A union B = cal(U): overline(A) subset.eq B$
=
7.3. Let $A,B,C$ be sets in a universe $cal(U)$.

a. State De Morgan's laws for sets. 

- $overline(A inter B) = overline(A) union overline(B)$

- $overline(A union B) = overline(A) inter overline(B)$

b. Prove, by an element-wise argument, that $A \\ (B inter C) = (A \\ B) union (A \\ C)$ for all sets $A,B,C$.

1. $A \\ (B inter C) = A inter (overline(B inter C))$

2. $A inter (overline(B inter C)) = A inter (overline(B) union overline(C))$

3. $A inter (overline(B) union overline(C)) = (A inter overline(B)) union (A inter overline(C))$

4. $(A inter overline(B)) union (A inter overline(C)) = (A \\ B) union (A \\ C)$

7.4. Prove or disprove each of the following for all sets $A,B,C$. For a false statement, give a concrete counterexample.

a. $(A union B) \\ C = A union (B \\ C)$

Consider $A={1},B={2},C={1}$

$(A union B) \\ C = {2}$

$A union (B \\ C) = {1,2}$

${2} != {1,2}$, thus false.

b. $A inter (B \\ C) = (A inter B) \\ (A inter C)$

1. $A inter (B \\ C) = A inter (B inter overline(C))$

2. $A inter (B inter overline(C)) = (A inter B) inter (A inter overline(C))$

3. $(A inter B) inter (A inter overline(C)) = A inter B inter overline(C)$

4. $(A inter B) \\ (A inter C) = (A inter B) inter (overline(A inter C))$

5. $(A inter B) inter (overline(A inter C)) = A inter B inter (overline(A) union overline(C))$

6. $A inter B inter (overline(A) union overline(C)) = (A inter B inter overline(A)) union (A inter B inter overline(C))$

7. $(A inter B inter overline(A)) union (A inter B inter overline(C)) = A inter B inter overline(C)$

Thus true.

c. $(A \\ B) union B = A$

Consider $A={1},B={1,2}$

$(A \\ B) union B = {1,2}$

${1} != {1,2}$, thus false.
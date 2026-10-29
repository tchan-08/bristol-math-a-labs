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
= Section 3: Natural Deduction (Part 1)
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
        step(7, $q$, rule: $=> I space [2]$),
        step(8, $s$, rule: $=> I space [3]$),
        step(9, $q and s$, rule: $and I space [7,8]$),
    ),
    step(10, $p and r => q and s$, rule: $=> I space [4:9]$),
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
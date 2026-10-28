#import "@preview/tdtr:0.6.1": tidy-tree-graph
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

2.1. Which of the following terms are equivalent to $(p and not q) => r$. Select _all_ that apply; no justification is needed.

a. $not p or q or r$ $checkmark$

b. $p => q and r$ $crossmark$

c. $p => q or r$ $checkmark$

d. $p and not q and not r$ $crossmark$

e. $not r => not p or q$ $checkmark$

2.2. A term is in _negation normal form_ (NNF) if negation is applied only directly to variables, and in _conjunctive normal form_ (CNF) if it is a conjunction of disjunctions of variables, and negated vairables. Show your steps.

*TODO*
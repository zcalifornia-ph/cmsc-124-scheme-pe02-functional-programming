# U1 Domain Design

Status: Draft for Validation
Unit ID: `U1`
Unit Name: `Numeric Procedure Unit`
Covered Bolts: `U1-B1`, `U1-B2`
Linked Story IDs: `US-01`, `US-02`
Linked NFR IDs: `NFR-01`, `NFR-02`, `NFR-04`, `NFR-07`
Linked Risk IDs: `R1`, `R2`, `R6`, `R8`

## Context Summary

- `scheme-pe02/` currently contains planning artifacts only; no Racket implementation exists yet.
- The resolved build target remains a single submission file: `scheme-pe02/California_Adeva_PE02.rkt`.
- `U1` owns three public numeric/display procedures, while the active prepared bolts are `U1-B1` (`T-Ice`) and `U1-B2` (`Sumprimes`).
- `U1-B1` and `U1-B2` are each smallest shippable chunks because each isolates one public procedure and two planned tests.
- The approved observable contract is grading-sensitive: tokens must be space-separated in the sample order `1 T ICE T 5 T-ICE 7 T`.
- The approved `Sumprimes` contract is also grading-sensitive because the assignment requires visible output, not only a returned total.
- The repo-approved interpretation of `no global identifiers` favors local helpers and no mutable global state.
- There are no external integrations, persistence layers, or environment variables in scope for the active prepared bolts.
- Validation for the active prepared bolts is local and output-oriented, centered on `T-01` to `T-04`.

## Changed Concepts and Boundaries

### Submission Surface

The active prepared U1 bolts introduce these public procedures into the planned single submission file:

- Public interface: `(T-Ice n)`
- Public interface: `(Sumprimes n)`

`count-factors` remains out of scope until `U1-B3`.

### Domain Concepts

- `Input Range`: the inclusive sequence from `1` to `n`
- `Token Mapping`: the rule that maps each current integer to either a numeric display value or one of the required tokens
- `Display Stream`: the ordered sequence of rendered tokens visible to the grader
- `Prime Candidate`: a current integer being evaluated for prime membership
- `Prime Predicate`: the rule used to decide whether a candidate contributes to the sum
- `Prime Sum Accumulator`: the running total of prime values from `1` to `n`
- `Visible Sum Output`: the displayed result required by the approved `Sumprimes` observable contract

## Invariants and Business Rules

1. `n` is treated according to the approved assignment scope as a positive integer input.
2. Evaluation proceeds from `1` through `n`, inclusive.
3. If the current number is divisible by both `2` and `3`, the rendered token must be `T-ICE`.
4. If the current number is divisible only by `2`, the rendered token must be `T`.
5. If the current number is divisible only by `3`, the rendered token must be `ICE`.
6. Otherwise, the rendered output must be the number itself.
7. The visible output must preserve the exact token order produced by the integer sequence.
8. Tokens must be separated by single spaces; a trailing newline is acceptable if it does not alter token order or spacing between tokens.
9. For `Sumprimes`, only prime values from `1` to `n` contribute to the total.
10. `1` does not contribute to the prime total.
11. For boundary input such as `n = 1`, the visible total must be `0`.
12. The observable contract for `Sumprimes` must display the computed total and must not add extra visible output beyond that total.

## Interfaces

### Public Interface

- `(T-Ice n)`: display the required tokenized sequence for integers `1` to `n`
- `(Sumprimes n)`: display the sum of prime numbers from `1` to `n`

### Planned Local Helper Responsibilities

- Determine the display token for one integer
- Emit the ordered display stream without introducing extra top-level identifiers
- Control spacing so the observable contract remains stable
- Determine whether a candidate integer is prime
- Accumulate the running prime total
- Emit only the approved visible sum output for `Sumprimes`

The helper naming is a logical-design concern, but helper scope must remain local to preserve the approved interpretation of `no global identifiers`.

## Brownfield References

Not applicable. This is green-field work and there is no existing code in scope to reverse engineer for the prepared `U1` bolts.

## Human Validation Required

Approve this domain design together with the logical design and the relevant bolt ADR before heavy coding begins for the selected `U1` bolt.

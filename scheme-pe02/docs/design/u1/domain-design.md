# U1 Domain Design

Status: Draft for Validation
Unit ID: `U1`
Unit Name: `Numeric Procedure Unit`
Selected Bolt: `U1-B1`
Linked Story IDs: `US-01`
Linked NFR IDs: `NFR-01`, `NFR-02`, `NFR-04`, `NFR-07`
Linked Risk IDs: `R1`, `R6`, `R8`

## Context Summary

- `scheme-pe02/` currently contains planning artifacts only; no Racket implementation exists yet.
- The resolved build target remains a single submission file: `scheme-pe02/California_Adeva_PE02.rkt`.
- `U1` owns three public numeric/display procedures, but `U1-B1` is scoped only to `T-Ice`.
- `U1-B1` is the smallest shippable chunk in `U1` because it isolates one public procedure and its two planned tests.
- The approved observable contract is grading-sensitive: tokens must be space-separated in the sample order `1 T ICE T 5 T-ICE 7 T`.
- The repo-approved interpretation of `no global identifiers` favors local helpers and no mutable global state.
- There are no external integrations, persistence layers, or environment variables in scope for this bolt.
- Validation for this bolt is local and output-oriented, centered on `T-01` and `T-02`.

## Changed Concepts and Boundaries

### Submission Surface

`U1-B1` introduces the first public procedure planned for the single submission file:

- Public interface: `(T-Ice n)`

No other public procedures are in scope for this bolt, even though `U1` will later also include `Sumprimes` and `count-factors`.

### Domain Concepts

- `Input Range`: the inclusive sequence from `1` to `n`
- `Token Mapping`: the rule that maps each current integer to either a numeric display value or one of the required tokens
- `Display Stream`: the ordered sequence of rendered tokens visible to the grader

## Invariants and Business Rules

1. `n` is treated according to the approved assignment scope as a positive integer input.
2. Evaluation proceeds from `1` through `n`, inclusive.
3. If the current number is divisible by both `2` and `3`, the rendered token must be `T-ICE`.
4. If the current number is divisible only by `2`, the rendered token must be `T`.
5. If the current number is divisible only by `3`, the rendered token must be `ICE`.
6. Otherwise, the rendered output must be the number itself.
7. The visible output must preserve the exact token order produced by the integer sequence.
8. Tokens must be separated by single spaces; a trailing newline is acceptable if it does not alter token order or spacing between tokens.

## Interfaces

### Public Interface

- `(T-Ice n)`: display the required tokenized sequence for integers `1` to `n`

### Planned Local Helper Responsibilities

- Determine the display token for one integer
- Emit the ordered display stream without introducing extra top-level identifiers
- Control spacing so the observable contract remains stable

The helper naming is a logical-design concern, but helper scope must remain local to preserve the approved interpretation of `no global identifiers`.

## Brownfield References

Not applicable. This is green-field work and there is no existing code in scope to reverse engineer for `U1-B1`.

## Human Validation Required

Approve this domain design together with the logical design and ADR before heavy coding begins for `U1-B1`.

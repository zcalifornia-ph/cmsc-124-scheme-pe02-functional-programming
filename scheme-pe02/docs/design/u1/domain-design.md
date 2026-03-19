# U1 Domain Design

Status: Draft for Validation
Unit ID: `U1`
Unit Name: `Numeric Procedure Unit`
Covered Bolts: `U1-B1`, `U1-B2`, `U1-B3`
Linked Story IDs: `US-01`, `US-02`, `US-03`
Linked NFR IDs: `NFR-01`, `NFR-02`, `NFR-04`, `NFR-07`
Linked Risk IDs: `R1`, `R2`, `R3`, `R5`, `R6`, `R8`

## Context Summary

- `scheme-pe02/California_Adeva_PE02.rkt` already exists and currently implements `T-Ice` and `Sumprimes`.
- `U1-B1` and `U1-B2` are completed and validated, so `U1-B3` is brownfield work inside a live submission file.
- The remaining `U1` scope is one public procedure: `(count-factors m n)`.
- `U1-B3` is the smallest shippable chunk because it isolates one independently testable public procedure with two planned checks: `T-05` and `T-06`.
- The `count-factors` contract is grading-sensitive because it combines a return value with a conditional visible-output path.
- The no-factor path must display `"None"` and return `0`, while the factor path must return only the repeated-factor count.
- The approved interpretation of `no global identifiers` still favors local helpers and no mutable global state.
- There are no external integrations, persistence layers, services, or environment variables in scope for `U1`.
- Validation for the active prepared bolt remains local and centered on direct Racket execution against observable output and return values.

## Changed Concepts and Boundaries

### Submission Surface

The active prepared `U1` scope now covers these public procedures in the single submission file:

- Public interface: `(T-Ice n)`
- Public interface: `(Sumprimes n)`
- Public interface: `(count-factors m n)`

`my-sums` and `my-reverse` remain out of scope until `U2`.

### Domain Concepts

- `Input Range`: the inclusive sequence from `1` to `n` used by `T-Ice` and `Sumprimes`
- `Token Mapping`: the rule that maps each current integer to either a numeric display value or one of the required `T-Ice` tokens
- `Display Stream`: the ordered sequence of rendered tokens visible to the grader
- `Prime Candidate`: a current integer being evaluated for prime membership
- `Prime Predicate`: the rule used to decide whether a candidate contributes to the `Sumprimes` total
- `Prime Sum Accumulator`: the running total of prime values from `1` to `n`
- `Factor Base`: the candidate factor `m` supplied to `count-factors`
- `Current Dividend`: the current value still being tested for divisibility by `m`
- `Repeated Divisibility Count`: the number of successful divisions by `m` before the quotient is no longer divisible
- `No-Factor Signal`: the visible `"None"` output required only when the initial factor test fails

## Invariants and Business Rules

1. `T-Ice` and `Sumprimes` continue to treat `n` according to the approved assignment scope as a positive integer input.
2. `T-Ice` evaluation proceeds from `1` through `n`, inclusive.
3. If the current `T-Ice` number is divisible by both `2` and `3`, the rendered token must be `T-ICE`.
4. If the current `T-Ice` number is divisible only by `2`, the rendered token must be `T`.
5. If the current `T-Ice` number is divisible only by `3`, the rendered token must be `ICE`.
6. Otherwise, the rendered `T-Ice` output must be the number itself.
7. The visible `T-Ice` output must preserve the exact token order produced by the integer sequence, with single spaces between tokens.
8. For `Sumprimes`, only prime values from `1` to `n` contribute to the total.
9. `1` does not contribute to the prime total.
10. For boundary input such as `n = 1`, the visible `Sumprimes` total must be `0`.
11. The observable contract for `Sumprimes` must display the computed total and must not add extra visible output beyond that total.
12. For `count-factors`, the procedure counts how many times `n` can be divided by `m` while keeping an integer quotient.
13. The repeated-factor count increases by `1` for each successful division by `m`.
14. The count stops as soon as the current dividend is no longer divisible by `m`.
15. If the initial input `n` is not divisible by `m`, the procedure must display `"None"` and return `0`.
16. If `n` is divisible by `m`, the procedure must return the repeated-factor count and must not display `"None"`.
17. The no-factor branch must emit `"None"` exactly once for a single invocation.
18. Helper logic should remain local to each public procedure unless a later reviewed design change explicitly widens top-level scope.

## Interfaces

### Public Interfaces

- `(T-Ice n)`: display the required tokenized sequence for integers `1` to `n`
- `(Sumprimes n)`: display the sum of prime numbers from `1` to `n`
- `(count-factors m n)`: return the repeated-factor count for `m` within `n`, displaying `"None"` only when `m` is not an initial factor of `n`

### Planned Local Helper Responsibilities

- Determine the display token for one integer in `T-Ice`
- Emit the ordered `T-Ice` display stream without introducing extra top-level identifiers
- Determine whether a candidate integer is prime for `Sumprimes`
- Accumulate the running prime total
- Determine whether the current dividend remains divisible by `m` for `count-factors`
- Recurse through quotient reduction while tracking the repeated-factor count
- Separate the no-factor visible-output branch from the factor-count return branch

The helper naming is a logical-design concern, but helper scope must remain local to preserve the approved interpretation of `no global identifiers`.

## Brownfield References

- Existing implementation file: `scheme-pe02/California_Adeva_PE02.rkt`
- Existing validated U1 procedures: `T-Ice`, `Sumprimes`
- Existing validated traceability artifacts: `u1-b1-t-ice-output-flow-traceability.md`, `u1-b2-sumprimes-display-contract-traceability.md`

## Human Validation Required

Approve this domain design together with the logical design and the relevant bolt ADR before heavy coding begins for `U1-B3`.

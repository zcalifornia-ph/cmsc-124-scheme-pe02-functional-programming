# U2 Domain Design

Status: Draft for Validation
Unit ID: `U2`
Unit Name: `List Procedure Unit`
Covered Bolts: `U2-B1`, `U2-B2`
Linked Story IDs: `US-04`, `US-05`
Linked NFR IDs: `NFR-01`, `NFR-02`, `NFR-04`, `NFR-07`
Linked Risk IDs: `R4`, `R5`, `R6`, `R8`

## Context Summary

- `scheme-pe02/California_Adeva_PE02.rkt` already exists and currently implements the full validated numeric lane for Unit `U1` plus the validated `U2-B1` procedure `my-sums`.
- `U2-B2` is brownfield work inside a live submission file that already contains `T-Ice`, `Sumprimes`, `count-factors`, and `my-sums`.
- The remaining `U2` scope is one public procedure: `(my-reverse lis)`.
- `U2-B2` is the smallest shippable chunk because it isolates one independently testable public procedure with two planned checks: `T-09` and `T-10`.
- The `my-reverse` contract is grading-sensitive because it requires manual reversal logic without built-in reversal automation.
- The approved scope for `my-reverse` is non-nested lists, so nested reversal behavior remains out of scope for this bolt.
- The approved interpretation of `no global identifiers` still favors local helpers and no mutable global state.
- There are no external integrations, persistence layers, services, or environment variables in scope for `U2`.
- Validation for the active prepared bolt remains local and centered on returned lists plus direct file-load confirmation.

## Changed Concepts and Boundaries

### Submission Surface

The active prepared `U2` scope now covers these public procedures in the single submission file:

- Public interface: `(my-sums lis)`
- Public interface: `(my-reverse lis)`

All `U1` procedures remain in place and out of scope for new behavior changes in this bolt.

### Domain Concepts

- `Nested List Input`: a proper list that may contain numbers and nested sublists at arbitrary depth for `my-sums`
- `Atomic Number`: a numeric leaf value that contributes directly to the `my-sums` total
- `Sublist Branch`: a nested list value that must be traversed recursively by `my-sums`
- `Empty List Identity`: the rule that an empty list contributes `0` in `my-sums`
- `Total Sum`: the final returned sum of all numeric values across the nested structure
- `Flat List Input`: a non-nested list accepted by `my-reverse`
- `Current Head`: the first element of the current list segment being reversed
- `Remaining Tail`: the rest of the list after removing the current head
- `Reversed Prefix`: the accumulated portion of the list that has already been reversed
- `Reversed Result`: the final returned list in reverse order

## Invariants and Business Rules

1. `my-sums` is the only user-facing entry procedure for nested-list summation behavior.
2. Input scope for `my-sums` is numbers-only nested lists per approved assumption `Q6`.
3. The nested structure for `my-sums` may contain sublists at arbitrary depth.
4. Numeric leaf values contribute their numeric value directly to the `my-sums` total.
5. Nested sublists must be traversed recursively rather than treated as opaque values.
6. An empty list returns `0` for `my-sums`.
7. `my-reverse` is the only user-facing entry procedure for manual reversal behavior.
8. Input scope for `my-reverse` is a non-nested list.
9. `my-reverse` returns a list containing the same elements in reverse order.
10. `my-reverse` must not use built-in functions that automate reversal.
11. For an empty list, `my-reverse` returns the empty list.
12. Both `my-sums` and `my-reverse` are return-oriented and should not introduce extra visible output as part of their required contracts.
13. Helper logic should remain local to the public procedure unless a later reviewed design change explicitly widens top-level scope.

## Interfaces

### Public Interfaces

- `(my-sums lis)`: return the sum of all numeric values in a numbers-only nested list
- `(my-reverse lis)`: return the reversed form of a non-nested list without built-in reversal automation

### Planned Local Helper Responsibilities

- Distinguish an empty list from a non-empty list segment
- Distinguish a nested pair/list branch from an atomic numeric leaf for `my-sums`
- Recurse into nested sublists and combine their subtotal with the remaining tail for `my-sums`
- Walk a flat list segment for `my-reverse`
- Accumulate reversed order locally without introducing extra top-level helper identifiers
- Preserve the empty-list identity values for both list procedures

The helper naming is a logical-design concern, but helper scope must remain local to preserve the approved interpretation of `no global identifiers`.

## Brownfield References

- Existing implementation file: `scheme-pe02/California_Adeva_PE02.rkt`
- Existing validated `U1` procedures: `T-Ice`, `Sumprimes`, `count-factors`
- Existing validated `U2-B1` procedure: `my-sums`
- Existing validated `U2-B1` traceability artifact: `u2-b1-my-sums-nested-accumulation-traceability.md`

## Human Validation Required

Approve this domain design together with the logical design and the relevant bolt ADR before heavy coding begins for `U2-B2`.

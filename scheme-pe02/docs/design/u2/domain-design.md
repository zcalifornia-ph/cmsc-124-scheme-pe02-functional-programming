# U2 Domain Design

Status: Draft for Validation
Unit ID: `U2`
Unit Name: `List Procedure Unit`
Covered Bolts: `U2-B1`
Linked Story IDs: `US-04`
Linked NFR IDs: `NFR-01`, `NFR-02`, `NFR-04`, `NFR-07`
Linked Risk IDs: `R4`, `R5`, `R6`, `R8`

## Context Summary

- `scheme-pe02/California_Adeva_PE02.rkt` already exists and currently implements the full validated numeric lane for Unit `U1`.
- `U2-B1` is brownfield work inside a live submission file that already contains `T-Ice`, `Sumprimes`, and `count-factors`.
- The active prepared `U2` scope is one public procedure: `(my-sums lis)`.
- `U2-B1` is the smallest shippable chunk because it isolates one independently testable public procedure with two planned checks: `T-07` and `T-08`.
- The `my-sums` contract is grading-sensitive because it requires correct recursion across nested lists rather than only flat-list summation.
- The approved scope is numbers-only nested lists, so non-numeric atoms are intentionally out of scope for this bolt.
- The approved interpretation of `no global identifiers` still favors local helpers and no mutable global state.
- There are no external integrations, persistence layers, services, or environment variables in scope for `U2`.
- Validation for the active prepared bolt remains local and centered on returned values plus direct file-load confirmation.

## Changed Concepts and Boundaries

### Submission Surface

The active prepared `U2` scope now covers this public procedure in the single submission file:

- Public interface: `(my-sums lis)`

`my-reverse` remains out of scope until `U2-B2`.

### Domain Concepts

- `Nested List Input`: a proper list that may contain numbers and nested sublists at arbitrary depth
- `Current Element`: the current item being inspected during recursive traversal
- `Atomic Number`: a numeric leaf value that contributes directly to the total
- `Sublist Branch`: a nested list value that must be traversed recursively
- `Tail Traversal`: the remaining list after the current head element is processed
- `Partial Sum`: the subtotal produced for one branch or segment of the nested list
- `Empty List Identity`: the rule that an empty list contributes `0`
- `Total Sum`: the final returned sum of all numeric values across the nested structure

## Invariants and Business Rules

1. `my-sums` is the only user-facing entry procedure for this summation behavior.
2. Input scope for this bolt is numbers-only nested lists per approved assumption `Q6`.
3. The nested structure may contain sublists at arbitrary depth.
4. Numeric leaf values contribute their numeric value directly to the total.
5. Nested sublists must be traversed recursively rather than treated as opaque values.
6. An empty list returns `0`.
7. Empty nested sublists also contribute `0` to the overall total.
8. The returned result is the sum of all numeric elements found anywhere in the nested structure.
9. `my-sums` is return-oriented and should not introduce extra visible output as part of its required contract.
10. Helper logic should remain local to the public procedure unless a later reviewed design change explicitly widens top-level scope.

## Interfaces

### Public Interface

- `(my-sums lis)`: return the sum of all numeric values in a numbers-only nested list

### Planned Local Helper Responsibilities

- Distinguish an empty list from a non-empty list segment
- Distinguish a nested pair/list branch from an atomic numeric leaf
- Recurse into nested sublists and combine their subtotal with the remaining tail
- Preserve the empty-list identity value of `0`
- Keep traversal logic local so no extra top-level helper identifiers are required

The helper naming is a logical-design concern, but helper scope must remain local to preserve the approved interpretation of `no global identifiers`.

## Brownfield References

- Existing implementation file: `scheme-pe02/California_Adeva_PE02.rkt`
- Existing validated U1 procedures: `T-Ice`, `Sumprimes`, `count-factors`
- Existing validated U1 traceability artifacts under `scheme-pe02/docs/traceability/u1/`

## Human Validation Required

Approve this domain design together with the logical design and the relevant bolt ADR before heavy coding begins for `U2-B1`.

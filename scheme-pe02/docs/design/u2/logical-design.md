# U2 Logical Design

Status: Draft for Validation
Unit ID: `U2`
Covered Bolts: `U2-B1`
Linked Test IDs: `T-07`, `T-08`
Linked Deployment Check IDs: `DPL-03`
Linked Ops Signal IDs: `OPS-01`, `OPS-03`

## Code Structure

- Target implementation file: `scheme-pe02/California_Adeva_PE02.rkt`
- Target language header: `#lang racket`
- Existing public procedures already in the file: `T-Ice`, `Sumprimes`, `count-factors`
- Public procedure currently in implemented `U2` scope: `my-sums`
- Helper strategy: define any needed helper logic locally inside `my-sums` so no extra top-level constants or helper procedures are required

## U2-B1 Implemented Shape

1. `my-sums` owns the bolt's return-oriented behavior.
2. A local recursive helper walks the nested structure directly.
3. The empty-list path returns `0` immediately.
4. When the current value is a nested pair/list branch, the helper recurses into both the branch and the remaining tail.
5. When the current value is a numeric leaf, the helper returns that number so it contributes to the enclosing subtotal.
6. The procedure returns the computed total without adding visible output.

## Patterns and Constraints

- Prefer plain recursion and local helper scope over top-level utilities.
- Avoid mutable state.
- Preserve the current `U1` behavior while adding `my-sums`.
- Stay within the approved numbers-only nested-list scope rather than adding speculative handling for unsupported atoms.
- Keep the implementation small enough that `T-07`, `T-08`, and direct file-load validation can be run immediately after coding.

## NFR Handling

- `NFR-01`: preserve the exact public procedure name `my-sums` and align behavior to the approved nested-summation acceptance criteria.
- `NFR-02`: keep the implementation syntax-safe and small so local load/run checks remain straightforward after the new procedure is added.
- `NFR-04`: keep helper logic local and avoid introducing extra top-level constants or mutable state.
- `NFR-07`: design the procedure to run in plain local Racket without extra dependencies or support files.
- For `U2-B1`, keep recursive traversal readable so returned totals remain easy to validate and review.

## Validation Plan

- `T-07`: run `(my-sums '(1 (2 (3 4)) 5))` and capture the returned value `15`.
- `T-08`: run `(my-sums '())` and capture the returned value `0`.
- `DPL-03`: re-run direct local load of `scheme-pe02/California_Adeva_PE02.rkt` after `my-sums` is added.
- Re-run existing `U1` checks only if the `U2-B1` change introduces shared-file regression risk.
- Record expected vs observed results in the `U2-B1` traceability artifact after implementation and acceptance validation.

## Deployment and Ops Linkage

- `DPL-03`: `U2-B1` preserves the file's ability to load and run locally under `#lang racket`.
- `OPS-01`: the file remains loadable without blocking syntax/runtime errors after adding `my-sums`.
- `OPS-03`: return-oriented procedures preserve expected values for nested-list and boundary cases.

## Human Validation Required

This logical design was approved for `U2-B1` execution and is now the implemented baseline for the first list-processing bolt.

# U2 Logical Design

Status: Implemented Baseline on March 19, 2026
Unit ID: `U2`
Covered Bolts: `U2-B1`, `U2-B2`
Linked Test IDs: `T-07`, `T-08`, `T-09`, `T-10`
Linked Deployment Check IDs: `DPL-03`
Linked Ops Signal IDs: `OPS-01`, `OPS-03`

## Code Structure

- Target implementation file: `scheme-pe02/California_Adeva_PE02.rkt`
- Target language header: `#lang racket`
- Existing public procedures already in the file: `T-Ice`, `Sumprimes`, `count-factors`, `my-sums`, `my-reverse`
- Existing implementation status: both `U2` procedures are now present in the submission file
- Helper strategy: define any needed helper logic locally inside each public procedure so no extra top-level constants or helper procedures are required

## U2-B1 Implemented Shape

1. `my-sums` owns the bolt's return-oriented behavior.
2. A local recursive helper walks the nested structure directly.
3. The empty-list path returns `0` immediately.
4. When the current value is a nested pair/list branch, the helper recurses into both the branch and the remaining tail.
5. When the current value is a numeric leaf, the helper returns that number so it contributes to the enclosing subtotal.
6. The procedure returns the computed total without adding visible output.

## U2-B2 Implemented Shape

1. `my-reverse` owns the bolt's return-oriented behavior.
2. A local recursive helper walks the flat list from head to tail.
3. The empty-list path returns the empty list immediately.
4. The helper builds reversed order manually rather than calling any built-in reversal function.
5. A local accumulator-style helper keeps the reversal step explicit and small.
6. The procedure returns the reversed list without adding visible output.

## Patterns and Constraints

- Prefer plain recursion and local helper scope over top-level utilities.
- Avoid mutable state.
- Preserve the current `U1` and `U2-B1` behavior while adding `my-reverse`.
- Do not use built-in reversal automation.
- Keep the implementation small enough that `T-09`, `T-10`, and direct file-load validation can be run immediately after coding.

## NFR Handling

- `NFR-01`: preserve the exact public procedure name `my-reverse` and align behavior to the approved reversal acceptance criteria.
- `NFR-02`: keep the implementation syntax-safe and small so local load/run checks remain straightforward after the new procedure is added.
- `NFR-04`: keep helper logic local and avoid introducing extra top-level constants, mutable state, or built-in reversal shortcuts.
- `NFR-07`: design the procedure to run in plain local Racket without extra dependencies or support files.
- For `U2-B2`, keep reversal logic readable so returned lists remain easy to validate and review.

## Validation Plan

- `T-07`: rerun `(my-sums '(1 (2 (3 4)) 5))` only if the `U2-B2` change introduces shared-file regression risk.
- `T-08`: rerun `(my-sums '())` only if the `U2-B2` change introduces shared-file regression risk.
- `T-09`: run `(my-reverse '(1 2 3 4))` and capture the returned list `'(4 3 2 1)`.
- `T-10`: run `(my-reverse '())` and capture the returned empty list `'()`.
- `DPL-03`: re-run direct local load of `scheme-pe02/California_Adeva_PE02.rkt` after `my-reverse` is added.
- Record expected vs observed results in the `U2-B2` traceability artifact after implementation and acceptance validation.

## Deployment and Ops Linkage

- `DPL-03`: `U2-B2` must preserve the file's ability to load and run locally under `#lang racket`.
- `OPS-01`: the file must remain loadable without blocking syntax/runtime errors after adding `my-reverse`.
- `OPS-03`: return-oriented procedures must preserve expected values for representative and boundary list cases.

## Human Validation Required

This logical design was approved for `U2-B2` execution and is now the implemented baseline for the list procedure unit.

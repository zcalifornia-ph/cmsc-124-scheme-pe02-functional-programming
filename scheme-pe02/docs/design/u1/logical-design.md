# U1 Logical Design

Status: Draft for Validation
Unit ID: `U1`
Covered Bolts: `U1-B1`, `U1-B2`, `U1-B3`
Linked Test IDs: `T-01`, `T-02`, `T-03`, `T-04`, `T-05`, `T-06`
Linked Deployment Check IDs: `DPL-03`
Linked Ops Signal IDs: `OPS-01`, `OPS-02`

## Code Structure

- Target implementation file: `scheme-pe02/California_Adeva_PE02.rkt`
- Target language header: `#lang racket`
- Public procedures currently in `U1` scope: `T-Ice`, `Sumprimes`, `count-factors`
- Existing implementation status: all three `U1` procedures are now present in the submission file
- Helper strategy: define any needed helper logic locally inside each public procedure so no extra top-level constants or helper procedures are required

## U1-B1 Implemented Shape

1. `T-Ice` owns the bolt's observable behavior.
2. A local helper maps a current integer to its display token based on divisibility.
3. A local recursive emitter walks the range from `1` to `n`.
4. Spacing is controlled explicitly so rendered tokens remain single-space-separated.
5. The current implementation emits a trailing newline after the sequence, which remains allowed under approved assumption `Q3`.

## U1-B2 Implemented Shape

1. `Sumprimes` owns the bolt's observable behavior.
2. A local helper determines whether a current integer is prime.
3. A local recursive accumulator walks the range from `1` to `n` and sums only prime values.
4. The current implementation displays the computed total directly and adds no extra visible output beyond the required newline.
5. Any return value remains secondary to the visible-output contract.

## U1-B3 Implemented Shape

1. `count-factors` owns the bolt's mixed display-and-return behavior.
2. An outer branch checks whether `m` divides `n` before any repeated-count recursion starts.
3. If the initial factor check fails, the procedure displays `"None"`, emits a newline for clean local runs, and returns `0`.
4. If the initial factor check succeeds, a local recursive helper repeatedly divides the current dividend by `m` while incrementing a counter.
5. The factor path returns the final count and does not display `"None"`.
6. The repeated-divisibility helper remains local to `count-factors`.

## Patterns and Constraints

- Prefer plain recursion and local helper scope over top-level utilities.
- Avoid mutable state.
- Preserve the current `T-Ice` and `Sumprimes` behavior while adding `count-factors`.
- Keep the mixed return/display contract explicit rather than hiding it behind a shared abstraction.
- Keep the implementation small enough that `T-05`, `T-06`, and direct file-load validation can be run immediately after coding.

## NFR Handling

- `NFR-01`: preserve exact public procedure naming and align `count-factors` behavior to the story acceptance criteria.
- `NFR-02`: keep the implementation syntax-safe and small so local load/run checks remain straightforward after the new procedure is added.
- `NFR-04`: keep helper logic local and avoid introducing extra top-level constants or mutable state.
- `NFR-07`: design the procedure to run in plain local Racket without extra dependencies or support files.
- For `U1-B3`, keep the `"None"` output path and the returned factor count easy to validate independently.

## Validation Plan

- `T-05`: run `(count-factors 4 48)` and capture the return value plus confirmation that `"None"` is not displayed.
- `T-06`: run `(count-factors 5 48)` and capture the visible `"None"` output plus the returned `0`.
- `DPL-03`: re-run direct local load of `scheme-pe02/California_Adeva_PE02.rkt` after `count-factors` is added.
- Record expected vs observed results in the `U1-B3` traceability artifact after implementation and acceptance validation.

## Deployment and Ops Linkage

- `DPL-03`: `U1-B3` preserves the file's ability to load and run locally under `#lang racket`.
- `OPS-01`: the file remains loadable without blocking syntax/runtime errors after adding `count-factors`.
- `OPS-02`: observable output remains stable for `T-Ice`, `Sumprimes`, and the `"None"` path of `count-factors`.

## Human Validation Required

This logical design was approved for `U1-B3` execution and is now the implemented baseline for the numeric procedure unit.

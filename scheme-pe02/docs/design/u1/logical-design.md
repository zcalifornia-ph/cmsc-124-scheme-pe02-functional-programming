# U1 Logical Design

Status: Draft for Validation
Unit ID: `U1`
Selected Bolt: `U1-B1`
Linked Test IDs: `T-01`, `T-02`
Linked Deployment Check IDs: `DPL-03`
Linked Ops Signal IDs: `OPS-01`, `OPS-02`

## Code Structure

- Target implementation file: `scheme-pe02/California_Adeva_PE02.rkt`
- Target language header: `#lang racket`
- Public procedure to add in this bolt: `T-Ice`
- Helper strategy: define any needed helper logic locally inside `T-Ice` so no extra top-level constants or helper procedures are required

## Planned Implementation Shape

1. `T-Ice` will own the bolt's observable behavior.
2. A local helper will map a current integer to its display token based on divisibility.
3. A local recursive emitter will walk the range from `1` to `n`.
4. Spacing will be controlled explicitly so rendered tokens remain single-space-separated.
5. The final step may print a trailing newline, but only if it does not distort the approved token sequence.

## Patterns and Constraints

- Prefer plain recursion and local helper scope over top-level utilities.
- Avoid mutable state.
- Avoid introducing future-bolt logic into this bolt.
- Keep the implementation simple enough to support output-oriented debugging during validation.

## NFR Handling

- `NFR-01`: use a direct divisibility mapping with explicit precedence for the both-divisible case.
- `NFR-02`: keep the implementation small and syntax-safe so local load/run checks are straightforward.
- `NFR-04`: keep helper logic local and avoid built-in shortcuts that would weaken the functional discipline.
- `NFR-07`: design the procedure to run in plain local Racket without extra dependencies.

## Validation Plan

- `T-01`: run `(T-Ice 8)` and capture the full printed sequence.
- `T-02`: run `(T-Ice 1)` and capture the single-token boundary case.
- Record expected vs observed output in the traceability artifact for `U1-B1`.

## Deployment and Ops Linkage

- `DPL-03`: this bolt contributes to the file's ability to load and run locally under `#lang racket`.
- `OPS-01`: the file must remain loadable without blocking syntax/runtime errors.
- `OPS-02`: display-oriented procedure output must remain stable for representative runs.

## Human Validation Required

Approve this logical design together with the domain design and ADR before heavy coding begins for `U1-B1`.

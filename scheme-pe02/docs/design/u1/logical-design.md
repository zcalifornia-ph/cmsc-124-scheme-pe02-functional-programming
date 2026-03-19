# U1 Logical Design

Status: Draft for Validation
Unit ID: `U1`
Covered Bolts: `U1-B1`, `U1-B2`
Linked Test IDs: `T-01`, `T-02`, `T-03`, `T-04`
Linked Deployment Check IDs: `DPL-03`
Linked Ops Signal IDs: `OPS-01`, `OPS-02`

## Code Structure

- Target implementation file: `scheme-pe02/California_Adeva_PE02.rkt`
- Target language header: `#lang racket`
- Public procedures currently in prepared scope: `T-Ice`, `Sumprimes`
- Helper strategy: define any needed helper logic locally inside each public procedure so no extra top-level constants or helper procedures are required

## U1-B1 Planned Implementation Shape

1. `T-Ice` will own the bolt's observable behavior.
2. A local helper will map a current integer to its display token based on divisibility.
3. A local recursive emitter will walk the range from `1` to `n`.
4. Spacing will be controlled explicitly so rendered tokens remain single-space-separated.
5. The final step may print a trailing newline, but only if it does not distort the approved token sequence.

## U1-B2 Planned Implementation Shape

1. `Sumprimes` will own the bolt's observable behavior.
2. A local helper will determine whether a current integer is prime.
3. A local recursive accumulator will walk the range from `1` to `n` and sum only prime values.
4. The final step will display the computed total in a way that adds no extra visible output beyond the approved contract.
5. Any returned value is secondary to the display contract and must not conflict with validation based on observed output.

## Patterns and Constraints

- Prefer plain recursion and local helper scope over top-level utilities.
- Avoid mutable state.
- Avoid introducing future-bolt logic into the active prepared bolts.
- Keep the implementation simple enough to support output-oriented debugging during validation.

## NFR Handling

- `NFR-01`: use direct, readable numeric logic for divisibility, prime detection, and accumulation.
- `NFR-02`: keep the implementation small and syntax-safe so local load/run checks are straightforward.
- `NFR-04`: keep helper logic local and avoid built-in shortcuts that would weaken the functional discipline.
- `NFR-07`: design the procedures to run in plain local Racket without extra dependencies.
- For `U1-B2`, preserve the visible sum contract and ensure prime-detection logic stays local and readable.

## Validation Plan

- `T-01`: run `(T-Ice 8)` and capture the full printed sequence.
- `T-02`: run `(T-Ice 1)` and capture the single-token boundary case.
- `T-03`: run `(Sumprimes 1)` and capture the boundary visible output.
- `T-04`: run `(Sumprimes 10)` and capture the representative visible output.
- Record expected vs observed output in the traceability artifact for the selected U1 bolt.

## Deployment and Ops Linkage

- `DPL-03`: the prepared U1 bolts contribute to the file's ability to load and run locally under `#lang racket`.
- `OPS-01`: the file must remain loadable without blocking syntax/runtime errors.
- `OPS-02`: display-oriented procedure output must remain stable for representative runs.

## Human Validation Required

Approve this logical design together with the domain design and the relevant bolt ADR before heavy coding begins for the selected `U1` bolt.

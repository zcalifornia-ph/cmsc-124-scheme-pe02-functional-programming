# U1-B2 Traceability

Status: Draft for Validation
Unit ID: `U1`
Bolt ID: `U1-B2`
Bolt Name: `Sumprimes` display contract

## Bolt Contract

- Goal / deliverable: add the public procedure `(Sumprimes n)` to the single submission file so it visibly produces the approved prime-sum output from `1` to `n`
- Linked story IDs: `US-02`
- Linked NFR IDs: `NFR-01`, `NFR-02`, `NFR-04`, `NFR-07`
- Linked risk IDs: `R2`, `R6`, `R8`
- Linked test IDs: `T-03`, `T-04`
- Linked deployment-check IDs: `DPL-03`
- Linked ops-signal IDs: `OPS-01`, `OPS-02`

## Smallest Shippable Chunk Check

`U1-B2` is the smallest shippable chunk inside `U1` because it delivers one independently testable public procedure with a narrow visible-output contract and only two planned validation checks.

## Bolt Checklist

- [ ] Design: define the prime-detection and accumulation rules plus the approved display-only observable contract in `U1-domain-design.md` and `U1-logical-design.md`
- [ ] Implement: add `(Sumprimes n)` with local helpers as needed
- [ ] Test: execute `T-03` and `T-04`, recording expected vs observed output
- [ ] Docs: add inline comments and a representative usage comment for `Sumprimes`
- [ ] Review: confirm there is no extra visible output beyond the approved contract

## Context Summary

- There is still no `.rkt` implementation in `scheme-pe02/`; the bolt remains green-field at the code level.
- `U1-B1` design artifacts already exist, but `T-Ice` is not yet implemented.
- `U1-B2` is still independently decomposable because its public contract and tests are self-contained.
- The implementation target remains `scheme-pe02/California_Adeva_PE02.rkt`.
- The visible-output behavior of `Sumprimes` is grading-sensitive because the assignment says the function `displays` the sum.
- Prime-detection behavior must exclude `1` and include only prime values in the accumulator.
- No external packages, services, config files, or environment variables are involved.
- Build-task protocol requires design and ADR approval before heavy coding begins.

## Affected Files and Modules

- Planned code file: `scheme-pe02/California_Adeva_PE02.rkt`
- Updated design artifact: `scheme-pe02/docs/design/u1/domain-design.md`
- Updated design artifact: `scheme-pe02/docs/design/u1/logical-design.md`
- ADR artifact: `scheme-pe02/docs/design/u1/adr/u1-b2-sumprimes-display-contract-adr.md`
- Traceability artifact: `scheme-pe02/docs/traceability/u1/u1-b2-sumprimes-display-contract-traceability.md`

## Interfaces and Dependencies

- Public interface: `(Sumprimes n)`
- Input assumptions: positive integer `n`
- External dependencies: none
- Integration points: none beyond local Racket execution

## Test Evidence Placeholders

| Test ID | Planned Check | Expected Evidence | Result |
| --- | --- | --- | --- |
| T-03 | `(Sumprimes 1)` | exact visible output `0` | Pending |
| T-04 | `(Sumprimes 10)` | exact visible output `17` | Pending |

## Deployment Handoff Placeholders

| Deployment Check ID | Handoff Note | Status |
| --- | --- | --- |
| DPL-03 | Confirm the final file loads and runs locally under `#lang racket` after implementation | Pending |

## Ops Signal Placeholders

| Ops Signal ID | Signal / Observable Hook | Status |
| --- | --- | --- |
| OPS-01 | Local file load/run without blocking errors | Pending |
| OPS-02 | Stable printed output for representative `Sumprimes` runs | Pending |

## Human Validation Required

Approve this traceability baseline together with the domain design, logical design, and ADR before heavy coding begins for `U1-B2`.

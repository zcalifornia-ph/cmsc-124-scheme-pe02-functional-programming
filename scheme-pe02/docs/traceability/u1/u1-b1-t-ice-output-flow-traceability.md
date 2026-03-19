# U1-B1 Traceability

Status: Draft for Validation
Unit ID: `U1`
Bolt ID: `U1-B1`
Bolt Name: `T-Ice` output flow

## Bolt Contract

- Goal / deliverable: add the public procedure `(T-Ice n)` to the single submission file so it displays the approved tokenized sequence from `1` to `n`
- Linked story IDs: `US-01`
- Linked NFR IDs: `NFR-01`, `NFR-02`, `NFR-04`, `NFR-07`
- Linked risk IDs: `R1`, `R6`, `R8`
- Linked test IDs: `T-01`, `T-02`
- Linked deployment-check IDs: `DPL-03`
- Linked ops-signal IDs: `OPS-01`, `OPS-02`

## Smallest Shippable Chunk Check

`U1-B1` is the smallest shippable chunk inside `U1` because it delivers one independently testable public procedure with a narrow observable contract and only two planned validation checks.

## Bolt Checklist

- [ ] Design: define the divisibility rules, token precedence, and print-order contract in `U1-domain-design.md`
- [ ] Implement: add `(T-Ice n)` using a functional, no-global-state approach inside the single `.rkt` file
- [ ] Test: execute `T-01` and `T-02`, recording expected vs observed printed output
- [ ] Docs: add inline comments and a representative usage comment for `T-Ice`
- [ ] Review: confirm formatting matches approved assumption Q3 and update validation notes

## Context Summary

- There is no existing `.rkt` implementation in `scheme-pe02/`; the bolt starts from green-field code.
- The only resolved requirements artifact is `scheme-pe02/REQUIREMENTS.md`.
- The implementation target is `scheme-pe02/California_Adeva_PE02.rkt`.
- This bolt affects only the `T-Ice` public procedure and its supporting local helper logic.
- Output format is grading-sensitive and must be verified from printed output, not inferred from logic alone.
- No external packages, configuration files, services, or runtime integrations are involved.
- Future U1 bolts will add `Sumprimes` and `count-factors`, but they are explicitly out of scope for this bolt.
- Build-task protocol requires design and ADR approval before heavy coding begins.

## Affected Files and Modules

- Planned code file: `scheme-pe02/California_Adeva_PE02.rkt`
- Design artifact: `scheme-pe02/docs/design/u1/domain-design.md`
- Design artifact: `scheme-pe02/docs/design/u1/logical-design.md`
- ADR artifact: `scheme-pe02/docs/design/u1/adr/u1-b1-t-ice-output-flow-adr.md`
- Traceability artifact: `scheme-pe02/docs/traceability/u1/u1-b1-t-ice-output-flow-traceability.md`

## Interfaces and Dependencies

- Public interface: `(T-Ice n)`
- Input assumptions: positive integer `n`
- External dependencies: none
- Integration points: none beyond local Racket execution

## Test Evidence Placeholders

| Test ID | Planned Check | Expected Evidence | Result |
| --- | --- | --- | --- |
| T-01 | `(T-Ice 8)` | exact printed sequence `1 T ICE T 5 T-ICE 7 T` | Pending |
| T-02 | `(T-Ice 1)` | exact printed sequence `1` | Pending |

## Deployment Handoff Placeholders

| Deployment Check ID | Handoff Note | Status |
| --- | --- | --- |
| DPL-03 | Confirm the final file loads and runs locally under `#lang racket` after implementation | Pending |

## Ops Signal Placeholders

| Ops Signal ID | Signal / Observable Hook | Status |
| --- | --- | --- |
| OPS-01 | Local file load/run without blocking errors | Pending |
| OPS-02 | Stable printed output for representative `T-Ice` runs | Pending |

## Human Validation Required

Approve this traceability baseline together with the domain design, logical design, and ADR before heavy coding begins for `U1-B1`.

# U1-B2 Traceability

Status: Completed and Validated on March 19, 2026
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

- [x] Design: defined the prime-detection and accumulation rules plus the approved display-only observable contract in `U1-domain-design.md` and `U1-logical-design.md`
- [x] Implement: added `(Sumprimes n)` with local helpers as needed
- [x] Test: executed `T-03` and `T-04`, recording expected vs observed output
- [x] Docs: added inline comments and a representative usage comment for `Sumprimes`
- [x] Review: confirmed there is no extra visible output beyond the approved contract

## Context Summary

- `scheme-pe02/California_Adeva_PE02.rkt` now exists as the active coursework submission file.
- `U1-B1` is already implemented and validated, so `U1-B2` was added into a live submission file rather than a green-field empty target.
- `U1-B2` is still independently decomposable because its public contract and tests are self-contained.
- The implementation target remains `scheme-pe02/California_Adeva_PE02.rkt`.
- The visible-output behavior of `Sumprimes` is grading-sensitive because the assignment says the function `displays` the sum.
- Prime-detection behavior must exclude `1` and include only prime values in the accumulator.
- No external packages, services, config files, or environment variables are involved.
- The approved design and ADR were followed without requiring a material redesign during implementation.

## Affected Files and Modules

- Code file: `scheme-pe02/California_Adeva_PE02.rkt`
- Updated design artifact: `scheme-pe02/docs/design/u1/domain-design.md`
- Updated design artifact: `scheme-pe02/docs/design/u1/logical-design.md`
- ADR artifact: `scheme-pe02/docs/design/u1/adr/u1-b2-sumprimes-display-contract-adr.md`
- Traceability artifact: `scheme-pe02/docs/traceability/u1/u1-b2-sumprimes-display-contract-traceability.md`

## Interfaces and Dependencies

- Public interface: `(Sumprimes n)`
- Input assumptions: positive integer `n`
- External dependencies: none
- Integration points: none beyond local Racket execution

## Executed Test Evidence

| Test ID | Executed Check | Observed Evidence | Result |
| --- | --- | --- | --- |
| T-03 | Namespace-driven Racket invocation of `(Sumprimes 1)` | Printed output matched `0` between REPL prompts. | Pass |
| T-04 | Namespace-driven Racket invocation of `(Sumprimes 10)` | Printed output matched `17` between REPL prompts. | Pass |

## Acceptance Run Summary

- Story satisfied: `US-02`
- Acceptance criteria satisfied: prime-only accumulation, exclusion of `1`, boundary output for `n = 1`, representative output for `n = 10`, and approved visible-output contract
- Linked NFR checks satisfied for this bolt: `NFR-01`, `NFR-02`, `NFR-04`, `NFR-07`

## Deployment Handoff Notes

| Deployment Check ID | Handoff Note | Status |
| --- | --- | --- |
| DPL-03 | Direct local load via `C:\Program Files\Racket\Racket.exe scheme-pe02\California_Adeva_PE02.rkt` exited with code `0` and no load errors after `Sumprimes` was added. | Ready |

## Ops Signal Notes

| Ops Signal ID | Signal / Observable Hook | Status |
| --- | --- | --- |
| OPS-01 | Local file load/run without blocking errors | Ready |
| OPS-02 | Stable printed output for representative `Sumprimes` runs | Ready |

## Result Summary

`U1-B2` is implemented and validated. Proof lives in:

- `scheme-pe02/California_Adeva_PE02.rkt`
- `scheme-pe02/docs/design/u1/domain-design.md`
- `scheme-pe02/docs/design/u1/logical-design.md`
- `scheme-pe02/docs/design/u1/adr/u1-b2-sumprimes-display-contract-adr.md`
- `scheme-pe02/docs/traceability/u1/u1-b2-sumprimes-display-contract-traceability.md`

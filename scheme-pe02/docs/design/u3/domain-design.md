# U3 Domain Design

Status: Draft for Validation
Unit ID: `U3`
Unit Name: `Submission Readiness Unit`
Covered Bolts: `U3-B1`, `U3-B2`
Linked Story IDs: `US-06`, `US-07`
Linked NFR IDs: `NFR-02`, `NFR-03`, `NFR-05`, `NFR-06`, `NFR-07`, `NFR-08`
Linked Risk IDs: `R5`, `R6`, `R7`, `R8`

## Context Summary

- `scheme-pe02/California_Adeva_PE02.rkt` already exists and remains the only `.rkt` file under `scheme-pe02/`.
- All five required public procedures already exist and were validated earlier in `U1` and `U2`.
- `U3-B1` already completed the file-structure and rubric-visible documentation pass, adding the header/context block, per-procedure notes, and `Additional Specification` block.
- `U3-B2` is brownfield closeout work focused on final validation evidence and rubric confirmation rather than new feature scope.
- The active prepared scope is one explicit local acceptance rerun for representative and boundary cases plus final readability and submission-constraint review.
- No new public procedures, extra `.rkt` files, services, dependencies, or environment variables are in scope.
- The grading-sensitive surface for this bolt is proof that the existing single-file artifact both runs cleanly and remains rubric-ready.
- Validation for this bolt is centered on `T-13`, with final handoff notes tied to `DPL-03`, `OPS-01`, `OPS-04`, and `OPS-05`.

## Changed Concepts and Boundaries

### Submission Surface

The active `U3` scope keeps the single submission artifact intact across both bolts:

- Public submission artifact: `scheme-pe02/California_Adeva_PE02.rkt`
- Existing public procedures retained in the file: `T-Ice`, `Sumprimes`, `count-factors`, `my-sums`, `my-reverse`
- No new public procedures or secondary submission files are introduced by `U3-B2`

### Domain Concepts

- `Final Validation Sequence`: the explicit local rerun plan for representative and boundary cases across all five procedures
- `Acceptance Evidence Package`: the recorded runtime, documentation, and readiness proof captured in traceability artifacts
- `Rubric Closeout Review`: the final manual confirmation that header/context, readability, and `Additional Specification` visibility remain intact
- `Submission Constraint Preservation`: the rule that closeout work must not break single-file delivery, filename, or functional-style expectations
- `Representative/Boundary Rerun Set`: the agreed minimal expression set used to prove both normal and edge-case behavior before unit closure

## Invariants and Business Rules

1. The final deliverable remains a single `.rkt` file.
2. The filename remains `California_Adeva_PE02.rkt`.
3. All five required public procedures remain present with their existing names.
4. `U3-B2` must not add extra public procedures, new submission files, or external dependencies.
5. `U3-B2` is a proof-and-closeout bolt; it should not widen assignment scope beyond minimal corrective fixes if validation exposes a real defect.
6. The final validation sequence must rerun the approved representative and boundary cases for all five procedures.
7. The final file must load under `#lang racket` with zero blocking syntax or runtime errors.
8. The header/context block, per-procedure comments, representative usage notes, and `Additional Specification` block must remain visible and readable at closeout.
9. Any defect found during final validation must be corrected inside the same submission file and revalidated before `U3` is marked complete.
10. Supporting markdown artifacts may capture proof, but they do not replace the grader-visible evidence that must remain in the `.rkt` submission artifact itself.

## Interfaces

### Public Interfaces

- Submission artifact path: `scheme-pe02/California_Adeva_PE02.rkt`
- Existing public procedures: `(T-Ice n)`, `(Sumprimes n)`, `(count-factors m n)`, `(my-sums lis)`, `(my-reverse lis)`

### Validation Interfaces

- Local runtime command surface: `C:\Program Files\Racket\Racket.exe scheme-pe02\California_Adeva_PE02.rkt`
- Local evaluation model: namespace-driven invocation of representative and boundary expressions against the single submission file

### Planned Local Responsibilities

- Preserve the submission artifact while running the final acceptance rerun.
- Capture observed output and returned-value evidence for all representative and boundary checks in `T-13`.
- Reconfirm readability and `Additional Specification` visibility before unit closeout.
- Limit code edits to last-mile corrective adjustments only if validation exposes a real issue.

## Brownfield References

- Existing submission artifact: `scheme-pe02/California_Adeva_PE02.rkt`
- Existing `U3-B1` traceability artifact: `scheme-pe02/docs/traceability/u3/u3-b1-submission-artifact-structure-and-rubric-visible-enhancements-traceability.md`
- Existing validated Unit `U1` traceability artifacts under `scheme-pe02/docs/traceability/u1/`
- Existing validated Unit `U2` traceability artifacts under `scheme-pe02/docs/traceability/u2/`
- Existing requirements baseline: `scheme-pe02/REQUIREMENTS.md`

## Human Validation Required

Approve this domain design together with the logical design and the relevant bolt ADR before heavy validation begins for `U3-B2`.
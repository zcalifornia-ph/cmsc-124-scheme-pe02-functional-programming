# U3 Logical Design

Status: Implemented Baseline on March 19, 2026
Unit ID: `U3`
Covered Bolts: `U3-B1`
Linked Test IDs: `T-11`, `T-12`
Linked Deployment Check IDs: `DPL-01`, `DPL-02`, `DPL-04`
Linked Ops Signal IDs: `OPS-04`, `OPS-05`

## Code Structure

- Target implementation file: `scheme-pe02/California_Adeva_PE02.rkt`
- Target language header: `#lang racket`
- Existing public procedures already in the file: `T-Ice`, `Sumprimes`, `count-factors`, `my-sums`, `my-reverse`
- Existing implementation status: all required procedures remain present, and `U3-B1` now adds the file-level structure and rubric-visible documentation package
- Implemented focus for this bolt: file-level structure, comment consistency, representative usage visibility, and `Additional Specification` placement
- Helper strategy: do not add new public procedures; avoid widening top-level scope unless a reviewed design change proves it necessary

## U3-B1 Implemented Shape

1. The submission file remains a single `#lang racket` artifact named `California_Adeva_PE02.rkt`.
2. A visible file-level header/context block identifies the coursework artifact and summarizes the file contents.
3. A clearly labeled `Additional Specification` block appears near the top of the submission file so a grader can see the complementary enhancement without relying on external documentation.
4. Each required procedure section now carries concise explanatory comments, representative usage notes, and explicit boundary notes.
5. The bolt uses comment/layout adjustments rather than behavioral changes so the validated algorithms remain stable.
6. The procedure order and existing public names remain intact.

## Patterns and Constraints

- Prefer comment and section-structure refinements over code-path changes.
- Preserve the existing `U1` and `U2` validated behavior while preparing the file for rubric-facing review.
- Do not introduce extra public procedures, mutable state, or new submission files.
- Keep the enhancement scope visibly complementary rather than functional-scope-expanding.
- Keep the implementation small enough that `T-11` and `T-12` can be run immediately after the documentation pass.
- Defer the full runtime rerun (`T-13`) and final readiness validation sequence to `U3-B2`.

## NFR Handling

- `NFR-03`: preserve the single-file delivery model and the filename `California_Adeva_PE02.rkt`.
- `NFR-05`: ensure the file contains a visible header/context block, per-procedure commentary, and representative usage notes sufficient for rubric review.
- `NFR-06`: keep comment wording, section flow, and naming readable and consistent across the whole file.
- `NFR-08`: introduce a clearly labeled `Additional Specification` block while keeping the enhancement scope controlled and non-disruptive.
- For `U3-B1`, avoid algorithmic edits unless they become unavoidable for documentation clarity, and record any such deviation before implementation continues.

## Validation Plan

- `T-11`: verify the final file path/name is `scheme-pe02/California_Adeva_PE02.rkt`, that it remains the intended single `.rkt` submission artifact, and that no alternative submission file is introduced.
- `T-12`: run a manual documentation review confirming the presence and readability of the header/context block, per-procedure comments, representative usage notes, and the `Additional Specification` block.
- `DPL-01`: confirm the expected deliverable path remains present after `U3-B1` changes.
- `DPL-02`: confirm the submission model remains one `.rkt` file despite supporting markdown artifacts in the repo.
- `DPL-04`: confirm the final file visibly includes the documentation and `Additional Specification` elements needed for rubric review.
- Record expected vs observed results in the `U3-B1` traceability artifact after implementation and acceptance validation.

## Deployment and Ops Linkage

- `DPL-01`: `U3-B1` must preserve the existence of the single deliverable file at the expected path.
- `DPL-02`: `U3-B1` must preserve the single-file submission model.
- `DPL-04`: `U3-B1` is responsible for making rubric-facing documentation and `Additional Specification` visibility explicit in the final file.
- `OPS-04`: documentation and readability checks should become reviewable and stable after this bolt.
- `OPS-05`: submission constraints should remain visibly intact after the structure/documentation pass.

## Human Validation Required

This logical design was approved for `U3-B1` execution and is now the implemented baseline for the first submission-readiness bolt.

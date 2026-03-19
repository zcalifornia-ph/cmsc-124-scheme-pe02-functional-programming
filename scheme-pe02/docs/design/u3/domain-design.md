# U3 Domain Design

Status: Draft for Validation
Unit ID: `U3`
Unit Name: `Submission Readiness Unit`
Covered Bolts: `U3-B1`
Linked Story IDs: `US-06`, `US-07`
Linked NFR IDs: `NFR-03`, `NFR-05`, `NFR-06`, `NFR-08`
Linked Risk IDs: `R5`, `R6`, `R7`

## Context Summary

- `scheme-pe02/California_Adeva_PE02.rkt` already exists and currently contains validated implementations of all five required coursework procedures.
- `U3-B1` is brownfield submission-readiness work inside the live single-file deliverable rather than a new behavior bolt.
- The active prepared scope is file-level structure, rubric-visible comments, representative usage comments, and `Additional Specification` visibility.
- The current submission file already has per-procedure comments and examples, but it does not yet carry the explicit final header/context package and visible `Additional Specification` block required by the approved requirements baseline.
- No new public procedures, external dependencies, integrations, services, or environment variables are in scope for `U3-B1`.
- The grading-sensitive surface for this bolt is readability and submission compliance rather than new algorithm behavior.
- Validation for this bolt is centered on manual file/path and documentation review through `T-11` and `T-12`.
- Full local load and representative execution reruns remain reserved for `U3-B2` / `T-13`.

## Changed Concepts and Boundaries

### Submission Surface

The active prepared `U3-B1` scope keeps the single submission artifact intact and refines its visible structure:

- Public submission artifact: `scheme-pe02/California_Adeva_PE02.rkt`
- Existing public procedures retained in the file: `T-Ice`, `Sumprimes`, `count-factors`, `my-sums`, `my-reverse`
- No new public procedures are introduced by this bolt

External markdown documentation may support the workflow, but the grader-facing submission quality for this bolt must be visible in the `.rkt` file itself.

### Domain Concepts

- `Submission Artifact`: the single `.rkt` file intended for delivery
- `File Naming Compliance`: the rule that the final submission file remains `California_Adeva_PE02.rkt`
- `Header/Context Block`: the visible file-level block that identifies the coursework artifact and summarizes what the file contains
- `Per-Procedure Commentary`: concise explanatory comments and representative usage notes attached to each required procedure
- `Additional Specification Block`: the clearly labeled in-file section that declares the approved complementary enhancement scope
- `Rubric-Visible Readability`: the property that a grader can understand the file structure, procedure purpose, and enhancement scope from the artifact itself
- `Boundary Handling Coverage`: the explicit visibility of approved representative and edge-case handling through comments or adjacent notes

## Invariants and Business Rules

1. The final deliverable remains a single `.rkt` file.
2. The filename remains `California_Adeva_PE02.rkt`.
3. All five required public procedures remain present with their existing names.
4. `U3-B1` must not add extra public procedures or move required functionality into external files.
5. The file should include a visible header/context block that identifies the artifact and its coursework scope.
6. Each required procedure should retain concise explanatory comments and representative usage notes.
7. The file must include a clearly labeled `Additional Specification` block.
8. The additional scope must remain complementary and non-disruptive, limited to visibility of the enhancement, representative comments, and boundary handling coverage.
9. `U3-B1` should preserve the approved interpretation of `no global identifiers` and avoid introducing mutable state or unnecessary top-level constants.
10. Readability improvements for this bolt should not change the validated behavior of the five implemented procedures.
11. The grader should be able to assess documentation, coding-style clarity, and the complementary enhancement from the submission artifact itself.

## Interfaces

### Public Interfaces

- Submission artifact path: `scheme-pe02/California_Adeva_PE02.rkt`
- Existing public procedures: `(T-Ice n)`, `(Sumprimes n)`, `(count-factors m n)`, `(my-sums lis)`, `(my-reverse lis)`

### Planned Local Responsibilities

- Preserve the single-file submission surface while refining the comment and section layout
- Introduce or refine a visible header/context block without altering procedure behavior
- Add or position a clearly labeled `Additional Specification` block inside the submission artifact
- Keep per-procedure comments and representative usage notes consistent enough for rubric review
- Avoid widening algorithm scope or introducing new grader-facing behavior beyond documentation/readability improvements

The exact section ordering is a logical-design concern, but all rubric-visible additions must remain inside the single submission file.

## Brownfield References

- Existing submission artifact: `scheme-pe02/California_Adeva_PE02.rkt`
- Existing validated Unit `U1` traceability artifacts under `scheme-pe02/docs/traceability/u1/`
- Existing validated Unit `U2` traceability artifacts under `scheme-pe02/docs/traceability/u2/`
- Existing requirements baseline: `scheme-pe02/REQUIREMENTS.md`

## Human Validation Required

Approve this domain design together with the logical design and the relevant bolt ADR before heavy coding begins for `U3-B1`.

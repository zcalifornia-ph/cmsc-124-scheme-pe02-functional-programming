# ADR: U3-B1 Submission Artifact Structure and Rubric-Visible Enhancements

Status: Draft for Validation
Unit ID: `U3`
Bolt ID: `U3-B1`
Decision Date: March 19, 2026

## Decision Statement

Implement `U3-B1` as a file-structure and documentation pass inside `California_Adeva_PE02.rkt`, centered on a visible header/context block, consistent per-procedure usage comments, and a clearly labeled `Additional Specification` block, while keeping validated runtime behavior unchanged.

## Options Considered

### Option 1: In-file rubric-visible closeout in the submission artifact

- Keep the submission-readiness changes inside `California_Adeva_PE02.rkt`
- Make the grader-facing structure and enhancement scope visible directly in the deliverable
- Avoid relying on external markdown files for the primary rubric-facing evidence

### Option 2: Externalize most explanatory context into markdown docs

- Keep the `.rkt` file mostly as-is
- Use `README.md`, version docs, or traceability notes as the main explanation surface
- Treat the submission file as primarily code-only

### Option 3: Minimal touch by adding only an `Additional Specification` block

- Add the required enhancement declaration
- Leave the rest of the file-level structure and comment consistency mostly unchanged
- Defer broader readability cleanup entirely to `U3-B2`

## Chosen Option and Why

Choose Option 1.

Reasoning:

- It aligns best with the grading model because the actual deliverable is the single `.rkt` file.
- It satisfies `NFR-03`, `NFR-05`, and `NFR-08` without asking the grader to inspect supporting docs first.
- It keeps `U3-B1` as the smallest shippable submission-readiness slice: structure and documentation now, full runtime rerun later in `U3-B2`.
- It reduces the risk that rubric-facing clarity work remains invisible in the final submitted artifact.

## Consequences

- The `U3-B1` diff will likely be comment- and layout-heavy rather than algorithm-heavy.
- The existing validated procedures must remain behaviorally stable while their surrounding comments and section structure are refined.
- `U3-B2` will still be needed for the full local validation pass and final rubric closeout evidence.

## Follow-Up Implications

- During acceptance, confirm that `T-11` passes for file path/name and single-file delivery expectations.
- During acceptance, confirm that `T-12` passes for header/context visibility, per-procedure commentary, representative usage notes, and the `Additional Specification` block.
- If implementation pressure suggests moving rubric-visible explanation into external docs instead of the submission file, revise the design first rather than silently changing the grading surface.

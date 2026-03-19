# ADR: U3-B2 Final Validation and Rubric Closeout

Status: Draft for Validation
Unit ID: `U3`
Bolt ID: `U3-B2`
Decision Date: March 19, 2026

## Decision Statement

Execute `U3-B2` as one consolidated final local validation and rubric-closeout pass against `California_Adeva_PE02.rkt`, capturing runtime evidence for all five procedures and allowing only minimal corrective edits if validation reveals a real issue.

## Options Considered

### Option 1: One consolidated final acceptance run and rubric review

- Keep the closeout centered on the existing single submission artifact.
- Rerun representative and boundary cases for all five procedures in one evidence-oriented pass.
- Pair runtime proof with a final manual review of readability and `Additional Specification` visibility.

### Option 2: Rely on prior bolt evidence without a final rerun

- Treat the earlier `U1`, `U2`, and `U3-B1` evidence as sufficient.
- Skip the explicit end-to-end local rerun for the submission-ready file.
- Close `U3` using previously recorded bolt evidence only.

### Option 3: Split runtime reruns and rubric review into separate ad hoc checks

- Run local procedure reruns first.
- Perform documentation and rubric review later as a separate manual activity.
- Combine the evidence informally at unit closeout.

## Chosen Option and Why

Choose Option 1.

Reasoning:

- It directly addresses `R8` by requiring a fresh local rerun before the unit is marked complete.
- It satisfies `NFR-02` and `NFR-07` with explicit proof instead of inference from earlier bolts.
- It keeps `U3-B2` as the smallest shippable final-closeout chunk because runtime proof and rubric review are captured together.
- It preserves the grading surface inside the actual single submission artifact instead of relying on scattered downstream interpretation.

## Consequences

- Most `U3-B2` work will be validation, evidence capture, and closeout review rather than net-new implementation.
- If the consolidated rerun exposes a defect, the fix must stay small, remain inside `California_Adeva_PE02.rkt`, and be revalidated immediately.
- Final unit closure will depend on observed runtime and readability evidence rather than earlier assumptions alone.

## Follow-Up Implications

- During acceptance, confirm that `T-13` covers representative and boundary reruns for all five procedures.
- During acceptance, confirm that direct local load via `C:\Program Files\Racket\Racket.exe scheme-pe02\California_Adeva_PE02.rkt` exits with code `0`.
- During acceptance, confirm that the header/context block, per-procedure comments, representative usage notes, and `Additional Specification` block remain visible after final closeout.
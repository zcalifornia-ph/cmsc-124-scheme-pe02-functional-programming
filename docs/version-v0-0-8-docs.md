# Version v0.0.8 Docs

## Quick Diagnostic Read

This version closes the second list-processing implementation bolt in Unit `U2` and closes the full unit.

- `scheme-pe02/California_Adeva_PE02.rkt` now includes `my-reverse` in addition to the previously validated procedures.
- `U2-B2` now has executed validation evidence instead of placeholders.
- Unit `U2` now has its full two-bolt design baseline under `scheme-pe02/docs/design/u2/` and executed proof for the second bolt under `scheme-pe02/docs/traceability/u2/`.
- The only remaining unfinished lane is Unit `U3`, which covers submission readiness, readability, and rubric closeout.

## One-Sentence Objective

Document the fifth validated implementation milestone for the coursework project: Unit `U2`, Bolt `U2-B2`, covering `my-reverse`, and record the closeout of the full list-processing unit.

## Why This Version Matters

`v0.0.8` matters because it is the point where all five required coursework procedures exist in the submission file with passing validation evidence.

After this version, the repository has validated implementations of:

- `T-Ice`
- `Sumprimes`
- `count-factors`
- `my-sums`
- `my-reverse`

That means the repository now has both completed implementation units from the AI-DLC requirements decomposition, leaving only final submission-readiness work in `U3`.

## Plan A / Plan B

### Plan A (Recommended)

Continue into Unit `U3` by preparing or approving the submission-readiness design package.

### Plan B

Review the full code-and-traceability trail for `U1` and `U2` first to confirm the same pattern was followed across all five procedures: approved design, implementation, executed validation, and persisted evidence.

## System View

The current implementation flow now looks like this:

```text
U1-B1 approved -> implemented -> validated
U1-B2 approved -> implemented -> validated
U1-B3 approved -> implemented -> validated
U1 complete
U2-B1 approved -> implemented -> validated
U2-B2 approved -> implemented -> validated
U2 complete
U3 pending
```

This version turns Unit `U2` from a partially completed lane into a closed implementation unit.

## Artifact Map

### Updated Implementation Artifacts

- `scheme-pe02/California_Adeva_PE02.rkt`
- `scheme-pe02/docs/traceability/u2/u2-b2-my-reverse-manual-reversal-traceability.md`

### Related Control Artifacts

- `scheme-pe02/docs/design/u2/domain-design.md`
- `scheme-pe02/docs/design/u2/logical-design.md`
- `scheme-pe02/docs/design/u2/adr/u2-b2-my-reverse-manual-reversal-adr.md`

### Root Documentation Updates

- `README.md`
- `CHANGELOG.md`
- `docs/version-v0-0-8-docs.md`

## Detailed Walkthrough

## 1) The Submission File Now Contains All Five Required Procedures

Before this version, the submission file already contained four validated procedures:

- `T-Ice`
- `Sumprimes`
- `count-factors`
- `my-sums`

This version adds:

- `my-reverse`

That closes the last remaining public procedure in the functional coursework scope.

## 2) `my-reverse` Implements Explicit Manual Reversal

The approved contract for `my-reverse` required a returned reversed list without using built-in reversal automation.

This version implements that by:

- keeping the helper local,
- walking the list from head to tail,
- accumulating reversed order explicitly,
- returning the reversed list without visible output.

That keeps the implementation aligned with both the assignment wording and the approved `U2-B2` ADR.

## 3) Validation Evidence Now Proves Both `my-reverse` Paths

The executed checks were:

- `T-09`: `(my-reverse '(1 2 3 4))` returned `(4 3 2 1)`
- `T-10`: `(my-reverse '())` returned `()`
- direct file load under Racket exited with code `0`

Those checks are now recorded in the `U2-B2` traceability artifact, so the bolt has actual proof instead of planned placeholders.

## 4) Unit `U2` Is Now Closed

This version matters beyond one more function because it closes the second and final bolt in the list-processing unit.

That means:

- both `U2` public procedures exist,
- representative and empty-list validation exists for both,
- the repository now has completed and validated implementations for Units `U1` and `U2`.

## Copy-Paste Review Steps

```powershell
cd d:\Programming\Repositories\cmsc-124-scheme-pe02-functional-programming
Get-Content scheme-pe02\California_Adeva_PE02.rkt
Get-Content scheme-pe02\docs\traceability\u2\u2-b2-my-reverse-manual-reversal-traceability.md
Get-ChildItem scheme-pe02\docs\design\u2 -Recurse
```

## Pitfalls and Debugging Guidance

### 1) Using built-in reverse functionality

That would violate the approved coursework contract. The accepted implementation has to keep the reversal logic manual and visible.

### 2) Treating `my-reverse` as if it were a nested-list problem

This bolt stays within the approved non-nested list scope. Nested reversal behavior is not part of the validated contract here.

### 3) Assuming the project is fully finished after `U2`

The core procedure implementation is complete, but Unit `U3` still has to close the final submission-readiness, documentation, and rubric-oriented work.

## Practice Task With Self-Check

### Task

Explain why `T-09` and `T-10` are enough to prove the approved scope of `my-reverse` even though they do not test nested lists.

### Self-Check

You understand this version if you can answer:

1. Which bolt did `v0.0.8` close?
2. Which two tests proved the `my-reverse` behavior?
3. What larger unit milestone became true after this version?

Expected answers:

- `U2-B2`
- `T-09` and `T-10`
- Unit `U2` is complete

## Next 24-72 Hours

1. Prepare or approve the `U3-B1` design package for submission readiness.
2. Update the final file-level documentation and `Additional Specification` block.
3. Execute the `U3` validation steps.
4. Close the final rubric/readiness lane.

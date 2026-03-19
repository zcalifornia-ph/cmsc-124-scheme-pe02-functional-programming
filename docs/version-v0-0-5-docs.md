# Version v0.0.5 Docs

## Quick Diagnostic Read

This version closes the second implementation bolt in Unit `U1`.

- `scheme-pe02/California_Adeva_PE02.rkt` now includes both `T-Ice` and `Sumprimes`.
- `U1-B2` now has executed validation evidence instead of placeholders.
- Unit `U1` now has two completed bolts.
- Unit `U1` is still not finished because `U1-B3` (`count-factors`) remains open.

## One-Sentence Objective

Document the second validated implementation milestone for the coursework project: Unit `U1`, Bolt `U1-B2`, covering `Sumprimes`.

## Why This Version Matters

`v0.0.5` matters because the repository now demonstrates that the first implementation loop was not a one-off.

There are now two completed build cycles with the same pattern:

- approved design,
- working Scheme code,
- passing acceptance evidence,
- updated traceability.

That is the point where Unit `U1` starts to look like an actual in-progress implementation stream rather than a single isolated success.

## Plan A / Plan B

### Plan A (Recommended)

Continue with `U1-B3` after its design package is approved.

### Plan B

If you want to review consistency first, compare `U1-B1` and `U1-B2` to confirm the same build discipline was followed in both bolts.

## System View

The current `U1` flow now looks like this:

```text
U1-B1 approved -> implemented -> validated
U1-B2 approved -> implemented -> validated
U1-B3 pending
```

This version turns Unit `U1` into a partially completed implementation lane with two closed bolts and one remaining bolt.

## Artifact Map

### Updated Implementation Artifacts

- `scheme-pe02/California_Adeva_PE02.rkt`
- `scheme-pe02/docs/traceability/u1/u1-b2-sumprimes-display-contract-traceability.md`

### Related Control Artifacts

- `scheme-pe02/REQUIREMENTS.md`
- `scheme-pe02/docs/design/u1/domain-design.md`
- `scheme-pe02/docs/design/u1/logical-design.md`
- `scheme-pe02/docs/design/u1/adr/u1-b2-sumprimes-display-contract-adr.md`

### Root Documentation Updates

- `README.md`
- `CHANGELOG.md`
- `docs/version-v0-0-5-docs.md`

## Detailed Walkthrough

## 1) The Submission File Now Contains Two Working Procedures

Before this version, the submission file had only one implemented procedure: `T-Ice`.

This version adds `Sumprimes`, so the file now contains:

- `T-Ice`
- `Sumprimes`

That matters because the submission file is beginning to resemble the final coursework artifact instead of an initial skeleton.

## 2) `Sumprimes` Was Implemented According to the Approved Contract

The approved contract for `Sumprimes` was display-oriented, not return-oriented.

The implementation follows that requirement by:

- using local helper logic for prime detection,
- recursively accumulating the total,
- displaying the final total as the observable result.

That keeps the implementation aligned with the assignment wording and the approved bolt design.

## 3) Validation Evidence Is Recorded for the Second Bolt

The executed checks were:

- `T-03`: `(Sumprimes 1)` printed `0`
- `T-04`: `(Sumprimes 10)` printed `17`
- direct file load under Racket exited with code `0`

Those checks are now recorded in the `U1-B2` traceability artifact, so the bolt has actual proof rather than planned placeholders.

## 4) Unit `U1` Is Closer to Completion, But Not Closed Yet

With `U1-B1` and `U1-B2` complete, the only remaining bolt in `U1` is:

- `U1-B3` for `count-factors`

So this version is important progress, but it is not yet the unit-closeout milestone.

## Copy-Paste Review Steps

```powershell
cd d:\Programming\Repositories\cmsc-124-scheme-pe02-functional-programming
Get-Content scheme-pe02\California_Adeva_PE02.rkt
Get-Content scheme-pe02\docs\traceability\u1\u1-b2-sumprimes-display-contract-traceability.md
Get-Content scheme-pe02\REQUIREMENTS.md
```

## Pitfalls and Debugging Guidance

### 1) Treating visible output as optional for `Sumprimes`

It is not optional in this workflow. The approved contract and the validation evidence both treat displayed output as the primary behavior.

### 2) Forgetting that Unit `U1` still has one unfinished bolt

Two completed bolts do not close the unit. `count-factors` still has to be designed, implemented, and validated.

### 3) Letting the traceability file lag behind test execution

The key value of this version is that the tests and the traceability record now agree. That discipline needs to continue for `U1-B3`.

## Practice Task With Self-Check

### Task

Explain why `(Sumprimes 1)` is an important acceptance case even though it is smaller than the representative `(Sumprimes 10)` case.

### Self-Check

You understand this version if you can answer:

1. Which two tests proved the `Sumprimes` behavior?
2. Which file now contains both implemented U1 procedures?
3. Why is Unit `U1` still open after this version?

Expected answers:

- `T-03` and `T-04`
- `scheme-pe02/California_Adeva_PE02.rkt`
- because `U1-B3` is still incomplete

## Next 24-72 Hours

1. Approve the `U1-B3` design package if it is ready.
2. Resume `build.task` for Unit `U1`, Bolt `U1-B3`.
3. Implement `count-factors`.
4. Execute `T-05` and `T-06`.
5. Update `REQUIREMENTS.md` and the `U1-B3` traceability artifact only after the acceptance run passes.

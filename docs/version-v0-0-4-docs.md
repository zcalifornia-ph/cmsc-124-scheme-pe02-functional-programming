# Version v0.0.4 Docs

## Quick Diagnostic Read

This version is the first point where the repository contains actual Scheme implementation, not only planning and design artifacts.

- `scheme-pe02/California_Adeva_PE02.rkt` now exists.
- `T-Ice` is implemented in that file.
- The `U1-B1` traceability artifact now includes real validation evidence instead of placeholders.
- `U1-B1` is complete, but Unit `U1` is still open because `U1-B2` and `U1-B3` remain unfinished.

## One-Sentence Objective

Document the first validated implementation milestone for the coursework project: Unit `U1`, Bolt `U1-B1`, covering `T-Ice`.

## Why This Version Matters

`v0.0.4` is the first version where the repository crosses from design preparation into proven implementation.

That matters because the workflow now has all three of these at once for one bolt:

- approved design,
- working code,
- recorded acceptance evidence.

That is the minimum complete loop the AI-DLC build flow is supposed to produce.

## Plan A / Plan B

### Plan A (Recommended)

Continue with `U1-B2` after its design package is approved.

### Plan B

If the project needs review before more coding, use this version as the reference point for how a completed bolt should look: design -> code -> validation -> traceability.

## System View

The current implementation flow now looks like this:

```text
U1-B1 design artifacts approved
  -> California_Adeva_PE02.rkt created
    -> T-Ice implemented
      -> T-01 and T-02 executed
        -> traceability updated with evidence
          -> REQUIREMENTS.md marks U1-B1 complete
```

This is the first fully closed bolt in the repository.

## Artifact Map

### New or Updated Implementation Artifacts

- `scheme-pe02/California_Adeva_PE02.rkt`
- `scheme-pe02/docs/traceability/u1/u1-b1-t-ice-output-flow-traceability.md`

### Related Planning/Control Artifacts

- `scheme-pe02/REQUIREMENTS.md`
- `scheme-pe02/docs/design/u1/domain-design.md`
- `scheme-pe02/docs/design/u1/logical-design.md`
- `scheme-pe02/docs/design/u1/adr/u1-b1-t-ice-output-flow-adr.md`

### Root Documentation Updates

- `README.md`
- `CHANGELOG.md`
- `docs/version-v0-0-4-docs.md`

## Detailed Walkthrough

## 1) The Submission File Now Exists

Before this version, `scheme-pe02/` contained planning, design, and traceability artifacts but no actual `.rkt` submission file.

This version adds:

- `scheme-pe02/California_Adeva_PE02.rkt`

That file now serves as the actual coursework implementation target going forward.

## 2) `T-Ice` Is Implemented With Local Helpers

The implementation follows the approved `U1-B1` design:

- one public procedure, `T-Ice`
- local helper logic for token mapping
- explicit output spacing control
- no extra top-level helper procedures introduced for this bolt

That keeps the code aligned with the approved interpretation of `no global identifiers`.

## 3) Validation Is No Longer Hypothetical

The important difference in this version is not just that code exists. The important difference is that validation evidence exists too.

The executed checks were:

- `T-01`: `(T-Ice 8)` printed `1 T ICE T 5 T-ICE 7 T`
- `T-02`: `(T-Ice 1)` printed `1`
- direct file load under Racket exited with code `0`

Those results were recorded in the `U1-B1` traceability artifact.

## 4) The Traceability File Now Shows a Completed Bolt

The `U1-B1` traceability file no longer contains only planned placeholders.

It now records:

- completed checklist items,
- executed tests,
- observed evidence,
- deployment handoff readiness,
- ready-state ops signals.

That makes the bolt auditable rather than only described.

## 5) `U1` Is Still Not Complete

Even though `U1-B1` is done, Unit `U1` still depends on:

- `U1-B2` for `Sumprimes`
- `U1-B3` for `count-factors`

This version therefore closes the first bolt, not the whole unit.

## Copy-Paste Review Steps

```powershell
cd d:\Programming\Repositories\cmsc-124-scheme-pe02-functional-programming
Get-Content scheme-pe02\California_Adeva_PE02.rkt
Get-Content scheme-pe02\docs\traceability\u1\u1-b1-t-ice-output-flow-traceability.md
Get-Content scheme-pe02\REQUIREMENTS.md
```

## Pitfalls and Debugging Guidance

### 1) Mistaking a passing design review for a finished bolt

It is only a finished bolt once there is implementation plus executed evidence. This version is the first example of that completed state in the repo.

### 2) Forgetting to keep traceability synchronized with real tests

If later bolts pass locally but the traceability file is not updated, the workflow record becomes incomplete.

### 3) Marking the whole unit complete too early

`U1-B1` is complete. Unit `U1` is not.

## Practice Task With Self-Check

### Task

Read the `T-Ice` implementation and explain why the output formatting check had to be validated from actual printed output rather than from the token-selection logic alone.

### Self-Check

You understand this version if you can answer:

1. Which file now holds the actual coursework implementation?
2. Which two tests proved the `T-Ice` behavior?
3. Why is Unit `U1` still open after this version?

Expected answers:

- `scheme-pe02/California_Adeva_PE02.rkt`
- `T-01` and `T-02`
- because `U1-B2` and `U1-B3` are still incomplete

## Next 24-72 Hours

1. Approve the `U1-B2` design package if it is still acceptable.
2. Resume `build.task` for Unit `U1`, Bolt `U1-B2`.
3. Implement `Sumprimes`.
4. Execute `T-03` and `T-04`.
5. Update `REQUIREMENTS.md` and the `U1-B2` traceability artifact only after that acceptance run passes.

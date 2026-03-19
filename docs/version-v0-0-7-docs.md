# Version v0.0.7 Docs

## Quick Diagnostic Read

This version closes the first list-processing implementation bolt in Unit `U2`.

- `scheme-pe02/California_Adeva_PE02.rkt` now includes `my-sums` in addition to the completed `U1` procedures.
- `U2-B1` now has executed validation evidence instead of placeholders.
- The repository now has the first `U2` design and traceability package under `scheme-pe02/docs/design/u2/` and `scheme-pe02/docs/traceability/u2/`.
- Unit `U2` is still open because `U2-B2` (`my-reverse`) remains unfinished.

## One-Sentence Objective

Document the fourth validated implementation milestone for the coursework project: Unit `U2`, Bolt `U2-B1`, covering `my-sums` and the start of the list-processing unit.

## Why This Version Matters

`v0.0.7` matters because it proves the repository can move beyond numeric-only procedures.

After this version, the submission file now covers:

- `T-Ice`
- `Sumprimes`
- `count-factors`
- `my-sums`

That means the project has entered Unit `U2` with the same pattern already established in Unit `U1`: approved design, working code, passing validation, and persisted traceability.

## Plan A / Plan B

### Plan A (Recommended)

Continue into `U2-B2` by preparing or approving the design package for `my-reverse`.

### Plan B

Review the first four implemented procedures together to confirm the file still follows the single-file, local-helper-oriented style required by the coursework rules.

## System View

The current implementation flow now looks like this:

```text
U1-B1 approved -> implemented -> validated
U1-B2 approved -> implemented -> validated
U1-B3 approved -> implemented -> validated
U1 complete
U2-B1 approved -> implemented -> validated
U2-B2 pending
U3 pending
```

This version turns Unit `U2` from a planned lane into an active implementation lane.

## Artifact Map

### Updated Implementation Artifacts

- `scheme-pe02/California_Adeva_PE02.rkt`
- `scheme-pe02/docs/traceability/u2/u2-b1-my-sums-nested-accumulation-traceability.md`

### Related Control Artifacts

- `scheme-pe02/docs/design/u2/domain-design.md`
- `scheme-pe02/docs/design/u2/logical-design.md`
- `scheme-pe02/docs/design/u2/adr/u2-b1-my-sums-nested-accumulation-adr.md`

### Root Documentation Updates

- `README.md`
- `CHANGELOG.md`
- `docs/version-v0-0-7-docs.md`

## Detailed Walkthrough

## 1) The Submission File Now Contains the First `U2` Procedure

Before this version, the submission file contained only the three completed numeric procedures from Unit `U1`.

This version adds:

- `my-sums`

That matters because the file now spans both the numeric procedure lane and the first list-processing bolt.

## 2) `my-sums` Implements Recursive Nested Traversal

The approved contract for `my-sums` required recursive processing of nested lists at arbitrary depth within the approved numbers-only scope.

This version implements that by:

- keeping the helper local,
- treating empty lists as `0`,
- recursing through nested pair/list structure,
- returning the computed total without visible output.

That keeps the implementation aligned with the assignment wording and the approved bolt design.

## 3) Validation Evidence Now Proves Both `U2-B1` Paths

The executed checks were:

- `T-07`: `(my-sums '(1 (2 (3 4)) 5))` returned `15`
- `T-08`: `(my-sums '())` returned `0`
- direct file load under Racket exited with code `0`

Those checks are now recorded in the `U2-B1` traceability artifact, so the bolt has actual proof rather than planned placeholders.

## 4) Unit `U2` Has Started, But It Is Not Closed Yet

With `U2-B1` complete, the remaining bolt in Unit `U2` is:

- `U2-B2` for `my-reverse`

So this version is meaningful forward progress, but it is not the unit-closeout milestone yet.

## Copy-Paste Review Steps

```powershell
cd d:\Programming\Repositories\cmsc-124-scheme-pe02-functional-programming
Get-Content scheme-pe02\California_Adeva_PE02.rkt
Get-Content scheme-pe02\docs\traceability\u2\u2-b1-my-sums-nested-accumulation-traceability.md
Get-ChildItem scheme-pe02\docs\design\u2 -Recurse
```

## Pitfalls and Debugging Guidance

### 1) Treating `my-sums` as a flat-list-only function

That would miss the core coursework requirement. The accepted implementation has to recurse through nested lists, not just add a single level of numbers.

### 2) Expanding beyond the approved scope too early

This bolt intentionally stays within the approved numbers-only nested-list scope. Handling unsupported non-numeric atoms would be speculative work, not required work.

### 3) Assuming Unit `U2` is already complete

It is not. `my-reverse` still has to be designed, implemented, and validated before the unit can close.

## Practice Task With Self-Check

### Task

Explain why the empty-list case `T-08` matters even though the representative nested case `T-07` already proves recursion.

### Self-Check

You understand this version if you can answer:

1. Which bolt did `v0.0.7` close?
2. Which two tests proved the `my-sums` behavior?
3. Why is Unit `U2` still open after this version?

Expected answers:

- `U2-B1`
- `T-07` and `T-08`
- because `U2-B2` is still incomplete

## Next 24-72 Hours

1. Prepare or approve the `U2-B2` design package for `my-reverse`.
2. Implement `my-reverse` after that design gate is cleared.
3. Execute `T-09` and `T-10`.
4. Continue the same traceability discipline into the second list-processing bolt.

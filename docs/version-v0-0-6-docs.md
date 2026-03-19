# Version v0.0.6 Docs

## Quick Diagnostic Read

This version closes the last numeric implementation bolt in Unit `U1`.

- `scheme-pe02/California_Adeva_PE02.rkt` now includes `count-factors` in addition to `T-Ice` and `Sumprimes`.
- `U1-B3` now has executed validation evidence instead of placeholders.
- `REQUIREMENTS.md` now records that Unit `U1` is complete.
- The next unfinished implementation lane is Unit `U2` (`my-sums`, `my-reverse`).

## One-Sentence Objective

Document the third validated implementation milestone for the coursework project: Unit `U1`, Bolt `U1-B3`, covering `count-factors`, and record the closeout of the full numeric procedure unit.

## Why This Version Matters

`v0.0.6` matters because it closes the entire first unit rather than just one more bolt.

After this version, the repository has a complete validated numeric lane:

- `T-Ice`
- `Sumprimes`
- `count-factors`

That is the first point where one full unit from the AI-DLC requirements decomposition is finished end to end.

## Plan A / Plan B

### Plan A (Recommended)

Continue into Unit `U2` by preparing or approving the design package for `my-sums`.

### Plan B

Review the full `U1` trail first to confirm the same pattern was followed for all three bolts: approved design, implementation, executed validation, and updated traceability.

## System View

The current implementation flow now looks like this:

```text
U1-B1 approved -> implemented -> validated
U1-B2 approved -> implemented -> validated
U1-B3 approved -> implemented -> validated
U1 complete
U2 pending
U3 pending
```

This version turns Unit `U1` from a partially completed lane into a closed implementation unit.

## Artifact Map

### Updated Implementation Artifacts

- `scheme-pe02/California_Adeva_PE02.rkt`
- `scheme-pe02/docs/traceability/u1/u1-b3-count-factors-repeated-divisibility-traceability.md`
- `scheme-pe02/REQUIREMENTS.md`

### Related Control Artifacts

- `scheme-pe02/docs/design/u1/domain-design.md`
- `scheme-pe02/docs/design/u1/logical-design.md`
- `scheme-pe02/docs/design/u1/adr/u1-b3-count-factors-repeated-divisibility-adr.md`

### Root Documentation Updates

- `README.md`
- `CHANGELOG.md`
- `docs/version-v0-0-6-docs.md`

## Detailed Walkthrough

## 1) The Submission File Now Contains All Numeric `U1` Procedures

Before this version, the submission file had two implemented numeric procedures:

- `T-Ice`
- `Sumprimes`

This version adds:

- `count-factors`

That closes the public procedure surface for Unit `U1`.

## 2) `count-factors` Implements the Mixed Return/Display Contract

`count-factors` is not purely display-oriented and not purely return-oriented.

The approved contract required two distinct behaviors:

- if `m` divides `n`, return the repeated-factor count and do not display `"None"`
- if `m` does not divide `n`, display `"None"` and return `0`

This version implements that split explicitly with a local repeated-division helper and a separate no-factor branch.

## 3) Validation Evidence Now Proves Both Paths

The executed checks were:

- `T-05`: `(count-factors 4 48)` returned `2` and produced no visible output
- `T-06`: `(count-factors 5 48)` displayed `"None"` and returned `0`
- direct file load under Racket exited with code `0`

Those checks are now recorded in the `U1-B3` traceability artifact, so the bolt is evidenced rather than merely described.

## 4) Unit `U1` Is Now Closed

This version is larger than the earlier per-bolt milestones because it also updates `REQUIREMENTS.md` to record unit-level completion.

That means:

- all `U1` public procedures exist,
- all planned `U1` tests `T-01` through `T-06` have passing evidence,
- the numeric procedure unit is complete.

## Copy-Paste Review Steps

```powershell
cd d:\Programming\Repositories\cmsc-124-scheme-pe02-functional-programming
Get-Content scheme-pe02\California_Adeva_PE02.rkt
Get-Content scheme-pe02\docs\traceability\u1\u1-b3-count-factors-repeated-divisibility-traceability.md
Get-Content scheme-pe02\REQUIREMENTS.md
```

## Pitfalls and Debugging Guidance

### 1) Looking only at the returned value for `count-factors`

That is not enough. The no-factor branch is only correct if it also displays `"None"` exactly once.

### 2) Treating `U1-B3` as isolated from unit completion

This bolt closes more than one procedure. It also closes Unit `U1`, so `REQUIREMENTS.md` and the roadmap have to reflect that.

### 3) Forgetting that later units still remain

Completing Unit `U1` is a real milestone, but `my-sums`, `my-reverse`, and the final rubric/readiness unit are still open.

## Practice Task With Self-Check

### Task

Explain why `T-05` and `T-06` both had to capture visible output and returned values instead of only one of those dimensions.

### Self-Check

You understand this version if you can answer:

1. Which bolt did `v0.0.6` close?
2. Which two tests proved the `count-factors` behavior?
3. What larger unit milestone became true after this version?

Expected answers:

- `U1-B3`
- `T-05` and `T-06`
- Unit `U1` is complete

## Next 24-72 Hours

1. Start or approve the `U2-B1` design package for `my-sums`.
2. Implement `my-sums` after that design gate is cleared.
3. Execute `T-07` and `T-08`.
4. Continue the same traceability discipline into Unit `U2`.

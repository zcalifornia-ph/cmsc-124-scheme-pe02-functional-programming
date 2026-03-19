# ADR: U1-B3 count-factors Repeated Divisibility

Status: Draft for Validation
Unit ID: `U1`
Bolt ID: `U1-B3`
Decision Date: March 19, 2026

## Decision Statement

Implement `count-factors` as a single public procedure with a local repeated-division helper and an explicit outer no-factor branch so the mixed return/display contract stays simple and testable.

## Options Considered

### Option 1: Outer no-factor guard plus local recursive counter

- Check the initial divisibility of `n` by `m` first
- Display `"None"` and return `0` immediately on the no-factor path
- Use a local recursive helper to count successful repeated divisions on the factor path

### Option 2: Single recursive function with sentinel-style post-processing

- Run one recursive function for both factor and no-factor cases
- Interpret a special count or sentinel afterward to decide whether to display `"None"`

### Option 3: Shared top-level helper for repeated divisibility across `U1`

- Introduce a reusable top-level helper for divisibility counting
- Reuse it from `count-factors` and any future numeric procedure that might need it

## Chosen Option and Why

Choose Option 1.

Reasoning:

- It keeps the mixed contract explicit: the no-factor path is clearly separated from the factor-count return path.
- It aligns with the approved interpretation of `no global identifiers` because the counting helper can remain local.
- It keeps the bolt small and directly aligned with `T-05` and `T-06` instead of introducing shared abstractions early.
- It reduces the chance of accidentally displaying `"None"` more than once or on the wrong path.

## Consequences

- The procedure will mix a controlled visible side effect with a returned numeric result, which is required by the assignment contract.
- The initial divisibility check becomes a first-class branch and must be validated directly.
- Repeated-divisibility logic will stay local rather than being generalized for reuse across unrelated procedures.

## Follow-Up Implications

- During acceptance, confirm that `(count-factors 4 48)` returns `2` with no visible `"None"` output.
- During acceptance, confirm that `(count-factors 5 48)` displays `"None"` exactly once and returns `0`.
- If implementation pressure suggests a shared top-level helper, revise the design first rather than silently widening scope.

# ADR: U2-B2 my-reverse Manual Reversal

Status: Draft for Validation
Unit ID: `U2`
Bolt ID: `U2-B2`
Decision Date: March 19, 2026

## Decision Statement

Implement `my-reverse` as a single public procedure with a local recursive accumulator so the list is reversed manually without using built-in reversal automation.

## Options Considered

### Option 1: Local recursive accumulator

- Keep helper logic inside `my-reverse`
- Walk the list once while building the reversed prefix manually
- Return the accumulator when the input segment is empty

### Option 2: Naive recursive append-at-end strategy

- Recurse to the end of the list first
- Rebuild the reversed list by appending the current head to the end on unwind

### Option 3: Shared top-level helpers across `U2`

- Introduce reusable top-level list helpers
- Reuse them later for both `my-sums` and `my-reverse`

## Chosen Option and Why

Choose Option 1.

Reasoning:

- It aligns best with the approved interpretation of `no global identifiers` because helper scope remains local.
- It keeps the bolt small and directly aligned with `T-09` and `T-10` instead of introducing shared abstractions early.
- It keeps the manual reversal logic explicit while avoiding built-in reversal shortcuts.
- It is simpler and more defensible than a recursive append-at-end approach for this coursework scope.

## Consequences

- The implementation will likely use a local accumulator helper rather than a single flat recursion body.
- The reversal strategy stays entirely manual, which is required by the assignment contract.
- Future closeout work should not assume shared top-level list helpers already exist.

## Follow-Up Implications

- During acceptance, confirm that `(my-reverse '(1 2 3 4))` returns `'(4 3 2 1)`.
- During acceptance, confirm that `(my-reverse '())` returns `'()`.
- If later readability pressure suggests shared top-level helpers, revise the design first rather than silently widening scope.

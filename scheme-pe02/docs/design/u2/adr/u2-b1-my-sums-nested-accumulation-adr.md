# ADR: U2-B1 my-sums Nested Accumulation

Status: Draft for Validation
Unit ID: `U2`
Bolt ID: `U2-B1`
Decision Date: March 19, 2026

## Decision Statement

Implement `my-sums` as a single public procedure with a local recursive walker that handles nested list branches and numeric leaf values directly, returning the total without extra visible output.

## Options Considered

### Option 1: Local recursive walker over nested pair/list structure

- Keep helper logic inside `my-sums`
- Recurse across nested branches and remaining tails directly
- Return the computed total with no intermediate collection

### Option 2: Flatten the nested list first and sum afterward

- Build an intermediate flat list of numbers from the nested structure
- Sum the flattened result in a second step

### Option 3: Shared top-level list helpers across `U2`

- Introduce reusable top-level helpers for nested traversal
- Reuse them later for both `my-sums` and `my-reverse`

## Chosen Option and Why

Choose Option 1.

Reasoning:

- It aligns best with the approved interpretation of `no global identifiers` because helper scope remains local.
- It keeps the bolt small and directly aligned with `T-07` and `T-08` instead of introducing shared abstractions early.
- It avoids unnecessary intermediate list construction for a straightforward coursework recursion problem.
- It keeps the recursive behavior explicit, which makes grading and manual review easier.

## Consequences

- The recursion will branch on nested pair/list structure instead of operating on a preprocessed flat list.
- The implementation will intentionally stay within the approved numbers-only scope and will not add speculative non-numeric-atom handling.
- Future `U2-B2` work should not assume shared top-level list helpers already exist.

## Follow-Up Implications

- During acceptance, confirm that `(my-sums '(1 (2 (3 4)) 5))` returns `15`.
- During acceptance, confirm that `(my-sums '())` returns `0`.
- If later readability pressure suggests shared top-level helpers, revise the design first rather than silently widening scope.

# ADR: U1-B1 T-Ice Output Flow

Status: Draft for Validation
Unit ID: `U1`
Bolt ID: `U1-B1`
Decision Date: March 19, 2026

## Decision Statement

Implement `T-Ice` as a single public procedure with local helper logic for token mapping and ordered output emission, using explicit spacing control to match the approved observable contract.

## Options Considered

### Option 1: Local recursive emitter with a local token-mapping helper

- Keep all helper logic inside `T-Ice`
- Emit tokens in order with explicit space handling

### Option 2: Build an intermediate list of tokens and then join/print it

- Convert each integer into a token value first
- Join or print the completed token list afterward

### Option 3: Use an iterative loop construct with inline branching

- Walk the range through a loop form
- Mix token selection and printing directly inside the loop

## Chosen Option and Why

Choose Option 1.

Reasoning:

- It aligns best with the approved interpretation of `no global identifiers` because helpers can stay local.
- It keeps the observable formatting contract explicit instead of making spacing a side effect of a later join step.
- It is small enough for a single Bolt and easy to validate against `T-01` and `T-02`.
- It leaves future U1 bolts free to choose their own local helper shapes without forcing shared top-level utilities too early.

## Consequences

- Output formatting becomes a first-class implementation concern and must be validated directly.
- The final procedure will likely mix pure token selection with controlled output side effects, which is acceptable because the assignment requires display behavior.
- Future numeric procedures should not assume reuse of `T-Ice` helpers unless a later reviewed design change justifies it.

## Follow-Up Implications

- Confirm during the acceptance run that token spacing matches the approved sample behavior exactly.
- If local recursion becomes awkward during implementation, revise the logical design first rather than silently changing helper scope.
- Revisit only if the maintainer changes the observable contract or the `no global identifiers` interpretation.

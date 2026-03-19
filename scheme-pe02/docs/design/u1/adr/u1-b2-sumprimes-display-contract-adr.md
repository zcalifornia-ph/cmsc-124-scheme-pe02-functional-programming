# ADR: U1-B2 Sumprimes Display Contract

Status: Draft for Validation
Unit ID: `U1`
Bolt ID: `U1-B2`
Decision Date: March 19, 2026

## Decision Statement

Implement `Sumprimes` as a single public procedure with local helper logic for prime detection and recursive accumulation, with validation centered on the approved visible-output contract.

## Options Considered

### Option 1: Local prime predicate plus local recursive accumulator

- Keep helper logic inside `Sumprimes`
- Accumulate the prime total across the range from `1` to `n`
- Display the final total explicitly

### Option 2: Prebuild a list of candidate primes and reduce it afterward

- Generate intermediate prime-candidate structures first
- Sum the resulting list later

### Option 3: Use shared top-level numeric helpers across all U1 procedures

- Create reusable top-level helpers for range walking and numeric checks
- Reuse them across `T-Ice`, `Sumprimes`, and `count-factors`

## Chosen Option and Why

Choose Option 1.

Reasoning:

- It aligns best with the approved interpretation of `no global identifiers` because helper scope remains local.
- It keeps the bolt small and directly aligned with the `U1-B2` contract instead of introducing shared abstractions too early.
- It makes the visible-output rule easy to validate against `T-03` and `T-04`.
- It avoids unnecessary intermediate structures for a straightforward coursework function.

## Consequences

- Prime-detection logic will be repeated locally rather than centralized globally, which is acceptable for this assignment scale.
- The implementation must be careful that any return value does not create extra visible output beyond the approved display contract.
- Future `U1-B3` work should not assume shared numeric helpers already exist.

## Follow-Up Implications

- Confirm during the acceptance run that `(Sumprimes 1)` visibly produces `0` and `(Sumprimes 10)` visibly produces `17`.
- If the implementation ends up needing shared helpers for readability, revise the design first rather than silently widening top-level scope.
- Revisit only if the maintainer changes the approved `Sumprimes` observable contract.

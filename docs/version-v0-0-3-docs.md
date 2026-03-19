# Version v0.0.3 Docs

## Quick Diagnostic Read

This version extends the repository from one prepared U1 bolt to two prepared U1 bolts.

- `U1-B1` (`T-Ice`) design artifacts remain in place.
- `U1-B2` (`Sumprimes`) now has its own ADR and traceability baseline.
- The shared U1 domain and logical design files now describe both prepared numeric/display procedures.
- No Scheme implementation file has been created yet.
- The workflow is still paused at the human validation gate before coding.

## One-Sentence Objective

Document the repository change that expands Unit `U1` from a single prepared bolt to a two-bolt pre-coding design baseline covering both `T-Ice` and `Sumprimes`.

## Why This Version Matters

`v0.0.3` matters because it keeps the repository’s build preparation coherent instead of letting each bolt become an isolated note.

The important change is not new code. The important change is that Unit `U1` now has:

- a cumulative domain model,
- a cumulative logical design,
- a second bolt ADR,
- a second bolt traceability contract.

That gives the next implementation phase a clearer unit-level context instead of forcing every bolt to rediscover the same numeric-procedure constraints.

## Plan A / Plan B

### Plan A (Recommended)

Approve the `U1-B2` design package and continue with `build.task` for `Sumprimes` when ready.

### Plan B

If the visible-output contract or helper-scope decision for `Sumprimes` is wrong, revise the U1 design files and the `U1-B2` ADR before implementation begins.

## System View

The current `U1` documentation chain is now:

```text
REQUIREMENTS.md
  -> U1 domain-design.md
  -> U1 logical-design.md
  -> U1-B1 ADR + traceability
  -> U1-B2 ADR + traceability
  -> pending code implementation
```

This version adds the second bolt-specific branch under the same U1 unit baseline.

## Artifact Map

### Updated Unit-Level Artifacts

- `scheme-pe02/docs/design/u1/domain-design.md`
- `scheme-pe02/docs/design/u1/logical-design.md`

### New Bolt-Specific Artifacts

- `scheme-pe02/docs/design/u1/adr/u1-b2-sumprimes-display-contract-adr.md`
- `scheme-pe02/docs/traceability/u1/u1-b2-sumprimes-display-contract-traceability.md`

### Root Documentation Updates

- `README.md`
- `CHANGELOG.md`
- `docs/version-v0-0-3-docs.md`

## Detailed Walkthrough

## 1) U1 Design Files Were Promoted From Single-Bolt Notes to Unit-Level Working Docs

Before this version, the U1 design files were effectively centered on `U1-B1`.

This version updates them so they now describe:

- both prepared public procedures,
- both visible-output contracts,
- the broader set of tests `T-01` through `T-04`,
- the active constraints shared across prepared U1 work.

That keeps the unit documentation aligned with the actual state of decomposition.

## 2) U1-B2 Now Has Its Own ADR

The new ADR records the main decision for `Sumprimes`:

- keep helper logic local,
- use local prime detection and recursive accumulation,
- validate primarily through visible output rather than hidden return semantics.

That matters because the assignment says the function "displays" the sum, which makes output behavior a grading-sensitive part of the contract.

## 3) U1-B2 Now Has Its Own Traceability Baseline

The new traceability file ties `U1-B2` to:

- `US-02`,
- `NFR-01`, `NFR-02`, `NFR-04`, `NFR-07`,
- `R2`, `R6`, `R8`,
- tests `T-03` and `T-04`,
- deployment check `DPL-03`,
- ops signals `OPS-01` and `OPS-02`.

This is useful because the bolt can now be reviewed and approved without depending on unstated context.

## 4) Root Docs Were Updated To Match the New Prepared Scope

The root `README.md` now reflects that the repository has two prepared U1 bolts, not only one.

The root `CHANGELOG.md` now records the `U1-B2` design-preparation milestone as a new versioned documentation change.

## Copy-Paste Review Steps

```powershell
cd d:\Programming\Repositories\cmsc-124-scheme-pe02-functional-programming
Get-Content scheme-pe02\docs\design\u1\domain-design.md
Get-Content scheme-pe02\docs\design\u1\logical-design.md
Get-Content scheme-pe02\docs\design\u1\adr\u1-b2-sumprimes-display-contract-adr.md
Get-Content scheme-pe02\docs\traceability\u1\u1-b2-sumprimes-display-contract-traceability.md
```

## Pitfalls and Debugging Guidance

### 1) Treating `Sumprimes` as a pure return-value function

The approved contract is display-oriented. Implementation and validation should treat visible output as the first-class behavior.

### 2) Letting shared U1 design drift apart across bolts

If the unit-level rules change, update the shared U1 design files rather than storing conflicting assumptions in bolt-local notes only.

### 3) Starting code work without artifact approval

The workflow still requires approval of the updated U1 design files plus the `U1-B2` ADR and traceability file before heavy coding begins.

## Practice Task With Self-Check

### Task

Explain why `U1-B2` keeps prime-detection helpers local instead of introducing shared top-level numeric utilities.

### Self-Check

You understand this version if you can answer:

1. Which two tests define the `U1-B2` acceptance run?
2. Which file records the main `Sumprimes` implementation decision?
3. Why is visible output the primary validation focus for this bolt?

Expected answers:

- `T-03` and `T-04`
- `scheme-pe02/docs/design/u1/adr/u1-b2-sumprimes-display-contract-adr.md`
- because the approved assignment interpretation says `Sumprimes` displays the sum

## Next 24-72 Hours

1. Approve the updated U1 design files and the `U1-B2` bolt artifacts.
2. Resume `build.task` for `scheme-pe02/`, Unit `U1`, Bolt `U1-B2`.
3. Implement `Sumprimes` in `California_Adeva_PE02.rkt`.
4. Execute `T-03` and `T-04` and record evidence in the U1-B2 traceability artifact.
5. Update `REQUIREMENTS.md` only after the bolt is validated successfully.

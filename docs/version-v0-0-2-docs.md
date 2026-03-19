# Version v0.0.2 Docs

## Quick Diagnostic Read

This version establishes the first AI-DLC execution baseline for the CMSC 124 PE02 repository.

- `scheme-pe02/` now exists as the tracked project workspace.
- The approved planning chain is present: Level 1 Plan -> `INCEPTION.md` -> `REQUIREMENTS.md`.
- Unit `U1`, Bolt `U1-B1` now has pre-coding design artifacts, an ADR, and a traceability baseline.
- No submission `.rkt` implementation file has been created yet.
- The build workflow is intentionally paused at the human validation gate before coding `T-Ice`.

## One-Sentence Objective

Document the repository transition from bootstrap-only documentation to an AI-DLC-guided coursework baseline that is ready for the first implementation bolt once the design artifacts are approved.

## Why This Version Matters

`v0.0.2` is the first version where the repository stops being only a project shell and becomes an execution-ready coursework workspace.

The important shift is not code volume. The important shift is that the assignment now has:

- a defined intent,
- approved clarifications,
- decomposed Units and Bolts,
- explicit validation targets,
- persisted design artifacts for the first implementation slice.

That makes the next coding step smaller, safer, and easier to validate against the rubric.

## Plan A / Plan B

### Plan A (Recommended)

Approve the `U1-B1` design package and continue with `build.task` for `T-Ice`.

### Plan B

If any assumption or design decision is wrong, revise the affected planning/design artifact first, then regenerate the downstream artifact chain before coding.

## System View

The current repository flow for `scheme-pe02/` is:

```text
level-1-plan.md
  -> INCEPTION.md
    -> REQUIREMENTS.md
      -> U1-B1 domain/logical design + ADR + traceability
        -> pending code implementation of T-Ice
```

This version lands everything up to, but not including, actual Scheme code.

## Artifact Map

### Planning Artifacts

- `scheme-pe02/ai-dlc-docs/plans/level-1-plan.md`
- `scheme-pe02/ai-dlc-docs/requirements/INCEPTION.md`
- `scheme-pe02/REQUIREMENTS.md`

### U1-B1 Build Artifacts

- `scheme-pe02/docs/design/u1/domain-design.md`
- `scheme-pe02/docs/design/u1/logical-design.md`
- `scheme-pe02/docs/design/u1/adr/u1-b1-t-ice-output-flow-adr.md`
- `scheme-pe02/docs/traceability/u1/u1-b1-t-ice-output-flow-traceability.md`

### Root Documentation Updates

- `README.md`
- `CHANGELOG.md`
- `docs/version-v0-0-2-docs.md`

## Detailed Walkthrough

## 1) Planning Was Moved Into a Dedicated Project Workspace

Earlier repository state focused on root-level project bootstrap.

This version adds a dedicated `scheme-pe02/` workspace so the coursework flow can be tracked without overloading the repository root with assignment-specific planning text.

That separation is useful because:

- root docs remain concise and public-facing,
- assignment execution artifacts stay grouped under one project folder,
- later bolts can accumulate traceability and design evidence without clutter.

## 2) The Requirements Chain Is Now Explicit

The repository now has a full planning chain:

1. `level-1-plan.md`
2. `INCEPTION.md`
3. `REQUIREMENTS.md`

This matters because the project no longer relies on implied task memory. The workflow, assumptions, risks, NFRs, Units, Bolts, and planned validation all live in files that can be reviewed before implementation.

## 3) U1-B1 Was Prepared But Intentionally Not Implemented Yet

The first implementation target is Unit `U1`, Bolt `U1-B1`, which covers `T-Ice`.

This version adds:

- the domain model for the bolt,
- the logical implementation approach,
- an ADR explaining why local helpers and explicit spacing control were chosen,
- a traceability file tying the bolt to stories, NFRs, risks, tests, deployment checks, and ops signals.

The actual `.rkt` code is still absent by design because the workflow requires approval of those artifacts before heavy coding starts.

## 4) Root Docs Were Updated To Match Reality

The root `README.md` now reflects that the repository has moved beyond bootstrap and into an AI-DLC planning baseline.

The root `CHANGELOG.md` now records the planning/decomposition milestone instead of implying the repo is still only in its initial bootstrap state.

## 5) Screenshot Asset Was Refreshed

`repo/images/project_screen.png` is part of the current pending change surface and is documented in this version so the commit summary matches the full workspace state.

## Copy-Paste Review Steps

```powershell
cd d:\Programming\Repositories\cmsc-124-scheme-pe02-functional-programming
Get-Content scheme-pe02\ai-dlc-docs\plans\level-1-plan.md
Get-Content scheme-pe02\ai-dlc-docs\requirements\INCEPTION.md
Get-Content scheme-pe02\REQUIREMENTS.md
Get-Content scheme-pe02\docs\design\u1\domain-design.md
Get-Content scheme-pe02\docs\design\u1\logical-design.md
Get-Content scheme-pe02\docs\design\u1\adr\u1-b1-t-ice-output-flow-adr.md
Get-Content scheme-pe02\docs\traceability\u1\u1-b1-t-ice-output-flow-traceability.md
```

## Pitfalls and Debugging Guidance

### 1) Treating the planning baseline as finished implementation

It is not. This version prepares implementation but does not yet include `California_Adeva_PE02.rkt`.

### 2) Skipping the validation gate

The current build workflow explicitly requires approval of the `U1-B1` design artifacts before coding starts. If implementation begins without that approval, the workflow record becomes inconsistent.

### 3) Letting root docs drift from project state

The root `README.md` and `CHANGELOG.md` should keep reflecting the actual state of the workspace, especially when the assignment progresses from planning to coding to validation.

## Practice Task With Self-Check

### Task

Review the `U1-B1` design artifacts and explain, in your own words, why the chosen approach keeps helpers local and why output spacing is treated as a first-class validation concern.

### Self-Check

You understand this version if you can answer:

1. Which file is the authoritative decomposition baseline?
2. Which files must be approved before `T-Ice` coding starts?
3. Which two tests define the first bolt's acceptance run?

Expected answers:

- `scheme-pe02/REQUIREMENTS.md`
- the U1-B1 domain design, logical design, ADR, and traceability files
- `T-01` and `T-02`

## Next 24-72 Hours

1. Approve the `U1-B1` design package.
2. Resume `build.task` for `scheme-pe02/`, Unit `U1`, Bolt `U1-B1`.
3. Implement `T-Ice` in `California_Adeva_PE02.rkt`.
4. Execute `T-01` and `T-02` and record evidence in the traceability artifact.
5. Update `REQUIREMENTS.md` only after the bolt is validated successfully.

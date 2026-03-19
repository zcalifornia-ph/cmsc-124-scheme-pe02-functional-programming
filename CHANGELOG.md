# Changelog

Status: the first two implementation bolts are now landed and validated for the CMSC 124 Scheme/Racket programming exercise; the remaining procedures are still pending.

## v0.0.5

### Added or Changed
- Updated `scheme-pe02/California_Adeva_PE02.rkt` to add the second implemented coursework procedure: `Sumprimes`.
- Updated `scheme-pe02/docs/traceability/u1/u1-b2-sumprimes-display-contract-traceability.md` with executed validation evidence for `T-03`, `T-04`, deployment check `DPL-03`, and ready-state ops signals.
- Updated `README.md` version marker from `v0.0.4` to `v0.0.5` and refreshed the root status/roadmap text to reflect that `U1-B2` is implemented and validated.

### For Deletion
- None from this task context (implementation and traceability updates only; no generated build artifacts were created).

## v0.0.4

### Added or Changed
- Added `scheme-pe02/California_Adeva_PE02.rkt` with the first implemented coursework procedure: `T-Ice`.
- Updated `scheme-pe02/docs/traceability/u1/u1-b1-t-ice-output-flow-traceability.md` with executed validation evidence for `T-01`, `T-02`, deployment check `DPL-03`, and ready-state ops signals.
- Updated `README.md` version marker from `v0.0.3` to `v0.0.4` and refreshed the root status/roadmap text to reflect that `U1-B1` is implemented and validated.

### For Deletion
- None from this task context (implementation and traceability updates only; no generated build artifacts were created).

## v0.0.3

### Added or Changed
- Expanded `scheme-pe02/docs/design/u1/domain-design.md` to carry forward both prepared numeric/display bolts in Unit `U1`, covering `T-Ice` and `Sumprimes`.
- Expanded `scheme-pe02/docs/design/u1/logical-design.md` to add the `U1-B2` implementation shape, validation plan, and output-contract handling for `Sumprimes`.
- Added the `U1-B2` bolt-specific construction artifacts:
  - `scheme-pe02/docs/design/u1/adr/u1-b2-sumprimes-display-contract-adr.md`
  - `scheme-pe02/docs/traceability/u1/u1-b2-sumprimes-display-contract-traceability.md`
- Updated `README.md` version marker from `v0.0.2` to `v0.0.3` and refreshed status/roadmap text to reflect the completed `U1-B2` design-preparation milestone.

### For Deletion
- None from this task context (design and traceability documentation only; no generated build artifacts were created).

## v0.0.2

### Added or Changed
- Added the `scheme-pe02/` project workspace with AI-DLC planning artifacts:
  - `scheme-pe02/ai-dlc-docs/plans/level-1-plan.md`
  - `scheme-pe02/ai-dlc-docs/requirements/INCEPTION.md`
  - `scheme-pe02/REQUIREMENTS.md`
- Added Unit `U1` / Bolt `U1-B1` pre-coding construction artifacts:
  - `scheme-pe02/docs/design/u1/domain-design.md`
  - `scheme-pe02/docs/design/u1/logical-design.md`
  - `scheme-pe02/docs/design/u1/adr/u1-b1-t-ice-output-flow-adr.md`
  - `scheme-pe02/docs/traceability/u1/u1-b1-t-ice-output-flow-traceability.md`
- Updated `README.md` version marker from `v0.0.1` to `v0.0.2` and refreshed status/roadmap text to reflect the new planning and build-preparation baseline.
- Refreshed `repo/images/project_screen.png` to match the current project presentation asset.

### For Deletion
- None from this task context (planning/design documentation and screenshot refresh only; no generated build artifacts were created).

## v0.0.1

### Added or Changed
- Initialized `README.md` with the project overview, exercise requirements, setup guidance, and maintainer contact details.
- Initialized `CHANGELOG.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, and `SECURITY.md` with repository-specific governance and support content.
- Added a root `.gitignore` that hides internal workflow files and ignores generated Racket compilation artifacts.

### For Deletion
- None from this task context (documentation/bootstrap changes only; no generated build artifacts were created).

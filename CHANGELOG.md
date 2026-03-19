# Changelog

Status: AI-DLC planning baseline and the first two U1 design baselines are prepared for the CMSC 124 Scheme/Racket programming exercise; implementation is staged but not yet coded.

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

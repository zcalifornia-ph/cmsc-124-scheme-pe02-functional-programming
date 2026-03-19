# Changelog

Status: Units `U1` and `U2` are now implemented and validated for the CMSC 124 Scheme/Racket programming exercise; all five required procedures are present; final submission-readiness work in `U3` is still pending.

## v0.0.8

### Added or Changed
- Updated `scheme-pe02/California_Adeva_PE02.rkt` to add the fifth implemented coursework procedure: `my-reverse`.
- Expanded `scheme-pe02/docs/design/u2/domain-design.md` and `scheme-pe02/docs/design/u2/logical-design.md` so Unit `U2` now carries the full design baseline for both list-processing bolts: `U2-B1` (`my-sums`) and `U2-B2` (`my-reverse`).
- Added `scheme-pe02/docs/design/u2/adr/u2-b2-my-reverse-manual-reversal-adr.md` to record the chosen manual-reversal implementation approach for `my-reverse`.
- Added `scheme-pe02/docs/traceability/u2/u2-b2-my-reverse-manual-reversal-traceability.md` with executed validation evidence for `T-09`, `T-10`, deployment check `DPL-03`, and ready-state ops signals.
- Updated `README.md` version marker from `v0.0.7` to `v0.0.8` and refreshed the root status, artifact baseline, and roadmap text to reflect that Unit `U2` is now implemented and validated.

### For Deletion
- None from this task context (implementation and documentation updates only; no generated build artifacts were created).
## v0.0.7

### Added or Changed
- Updated `scheme-pe02/California_Adeva_PE02.rkt` to add the fourth implemented coursework procedure: `my-sums`.
- Added `scheme-pe02/docs/design/u2/domain-design.md`, `scheme-pe02/docs/design/u2/logical-design.md`, and `scheme-pe02/docs/design/u2/adr/u2-b1-my-sums-nested-accumulation-adr.md` to establish the first list-processing bolt design baseline.
- Added `scheme-pe02/docs/traceability/u2/u2-b1-my-sums-nested-accumulation-traceability.md` with executed validation evidence for `T-07`, `T-08`, deployment check `DPL-03`, and ready-state ops signals.
- Updated `README.md` version marker from `v0.0.6` to `v0.0.7` and refreshed the root status, artifact baseline, usage example, and roadmap text to reflect that `U2-B1` is implemented and validated.

### For Deletion
- None from this task context (implementation and documentation updates only; no generated build artifacts were created).

## v0.0.6

### Added or Changed
- Updated `scheme-pe02/California_Adeva_PE02.rkt` to add the third implemented coursework procedure: `count-factors`.
- Expanded `scheme-pe02/docs/design/u1/domain-design.md` and `scheme-pe02/docs/design/u1/logical-design.md` to carry forward the complete `U1-B3` design baseline for repeated divisibility and the `"None"` no-factor path.
- Added `scheme-pe02/docs/design/u1/adr/u1-b3-count-factors-repeated-divisibility-adr.md` to record the chosen `count-factors` implementation approach.
- Updated `scheme-pe02/docs/traceability/u1/u1-b3-count-factors-repeated-divisibility-traceability.md` with executed validation evidence for `T-05`, `T-06`, deployment check `DPL-03`, and ready-state ops signals.
- Updated `scheme-pe02/REQUIREMENTS.md` to mark `U1-B3` complete and record Unit `U1` completion evidence.
- Updated `README.md` version marker from `v0.0.5` to `v0.0.6` and refreshed the root status/roadmap text to reflect that Unit `U1` is now implemented and validated.

### For Deletion
- None from this task context (implementation, requirements, and traceability updates only; no generated build artifacts were created).

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

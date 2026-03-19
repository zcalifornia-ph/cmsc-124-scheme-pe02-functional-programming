# Version v1.0.0 Docs

## Quick Diagnostic Read

This version prepares the repository for stable public publishing.

- The root docs now present the repository as a `v1.0.0` release baseline rather than an incremental pre-release checkpoint.
- Public governance and legal metadata now name both maintainers: Zildjian E. California and Jayrad P. Adeva.
- The final submission artifact now carries a formal attribution header and embedded Apache license text in Racket-safe comment form.
- The screenshot asset remains outside this commit scope and was intentionally not included in the publishing release bundle.

## One-Sentence Objective

Document the first stable publishing release for the coursework repository by combining the completed Scheme submission baseline with the maintainer, licensing, attribution, and root-documentation updates needed for `v1.0.0`.

## Why This Version Matters

`v1.0.0` matters because it changes the repository posture from “completed internal coursework baseline” to “publishable stable release.”

The implementation work was already complete by `v0.0.10`. What this release adds is the public-facing finish:

- stable versioning in the root docs,
- supported-version guidance in the security policy,
- maintainer consistency across repository governance files,
- formal attribution and license presence in the final `.rkt` submission artifact.

That is the difference between a finished project state and a repository that is ready to be published cleanly.

## Plan A / Plan B

### Plan A (Recommended)

Use this version as the public release baseline for the repository and any downstream archive, handoff, or showcase step.

### Plan B

If you want to review the publishing readiness before tagging or mirroring the repo, inspect the root docs and the top of the submission `.rkt` file together.

## System View

The release state now looks like this:

```text
U1 complete
U2 complete
U3 complete
v0.0.10 closeout complete
maintainer metadata aligned
license notice aligned
submission artifact attribution inserted
v1.0.0 publishing baseline ready
```

## Artifact Map

### Updated Public Docs

- `README.md`
- `CHANGELOG.md`
- `SECURITY.md`
- `CONTRIBUTING.md`
- `CODE_OF_CONDUCT.md`
- `LICENSE.txt`
- `docs/version-v1-0-0-docs.md`

### Updated Submission Artifact

- `scheme-pe02/California_Adeva_PE02.rkt`

## Detailed Walkthrough

## 1) The Root Docs Now Present a Stable Release

The root `README.md` and `CHANGELOG.md` now move the repository to `v1.0.0`.

That includes:

- a stable publishing-oriented status line,
- a published-artifact framing instead of internal workflow framing,
- roadmap wording that reflects a completed and publishable baseline,
- changelog language that avoids exposing ignored internal planning-path details.

This makes the root presentation cleaner and more appropriate for external readers.

## 2) Maintainer Identity Is Now Consistent Across Public Governance Files

Before this version, maintainer wording and contact language were singular and partially incomplete for the current repository ownership.

This version aligns:

- `README.md`
- `CONTRIBUTING.md`
- `SECURITY.md`
- `CODE_OF_CONDUCT.md`
- `LICENSE.txt`

around the shared maintainer set:

- Zildjian E. California
- Jayrad P. Adeva

This matters because publishing-quality metadata should not contradict the actual ownership and maintenance model.

## 3) The Submission `.rkt` File Now Carries Formal Attribution and License Context

The final submission artifact already contained the coursework logic and rubric-facing comments.

This version adds one more publishing-oriented layer at the top of the file:

- the institutional attribution block from `agent/attribution.cfg`,
- the Apache 2.0 license text from `LICENSE.txt`,
- a short file description block,
- all inserted in Racket block-comment form so the file remains runnable.

That means the submission artifact is now more self-contained when viewed or shared outside the repository context.

## 4) The Release Scope Intentionally Excludes the Current Screenshot Edit

There is still a separate working-tree change in `repo/images/project_screen.png`, but it is not part of this publishing release bundle.

That separation is deliberate:

- the screenshot change is not required to prove `v1.0.0` publishing readiness,
- keeping it out preserves a cleaner logical release boundary,
- the release commit remains focused on public docs, legal metadata, and artifact attribution.

## Copy-Paste Review Steps

```powershell
cd d:\Programming\Repositories\cmsc-124-scheme-pe02-functional-programming
Get-Content README.md
Get-Content CHANGELOG.md
Get-Content SECURITY.md
Get-Content scheme-pe02\California_Adeva_PE02.rkt -Head 80
```

## Pitfalls and Debugging Guidance

### 1) Treating `v1.0.0` as a code-feature release

It is not primarily a feature release. The Scheme implementation was already complete. This release is about publishing readiness and public-facing repository quality.

### 2) Forgetting to align legal and maintainer metadata

A stable version marker is not enough if `README.md`, `LICENSE.txt`, and governance files disagree about who maintains the repository.

### 3) Assuming the attribution header can go before `#lang racket`

In Racket, `#lang` must remain first. The attribution had to be inserted immediately after it in block-comment form to preserve execution.

## Practice Task With Self-Check

### Task

Explain why the attribution/license header belongs inside the `.rkt` file even though the repository already has a root license file.

### Self-Check

You understand this version if you can answer:

1. What does `v1.0.0` represent in this repository?
2. Which files were aligned to reflect the current maintainer set?
3. Why was the attribution header inserted after `#lang racket` instead of before it?

Expected answers:

- the first stable publishing baseline
- the public root governance/legal/docs files plus the license notice
- because the file must remain valid Racket syntax

## Next 24-72 Hours

1. Tag the repository at `v1.0.0` if you want a formal release marker.
2. Decide whether the screenshot update should be committed separately as a follow-up docs/media change.
3. Keep future changes clearly separated from the stable publishing baseline so later coursework or experiments do not blur the release boundary.

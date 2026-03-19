# Version v1.0.1 Docs

## Quick Diagnostic Read

This version is a small documentation follow-up to the stable publishing baseline.

- The root `README.md` now points to the actual tracked submission file: `scheme-pe02/Adeva_California_PE02.rkt`.
- Clone users now have explicit commands for loading the file with Racket on both standard setups and the common Windows full-path fallback.
- The docs now explain an important behavior detail: running the file directly succeeds silently because it defines procedures but does not invoke them on load.
- The root docs also show how to enter the module namespace interactively so users can run `T-Ice`, `Sumprimes`, `count-factors`, `my-sums`, and `my-reverse` after cloning.

## One-Sentence Objective

Document the exact, working clone-to-run flow for the published coursework artifact so external users can load `Adeva_California_PE02.rkt` correctly and invoke its procedures without guessing.

## Why This Version Matters

`v1.0.1` does not change the Scheme submission logic. It fixes the public handoff experience around that logic.

That matters because a stable repository should not force a clone user to infer:

- which `.rkt` file is the real artifact,
- whether no output on direct execution means failure or success,
- how to call module-defined procedures from the terminal,
- what Windows users should do if `racket` is not on `PATH`.

This release closes those gaps without widening the scope into new code or rubric changes.

## Plan A / Plan B

### Plan A (Recommended)

Use the updated `README.md` as the default onboarding path for anyone cloning the repo to inspect or run the coursework artifact.

### Plan B

If you only need a fast verification check, run the direct-load command first to confirm the file loads cleanly, then enter the interactive namespace only when you need to execute sample procedure calls.

## System View

The user flow is now:

```text
clone repo
-> identify the correct file
-> load the file with Racket
-> understand why direct load prints nothing
-> enter the file namespace interactively
-> run sample procedure calls
-> optionally use DrRacket for the same workflow
```

## Artifact Map

### Updated Files

- `README.md`
- `CHANGELOG.md`
- `docs/version-v1-0-1-docs.md`

## Detailed Walkthrough

## 1) The Correct Submission Filename Is Now Reflected in the Root Docs

The earlier root README referenced `scheme-pe02/California_Adeva_PE02.rkt`.

The tracked file in this repository is actually:

- `scheme-pe02/Adeva_California_PE02.rkt`

This release corrects that mismatch in the published root documentation so clone users are sent to the real artifact immediately.

## 2) The README Now Separates “Load the File” From “Run the Procedures”

This distinction is important in Racket module workflows.

Direct execution:

- loads the module,
- validates that the file runs without errors,
- prints nothing when the module only defines procedures.

Interactive procedure execution is a second step:

- enter the module namespace,
- call `T-Ice`, `Sumprimes`, `count-factors`, `my-sums`, or `my-reverse`,
- observe the expected output or return values.

The revised README now explains both paths clearly instead of compressing them into one vague “run the file” instruction.

## 3) The Windows PATH Fallback Is Now Documented

In this environment, `racket` was not available directly on `PATH`, but the standard Windows installation path worked:

- `C:\Program Files\Racket\Racket.exe`

That made the gap obvious: a clone user on Windows could follow generic README guidance and still fail immediately if their shell does not know `racket`.

This version adds the explicit full-path fallback so the docs remain useful even on a default or partially configured Windows machine.

## 4) The README Now Shows a Working Interactive Namespace Entry Command

The updated docs use:

```powershell
racket -i -l racket/enter -e '(enter! (file "scheme-pe02/Adeva_California_PE02.rkt"))'
```

This is the practical way to call the procedures from the terminal without changing the coursework file to export additional API surface.

That preserves the existing submission artifact while still giving clone users a clean way to interact with it.

## Copy-Paste Review Steps

```powershell
cd d:\Programming\Repositories\cmsc-124-scheme-pe02-functional-programming
Get-Content README.md
Get-Content CHANGELOG.md
Get-Content docs\version-v1-0-1-docs.md
& "C:\Program Files\Racket\Racket.exe" scheme-pe02\Adeva_California_PE02.rkt
& "C:\Program Files\Racket\Racket.exe" -i -l racket/enter -e '(enter! (file "scheme-pe02/Adeva_California_PE02.rkt"))'
```

## Pitfalls and Debugging Guidance

### 1) Expecting direct execution to print the sample outputs

It will not. The file defines procedures; it does not invoke them automatically on load.

### 2) Assuming the wrong `.rkt` filename from older docs

The published artifact in this repo is `Adeva_California_PE02.rkt`, not `California_Adeva_PE02.rkt`.

### 3) Trying to call the procedures without entering the module namespace

The interactive step matters. Loading the file and calling its identifiers from an unrelated top level are different operations.

### 4) Treating this as a behavior change release

It is not. This version only improves clone-facing documentation and command clarity.

## Practice Task With Self-Check

### Task

Clone the repository into a fresh directory, load `scheme-pe02/Adeva_California_PE02.rkt`, then run `(T-Ice 8)` and `(my-reverse '(1 2 3 4))` from the interactive namespace.

### Self-Check

You understand this version if you can answer:

1. Why does running the `.rkt` file directly produce no visible output on success?
2. What is the exact tracked submission file path?
3. Why is the interactive `enter!` step needed for terminal-based sample calls?

Expected answers:

- because the module defines procedures but does not call them on load,
- `scheme-pe02/Adeva_California_PE02.rkt`,
- because the procedures live in the module namespace and must be entered before calling them interactively from the terminal.

## Next 24-72 Hours

1. Keep future root README updates equally concrete whenever a clone user would otherwise have to guess a toolchain step.
2. If additional public examples are added later, keep them aligned with the actual tracked submission filename.
3. Tag or release `v1.0.1` only if you want a formal marker for this documentation-only follow-up.

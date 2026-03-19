# Contributing

This repository primarily tracks a CMSC 124 programming exercise in Scheme/Racket.
Corrections and quality improvements are welcome, but any change that could affect the graded solution should be discussed with the maintainer first.

## Ground Rules

- Preserve academic integrity. Do not contribute work that you are not authorized to share or use in a graded context.
- Keep changes focused, reviewable, and easy to verify.
- Update documentation when behavior, setup steps, or repository expectations change.
- Follow `CODE_OF_CONDUCT.md` and `SECURITY.md`.

## Before You Start

- Check existing issues and pull requests to avoid duplicate work.
- Open an issue before substantial code or structure changes.
- Confirm the proposed change fits the course scope and repository purpose.

## Suggested Workflow

1. Fork the repository and create a short-lived branch from `main`.
2. Make the smallest change that solves the problem.
3. Validate the change locally.
4. Open a pull request with a clear summary, verification notes, and any relevant screenshots or output.

## Validation Guidance

- For Scheme/Racket changes, include the function calls you used for verification and the resulting output.
- For documentation changes, verify links, examples, and naming conventions.
- If a change affects submission rules or grading interpretation, explain the source of truth used.

## Branch Naming

- Use kebab-case.
- Start with a Conventional Commit type when practical.
- Keep the name concise and descriptive.

Example:

```text
docs/update-readme-bootstrap
```

## Commit Conventions

Use Conventional Commits where possible.
Examples:

```text
feat: implement my-reverse
fix: correct prime-sum edge case
docs: bootstrap root project docs
```

## Pull Request Checklist

- The change is scoped to one logical concern.
- Verification steps or outputs are included.
- Documentation is updated when needed.
- No unrelated files are modified.

## Security Reporting

Do not report vulnerabilities in public issues.
Follow `SECURITY.md` for coordinated disclosure.

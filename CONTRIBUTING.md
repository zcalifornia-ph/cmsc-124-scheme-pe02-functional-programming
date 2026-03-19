# Contributing

Thanks for helping with CMSC 124 PE02 Scheme.

## Before You Start

- Read `README.md`, `CHANGELOG.md`, `CODE_OF_CONDUCT.md`, and `SECURITY.md`.
- Check existing issues or open a new one if the change is broad or unclear.
- Keep the assignment constraints in mind before editing code.

## Project Constraints

- Use one `.rkt` file for the solution.
- Keep the implementation functional and avoid global identifiers.
- Do not use built-in reverse helpers for `my-reverse`.
- Keep display behavior and return values aligned with the assignment spec.

## Workflow

1. Create a branch.
2. Make one focused change.
3. Add examples or tests when the behavior changes.
4. Update documentation if the interface or behavior changes.
5. Open a pull request with a short summary and validation notes.

## Style

- Use clear procedure names and small helper functions.
- Prefer pure functions unless the assignment requires output to be displayed.
- Keep examples close to the relevant code or docs.
- Match the formatting already used in the repository.

## Commit Messages

Use concise Conventional Commit style messages, such as:

- `feat: implement my-sums`
- `fix: handle factor counting edge cases`
- `docs: update README examples`

## Questions

If you are unsure about a requirement, ask before making a broad change.

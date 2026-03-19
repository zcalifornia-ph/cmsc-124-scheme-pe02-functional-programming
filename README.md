# CMSC 124 PE02 Scheme

Programming Exercise 02 in Scheme/Racket covering `T-Ice`, sum of primes, factor counting, nested list summation, and list reversal using a functional programming approach.

Status: initial bootstrap (`v0.0.1`)
Maintainer: Zildjian E. California (`@zcalifornia_`)
Repository: https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming
Screenshot path: `repo/images/`

## Overview

This repository is set up for a single Racket source file that solves the assignment using functional programming ideas. The project currently contains documentation only; implementation can be added in the repository root or in the instructor-specified file location.

## Assignment Rules

- Use one `.rkt` file for the whole solution.
- Use a functional programming approach.
- Do not introduce global identifiers.
- Keep helper procedures pure where possible.
- `my-reverse` must not rely on a built-in reverse helper.
- The submission file name should follow the surname-plus-PE pattern, such as `<Surname>_PE02.rkt`.

## Required Procedures

| Procedure | Responsibility |
| --- | --- |
| `T-Ice n` | Display `1` through `n`, replacing values divisible by 2 with `T`, divisible by 3 with `ICE`, and divisible by both with `T-ICE`. |
| `Sumprimes n` | Display the sum of all prime numbers from `1` to `n`. |
| `count-factors m n` | Return how many times `m` divides `n`; display `None` when `m` is not a factor of `n`. |
| `my-sums lis` | Return the sum of all numbers in `lis`, including numbers inside nested lists. |
| `my-reverse lis` | Return a reversed version of `lis` as a list. |

## Suggested Workflow

1. Implement `T-Ice`.
2. Implement `Sumprimes`.
3. Implement `count-factors`.
4. Implement `my-sums`.
5. Implement `my-reverse`.
6. Test each procedure in DrRacket or the Racket REPL.

## Quick Examples

```racket
(T-Ice 8)
; 1 T ICE T 5 T-ICE 7 T

(Sumprimes 10)
; 17

(count-factors 4 48)
; 2

(my-sums '(1 (2 3) (4 (5))))
; 15

(my-reverse '(a b c d))
; '(d c b a)
```

## Project Status

- Version: `0.0.1`
- Stage: bootstrap
- Screenshot assets, when added, should live under `repo/images/`

## Contributing

Read `CONTRIBUTING.md` before opening a pull request. Keep changes focused and preserve the assignment rules above.

## Security

Report security concerns privately through `SECURITY.md`.

## License

Released under the Apache-2.0 license. See `LICENSE.txt`.

## Contact

Maintainer: Zildjian E. California  
Email: zecalifornia@up.edu.ph  
LinkedIn: `zcalifornia`  
ORCID: `0009-0002-2357-7606`  
ResearchGate: `Zildjian-California`  
Twitter: `zcalifornia_`

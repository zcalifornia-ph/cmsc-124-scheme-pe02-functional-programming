<a id="readme-top"></a>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![Apache-2.0][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

##
[![CMSC 124 PE02 Scheme Screenshot][product-screenshot]](https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming)
##

<div align="center">
<h3 align="center">CMSC 124 PE02 Scheme</h3>

  <p align="center">
    Functional-programming solutions in Scheme/Racket for T-Ice, prime summation, factor counting, nested-list summation, and list reversal.
    <br />
    Version: v0.0.1
    <br />
    Status: root documentation bootstrap complete; implementation artifact pending.
    <br />
    <a href="https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming"><strong>Explore the repository »</strong></a>
    <br />
    <br />
    <a href="https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming">View Repository</a>
    &middot;
    <a href="https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming/issues">Report Bug</a>
    &middot;
    <a href="https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming/issues">Request Feature</a>
  </p>
</div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#exercise-coverage">Exercise Coverage</a></li>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#setup">Setup</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

## About The Project

This repository tracks **Programming Exercise 02** for **CMSC 124: Design and Implementation of Programming Languages**.
The exercise focuses on writing Scheme/Racket code in a functional style, with one source file containing all required procedures and no global identifiers.

The expected submission is a single `.rkt` file named according to the course instructions, for example:

- `Rizal_PE02.rkt` for an individual submission
- `Bonifacio_Rizal_PE02.rkt` for a pair or group submission

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Exercise Coverage

| Procedure | Requirement |
| --- | --- |
| `T-Ice` | Display values from `1` to `n`, substituting `T`, `ICE`, or `T-ICE` based on divisibility by `2` and `3`. |
| `Sumprimes` | Display the sum of all prime numbers from `1` to `n`. |
| `count-factors` | Count how many times `m` divides `n`; display `None` when `m` is not a factor of `n`. |
| `my-sums` | Return the sum of all numeric values in a possibly nested list. |
| `my-reverse` | Return the reverse of a non-nested list without using built-in reverse automation. |

### Built With

- [Racket](https://racket-lang.org/)
- [Scheme](https://schemers.org/)
- [Markdown](https://www.markdownguide.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

### Prerequisites

- [Racket](https://racket-lang.org/download/) or DrRacket installed locally
- Git, if you want to clone and track changes from GitHub

### Setup

1. Clone the repository.
   ```sh
   git clone https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming.git
   cd cmsc-124-scheme-pe02-functional-programming
   ```
2. Create or update the required single-file Scheme submission using the course naming convention.
3. Run or load the file with Racket.
   ```sh
   racket <your-file>.rkt
   ```
   You can also open the same file in DrRacket and run it there.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

After implementing the required procedures, typical interactions should look like this:

```scheme
(T-Ice 8)                ; displays: 1 T ICE T 5 T-ICE 7 T
(Sumprimes 10)           ; displays: 17
(count-factors 4 48)     ; returns: 2
(my-sums '(1 (2 3) 4))   ; returns: 10
(my-reverse '(1 2 3 4))  ; returns: '(4 3 2 1)
```

The grading rubric in the course brief emphasizes:

- complete satisfaction of the program specification,
- correct execution without errors,
- clear documentation,
- readable and consistent coding style,
- bonus credit for high-quality work that exceeds the base specification.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Roadmap

- [x] Bootstrap repository governance and root documentation
- [ ] Implement `T-Ice`
- [ ] Implement `Sumprimes`
- [ ] Implement `count-factors`
- [ ] Implement `my-sums`
- [ ] Implement `my-reverse`
- [ ] Validate outputs against the course rubric

See the [open issues](https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming/issues) for tracked changes and follow-up tasks.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contributing

This repository primarily tracks a course assignment.
Small corrections and quality improvements are welcome, but changes that affect the graded solution should be discussed with the maintainer first.

See `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, and `SECURITY.md` for contribution standards, project conduct, and responsible disclosure guidance.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## License

Distributed under the Apache-2.0 license. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contact

Zildjian E. California

- Email: `zecalifornia@up.edu.ph`
- GitHub: [zcalifornia-ph](https://github.com/zcalifornia-ph)
- LinkedIn: [zcalifornia](https://linkedin.com/in/zcalifornia)
- ORCID: [0009-0002-2357-7606](https://orcid.org/0009-0002-2357-7606)
- ResearchGate: [Zildjian-California](https://www.researchgate.net/profile/Zildjian-California)
- Twitter: [@zcalifornia_](https://twitter.com/zcalifornia_)

Project Link: [https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming](https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Acknowledgments

- CMSC 124 course materials and grading rubric
- The Racket language and tooling ecosystem
- Functional-programming teaching resources that shaped the exercise design

<p align="right">(<a href="#readme-top">back to top</a>)</p>

[contributors-shield]: https://img.shields.io/github/contributors/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming.svg?style=for-the-badge
[contributors-url]: https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming.svg?style=for-the-badge
[forks-url]: https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming/network/members
[stars-shield]: https://img.shields.io/github/stars/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming.svg?style=for-the-badge
[stars-url]: https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming/stargazers
[issues-shield]: https://img.shields.io/github/issues/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming.svg?style=for-the-badge
[issues-url]: https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming/issues
[license-shield]: https://img.shields.io/github/license/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming.svg?style=for-the-badge
[license-url]: https://github.com/zcalifornia-ph/cmsc-124-scheme-pe02-functional-programming/blob/main/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/zcalifornia
[product-screenshot]: repo/images/project_screen.png

---
layout: page
permalink: /teaching/
title: teaching
description: resources for lectures, tutorials, …
nav: true
nav_order: 6
---

## Lean-verified Quantum Information Theory

- [Lean-verified Quantum Information Theory](#lean-verified-quantum-information-theory)
- [Course Overview](#course-overview)
  - [Lecture plans](#lecture-plans)
    - [1st Week](#1st-week)
    - [2nd Week](#2nd-week)
    - [3rd Week](#3rd-week)
  - [More resources \& studying materials](#more-resources--studying-materials)
  - [Assessment \& Project suggestions](#assessment--project-suggestions)

***A 2026 Fall Term module of QIC891 Topics in Quantum Information***

- Class times: Tuesday and Thursday, 10:30am -- 11:50am.
- Term dates: from the 15th of September to the 1st of October, 2026.
- Location: Perimeter Institute, Space Room until Sep 22, then Sky, Time, Sky.
  - [Perimeter's calendar page](https://events.perimeterinstitute.ca/event/2604/).
- Github repository: *coming soon*.
- Lecture recordings: [PIRSA *(coming soon)*](https://pirsa.org/).

Researchers of every background are welcomed to join, including non-QI researchers.

[Please see course logistics and administrative information (Piazza, Crowdmark, etc.) in Prof. Debbie Leung's course page](https://www.math.uwaterloo.ca/~wcleung/qic891-f2026.html).

> I also highly recommend checking out the 2nd module on [Entanglement theory for quantum systems described by von Neumann algebras](https://lauritz-van-luijk.github.io/teaching), designed by [Lauritz van Luijk](https://lauritz-van-luijk.github.io/).

## Course Overview

***Description***

We introduce formal theorem proving with the Lean 4 programming language, placing emphasis on developing Quantum Information Theory theorems and proofs. Formal proof writing is an increasingly important skill as Quantum Information grows more sophisticated, and as machine-verification tools gain popularity.

Participants will learn core theorem-proving syntax, the basics of Lean’s own type theory, the notion and use of tactics, and will gain familiarity with the Mathlib and Physlib/QuantumInfo libraries.

***List of main topics:***
- Formal theorem proving in Lean 4
- Machine-verified mathematics for quantum information theory
- Core theorem-proving syntax
- Lean type theory and tactics
- Mathlib and Physlib/QuantumInfo libraries

***Goals***

Learn the ability
- to set up a Lean repository from scratch,
- to assess the quality of AI-written Lean code,
- to reason about mathematics using code,
- to understand the role of logical verification and its significance in today's mathematics research landscape.

### Lecture plans

The following topics are tentative. I may adapt them based on our progress and interests from the audience.

#### 1st Week
- **Lecture 1, 15 Sep:** Motivation, formal verification and proofs, Lean and its foundations.
    - What is formal verification and why does it matter for mathematics or physics
    - Autoformalization, and more notes on the role of AI in physics
    - Setting up Lean and VSCode; first proofs (`#check`, `#eval`, basic tactics)
    - Propositions, types, and the Curry--Howard correspondence
- **Lecture 2, 17 Sep:** Core proof writing, syntax, and tactics in Lean.
    - Propositional and predicate logic in Lean (`intro`, `apply`, `exact`, `rw`, `simp`)
    - Working with natural numbers, integers, and basic algebraic structures
    - Introduction to Mathlib: navigating the library, finding lemmas
    - Lab: Proving elementary lemmas about sets and functions

#### 2nd Week
- **Lecture 3, 22 Sep:** Matrix algebra in Mathlib.
    - Vector spaces and linear maps in Mathlib (`LinearMap`, `Subspace`)
    - Inner product spaces and Hilbert spaces (`InnerProductSpace`, `EuclideanSpace`, and more)
    - Matrices, adjoints, and unitarity
    - Lab: Proving basic properties of linear operators
- **Lecture 4, 24 Sep:** Quantum mechanics and information theory, `Physlib/QuantumInfo`.
    - Encoding qubits and quantum states as vectors in `ℂ^n`
    - `HermitianMat` and unitary operators
    - Tensor products (`TensorProduct`)
    <!-- - Lab: Defining the Bell states and verifying their properties -->

#### 3rd Week
- **Lecture 5, 29 Sep:** More quantum information, Generalized Quantum Stein's Lemma.
    - Density matrices as positive semidefinite operators with unit trace
    - Completely positive trace-preserving (CPTP) maps
    - Partial trace and entanglement
    <!-- - Lab: Encoding a simple quantum channel and verifying CPTP conditions -->
- **Lecture 6, 01 Oct:** Outlook.
    - Discussion: current state of quantum information formalization in Mathlib and open problems
    - Resources for going further (e.g., Physlib, Quantumlib efforts, research frontier)

### More resources & studying materials

- Lean prover community website. Full of resources, including books, games, and more
  - https://leanprover-community.github.io/
- Reservoir: package repository for Lean
  - https://reservoir.lean-lang.org/
- Language reference
  - https://lean-lang.org/doc/reference/latest/
- Theorem Proving in Lean (book)
  - https://lean-lang.org/theorem_proving_in_lean4/
- Mathematics in Lean (book)
  - https://leanprover-community.github.io/mathematics_in_lean/
- Mathlib resources
  - Theorems documentation https://leanprover-community.github.io/mathlib4_docs/
  - "How do I say ... using Mathlib?" https://leanprover-community.github.io/mathlib-phrasebook/
- QuantumInfo and Physlib repositories
  - https://github.com/leanprover-community/physlib
  - https://github.com/Timeroot/Lean-QuantumInfo
- CSLib repository
  - https://github.com/leanprover/cslib
- Lean Kernel Arena
  - https://github.com/leanprover/lean-kernel-arena
- Lean Zulip forum
  - Quantum Information channel https://leanprover.zulipchat.com/#narrow/channel/508986-Quantum-information
  - Physlib channel https://leanprover.zulipchat.com/#narrow/channel/479953-Physlib

### Assessment & Project suggestions

A final project that ties together Lean with quantum information and/or physics.

***Project suggestions***

🪏 *coming soon*

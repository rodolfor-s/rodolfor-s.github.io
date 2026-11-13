---
layout: post

title: "Quantum Information in L∃∀N!"

date: 2025-10-14 21:54:15 -0400

tags: postdoc, iqc, perimeter, lean, quantum, information

---

I have joined forces with [Alex Meiburg](https://ohaithe.re/) and [Léo Lessa](https://scholar.google.com/citations?user=1jxgRYcAAAAJ&hl=en), to kickstart a formalization project for quantum information in the L∃∀N Interactive Theorem Prover! We have just announced a preprint telling the story of how we formalized the [*Generalized Quantum Stein's Lemma*!](https://arxiv.org/abs/2510.08672)

We chose this project for two reasons: First, because it was extensive and non-trivial enough to force us to build a robust body of quantum information that would allow for *other*, subsequent projects. The second reason is its interesting recent history. In 2010, Fernando Brandão and Martin Plenio proved the first theorem coined the Generalized Quantum Stein's Lemma. A few years ago, in 2023, however, it was announced that the original proof had a problem, and couldn't exactly be fixed. After some tries, there are two pieces of work, by [Ludovico Lami](http://arxiv.org/abs/2408.06410) and [Hayashi & Yamasaki](http://arxiv.org/abs/2408.02722), with a corrected proof. We chose to formalize H&Y, for technical reasons, and it worked! See our paper to learn what we learned!

I got to know Lean and the world of proof verification around 2023 during my PhD. I wanted to learn how to use Lean to improve my mathematics toolkit, and to see what would make sense to formalise in physics. Quantum information is a rather proof-based, and mathematically rigorous side of physics (now very much interdisciplinary as well), and so seems to be one of the best places to start this.

In fact, [mathlib](https://lean-lang.org/use-cases/mathlib/), an ongoing library project for all of mathematics, formalised in Lean, contains a little bit of information theory, and even a version of Bell's theorem! We are pushing further for quantum information more broadly, though, in the repository started by Alex: [Timeroot/Lean-QuantumInfo](https://github.com/Timeroot/Lean-QuantumInfo). Prove your favourite theorem and give us a pull request!

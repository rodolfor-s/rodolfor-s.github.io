---
layout: page
title: Propagators and correlation functions
description: QFT reference sheet
nav: false
permalink: /notes/propagators/
toc:
  sidebar: left
---

*Under construction*

<details open markdown="1">
<summary><h1>1. Setup and conventions</h1></summary>

Real scalar field with Lagrangian density

$\mathcal{L}[\varphi,\partial_\mu\varphi] = -\frac{1}{2}\varphi(x)(\partial{\cdot} \partial + m^2)\varphi(x)$,

and equation of motion $-(\partial{\cdot} \partial+m^2)\varphi(x)=0$.

**Mode expansion**

$$\varphi(x) = \varphi^+(x) + \varphi^-(x) $$

$$\varphi^+(x) = \int\frac{d^3k}{(2\pi)^{3/2}}\frac{a(\mathbf{k})}{\sqrt{2\omega_k}}\,e^{-\mathrm{i}  \mathbf{k\cdot x}}, \qquad \varphi^-(x) = \int\frac{d^3k}{(2\pi)^{3/2}}\frac{a^\dagger(\mathbf{k})}{\sqrt{2\omega_k}}\,e^{+\mathrm{i}  \mathbf{k\cdot x}} $$

We denote a density matrix state by $\rho$. Expectation values $\operatorname{tr}(\_\,\rho)$ specialise to vacuum expectation values $\braket{0|(\_)|0}$ when $\rho = {\ket{0}}\!{\bra{0}}$.

</details>

---

<details id="op-defs" open markdown="1">
<summary><h1>2. Operator definitions</h1></summary>

Defined directly from the field operators, and trace and state $\rho$.

| Name | Definition |
|---|---|
| Wightman function | $W(x,x') = \operatorname{tr}(\varphi(x) \varphi(x')\,\rho)$ |
| Hadamard function | $H(x,x') = \operatorname{tr}(\lbrace\varphi(x),\varphi(x')\rbrace\,\rho)$ |
| Pauli--Jordan function | $\mathrm{i} E(x,x') = \operatorname{tr}([\varphi(x),\varphi(x')]\,\rho)$ |

$H$ is symmetric and $E$ is antisymmetric in $x, x'$; see [*Relations* section](#rels). $E$ is state-independent (depends only on the classical symplectic structure) and vanishes for spacelike separation (microcausality).

**Positive and negative frequency Wightman functions** are defined by their Fourier support:

| | Definition | Fourier support |
|---|---|---|
| $W^+(x,x')$ | $W(x,x')$ | $\tilde{W}^+(k)$ on $k^0 > 0$ |
| $W^-(x,x')$ | $W(x',x)$ | $\tilde{W}^-(k)$ on $k^0 < 0$ |

**Spectral representations**

$$\mathrm{i} E(x) = \int\frac{d^4k}{(2\pi)^3}\,e^{-\mathrm{i} \mathbf{k\cdot x}}\,\delta(k{\cdot}k - m^2)\,\operatorname{sgn}(k^0) $$

<!-- $$\mathrm{i} \Delta^\pm(x) = \pm\int\frac{d^4k}{(2\pi)^3}\,e^{-\mathrm{i} \mathbf{k\cdot x}}\,\delta(k{\cdot} k - m^2)\,\theta(\pm k^0) $$ -->

using $\delta(k{\cdot}k - m^2)\,\theta(\pm k^0) = \delta(k^0 \mp \omega_k)/(2\omega_k)$.

</details>

---

<details id="derived" open markdown="1">
<summary><h1>3. Derived propagators</h1></summary>

All entries below are Green's functions: $(\partial{\cdot} \partial + m^2)G = -\delta^{(4)}(x-x')$.

**Retarded and advanced**

$$G_R(x,x') = \theta(t-t')\,E(x,x') $$

$$G_A(x,x') = -\theta(t'-t)\,E(x,x') $$

$G_R$ has support in the future lightcone of $x'$; $G_A$ in the past lightcone.[^1]

**Time-ordered and anti-time-ordered**

$$\mathrm{i} G_F(x,x') = \theta(t-t')\,W^+(x,x') + \theta(t'-t)\,W^-(x,x') $$

$$\mathrm{i} G_D(x,x') = \theta(t-t')\,W^-(x,x') + \theta(t'-t)\,W^+(x,x') $$

$G_F$ is the Feynman (time-ordered) propagator; $G_D$ is the Dyson (anti-time-ordered) propagator.

**Symmetric combination**

$$G_S(x,x') = G_R(x,x') + G_A(x,x') $$

$G_S$ is time-reversal symmetric; also called the principal-part propagator.

[^1]: Sign convention differs from Birrell–Davies [2, p. 21] by an overall $-1$ in both $G_R$ and $G_A$.

</details>

---

<details id="rels" open markdown="1">
<summary><h1>4. Relations</h1></summary>

**Argument exchange**

$$G_A(x,x') = G_R(x',x) $$

**Commutator function**

It's naturally related to $G_R$ and $G_A$

$$E(x,x') = G_R(x,x') - G_A(x,x') $$

**Pauli--Jordan in terms of Wightman functions**

$$\mathrm{i} E(x,x') = W^+(x,x') - W^-(x,x') $$

**Symmetric and antisymmetric combinations of retarded and advanced propagators**

$$G_S(x,x') = \operatorname{sgn}(t-t')\,E(x,x') $$

**Wightman decomposition**

$$W(x,x') = \frac{H(x,x')}{2} + \mathrm{i}\frac{E(x,x')}{2} $$

**Feynman in terms of $H$ and $G_S$**

$$\mathrm{i} G_F(x,x') = \frac{H(x,x')}{2} + \mathrm{i}\frac{G_S(x,x')}{2} $$

<!-- **Commutation-function identities** (Kocic conventions).

| | |
|---|---|
| $\Delta = \Delta^+ + \Delta^-$ | $\Delta_1 = \Delta^+ - \Delta^-$ |
| $\Delta^+ = \frac{1}{2}(\Delta + \Delta_1)$ | $\Delta^- = \frac{1}{2}(\Delta - \Delta_1)$ |
| $\Delta = G_R - G_A$ | $\Delta_1 = G_F - G_D$ |
| $\Delta^\pm(-x) = -\Delta^\mp(x)$ | $\Delta(-x) = -\Delta(x)$, $\quad\Delta_1(-x) = \Delta_1(x)$ | -->

</details>

---

<details id="refs" markdown="1">
<summary><h1>5. References</h1></summary>

1. Streater, R. F. and Wightman, A. S., *PCT, Spin and Statistics, and All That*. Princeton University Press, 2000.
2. Birrell, N. D. and Davies, P. C. W., *Quantum Fields in Curved Space*. Cambridge University Press, 1984.
3. Kocic, M. B., *Invariant Commutation and Propagation Functions*. FK8017 HT15, v1.01, 2016. [nLab PDF](https://ncatlab.org/nlab/files/KGPropagatorsOnMinkowskiTable.pdf).

</details>

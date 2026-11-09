---
name: swe-mile
description: Select milestone credit for multi-turn repository repair; distinguish published SWE-MILE from a locally verified adaptation.
---

# SWE-MILE: workflow milestone credit

Status: primary-source reading, checked 2026-11-08; no local reproduction.

SWE-MILE supplements final verifier outcomes with changes in navigation and verification potentials, backward credit, and tool-format rewards. Its released workflow uses separate primary/shadow environments for asynchronous verification. The release README says navigation credit is disabled by default; do not equate the paper's components with every launch configuration.

Use it to investigate sparse reward in long tool trajectories. Account for extra environments and verification cost before adopting shadow probing on limited hardware. Repeated reads alone must not become progress rewards. Preserve final correctness separately from intermediate credit, and ensure the chosen optimizer actually consumes that credit.

For our actor–critic Proximal Policy Optimization (PPO) task, describe any implementation as an adaptation unless its reward and credit mechanics have been checked against the release. No improvement on our model or tasks has been established by this card.

Sources: [paper](https://arxiv.org/abs/2609.32631); [release README](https://github.com/CcQunResearch/SWE-MILE/blob/346d85233c698227d320e3d14e9fe9df65e223ee/README.md).

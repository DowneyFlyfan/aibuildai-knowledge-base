---
name: codelift-outcome
description: Compare behavior-balanced test rewards and final-only CL-Outcome credit with snapshot slicing, without substituting their optimizer for required actor–critic PPO.
---

# CodeLift and CL-Outcome

Status: primary-source reading, checked 2026-11-08; no local reproduction.

CodeLift groups tests and candidate patches by observed pass/fail behavior, then scores intermediate snapshots and assigns credit to corresponding generated-token intervals. CL-Outcome retains behavior-balanced scoring and snapshot evaluation but distributes final credit across all generated tokens; it is not simply binary correctness.

Use this distinction when choosing between final-only and intermediate feedback. Preserve individual test identities and patch-to-test outcomes; raw pass percentages lose the grouping information. Keep infrastructure errors separate from failed assertions.

The release exposes a Group Sequence Policy Optimization (GSPO) loss and reward estimators distinct from our required actor–critic Proximal Policy Optimization (PPO). Reusing a reward idea does not establish method equivalence. Record the adaptation, keep final task correctness authoritative, and measure reward overhead before scaling.

Sources: [paper version 1, sections 3 and 4.1](https://arxiv.org/html/2610.17224v1); [release README](https://github.com/Siyuexi/CodeLift/blob/0d91e8e8b9479bd4dcc4a3bc0d7c7259d24b6396/README.md). Published comparisons are not our experiment measurements.

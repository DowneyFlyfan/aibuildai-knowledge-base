---
name: swe-gym
description: Assess SWE-Gym executable issue tasks for verifiable-reward training; distinguish Python coverage and privileged repair fields from policy-visible inputs.
---

# SWE-Gym task pool

Status: dataset card/schema inspected 2026-11-08; no local task execution.

Pinned revision: `bb94ed9e39bbeb96a7fcbfb533b80f25a7fd59cb`.
The card declares 2,438 tasks from 11 Python repositories and an MIT dataset license. Its schema includes `instance_id`, `repo`, `base_commit`, `problem_statement`, `patch`, `test_patch`, `FAIL_TO_PASS`, and `PASS_TO_PASS`.

Use executable tasks to obtain fresh policy rollouts and test-based rewards. Do not use published reference repairs or supervised trajectories as imitation targets under a reinforcement-learning-only objective. Reference patches and privileged tests belong with the trusted evaluator.

Python repository tasks may help editing and testing skills, but do not establish JavaScript/TypeScript application coverage. This is a selection limitation, not evidence of transfer failure. Admit only a small, overlap-checked subset after running its environment and intended tests. Record each underlying repository's applicable license as well as the dataset license.

Sources: [pinned dataset card](https://huggingface.co/datasets/SWE-Gym/SWE-Gym/blob/bb94ed9e39bbeb96a7fcbfb533b80f25a7fd59cb/README.md); [official project](https://github.com/SWE-Gym/SWE-Gym/tree/005c2fbeda594d329f53770707b2ae7832aa6ac8).

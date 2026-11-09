---
name: r2e-gym-subset
description: Assess R2E-Gym-Subset as executable repository-repair training tasks, with pinned metadata and separation of task inputs from privileged evaluation fields.
---

# R2E-Gym-Subset

Status: dataset metadata inspected 2026-11-08; environments not executed here.

Pinned revision: `2e8108ff942f24fcb5686badfaf7f9a8808566d5`.
The card declares 4,578 training examples and Apache-2.0 metadata. Fields include `repo_name`, `docker_image`, `commit_hash`, `problem_statement`, `parsed_commit_content`, `execution_result_content`, and `expected_output_json`.

Use the task/environment records as a candidate pool for reinforcement learning with verifiable rewards. They are distinct from the project's separately published supervised trajectories. A container reference does not prove that its image is available or that tests run.

Suggested admission checks: select a small subset; inspect field semantics before exposing prompts; keep solution-bearing metadata in the trusted evaluator; verify buggy-source failures and independently checked repair outcomes; record source revision, selected identities, image identity, and licenses. Check overlap against held-out evaluation tasks. Repository and dependency licenses require their own review.

Source: [pinned dataset card/schema](https://huggingface.co/datasets/R2E-Gym/R2E-Gym-Subset/blob/2e8108ff942f24fcb5686badfaf7f9a8808566d5/README.md); [official environment repository](https://github.com/R2E-Gym/R2E-Gym/tree/0d94c4eb9431cd195c55a7ea3abd54006c9a1735).

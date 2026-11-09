---
name: swe-rebench-v2
description: Select multilingual SWE-rebench-V2 issue tasks with benchmark-overlap, per-repository license, environment, and privileged-field checks.
---

# SWE-rebench-V2

Status: dataset card/schema inspected 2026-11-08; no local task execution.

Pinned revision: `d7608f017a29ab256400ad4b73d5248d97204966`.
The card declares 32,079 tasks spanning 20 languages, including JavaScript and TypeScript. Records include source commits, images, test identifiers, installation instructions, reference patches, and per-repository licenses. Dataset license: Creative Commons Attribution 4.0; underlying repository licenses still apply.

The publisher warns that excluding original SWE-bench repositories did not exclude every benchmark. Check selected tasks against the frozen evaluation set before training. The pinned README recommends a newer V2.1 RL collection; that recommendation does not establish compatibility or authorize substituting the requested dataset.

For a web-application target, inspect a small relevant language subset rather than downloading everything. Run environment and test admission checks; keep reference patches and privileged grading fields out of policy inputs. Distinguish a broken environment from an unsuccessful repair. No coverage or model-improvement claim follows from catalog metadata alone.

Source: [pinned dataset card/schema](https://huggingface.co/datasets/nebius/SWE-rebench-V2/blob/d7608f017a29ab256400ad4b73d5248d97204966/README.md).

---
name: two-turn-ppo-evidence
description: Interpret evidence from continued two-turn Proximal Policy Optimization on repository repair. Use when checking six-component numerical restoration, actual tool feedback in a later actor turn, actor and critic updates, checkpoint continuation, and independent full-model reload; distinguish these mechanics from a successful issue repair.
---

# Verify continued two-turn learning

This collection records a real, narrowly scoped experiment, not a benchmark result or a general training recipe. Read [the observed update-28 case](references/update28.md) for measurements and [the evidence extract](references/evidence.md) for provenance and exact hashes.

Read [the continued update-29 case](references/update29.md) and [its evidence extract](references/evidence29.md) when evaluating checkpoint continuation or a consumer that rejects genuine producer evidence because field names differ. The later case preserves the earlier observation and does not close its outstanding numerical-finiteness or controller-comparison gaps.

Treat these as separate claims, each requiring its own evidence:

1. **Restoration:** loading matching files establishes provenance. Numerical restoration also requires loading the actor, critic, both optimizers, random-number-generator state, and progress into the actual process that learns, then comparing the restored states with the saved manifest. Validate optimizer parameter names and order.
2. **Feedback:** the second actor turn must receive the actual first-turn tool result. Two generated outputs or two accumulated counters do not establish feedback learning. Bind the sampled patches, executed tests, reward, optimizer event, and saved checkpoint to the same rollout.
3. **Update:** inspect the actual actor and critic optimizer steps, gradients, and resulting parameter states. Finite nonzero gradients plus changed state hashes do not independently prove every post-step tensor is finite, nor quantify the parameter delta. Keep missing checks explicit.
4. **Recovery and export:** distinguish reloading the training checkpoint in the same process from independently constructing and loading the entire exported model in a new process. Check the original tensor index, all shard hashes, parameter count, and trained-tensor digest. Preserve each verified export before reusing its destination.
5. **Task outcome:** an optimizer update can occur while the sampled patch fails the assigned regression. Report issue outcome separately from training mechanics. Do not count partial reward as proof of a repair.

The observed actor trained only `model.language_model.norm.weight`; the critic trained four parameters. Do not generalize from this one-task result to full-model training effectiveness or benchmark performance. This case does not authorize teacher data, supervised fine-tuning, modified tests, rewritten sampled output, or any other deviation from the calling task's contract.

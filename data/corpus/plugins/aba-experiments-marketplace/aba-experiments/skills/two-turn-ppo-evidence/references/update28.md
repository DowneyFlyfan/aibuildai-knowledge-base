# Actual continued-learning observation: update 28

Observed on 2026-11-08 in AIBuildAI (ABA) attempt R14. The task was repository repair on `mozilla__nunjucks-849`, using the original Qwen3.5-4B ancestry. The controller was `gpt-6-sol/high`. This is evidence of specific mechanics; the full research objective was still incomplete at the observation cutoff.

## What actually executed

- The native learner numerically restored six saved update-27 components in the same process before actor generation: actor, critic, actor optimizer, critic optimizer, random-number-generator state, and progress. Recomputed state hashes matched the checkpoint manifest.
- One verified rollout generated a first patch, executed real repository tests, incorporated their result into a second actor turn, and generated a different sampled patch. Its two rewards were `[0.0, 0.1]`.
- The actual update event recorded actor and critic optimizer steps at count 28. Actor gradient norm was `0.006751726847141981`; critic gradient norm was `0.6652503609657288`. Actor loss was `-0.30973172187805176`; value loss was `0.04799068719148636`.
- All six new checkpoint state hashes differed from update 27. The native learner saved and numerically reloaded the new checkpoint in the same process.
- A distinct native process independently loaded the exported model: two full weight shards, 738 indexed tensors, 4,659,865,088 parameters. Its selected trained-parameter digest matched the export/checkpoint binding.

The native implementation used Proximal Policy Optimization (PPO), a critic, generalized advantage estimation, a clipped actor objective, a real value loss, and separate optimizers. The trained actor parameter was `model.language_model.norm.weight`; critic parameters were `net.0.weight`, `net.0.bias`, `net.2.weight`, and `net.2.bias`. These parameter names are essential to the scope of the result.

## What the tests showed

For each first/reward/final evaluation, the compiler runner executed 84 cases (80 passed, 4 failed). The `npm test` invocation executed 78 cases (77 passed, 1 failed) before stopping. These are 162 **overlapping runner executions**, not 162 distinct tests or completed full-suite coverage.

A separate corrected direct regression used `renderString`. Its raw-literal assertion passed; its safe-array interpolation assertion actually executed and failed. The sampled candidate left the assigned issue **unresolved**. The final sampled patch was applied and tested verbatim; its digest is in the evidence extract.

## Limits of the observation

Post-step tensor finiteness and finite parameter-delta norms were not independently established by these receipts. Changed hashes and finite gradients are narrower evidence. The causal effect of using the GPT controller instead of the paper's controller remained untested. No full Element Web evaluation or broader model-performance claim was established. The active Action had not yet reached a typed terminal result; successful intermediate receipts are not whole-goal completion.

This is one new genuine tested two-turn update beyond the inherited checkpoint. The earlier update counts include different evidence quality; do not describe all 28 updates as verified tested multi-turn learning.

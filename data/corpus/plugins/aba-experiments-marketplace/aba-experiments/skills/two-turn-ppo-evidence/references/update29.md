# Actual continued-learning observation: update 29

Observed on 2026-11-08 in AIBuildAI (ABA) attempt R14, continuing the same original Qwen3.5-4B ancestry and `mozilla__nunjucks-849` repository-repair task. The controller remained `gpt-6-sol/high`. This is a later observation, not a replacement for update 28 or proof of the full research objective.

## What actually executed

The native learner numerically restored the six update-28 states in the process that subsequently learned: actor, critic, actor optimizer, critic optimizer, random-number-generator state, and progress. The recorded restore hashes match the saved update-28 manifest. It then executed a genuine two-turn rollout: the actual first-turn test feedback appeared in the second actor prompt, and the final patch was taken verbatim from that second sampled output.

The executed Proximal Policy Optimization (PPO) update recorded both optimizer steps at count 29, rewards `[0.0, 0.1]`, actor gradient norm `0.004934394732117653`, critic gradient norm `0.6572507619857788`, actor loss `-0.3062354624271393`, and value loss `0.04691273346543312`. All six checkpoint state hashes changed from update 28. The learner saved and numerically reloaded update 29.

A distinct native process independently reloaded the complete exported model: two weight shards, 738 indexed tensors and 4,659,865,088 parameters. The trained actor tensor was only `model.language_model.norm.weight`. The critic trained four named parameter tensors: `net.0.weight`, `net.0.bias`, `net.2.weight`, and `net.2.bias`. Parameter names bound the scope; loading the full model does not mean all its parameters were trained.

## Task outcome and test accounting

The first compiler invocation ran 84 cases (80 passed, 4 failed); the suite invocation ran 78 (77 passed, 1 failed). That is 162 overlapping runner executions. The reward/final compiler invocation ran 84 (71 passed, 13 failed), and the suite invocation ran 41 (40 passed, 1 failed): 125 overlapping runner executions. The suite stopped early. These totals are neither distinct-test counts nor full-suite coverage, and the smaller later total is not evidence of improvement.

Each evaluation also executed two direct assertions. The raw-literal assertion passed; the assigned safe-array interpolation assertion was reached and failed. The exact sampled candidate therefore left the assigned issue **unresolved**. Do not count a partial reward or a successful optimizer step as a repaired issue.

## An actual producer-consumer contract failure

The learning Action completed with `failed=false`, counts 29/29, and an unresolved issue verdict. Its parent Search nevertheless failed with `ppo.update: no new matched actor/critic step after current27`. Inspection showed that the consumer expected a nested `rollout.update` object absent from the authentic raw rollout. It also expected `first_test_observed_sha256`, while the actual optimizer event used `first_test_output_sha256`.

This establishes a contract mismatch; it does not establish that no update occurred. Repair a consumer or produce a separately authenticated companion joining the actual rollout identifier, raw actor frames, test hashes and optimizer events. Preserve the original sampled output and receipts. A business-output digest and a terminal-envelope digest use different payloads; bind the specified serialization to the exact producer rather than substituting one digest for another.

## Remaining limits

Finite gradients and changed state hashes do not independently prove every post-step parameter tensor is finite or establish finite positive parameter-delta norms. Those checks remained unverified at this observation cutoff. Later source-review approval would not itself supply numerical evidence.

The controller-model change's causal effect remained **UNTESTED**. No full Element Web evaluation, benchmark improvement, broad model-performance result, or completed research objective is claimed. Updates 28 and 29 were observed genuine tested two-turn updates in this run; the inherited counter includes earlier updates with different evidence quality.

See [the sanitized evidence](evidence29.md) for exact source-record hashes, producer identity, checkpoint and export bindings. The full private records remain with the experiment owner.

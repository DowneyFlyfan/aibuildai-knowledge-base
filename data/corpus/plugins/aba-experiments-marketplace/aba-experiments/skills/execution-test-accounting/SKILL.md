---
name: execution-test-accounting
description: Interpret repository-test evidence without inflating distinct coverage or mistaking a pre-assertion error for an issue verdict. Use when receipts mix overlapping test runners, early suite failure, direct assertions, patch application, and execution-verifiable rewards.
---

# Count what the test process actually executed

Read [the observed contrasting cases](references/cases.md) and [the evidence extract](references/evidence.md) when applying this guidance.

Keep runner case executions, distinct collected tests, direct assertion invocations, command invocations, and issue outcomes separate. Preserve each command's exit code and exact output digest. If a runner stops early, its observed count is not completed full-suite coverage. If two runners overlap, their sum counts executions, not unique tests.

For an issue verdict, establish that the intended assertion actually ran against the exact sampled patch and original source revision. A failed process can mean patch application failed, a dependency was unavailable, template loading failed, an unrelated test failed, or the assigned assertion failed. These imply different conclusions. Use the actual error and assertion result; a progress marker alone is insufficient.

Bind every reward to the actual producer result: rollout, patch digest, applied revision, runner commands, outputs, and outcome. A rejected patch before test launch has zero verified test executions. `passed=false` remains a rejection even when a surrounding lifecycle field says `failed=false`.

When correcting an old overcount, retain the original record and add a scoped correction. A later valid assertion does not retroactively establish the outcome of an earlier candidate. A training update earned from partial test feedback can be real even when the task remains unresolved.

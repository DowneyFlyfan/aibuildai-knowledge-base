# Real examples of test-count and issue-scope errors

## Historical update 27: assertion never ran

In an earlier ABA experiment, a standalone regression used `render` with a template string where the library expected a template name. Template lookup failed before the assertion. That command established **zero verified assertions**. Unrelated macro failures elsewhere and a recorded `issue_resolved=0` did not establish a negative assigned-issue verdict. That candidate's issue outcome remained **unverified**.

The first compiler invocation executed 84 cases (78 passed, 6 failed), and another suite invocation executed 71 (70 passed, 1 failed): 155 overlapping runner executions. Reward/final compiler and suite invocations executed 84 (83 passed, 1 failed) and 88 (87 passed, 1 failed): 172 overlapping runner executions. Raw totals 156 and 173 incorrectly added the failed direct command as a test.

## Update 28: corrected assertion really failed

The later R14 learner authored and executed a corrected direct regression using `renderString`. It ran two assertions: raw-literal behavior passed; safe-array interpolation failed with an actual assertion error. Here a negative issue verdict is supported for the exact sampled candidates, unlike the earlier template-lookup error.

For each first/reward/final evaluation:

| Measurement | Observed scope |
| --- | --- |
| Compiler | 84 runner executions: 80 passed, 4 failed |
| `npm test` | 78 runner executions: 77 passed, 1 failed; stopped early |
| Combined runner executions | 162, with overlap; distinct coverage not established |
| Direct assertions | 2: raw literal passed, assigned interpolation failed |
| Recorded aggregate failures | 6 mixes 4 compiler failures, 1 suite failure, and 1 direct assertion failure |
| Assigned issue | Unresolved for these exact sampled patches |

Do not describe the aggregate as six distinct failed tests out of 162. Do not add the two direct assertions to claim 164 distinct tests. Do not sum first, reward, and final evaluations into unique coverage. Each is a separate execution of overlapping checks.

These observations support a reusable distinction between an executed assertion failure, an earlier infrastructure/API error, and reward-bearing training mechanics. They do not show that the task is repaired or that benchmark performance improved.

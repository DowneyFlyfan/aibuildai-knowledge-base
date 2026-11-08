# Sanitized experiment evidence

These are operator-curated extracts from real native execution records, not a synthetic fixture or a new experiment. Full source records remain in the experiment archive; their hashes below are audit anchors, not a claim that private source records are publicly downloadable. Absolute host paths, process ownership details, credentials, private graders, model weights, and held-out answers are omitted. The extract supports only the stated observations.

## Source records

```json
[
  {
    "record": "2026-11-07-standing-native-r12-feedback27-count-scope-clarification.json",
    "sha256": "db2dfdc79087b19b31eddfafea02391dd32397992c18c5aa1856370af00b8584"
  },
  {
    "record": "2026-11-07-standing-native-r12-feedback27-issue-outcome-unverified.json",
    "sha256": "4e3bf6a4b31c186c4975b28a98f028dcd2a9dde5a1084e6d664da26f4fdced33"
  },
  {
    "record": "genuine_feedback_update28_observation.json",
    "sha256": "ef94dcadb56ce54c1ba4368a2f6230d1acd2f237e87f86b132265b997f6ef05c"
  }
]
```

## Observed fields

```json
{
  "historical27": {
    "rollout_id": "52a04fef962f4edebdaef884ed8641a5",
    "scope_by_invocation": {
      "first": {
        "combined_overlapping_runner_executions": 155,
        "runner_failures": 7,
        "distinct_cases_not_claimed": true,
        "regression_command_executed": true,
        "regression_command_failed_before_assertion": true,
        "regression_command_collected_tests": 0,
        "regression_assertion_executed": false,
        "native_reported_count_overcounts_one_failed_command": true,
        "native_reported_test_count_including_failed_regression_command": 156
      },
      "reward": {
        "combined_overlapping_runner_executions": 172,
        "runner_failures": 2,
        "distinct_cases_not_claimed": true,
        "regression_command_executed": true,
        "regression_command_failed_before_assertion": true,
        "regression_command_collected_tests": 0,
        "regression_assertion_executed": false,
        "native_reported_count_overcounts_one_failed_command": true,
        "native_reported_test_count_including_failed_regression_command": 173
      },
      "final": {
        "combined_overlapping_runner_executions": 172,
        "runner_failures": 2,
        "distinct_cases_not_claimed": true,
        "regression_command_executed": true,
        "regression_command_failed_before_assertion": true,
        "regression_command_collected_tests": 0,
        "regression_assertion_executed": false,
        "native_reported_count_overcounts_one_failed_command": true,
        "native_reported_test_count_including_failed_regression_command": 173
      }
    },
    "actual_log_count_evidence": [
      {
        "archive_member": "native_output/final_52a04fef962f4edebdaef884ed8641a5_0.log",
        "phase": "final",
        "kind": "compiler_runner",
        "bytes": 1880,
        "sha256": "8299b23b73e4d1ce7eb9d7cc27cd2a2b7e0143cbed27b1db699824d67a048fbc",
        "runner_collected_tests": 84,
        "runner_passed": 83,
        "runner_failed": 1,
        "assertion_failure_marker_present": false
      },
      {
        "archive_member": "native_output/final_52a04fef962f4edebdaef884ed8641a5_1.log",
        "phase": "final",
        "kind": "overlapping_full_suite_runner",
        "bytes": 7738,
        "sha256": "3fc2e6cafa68e22dff733556202b34b1a9ecaea12595f429bb73c6f22112d3c7",
        "runner_collected_tests": 88,
        "runner_passed": 87,
        "runner_failed": 1,
        "assertion_failure_marker_present": false
      },
      {
        "archive_member": "native_output/final_52a04fef962f4edebdaef884ed8641a5_2.log",
        "phase": "final",
        "kind": "regression_command_failed_before_assertion",
        "bytes": 3534,
        "sha256": "d77276fc2b03c61cb8b1dd56b8697faa9259142b1a5cfab657de54078e55e130",
        "runner_collected_tests": 0,
        "runner_passed": null,
        "runner_failed": null,
        "assertion_reached": false,
        "template_lookup_exception_observed": true
      },
      {
        "archive_member": "native_output/first_52a04fef962f4edebdaef884ed8641a5_0.log",
        "phase": "first",
        "kind": "compiler_runner",
        "bytes": 8745,
        "sha256": "48a15ef6fc74a37483486b603ad87071b33166570965672033ca05bbbcb84363",
        "runner_collected_tests": 84,
        "runner_passed": 78,
        "runner_failed": 6,
        "assertion_failure_marker_present": false
      },
      {
        "archive_member": "native_output/first_52a04fef962f4edebdaef884ed8641a5_1.log",
        "phase": "first",
        "kind": "overlapping_full_suite_runner",
        "bytes": 6098,
        "sha256": "809fb30a94937e4049360c58552366d1d30dfadb88e416805a07870ee01f6204",
        "runner_collected_tests": 71,
        "runner_passed": 70,
        "runner_failed": 1,
        "assertion_failure_marker_present": false
      },
      {
        "archive_member": "native_output/first_52a04fef962f4edebdaef884ed8641a5_2.log",
        "phase": "first",
        "kind": "regression_command_failed_before_assertion",
        "bytes": 3534,
        "sha256": "9fc1ef33917231c58d2ef9e9460b4a7910484a4e4a76d267f358d2143dba90b5",
        "runner_collected_tests": 0,
        "runner_passed": null,
        "runner_failed": null,
        "assertion_reached": false,
        "template_lookup_exception_observed": true
      },
      {
        "archive_member": "native_output/reward_52a04fef962f4edebdaef884ed8641a5_0.log",
        "phase": "reward",
        "kind": "compiler_runner",
        "bytes": 1880,
        "sha256": "47b356f9ecf28bb5a2124d0a5b8ce86febc4d6bc6f3100aecd34deba34391d04",
        "runner_collected_tests": 84,
        "runner_passed": 83,
        "runner_failed": 1,
        "assertion_failure_marker_present": false
      },
      {
        "archive_member": "native_output/reward_52a04fef962f4edebdaef884ed8641a5_1.log",
        "phase": "reward",
        "kind": "overlapping_full_suite_runner",
        "bytes": 7738,
        "sha256": "3f5abb1ac3743ff105db5516e3b40203132707d43361eb4928508b3d23b21839",
        "runner_collected_tests": 88,
        "runner_passed": 87,
        "runner_failed": 1,
        "assertion_failure_marker_present": false
      },
      {
        "archive_member": "native_output/reward_52a04fef962f4edebdaef884ed8641a5_2.log",
        "phase": "reward",
        "kind": "regression_command_failed_before_assertion",
        "bytes": 3534,
        "sha256": "749b485073a0a943c526885ab4349d74141ebd34f7ce5bd25efdfc5121ae3c3a",
        "runner_collected_tests": 0,
        "runner_passed": null,
        "runner_failed": null,
        "assertion_reached": false,
        "template_lookup_exception_observed": true
      }
    ],
    "regression_error": "Error: template not found: {{ arr | safe }}",
    "actual_assigned_issue_resolution": "unverified",
    "intermediate_executed_assertion_claim_retracted": true
  },
  "update28": {
    "rollout_id": "1d84852a13be4ac2b17cf04b7c1cff89",
    "receipts": {
      "first_1d84852a13be4ac2b17cf04b7c1cff89_test_execution.json": {
        "candidate_patch_applied": true,
        "compiler_test_count": 84,
        "failed_count": 6,
        "full_suite_test_count": 78,
        "issue_assertion_passed": false,
        "issue_assertion_reached": true,
        "outcome": "unresolved",
        "patch_sha256": "8f2b0e5df061a90da7643a5985bbfc3e104a7ce8854e426c5b18d5519d0634cf",
        "regression_assertion_invocations": 2,
        "regression_exit_code": 1,
        "test_count": 162,
        "test_output_sha256": "59c1397e9964ce7d1d7f3da415b124b3f82c31a2125059c7d40b9c8514e12b37"
      },
      "reward_1d84852a13be4ac2b17cf04b7c1cff89_test_execution.json": {
        "candidate_patch_applied": true,
        "compiler_test_count": 84,
        "failed_count": 6,
        "full_suite_test_count": 78,
        "issue_assertion_passed": false,
        "issue_assertion_reached": true,
        "outcome": "unresolved",
        "patch_sha256": "b783d28bc37d786498840c36e53d949a2a290b75b03a69e15f005e66835c43e8",
        "regression_assertion_invocations": 2,
        "regression_exit_code": 1,
        "test_count": 162,
        "test_output_sha256": "c2b81ed1963b1c0c14de063689728d64a48d1643a49fadf18c42ddeac2913879"
      },
      "final_test_receipt.json": {
        "candidate_patch_applied": true,
        "compiler_test_count": 84,
        "failed_count": 6,
        "full_suite_test_count": 78,
        "issue_assertion_passed": false,
        "issue_assertion_reached": true,
        "outcome": "unresolved",
        "patch_sha256": "b783d28bc37d786498840c36e53d949a2a290b75b03a69e15f005e66835c43e8",
        "regression_assertion_invocations": 2,
        "regression_exit_code": 1,
        "test_count": 162,
        "test_output_sha256": "04312963c3673150c1d639515c57430aca8187ffb792db9351b62a86266574ca"
      }
    },
    "receipt_sha256": {
      "first_1d84852a13be4ac2b17cf04b7c1cff89_test_execution.json": "ec419ffc85ba7c97ca856871f3b66fc6d682cc93c83b65708b9ecef80ef2aff8",
      "reward_1d84852a13be4ac2b17cf04b7c1cff89_test_execution.json": "dff3b0c854442fbed848410693b048b05b686b39df7cfbda19bd9ac259679fb0",
      "final_test_receipt.json": "911f311f7cefc47b6325e61659010aec40f744d92a1f411f601408fcad5cffb3"
    },
    "authenticated_log_observations": {
      "first": [
        {
          "sha256": "d39cdd37df48f6c7063ba866c521d68d7d3cc542c2cd80cebed63db91d81b8da",
          "exit_code": 4,
          "mocha_counts": [
            [
              "80",
              "passing"
            ],
            [
              "4",
              "failing"
            ]
          ]
        },
        {
          "sha256": "c51d83e5bbe51a6240a00bb966d9d87f3edbac2145e71af70321371ad44aeda7",
          "exit_code": 1,
          "tap_counts": {
            "tests": 78,
            "pass": 77,
            "fail": 1
          }
        },
        {
          "sha256": "8fd6b11b19291eb5e6572db1730db876d4ceed9328ae53db8a068b97af63fb88",
          "exit_code": 1,
          "raw_assertion_passed": true,
          "assigned_issue_assertion_executed": true,
          "assigned_issue_assertion_passed": false
        }
      ],
      "reward": [
        {
          "sha256": "569dca897d79cb155481b4f1b646484ddd2ae7542f435e524fb9c3645cb574a6",
          "exit_code": 4,
          "mocha_counts": [
            [
              "80",
              "passing"
            ],
            [
              "4",
              "failing"
            ]
          ]
        },
        {
          "sha256": "0289e6cf41484303f63ad357985a772395006b33cceec7186e1907933f369eda",
          "exit_code": 1,
          "tap_counts": {
            "tests": 78,
            "pass": 77,
            "fail": 1
          }
        },
        {
          "sha256": "8fd6b11b19291eb5e6572db1730db876d4ceed9328ae53db8a068b97af63fb88",
          "exit_code": 1,
          "raw_assertion_passed": true,
          "assigned_issue_assertion_executed": true,
          "assigned_issue_assertion_passed": false
        }
      ],
      "final": [
        {
          "sha256": "f269e8338b327cec90150c5babaceecffba31bdaf0c4c07f56a79e3af752916a",
          "exit_code": 4,
          "mocha_counts": [
            [
              "80",
              "passing"
            ],
            [
              "4",
              "failing"
            ]
          ]
        },
        {
          "sha256": "cca41d06e16eedae0592b50a0320ac03a012130bec2946b50d193e10924aaf35",
          "exit_code": 1,
          "tap_counts": {
            "tests": 78,
            "pass": 77,
            "fail": 1
          }
        },
        {
          "sha256": "8fd6b11b19291eb5e6572db1730db876d4ceed9328ae53db8a068b97af63fb88",
          "exit_code": 1,
          "raw_assertion_passed": true,
          "assigned_issue_assertion_executed": true,
          "assigned_issue_assertion_passed": false
        }
      ]
    },
    "test_count_scope": "Each first/reward/final phase has compiler84=80pass4fail plus fullsuite78=77pass1fail:162 OVERLAPPING runner executions, not distinct tests. Two direct regression assertions are separate: raw literal passes, actual safe-array interpolation assertion fails. Combined failed_count6 includes4compiler+1suite+1direct assertion and is not a distinct-test failure count.",
    "issue_outcome_scope": "These exact applied sampled candidates were genuinely tested and left assigned safe-array issue unresolved; historical27 issue outcome remains separately UNVERIFIED."
  }
}
```

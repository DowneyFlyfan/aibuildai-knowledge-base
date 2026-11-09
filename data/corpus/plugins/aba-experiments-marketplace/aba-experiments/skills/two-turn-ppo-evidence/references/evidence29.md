# Sanitized update-29 evidence

These are operator-curated extracts from actual native records. They are not a new experiment or synthetic evidence. Source records remain with the experiment owner; hashes are audit anchors, not public-download promises. Machine paths, process ownership, credentials, private graders, held-out answers and weights are omitted.

## Source records

```json
[
  {
    "record": "genuine_feedback_update29_observation.json",
    "sha256": "1d20dbff616b306b45ef81e712bd0ffe87637adeae91d1b3eecb49423296a8b4"
  },
  {
    "record": "independent_full_export_reload29_observation.json",
    "sha256": "c1fd6998998c06ad1bed554158d9cc976821c050037b5669934f23acf5ed06b5"
  },
  {
    "record": "native_learning29_parent_contract_failure_observation.json",
    "sha256": "b3c3ce01a317dbf2d5341773f1ce706c84b50a1230b5fdd87a920aff22588e39"
  },
  {
    "record": "update29_native_execution_event_extract_observation.json",
    "sha256": "cc507ff0822cbd2191d6b7e73dc33dcd0fbdfaed4a510921f129ebae43366b5d"
  }
]
```

## Observed fields

```json
{
  "date": "2026-11-08",
  "run_id": "2fb1922593584d398f9a095b4eb98b25",
  "producer": {
    "action_path": "search_1/search_1/native_qwen_two_turn_ppo_learning_1",
    "action_ordinal": 1,
    "completed_revision": 5782,
    "failed": false,
    "terminal_envelope_sha256": "0948e6aca5388b646d54760a48fdf4ab7af29231f7315434616e82a8f2fcaca6",
    "business_payload_sha256": "e1be2eedbc81844e62e743fd49d212dcbc9fce1ab6217e33b81d3e306ec19b4e",
    "digest_serialization": "UTF-8 json.dumps(value,sort_keys=True,separators=(comma,colon)); business removes only failed/handoff per ExecutionOutput serializer."
  },
  "rollout_id": "d5eeb263a6ed4723ac8417708f2d14c9",
  "rollout_sha256": "33dbbef0bd1a67985123af60b0abe06d6175fe8d7a9f501b0252b0eeaddcbcae",
  "actual_first_feedback_in_second_prompt": true,
  "verbatim_second_frame_final_diff": true,
  "final_diff_sha256": "8c9938ae432ee9c071a7195f7acd74f5a9eb9f5a3eadb460fd77df29be0e2fe6",
  "update29_event": {
    "actor_grad_norm": 0.004934394732117653,
    "actor_loss": -0.3062354624271393,
    "actor_stepped": true,
    "actor_updates": 29,
    "critic_grad_norm": 0.6572507619857788,
    "critic_stepped": true,
    "critic_updates": 29,
    "reward": [
      0.0,
      0.1
    ],
    "rollout_id": "d5eeb263a6ed4723ac8417708f2d14c9",
    "stage": "executed_two_turn_ppo_update",
    "unix": 1794173958.0086865,
    "value_loss": 0.04691273346543312
  },
  "restored_from_manifest_sha256": "9e20ce0ff3687e578db4645da191e5b70abc12fd88eae4499570f1e1be87272e",
  "checkpoint29_manifest_sha256": "09fa20314c0cc23cc4f625d0595a87034ef8c1336b3b4845a63ca044b0de8f9f",
  "checkpoint29_manifest": {
    "actor_updates": 29,
    "critic_updates": 29,
    "file_sha256": {
      "actor": "b300ca8d41f0470640336d0048435b8a2d883b8c1fc4afa00f0ea5df121a5bb8",
      "actor_optimizer": "00fa2b0633959d3fa3abf2632ab9e698eda505eb5fe03c9b17b3a295aba57487",
      "critic": "3811dc32cccf45a28b8fc2ef8375cfa4668b904f9bf9a74a0bbf0f574ec4eb1b",
      "critic_optimizer": "03ee5cca365ad2256886902ab30a7765e6bfac6ce547ee0a8f19f165c2a774ce",
      "progress": "89c8e24c562d0930fbfec98e4ee8b73804ecea93d39a9388a38052b8b84dc72e",
      "rng": "153872976cb6edd4fff0b74ed7298aa907fffe3fe57435da0c4d5b1c00913653"
    },
    "files": {
      "actor": "actor.pt",
      "actor_optimizer": "actor_optimizer.pt",
      "critic": "critic.pt",
      "critic_optimizer": "critic_optimizer.pt",
      "progress": "progress.json",
      "rng": "rng.pt"
    },
    "optimizer_parameter_names": {
      "actor_optimizer": [
        [
          "model.language_model.norm.weight"
        ]
      ],
      "critic_optimizer": [
        [
          "net.0.weight",
          "net.0.bias",
          "net.2.weight",
          "net.2.bias"
        ]
      ]
    },
    "schema": 1,
    "state_hashes": {
      "actor": "11c9d5ad46e8b678b5af0e449dc25f5068739ca4a8c19c82546b5b7c75158e5b",
      "actor_optimizer": "a7e7ff2db19465b2a3a57e10172f3724e711f6ba75cce6e7471d69b7e24cd13a",
      "critic": "8f23e08c3008ba3bbc02e11ec4fa675a0495efebf9e53f5fe0d12b5f2f320993",
      "critic_optimizer": "9b2f982b85f1664826d8c51bffa60fbcded32fa44430f9992719ddb9e1ae3118",
      "progress": "d27a59f8af15259d33e45c451d4ab1fc5e9f6bc0ddc27bb894adb30fa5a62bed",
      "rng": "90e91c4199c713551fcf0372330ba659bcc21ad30f72437031d5120905f3696a"
    }
  },
  "all_six_state_hashes_changed_vs28": {
    "actor": true,
    "actor_optimizer": true,
    "critic": true,
    "critic_optimizer": true,
    "progress": true,
    "rng": true
  },
  "same_learner_saved29_reload_event": {
    "manifest_sha256": "09fa20314c0cc23cc4f625d0595a87034ef8c1336b3b4845a63ca044b0de8f9f",
    "stage": "new_six_state_checkpoint_restored",
    "unix": 1794174101.9333925
  },
  "independent_full_reload_receipt": {
    "actor_updates": 29,
    "checkpoint_manifest_sha256": "09fa20314c0cc23cc4f625d0595a87034ef8c1336b3b4845a63ca044b0de8f9f",
    "complete_original_indexed_load": true,
    "critic_updates": 29,
    "export_manifest_sha256": "9b21712ff2ed803e17fc1ea1073bdbba961042784a4e979ac2445845c1020ff9",
    "indexed_tensor_count": 738,
    "parameter_count": 4659865088,
    "schema": 1,
    "selected_parameter_name": "model.language_model.norm.weight",
    "selected_parameter_sha256": "5faec5f1c405b7ce7f20b51148747da5b5069643fc8bb1e10184b2a12f6c906c",
    "separate_reload_process": true
  },
  "independent_reload_receipt_sha256": "c91c04c85e53ff1ef7691cf7a1f9265eb03e42258bdbb5b12b87765bf6f4ed46",
  "full_export_manifest": {
    "checkpoint_actor_sha256": "b300ca8d41f0470640336d0048435b8a2d883b8c1fc4afa00f0ea5df121a5bb8",
    "checkpoint_manifest_sha256": "09fa20314c0cc23cc4f625d0595a87034ef8c1336b3b4845a63ca044b0de8f9f",
    "export_weight_files_sha256": {
      "model-00001-of-00002.safetensors": "e8c28c8f5cfaddf1ab67d45bb40d09b96b0fe501c69e0a93808c6bcf2c2051ae",
      "model-00002-of-00002.safetensors": "2c6da7d3d0cbcbe901dc073d3cc4a951733a187b26f8b2a0bbb5e072e63f4e3a"
    },
    "indexed_tensor_count": 738,
    "schema": 1,
    "selected_tensor_sha256": "5faec5f1c405b7ce7f20b51148747da5b5069643fc8bb1e10184b2a12f6c906c"
  },
  "export_manifest_sha256": "9b21712ff2ed803e17fc1ea1073bdbba961042784a4e979ac2445845c1020ff9",
  "actual_test_receipt_sha256": {
    "first_d5eeb263a6ed4723ac8417708f2d14c9_test_execution.json": "b88c7c815a5a9c4685ac2ab8ef3b3cc33c30ef19f91cd9c2d72322ba9c8f4066",
    "reward_d5eeb263a6ed4723ac8417708f2d14c9_test_execution.json": "363b574ad82b1b0b22e5f6857392e9163bc2739ba05e16d36e3712755d7b8aa4",
    "final_test_receipt.json": "14b0662d0f40a97543b78bf8f1dcbf897fa1b29c9246ad2a96c4010084aed4b1"
  },
  "authenticated_runner_and_assertion_counts": {
    "first": [
      {
        "name": "first_d5eeb263a6ed4723ac8417708f2d14c9_0.log",
        "sha256": "fa5a9b70166c24d34bc9ae421db868bc79c9c9359be73ac77f054808a8d1c45a",
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
        ],
        "tap_counts": {}
      },
      {
        "name": "first_d5eeb263a6ed4723ac8417708f2d14c9_1.log",
        "sha256": "69eaeeb1e35fe54a9569cd84c4bab39e5e08ecaacf5820024c7c0c374357729a",
        "exit_code": 1,
        "mocha_counts": [],
        "tap_counts": {
          "tests": "78",
          "pass": "77",
          "fail": "1"
        }
      },
      {
        "name": "first_d5eeb263a6ed4723ac8417708f2d14c9_2.log",
        "sha256": "8fd6b11b19291eb5e6572db1730db876d4ceed9328ae53db8a068b97af63fb88",
        "exit_code": 1,
        "mocha_counts": [],
        "tap_counts": {},
        "raw_assertion_passed": true,
        "assigned_issue_assertion_executed": true,
        "assigned_issue_assertion_passed": false
      }
    ],
    "reward": [
      {
        "name": "reward_d5eeb263a6ed4723ac8417708f2d14c9_0.log",
        "sha256": "d0bdae5ae6117fa7cd9a288e60d91602a5ae0a2d7d42ee59331a8615d24edb88",
        "exit_code": 13,
        "mocha_counts": [
          [
            "71",
            "passing"
          ],
          [
            "13",
            "failing"
          ]
        ],
        "tap_counts": {}
      },
      {
        "name": "reward_d5eeb263a6ed4723ac8417708f2d14c9_1.log",
        "sha256": "f0e61494346a7bbe4c17a2000df69f481547c2f60c34c746bd0a86914eafd4d0",
        "exit_code": 1,
        "mocha_counts": [],
        "tap_counts": {
          "tests": "41",
          "pass": "40",
          "fail": "1"
        }
      },
      {
        "name": "reward_d5eeb263a6ed4723ac8417708f2d14c9_2.log",
        "sha256": "8fd6b11b19291eb5e6572db1730db876d4ceed9328ae53db8a068b97af63fb88",
        "exit_code": 1,
        "mocha_counts": [],
        "tap_counts": {},
        "raw_assertion_passed": true,
        "assigned_issue_assertion_executed": true,
        "assigned_issue_assertion_passed": false
      }
    ],
    "final": [
      {
        "name": "final_d5eeb263a6ed4723ac8417708f2d14c9_0.log",
        "sha256": "cafd3c7270cefc7e2ce249ce096859c4ce0e35e87acf9e3fed4ad923e8495354",
        "exit_code": 13,
        "mocha_counts": [
          [
            "71",
            "passing"
          ],
          [
            "13",
            "failing"
          ]
        ],
        "tap_counts": {}
      },
      {
        "name": "final_d5eeb263a6ed4723ac8417708f2d14c9_1.log",
        "sha256": "6242b4d298e7cb10a5c555f266edc88429ddcc18822dbc98c3589f7e62a7b246",
        "exit_code": 1,
        "mocha_counts": [],
        "tap_counts": {
          "tests": "41",
          "pass": "40",
          "fail": "1"
        }
      },
      {
        "name": "final_d5eeb263a6ed4723ac8417708f2d14c9_2.log",
        "sha256": "8fd6b11b19291eb5e6572db1730db876d4ceed9328ae53db8a068b97af63fb88",
        "exit_code": 1,
        "mocha_counts": [],
        "tap_counts": {},
        "raw_assertion_passed": true,
        "assigned_issue_assertion_executed": true,
        "assigned_issue_assertion_passed": false
      }
    ]
  },
  "test_count_scope": "First compiler84=80pass4fail + suite78=77pass1fail =162 OVERLAPPING runner executions. Reward/final compiler84=71pass13fail + suite41=40pass1fail =125 OVERLAPPING runner executions. Each also executed two separate direct assertions: raw PASS, assigned issue assertion FAIL. Aggregate failed_count15 mixes13compiler+1suite+1direct; not distinct failures. Suite invocation stopped early; no full coverage claim.",
  "issue_outcome": "unresolved for these exact sampled candidates; mechanics update, no task-improvement claim.",
  "consumer_failure": {
    "action_path": "search_1/search_1",
    "completed_revision": 5783,
    "failed": true,
    "reason": "native_learning.output: ppo.update: no new matched actor/critic step after current27",
    "terminal_sha256": "7c3f53deca7b18a7ac2632629b06b8ad40c89d189bec2f336c88388f03782f24"
  },
  "contract_observation": {
    "field": "selected rollout.update.actor_update/critic_update",
    "actual_rollout_keys": [
      "final_status",
      "first_status",
      "frames",
      "local_credit",
      "policy_checkpoint",
      "response",
      "rollout_id",
      "task_id",
      "tool_observations"
    ],
    "rollout_update_field_present": false,
    "actual_optimizer_event_keys": [
      "actor_grad_norm",
      "actor_update",
      "critic_grad_norm",
      "critic_update",
      "final_test_count",
      "final_test_output_sha256",
      "first_test_count",
      "first_test_output_sha256",
      "reward",
      "rollout_id",
      "timestamp_utc"
    ],
    "consumer_observation_binding_key": "first_test_observed_sha256",
    "actual_event_observation_binding_key": "first_test_output_sha256"
  },
  "post_step_tensor_finiteness_independently_verified": false,
  "finite_parameter_delta_norms_independently_verified": false,
  "controller_deviation_causal_effect": "UNTESTED",
  "whole_goal_complete": false,
  "same_process_restore28_event": {
    "actor_updates": 28,
    "checkpoint_manifest_sha256": "9e20ce0ff3687e578db4645da191e5b70abc12fd88eae4499570f1e1be87272e",
    "critic_updates": 28,
    "stage": "same_process_six_component_restore",
    "state_hashes": {
      "actor": "7c7a544dd61207f21512e8ce074a625712de70bbc5aee1a78c22bd1b1efd3e90",
      "actor_optimizer": "2aba5aa68b9aa7670f5103ee8eea68f63e3a06ece7cdfbc476743c3e00edf39f",
      "critic": "f477f3dda113d45b7e3a4970e353cd7efd067180c430154d6753d8460c477a66",
      "critic_optimizer": "6754042cbcca44894f92643fc272ec9d72d407510e7fe52ec4e6a2e844c2e8b8",
      "progress": "d4928cc81174f535f2a0d31f8874069fa42a28fdd48a5ade61baa7542a55c699",
      "rng": "f678c8bb29761f30f1db9a2be0053395af811da6224f596a09a875fd724d4bba"
    },
    "unix": 1794173894.6374912
  },
  "native_execution_events_file_sha256": "9aa8fff84f5eb6a88da1f25c534966236609d6777871f894091b8b5bfd5422c3"
}
```

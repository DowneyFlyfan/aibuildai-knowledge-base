# Sanitized experiment evidence

These are operator-curated extracts from real native execution records, not a synthetic fixture or a new experiment. Full source records remain in the experiment archive; their hashes below are audit anchors, not a claim that private source records are publicly downloadable. Absolute host paths, process ownership details, credentials, private graders, model weights, and held-out answers are omitted. The extract supports only the stated observations.

## Source records

```json
[
  {
    "record": "same_process_current27_restore_observation.json",
    "sha256": "0e6916fe0d88a1d0dee68f2a87abdf89f69df8397f575338a75d7c163e556448"
  },
  {
    "record": "genuine_feedback_update28_observation.json",
    "sha256": "ef94dcadb56ce54c1ba4368a2f6230d1acd2f237e87f86b132265b997f6ef05c"
  },
  {
    "record": "independent_full_export_reload28_observation.json",
    "sha256": "b010fe8dc894a0f1b5b62424e3985c506d5a66fa1bbcfc598b18c728d9d3793b"
  }
]
```

## Observed fields

```json
{
  "date": "2026-11-08",
  "run_id": "2fb1922593584d398f9a095b4eb98b25",
  "action_path": "search_1/search_1/native_qwen_two_turn_ppo_learning_1",
  "action_ordinal": 1,
  "rollout_id": "1d84852a13be4ac2b17cf04b7c1cff89",
  "same_process_restore27_event": {
    "actor_updates": 27,
    "critic_updates": 27,
    "stage": "same_process_six_component_restore",
    "state_hashes": {
      "actor": "5033978947afc4c99000ab7b140e414e51ef3dcabd93120d855e17d6771ae2ba",
      "actor_optimizer": "37dd550914c128006fb3ca42768125d64883374bf371b09a1a2df17b1f4e8e31",
      "critic": "1d568981a7c11763dc1019b85fcac22466c1c072a5145d224c37894ecf289877",
      "critic_optimizer": "755d551a52820ffa2e68ebec3f5763bf37c0aa04a6c71b9c3d2b3c43970a9006",
      "progress": "4f7d065479b86b6274f47360aa71d592f9f8d9c0204fdde2fd9e77214deacdc9",
      "rng": "c5459d89167677999bf5b0f5be334d1e7a47962e00d825ec8e77cc1feef29295"
    },
    "unix": 1794170547.2745936
  },
  "all_six_restored_hashes_match": true,
  "restore_receipt_sha256": "34af17b3172867c4eb5c6539e0976437487620cbdc0c348085f92a86ad41c556",
  "update28_event": {
    "actor_grad_norm": 0.006751726847141981,
    "actor_loss": -0.30973172187805176,
    "actor_stepped": true,
    "actor_updates": 28,
    "critic_grad_norm": 0.6652503609657288,
    "critic_stepped": true,
    "critic_updates": 28,
    "reward": [
      0.0,
      0.1
    ],
    "rollout_id": "1d84852a13be4ac2b17cf04b7c1cff89",
    "stage": "executed_two_turn_ppo_update",
    "unix": 1794170860.44184,
    "value_loss": 0.04799068719148636
  },
  "checkpoint28_manifest": {
    "actor_updates": 28,
    "critic_updates": 28,
    "file_sha256": {
      "actor": "fd291d061ab4ad1391aeffbceeee91f7c2a9ea260d2a75c06d8a9c2430f49b72",
      "actor_optimizer": "f597a6e78c5f81a6d07596f9d838a6bf3b2f45a0c684dbb09fe3baf0edb5448b",
      "critic": "001541508b08be5cb2eb634535a97d838150e2bd6f4c8ecfa36d14627da78f30",
      "critic_optimizer": "f0c84414bd9e0b95994fcbd6aebbee42fa94350fade48352ff03f1a75c971c4e",
      "progress": "878ae55113b0ef27772b99edb4e688666f90caf84aad60a4a4934c070d68f40d",
      "rng": "33d68e3aa3f6f7ccced616c8f3bc0711307ee4009cfb8302102dcd69ccbc471f"
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
      "actor": "7c7a544dd61207f21512e8ce074a625712de70bbc5aee1a78c22bd1b1efd3e90",
      "actor_optimizer": "2aba5aa68b9aa7670f5103ee8eea68f63e3a06ece7cdfbc476743c3e00edf39f",
      "critic": "f477f3dda113d45b7e3a4970e353cd7efd067180c430154d6753d8460c477a66",
      "critic_optimizer": "6754042cbcca44894f92643fc272ec9d72d407510e7fe52ec4e6a2e844c2e8b8",
      "progress": "d4928cc81174f535f2a0d31f8874069fa42a28fdd48a5ade61baa7542a55c699",
      "rng": "f678c8bb29761f30f1db9a2be0053395af811da6224f596a09a875fd724d4bba"
    }
  },
  "checkpoint28_manifest_sha256": "9e20ce0ff3687e578db4645da191e5b70abc12fd88eae4499570f1e1be87272e",
  "same_process_new_checkpoint_reload_event": {
    "manifest_sha256": "9e20ce0ff3687e578db4645da191e5b70abc12fd88eae4499570f1e1be87272e",
    "stage": "new_six_state_checkpoint_restored",
    "unix": 1794171004.524449
  },
  "independent_reload": {
    "actor_updates": 28,
    "checkpoint_manifest_sha256": "9e20ce0ff3687e578db4645da191e5b70abc12fd88eae4499570f1e1be87272e",
    "complete_original_indexed_load": true,
    "critic_updates": 28,
    "export_manifest_sha256": "f114fa11777336a49963b6cf923584ec419e3a8b4b7de449b84c702e81f20da8",
    "indexed_tensor_count": 738,
    "parameter_count": 4659865088,
    "schema": 1,
    "selected_parameter_name": "model.language_model.norm.weight",
    "selected_parameter_sha256": "8b9bafd63d782d703ac6ddd0ffbe0d52c7570c7146de156ed8e95876b2f547c4",
    "separate_reload_process": true
  },
  "independent_reload_receipt_sha256": "c66b5a99b52c8ec5476707c382fe023900f0d04664662b081fae6ceda428ce74",
  "independent_reload_event": {
    "indexed_tensor_count": 738,
    "parameter_count": 4659865088,
    "stage": "independent_separate_process_full_reload_verified",
    "unix": 1794171288.216396
  },
  "full_export_manifest": {
    "checkpoint_actor_sha256": "fd291d061ab4ad1391aeffbceeee91f7c2a9ea260d2a75c06d8a9c2430f49b72",
    "checkpoint_manifest_sha256": "9e20ce0ff3687e578db4645da191e5b70abc12fd88eae4499570f1e1be87272e",
    "export_weight_files_sha256": {
      "model-00001-of-00002.safetensors": "e8c28c8f5cfaddf1ab67d45bb40d09b96b0fe501c69e0a93808c6bcf2c2051ae",
      "model-00002-of-00002.safetensors": "548246646128c0e30e1c601ed26c91d0b4214d1956165614a22e708489b59ff5"
    },
    "indexed_tensor_count": 738,
    "schema": 1,
    "selected_tensor_sha256": "8b9bafd63d782d703ac6ddd0ffbe0d52c7570c7146de156ed8e95876b2f547c4"
  },
  "trained_actor_parameters": [
    "model.language_model.norm.weight"
  ],
  "trained_critic_parameters": [
    "net.0.weight",
    "net.0.bias",
    "net.2.weight",
    "net.2.bias"
  ],
  "issue_outcome": "unresolved",
  "controller_deviation_causal_effect": "UNTESTED",
  "post_step_parameter_finiteness_independently_verified": false,
  "whole_goal_complete": false
}
```

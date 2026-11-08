# Sanitized experiment evidence

These are operator-curated extracts from real native execution records, not a synthetic fixture or a new experiment. Full source records remain in the experiment archive; their hashes below are audit anchors, not a claim that private source records are publicly downloadable. Absolute host paths, process ownership details, credentials, private graders, model weights, and held-out answers are omitted. The extract supports only the stated observations.

## Source records

```json
[
  {
    "record": "controller_transport_restoration_receipt.json",
    "sha256": "392fc3cc8cb49e575752fce83802f346f4fb794ea28e67fdcb0e53d4250e2ad7"
  },
  {
    "record": "controller_transport_recovery_observation.json",
    "sha256": "8d0c9501aedabd883cbbefe55e59602de27fa0021d4546f2a9e81c0188bb666c"
  }
]
```

## Observed fields

```json
{
  "run_id": "2fb1922593584d398f9a095b4eb98b25",
  "transport_launches": {
    "gateway": {
      "launched_unix_lower_bound": 1794169929.4087112,
      "timeout_seconds": 79244,
      "expires_unix_lower_bound": 1794249173.4087112
    },
    "tunnel": {
      "launched_unix_lower_bound": 1794169936.4957302,
      "timeout_seconds": 79237,
      "expires_unix_lower_bound": 1794249173.4957302
    }
  },
  "tested_verify_controller_endpoint_result": {
    "checked_unix": 1794170111.445648,
    "administrative_expires_unix": 1794249173.4087112,
    "required_until_unix": 1794249053.3967636,
    "model": "gpt-6-sol",
    "health_status": 200
  },
  "local_health": 200,
  "remote_health": 200,
  "native_run_restarted": false,
  "provider_credentials_copied": false,
  "training_clock_unchanged": true,
  "training_window_sha256": "27e2921721d959231cb3a9a99dfaef1b6af3057e1e81dd3cd8c68e86b3f26e41",
  "earliest_response_and_tool_events": {
    "ToolUseEnd": {
      "revision": 3647,
      "type": "ToolUseEnd",
      "target": "search_1/search_1/native_qwen_two_turn_ppo_learning_1",
      "timestamp": "2026-11-08 20:32:44.248637+00:00",
      "is_error": false
    },
    "ToolUseStart": {
      "revision": 3646,
      "type": "ToolUseStart",
      "target": "search_1/search_1/native_qwen_two_turn_ppo_learning_1",
      "timestamp": "2026-11-08 20:32:44.184172+00:00",
      "name": "Bash"
    },
    "UsageDelta": {
      "revision": 3648,
      "type": "UsageDelta",
      "target": "search_1/search_1/native_qwen_two_turn_ppo_learning_1",
      "timestamp": "2026-11-08 20:32:44.349336+00:00",
      "model": "gpt-6-sol"
    },
    "TextDelta": {
      "revision": 3602,
      "type": "TextDelta",
      "target": "search_1/search_1/native_qwen_two_turn_ppo_learning_1",
      "timestamp": "2026-11-08 20:32:41.204304+00:00"
    }
  },
  "classification": "Existing native controller received actual gpt-6-sol responses and executed granted tools after transport restoration; this is controller progress, not Qwen training/restore/update proof."
}
```

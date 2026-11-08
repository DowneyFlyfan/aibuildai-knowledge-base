---
name: controller-transport-recovery
description: Diagnose and verify recovery when an agent controller cannot reach its model relay despite live processes and clock heartbeats. Use for endpoint refusal, transport lifetime mismatch, same-run recovery, and distinguishing resumed controller/tool activity from actual training progress.
---

# Verify the connection used by the actual controller

Read [the real failure and recovery](references/r14.md) and [the evidence extract](references/evidence.md). In this case the relay was a small forwarding service between the remote agent and its model provider. “Connection refused” described the operating system rejecting a connection to the configured local port; it did not mean that the model or agent had declined the task.

Check the configured endpoint from the controller's actual host and network namespace. A live controller process, guard, supervisor, or clock heartbeat does not prove that the model endpoint is reachable or that responses are arriving. Distinguish a transport refusal from authentication rejection or a model-level error by preserving the real failure class.

Before starting a new run or training clock, verify both endpoint health and the remaining lifetime of the actual gateway and reverse Secure Shell (SSH) tunnel. Derive transport expiry from its authenticated launch and timeout, not from the new run's authorization. A renewed run deadline does not extend an older transport. Missing, expired, or insufficient lifetime metadata must prevent a new launch/clock when that is the run contract.

Recovery needs evidence at successive layers: endpoint health; actual response events; completed tool calls by the same controller; then, separately, a real model restore/rollout/update. Do not describe health or tool use as training success.

Within authorized ownership, restore the failed transport without duplicating a live run. Retain the original started training-clock bytes and deadline. Do not infer authority to replace a shared service, signal another user's process, copy credentials, or extend a clock from a need to recover. The observed R14 repair had explicit authorization to restart the failed relay; its native Run was not restarted.

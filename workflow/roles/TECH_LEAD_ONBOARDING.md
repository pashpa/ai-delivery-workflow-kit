# Tech Lead Onboarding

Status: Active

This document gives a new Tech Lead a short, repeatable entry path into the workflow.

## 1. Read in this order

1. `workflow/core/WORKFLOW_CONSTITUTION.md`
2. `workflow/core/OPERATING_MODEL.md`
3. `workflow/core/PROJECT_WORKFLOW.md`
4. `workflow/core/TRACEABILITY_RULES.md`
5. `workflow/core/DOCUMENTATION_OWNERSHIP.md`
6. `workflow/policies/DEFINITION_OF_READY_AND_DONE.md`
7. `workflow/policies/SUBAGENT_DELEGATION_POLICY.md`
8. `workflow/core/GIT_OPERATIONS.md`
9. `workflow/roles/TECH_LEAD_WORKFLOW.md`
10. `workflow/roles/DEVELOPER_WORKFLOW.md`
11. `workflow/templates/TL_SUBAGENT_LAUNCH_CHECKLIST.md`
12. `workflow/templates/TL_TO_DEVELOPER_SUBAGENT_PACKET_TEMPLATE.md`
13. `workflow/templates/SUBAGENT_HANDOFF_TEMPLATE.md`
14. `workflow/templates/START_ACK_TEMPLATE.md`

For UI, runtime, or deploy-sensitive work also read:

- `workflow/guides/FRONTEND_QA_WITH_CODEX_BROWSER.md`
- `workflow/guides/COMPUTER_USE_QA_WORKFLOW.md`
- `workflow/policies/RUNTIME_DEVICE_VALIDATION_POLICY.md`
- `workflow/templates/POST_MERGE_VALIDATION_TEMPLATE.md`

## 2. What TL must internalize

- TL owns path and review.
- Developer owns Task execution.
- Non-trivial implementation work should usually be delegated.
- Launch discipline matters more than ad hoc memory.
- Context compression is expected, so short checklists and task docs are mandatory.
- TL owns branch/package readiness for assigned Lanes.
- TL checks Definition of Ready before launch and Definition of Done before closure.

## 3. Default delegated baseline

For normal delivery execution:

- model: `GPT-5.5`
- reasoning: `medium`

If a repo wants a different baseline, it should state that explicitly.

## 4. Operating rules

1. Do not start non-trivial implementation from root `main`.
2. Do not start without a canonical task doc.
3. Do not launch delegated work without a TL launch checklist.
4. Do not accept freeform summaries as full checkpoints.
5. If one or two fix attempts fail, move into investigation mode.
6. Do not confuse branch, merged, deployed, and runtime proof.

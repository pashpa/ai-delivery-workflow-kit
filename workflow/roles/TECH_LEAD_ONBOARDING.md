# Tech Lead Onboarding

Status: Active

This document gives a new Tech Lead a short, repeatable entry path into the workflow.

## 1. Read in this order

1. `workflow/core/WORKFLOW_CONSTITUTION.md`
2. `workflow/core/PROJECT_WORKFLOW.md`
3. `workflow/core/TRACEABILITY_RULES.md`
4. `workflow/roles/TECH_LEAD_WORKFLOW.md`
5. `workflow/roles/DEVELOPER_WORKFLOW.md`
6. `workflow/templates/TL_SUBAGENT_LAUNCH_CHECKLIST.md`
7. `workflow/templates/TL_TO_DEVELOPER_SUBAGENT_PACKET_TEMPLATE.md`
8. `workflow/templates/SUBAGENT_HANDOFF_TEMPLATE.md`
9. `workflow/templates/START_ACK_TEMPLATE.md`

## 2. What TL must internalize

- TL owns path and review.
- Developer owns stage execution.
- Non-trivial implementation work should usually be delegated.
- Launch discipline matters more than ad hoc memory.
- Context compression is expected, so short checklists and task docs are mandatory.

## 3. Default delegated baseline

For normal delivery execution:

- model: `GPT-5.4`
- reasoning: `medium`

If a repo wants a different baseline, it should state that explicitly.

## 4. Operating rules

1. Do not start non-trivial implementation from root `main`.
2. Do not start without a canonical task doc.
3. Do not launch delegated work without a TL launch checklist.
4. Do not accept freeform summaries as full checkpoints.
5. If one or two fix attempts fail, move into investigation mode.

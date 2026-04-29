# Workflow Docs

This folder contains the installable workflow system.

## What is here

### Core

- `workflow/core/WORKFLOW_CONSTITUTION.md`
- `workflow/core/PROJECT_WORKFLOW.md`
- `workflow/core/TRACEABILITY_RULES.md`
- `workflow/core/OPERATING_MODEL.md`
- `workflow/core/DOCUMENTATION_OWNERSHIP.md`
- `workflow/core/GIT_OPERATIONS.md`

These files define the non-negotiable rules, the global operating model, the main delivery loop, traceability expectations, documentation ownership, and git operations.

### Roles

- `workflow/roles/CTO_WORKFLOW.md`
- `workflow/roles/PM_WORKFLOW.md`
- `workflow/roles/PM_ONBOARDING.md`
- `workflow/roles/TECH_LEAD_WORKFLOW.md`
- `workflow/roles/TECH_LEAD_ONBOARDING.md`
- `workflow/roles/DEVELOPER_WORKFLOW.md`
- `workflow/roles/DEVELOPER_ONBOARDING.md`
- `workflow/roles/QA_WORKFLOW.md`

These files define who owns what and how new participants should enter the process.

### Templates

- CTO to TL handoff template
- PM launch checklist
- PM handoff templates
- Track plan template
- Lane plan template
- DEV task template
- investigation task template
- Start Ack template
- Developer checkpoint template
- TL review template
- delegated handoff templates
- TL launch checklist
- QA validation request and checkpoint templates

These files are the operating layer. They are meant to be copied and used, not just read once.

## Reading order

For first-time use:

1. `workflow/core/WORKFLOW_CONSTITUTION.md`
2. `workflow/core/OPERATING_MODEL.md`
3. `workflow/core/PROJECT_WORKFLOW.md`
4. `workflow/core/DOCUMENTATION_OWNERSHIP.md`
5. `workflow/core/GIT_OPERATIONS.md`
6. role doc for the current role
7. relevant templates for the current Track, Lane, or Task

## Installation note

These docs are intentionally generic.

When you install them into another repo, adapt:

- path references;
- naming;
- role labels if needed;
- repo-specific execution rules in root `AGENTS.md`.

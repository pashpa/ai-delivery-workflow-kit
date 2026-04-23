# Workflow Docs

This folder contains the installable workflow system.

## What is here

### Core

- `workflow/core/WORKFLOW_CONSTITUTION.md`
- `workflow/core/PROJECT_WORKFLOW.md`
- `workflow/core/TRACEABILITY_RULES.md`

These files define the non-negotiable rules, the main delivery loop, and traceability expectations.

### Roles

- `workflow/roles/PM_WORKFLOW.md`
- `workflow/roles/PM_ONBOARDING.md`
- `workflow/roles/TECH_LEAD_WORKFLOW.md`
- `workflow/roles/TECH_LEAD_ONBOARDING.md`
- `workflow/roles/DEVELOPER_WORKFLOW.md`
- `workflow/roles/DEVELOPER_ONBOARDING.md`

These files define who owns what and how new participants should enter the process.

### Templates

- PM launch checklist
- PM handoff templates
- DEV task template
- investigation task template
- Start Ack template
- Developer checkpoint template
- TL review template
- delegated handoff templates
- TL launch checklist

These files are the operating layer. They are meant to be copied and used, not just read once.

## Reading order

For first-time use:

1. `workflow/core/WORKFLOW_CONSTITUTION.md`
2. `workflow/core/PROJECT_WORKFLOW.md`
3. role doc for the current role
4. relevant templates for the current stage

## Installation note

These docs are intentionally generic.

When you install them into another repo, adapt:

- path references;
- naming;
- role labels if needed;
- repo-specific execution rules in root `AGENTS.md`.

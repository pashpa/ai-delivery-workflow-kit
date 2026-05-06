# Workflow Docs

This folder contains the installable workflow system.

## What is here

### Core

- `workflow/BASELINE.md`
- `workflow/core/WORKFLOW_CONSTITUTION.md`
- `workflow/core/OPERATING_MODEL.md`
- `workflow/core/AGENT_CONTEXT_RULES.md`
- `workflow/core/PROJECT_WORKFLOW.md`
- `workflow/core/TRACEABILITY_RULES.md`
- `workflow/core/DOCUMENTATION_OWNERSHIP.md`
- `workflow/core/GIT_OPERATIONS.md`
- `workflow/core/GIT_COOKBOOK.md`

These files define the baseline, non-negotiable rules, global operating model, agent context separation rules, main delivery loop, traceability expectations, documentation ownership, and git operations.

### Policies

- `workflow/policies/DEFINITION_OF_READY_AND_DONE.md`
- `workflow/policies/SUBAGENT_DELEGATION_POLICY.md`
- `workflow/policies/RUNTIME_DEVICE_VALIDATION_POLICY.md`
- `workflow/policies/DOCUMENT_HYGIENE_POLICY.md`

These files define start/finish gates, delegated execution rules, runtime
validation boundaries, and document hygiene.

### Guides

- `workflow/guides/FRONTEND_QA_WITH_CODEX_BROWSER.md`
- `workflow/guides/COMPUTER_USE_QA_WORKFLOW.md`
- `workflow/guides/STOP_AND_REPLAN_RUNBOOK.md`

These files define practical runbooks for browser QA, real GUI QA, and failed
delivery paths.

### Roles

- `workflow/roles/CTO_WORKFLOW.md`
- `workflow/roles/PM_WORKFLOW.md`
- `workflow/roles/PM_ONBOARDING.md`
- `workflow/roles/TECH_LEAD_WORKFLOW.md`
- `workflow/roles/TECH_LEAD_ONBOARDING.md`
- `workflow/roles/DEVELOPER_WORKFLOW.md`
- `workflow/roles/DEVELOPER_ONBOARDING.md`
- `workflow/roles/QA_WORKFLOW.md`
- `workflow/roles/SECURITY_AUDITOR_WORKFLOW.md`

These files define who owns what and how new participants should enter the process.

### Prompts

- `workflow/prompts/PROMPT_BROWSER_QA_AGENT.md`

Prompts are optional launch helpers for delegated agents.

### Templates

- CTO to TL handoff template
- root AGENTS.md template
- current work index template
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
- post-merge validation template
- security audit memo template

These files are the operating layer. They are meant to be copied and used, not just read once.

## Reading order

For first-time use:

1. `workflow/core/WORKFLOW_CONSTITUTION.md`
2. `workflow/BASELINE.md`
3. `workflow/core/OPERATING_MODEL.md`
4. `workflow/core/AGENT_CONTEXT_RULES.md`
5. `workflow/core/PROJECT_WORKFLOW.md`
6. `workflow/core/DOCUMENTATION_OWNERSHIP.md`
7. `workflow/policies/DEFINITION_OF_READY_AND_DONE.md`
8. `workflow/policies/SUBAGENT_DELEGATION_POLICY.md`
9. `workflow/core/GIT_OPERATIONS.md`
10. `workflow/core/GIT_COOKBOOK.md`
11. role doc for the current role
12. relevant templates and guides for the current Track, Lane, or Task

## Installation note

These docs are intentionally generic.

When you install them into another repo, adapt:

- path references;
- naming;
- role labels if needed;
- repo-specific execution rules in root `AGENTS.md`.

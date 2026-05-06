# Install Workflow Into A Repo

This guide explains how to install this workflow kit into another repository.

## Goal

After installation, the target repo should have:

- canonical workflow docs;
- role docs;
- templates;
- root `AGENTS.md` wired to the workflow;
- `CURRENT_WORK.md` or an equivalent current work index;
- one explicit canonical workflow baseline.

## 1. Inspect the target repo first

Before copying anything, inspect:

- repo size and shape;
- whether it is app, service, library, or mixed;
- whether one human will coordinate several agent roles or several humans/agents will work in parallel;
- whether the repo already has any workflow docs;
- whether the repo already uses worktrees, PR packages, and role separation.

Do not blindly install the same amount of process everywhere.

## 2. Choose the workflow baseline

This kit installs one canonical workflow baseline.

Use it even in smaller repos.

Reason:

- the workflow loses too much safety when launch discipline and delegated-execution rules are stripped out;
- the public kit is meant to install a real operating model, not a demo version of one.

## 3. Minimum files to install

Install:

- `workflow/BASELINE.md`
- `workflow/core/WORKFLOW_CONSTITUTION.md`
- `workflow/core/AGENT_CONTEXT_RULES.md`
- `workflow/core/OPERATING_MODEL.md`
- `workflow/core/PROJECT_WORKFLOW.md`
- `workflow/core/TRACEABILITY_RULES.md`
- `workflow/core/DOCUMENTATION_OWNERSHIP.md`
- `workflow/core/GIT_OPERATIONS.md`
- `workflow/core/GIT_COOKBOOK.md`
- `workflow/policies/DEFINITION_OF_READY_AND_DONE.md`
- `workflow/policies/SUBAGENT_DELEGATION_POLICY.md`
- `workflow/policies/RUNTIME_DEVICE_VALIDATION_POLICY.md`
- `workflow/policies/DOCUMENT_HYGIENE_POLICY.md`
- `workflow/guides/FRONTEND_QA_WITH_CODEX_BROWSER.md`
- `workflow/guides/COMPUTER_USE_QA_WORKFLOW.md`
- `workflow/guides/STOP_AND_REPLAN_RUNBOOK.md`
- `workflow/roles/CTO_WORKFLOW.md`
- `workflow/roles/PM_WORKFLOW.md`
- `workflow/roles/PM_ONBOARDING.md`
- `workflow/roles/TECH_LEAD_WORKFLOW.md`
- `workflow/roles/TECH_LEAD_ONBOARDING.md`
- `workflow/roles/DEVELOPER_WORKFLOW.md`
- `workflow/roles/DEVELOPER_ONBOARDING.md`
- `workflow/roles/QA_WORKFLOW.md`
- `workflow/roles/SECURITY_AUDITOR_WORKFLOW.md` when the repo has security-sensitive surfaces
- `workflow/prompts/PROMPT_BROWSER_QA_AGENT.md` when the repo has UI work
- `workflow/templates/DEV_TASK_TEMPLATE.md`
- `workflow/templates/TRACK_PLAN_TEMPLATE.md`
- `workflow/templates/LANE_PLAN_TEMPLATE.md`
- `workflow/templates/INVESTIGATION_TASK_TEMPLATE.md`
- `workflow/templates/START_ACK_TEMPLATE.md`
- `workflow/templates/DEVELOPER_CHECKPOINT_TEMPLATE.md`
- `workflow/templates/QA_VALIDATION_REQUEST_TEMPLATE.md`
- `workflow/templates/QA_CHECKPOINT_TEMPLATE.md`
- `workflow/templates/TECH_LEAD_REVIEW_TEMPLATE.md`
- `workflow/templates/ROOT_AGENTS_TEMPLATE.md`
- `workflow/templates/CURRENT_WORK_TEMPLATE.md`
- `workflow/templates/PM_LAUNCH_CHECKLIST.md`
- `workflow/templates/PM_TO_TECH_LEAD_HANDOFF_TEMPLATE.md`
- `workflow/templates/CTO_TO_TL_HANDOFF_TEMPLATE.md`
- `workflow/templates/PM_SUBAGENT_HANDOFF_TEMPLATE.md`
- `workflow/templates/SUBAGENT_HANDOFF_TEMPLATE.md`
- `workflow/templates/TL_SUBAGENT_LAUNCH_CHECKLIST.md`
- `workflow/templates/TL_TO_DEVELOPER_SUBAGENT_PACKET_TEMPLATE.md`
- `workflow/templates/POST_MERGE_VALIDATION_TEMPLATE.md`
- `workflow/templates/SECURITY_AUDIT_MEMO_TEMPLATE.md` when the security auditor role is installed
- root `AGENTS.md`
- root `CURRENT_WORK.md`

## 4. Adapt the wording to the target repo

Do not keep this kit as a foreign object.

Adapt:

- repo paths;
- branch naming if needed;
- language tone if needed;
- role names if the target team uses different naming;
- any references to worktrees if the target setup does not use them.

## 5. Rewrite root AGENTS.md

The target repo root `AGENTS.md` should:

- point to the installed workflow docs;
- require separate agent contexts by role;
- state the GPT-5.5 model baseline;
- define root execution-surface rules;
- define the freshness gate;
- define git hygiene and packaging truth;
- define any repo-specific QA or runtime rules;
- define how Codex in-app browser, Playwright, Chrome DevTools MCP, Computer Use, and real device/runtime validation should be used for this repo.

## 6. Define the repo baseline explicitly

When installation finishes, the target repo should make these things explicit:

- installed workflow baseline;
- default branch expectations;
- canonical Initiative -> Track -> Lane -> Task hierarchy;
- separate agent context rule;
- whether dedicated worktrees are required or only recommended;
- GPT-5.5 default model and reasoning baseline;
- whether PM is always required or only used when product truth is unclear;
- browser QA expectations if UI work exists.
- whether Computer Use QA or real device/runtime validation is needed for signed-in, provider, payment, native, mobile, or installed-app flows.

## 7. Do not over-install

Do not install workflow text mechanically without adapting it to the target repo.

Examples:

- do not keep wording about worktrees if the target repo cannot or will not use them;
- do not keep browser QA expectations in a backend-only service unless they are truly needed;
- do not keep Computer Use or device-validation rules unless the repo has GUI/runtime flows that need them;
- do not rename role labels without preserving the separate agent responsibilities.

## 8. Final installation output

The installation should end with:

- a concise summary of what was installed;
- what was intentionally skipped;
- what still requires manual repo-specific decisions.

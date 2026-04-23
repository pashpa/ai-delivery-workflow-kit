# Install Workflow Into A Repo

This guide explains how to install this workflow kit into another repository.

## Goal

After installation, the target repo should have:

- canonical workflow docs;
- role docs;
- templates;
- root `AGENTS.md` wired to the workflow;
- one chosen operating mode: `Starter` or `Standard`.

## 1. Inspect the target repo first

Before copying anything, inspect:

- repo size and shape;
- whether it is app, service, library, or mixed;
- whether work is mostly solo or parallel;
- whether the repo already has any workflow docs;
- whether the repo already uses worktrees, PR packages, and role separation.

Do not blindly install the same amount of process everywhere.

## 2. Choose installation mode

### Choose `Starter` if:

- one main owner runs delivery;
- the repo is early-stage;
- overhead must stay low.

### Choose `Standard` if:

- multiple features run in parallel;
- delegation to execution agents matters;
- launch rituals and stronger process control are needed.

## 3. Minimum files to install

### Starter

Install:

- `workflow/core/WORKFLOW_CONSTITUTION.md`
- `workflow/core/PROJECT_WORKFLOW.md`
- `workflow/core/TRACEABILITY_RULES.md`
- `workflow/roles/PM_WORKFLOW.md`
- `workflow/roles/TECH_LEAD_WORKFLOW.md`
- `workflow/roles/DEVELOPER_WORKFLOW.md`
- `workflow/roles/DEVELOPER_ONBOARDING.md`
- `workflow/templates/DEV_TASK_TEMPLATE.md`
- `workflow/templates/INVESTIGATION_TASK_TEMPLATE.md`
- `workflow/templates/START_ACK_TEMPLATE.md`
- `workflow/templates/DEVELOPER_CHECKPOINT_TEMPLATE.md`
- `workflow/templates/TECH_LEAD_REVIEW_TEMPLATE.md`
- `workflow/templates/PM_TO_TECH_LEAD_HANDOFF_TEMPLATE.md`
- `workflow/templates/SUBAGENT_HANDOFF_TEMPLATE.md`
- root `AGENTS.md`

### Standard

Install everything from `Starter`, plus:

- `workflow/roles/PM_ONBOARDING.md`
- `workflow/roles/TECH_LEAD_ONBOARDING.md`
- `workflow/templates/PM_LAUNCH_CHECKLIST.md`
- `workflow/templates/PM_SUBAGENT_HANDOFF_TEMPLATE.md`
- `workflow/templates/TL_SUBAGENT_LAUNCH_CHECKLIST.md`
- `workflow/templates/TL_TO_DEVELOPER_SUBAGENT_PACKET_TEMPLATE.md`

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
- define root execution-surface rules;
- define git hygiene and packaging truth;
- define any repo-specific QA or runtime rules.

## 6. Define the repo baseline explicitly

When installation finishes, the target repo should make these things explicit:

- chosen installation mode;
- default branch expectations;
- whether dedicated worktrees are required or only recommended;
- default delivery model and reasoning baseline;
- browser QA expectations if UI work exists.

## 7. Do not over-install

Do not install process that the target repo cannot actually operate.

Examples:

- do not install heavy parallel-work patterns into a tiny solo repo if they will never be used;
- do not install browser QA guidance into a backend-only service unless it is truly needed.

## 8. Final installation output

The installation should end with:

- a concise summary of what was installed;
- what was intentionally skipped;
- what still requires manual repo-specific decisions.

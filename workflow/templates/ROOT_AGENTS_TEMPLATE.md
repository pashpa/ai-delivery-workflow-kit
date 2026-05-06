# AGENTS.md

This repository is operated with `ai-delivery-workflow-kit`.

Canonical workflow truth lives in:

- `workflow/BASELINE.md`
- `workflow/core/WORKFLOW_CONSTITUTION.md`
- `workflow/core/OPERATING_MODEL.md`
- `workflow/core/AGENT_CONTEXT_RULES.md`
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
- `workflow/roles/TECH_LEAD_WORKFLOW.md`
- `workflow/roles/DEVELOPER_WORKFLOW.md`
- `workflow/roles/QA_WORKFLOW.md`
- `workflow/roles/SECURITY_AUDITOR_WORKFLOW.md`
- `CURRENT_WORK.md`

If chat guidance conflicts with these docs, follow the repo docs unless the user explicitly overrides them.

## Agent Context Rule

Use separate agent contexts for separate responsibilities.

Do not collapse CTO / Program Architect, PM, Tech Lead, Developer, and QA work into one long-running agent context.

The human may own the whole product, but agent contexts should stay role-specific to protect context quality.

## Model Baseline

Default execution baseline:

- model: `GPT-5.5`
- reasoning: `medium`

If this needs to change, ask the CTO / workflow owner agent to update the repo-level model baseline. Individual agents must not silently change model choices per task.

## Delegation Baseline

For non-trivial implementation:

1. Tech Lead supervises.
2. Developer executes.
3. Tech Lead launches Developer work with:
   - `workflow/policies/SUBAGENT_DELEGATION_POLICY.md`
   - `workflow/templates/TL_SUBAGENT_LAUNCH_CHECKLIST.md`
   - `workflow/templates/TL_TO_DEVELOPER_SUBAGENT_PACKET_TEMPLATE.md`
4. Developer subagent default is `GPT-5.5` with `medium` reasoning.

Direct TL coding is an exception for micro-fixes, workflow-only edits, doc-only
changes, or documented emergency unblock.

## Work Hierarchy

Canonical work hierarchy:

1. Initiative
2. Track
3. Lane
4. Task

Checkpoint and Review are not hierarchy levels by default. Track them inside the owning Task or Lane doc unless a standalone evidence artifact is required.

## Freshness Gate

Assume remote `main` may be newer than local state.

Before non-trivial work, before resuming, and before handoff or merge:

1. Run `git fetch origin --prune`.
2. Run `git status --short --branch`.
3. Inspect relevant remote changes.
4. If local `main` is behind `origin/main`, update it with `git pull --ff-only`.
5. If a feature branch is behind its base, rebase or merge deliberately.
6. Classify unknown local changes before editing.

Use `workflow/core/GIT_COOKBOOK.md` for command examples.

## Execution Surface

Treat the repository root as a control plane by default.

Use root for:

- reading docs;
- checking repo state;
- checking branches, remotes, worktrees, and PR state;
- creating dedicated branches/worktrees;
- final review and merge operations.

For non-trivial implementation:

1. create a dedicated branch;
2. prefer a dedicated worktree when parallel work is expected;
3. keep one bounded Task per branch/package;
4. do not mix unrelated surfaces unless the Task explicitly requires it.

## Packaging Truth

Do not confuse:

- local change;
- committed branch;
- review-package-ready;
- merged;
- deployed;
- track-closed.

A checkpoint is not a merge. A merged PR is not automatically a closed Track.

## Validation

Use the narrowest check that proves the change.

Broaden validation when work crosses a surface, public contract, security boundary, deployment behavior, or user-visible runtime behavior.

For UI work:

- use `workflow/guides/FRONTEND_QA_WITH_CODEX_BROWSER.md` for browser-level QA;
- use Codex in-app browser / Browser Use for local/public unauthenticated visual QA when available;
- use Playwright or Chrome DevTools MCP for deterministic checks or fallback automation;
- use `workflow/guides/COMPUTER_USE_QA_WORKFLOW.md` for scoped signed-in or real GUI QA;
- use `workflow/policies/RUNTIME_DEVICE_VALIDATION_POLICY.md` when real device, installed app, WebView, provider, payment, or runtime proof is required.

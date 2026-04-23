# ai-delivery-workflow-kit

A reusable workflow kit for AI-assisted software delivery.

This repository is not a dump of one team's private process. It is a clean, public workflow system derived from real delivery practice and rewritten as a reusable kit.

Use it when you want an agent to install a structured workflow into a software repository and then work inside that repository with:

- clear PM -> Tech Lead -> Developer handoffs;
- stage-based delivery;
- explicit documentation truth;
- reviewable checkpoints;
- controlled delegation to subagents;
- branch/worktree/process discipline.

## What this repo is for

Primary use cases:

1. You have a new or existing software repo.
2. You want an agent to install a working AI delivery workflow into that repo.
3. You want to start operating against that workflow immediately instead of improvising the process in chat.

Secondary use case:

- use this repository as a public reference for how to structure AI-assisted product delivery in a repo-first way.

## Installation modes

This kit supports two practical modes.

### Starter

Use when:

- one person or one main owner drives delivery;
- you want low process overhead;
- you still want task docs, checkpoints, reviews, and role separation.

What it gives you:

- core workflow;
- PM / Tech Lead / Developer roles;
- essential templates;
- repo-level `AGENTS.md` rules;
- installation guide.

### Standard

Use when:

- multiple features run in parallel;
- more than one TL-like owner exists;
- you want explicit launch rituals and better delegation control;
- branch/worktree/process hygiene matters.

What it adds:

- PM onboarding;
- TL onboarding;
- PM launch checklist;
- TL launch checklist;
- TL-to-developer packet template;
- stronger subagent operating model.

## Repository structure

- [`workflow/README.md`](workflow/README.md)
- [`workflow/core/WORKFLOW_CONSTITUTION.md`](workflow/core/WORKFLOW_CONSTITUTION.md)
- [`workflow/core/PROJECT_WORKFLOW.md`](workflow/core/PROJECT_WORKFLOW.md)
- [`workflow/core/TRACEABILITY_RULES.md`](workflow/core/TRACEABILITY_RULES.md)
- [`workflow/roles/PM_WORKFLOW.md`](workflow/roles/PM_WORKFLOW.md)
- [`workflow/roles/PM_ONBOARDING.md`](workflow/roles/PM_ONBOARDING.md)
- [`workflow/roles/TECH_LEAD_WORKFLOW.md`](workflow/roles/TECH_LEAD_WORKFLOW.md)
- [`workflow/roles/TECH_LEAD_ONBOARDING.md`](workflow/roles/TECH_LEAD_ONBOARDING.md)
- [`workflow/roles/DEVELOPER_WORKFLOW.md`](workflow/roles/DEVELOPER_WORKFLOW.md)
- [`workflow/roles/DEVELOPER_ONBOARDING.md`](workflow/roles/DEVELOPER_ONBOARDING.md)
- [`workflow/templates/`](workflow/templates)
- [`install/INSTALL_WORKFLOW_INTO_REPO.md`](install/INSTALL_WORKFLOW_INTO_REPO.md)
- [`install/AGENT_ADOPTION_PROMPT.md`](install/AGENT_ADOPTION_PROMPT.md)
- [`adapters/STARTER.md`](adapters/STARTER.md)
- [`adapters/STANDARD.md`](adapters/STANDARD.md)

## Minimal adoption path

If you want to install this into another repo:

1. Read [`install/INSTALL_WORKFLOW_INTO_REPO.md`](install/INSTALL_WORKFLOW_INTO_REPO.md).
2. Choose `Starter` or `Standard`.
3. Copy the selected workflow docs into the target repo.
4. Rewrite the target repo root `AGENTS.md` so that it points to the installed workflow docs.
5. Start using the role docs and templates immediately.

If you want an agent to do the installation for you:

1. Give the agent this repo.
2. Give the agent your target repo.
3. Use [`install/AGENT_ADOPTION_PROMPT.md`](install/AGENT_ADOPTION_PROMPT.md).

## Design principles

This kit optimizes for:

- reproducibility over chat-only improvisation;
- explicit truth over memory;
- clear handoffs over vague role overlap;
- bounded stages over sprawling work;
- strong default models over premature cost optimization.

This kit does not try to be:

- a replacement for engineering judgment;
- a full project-management product;
- a copy of one company's private documentation tree.

## Suggested next steps

- Start with [`adapters/STARTER.md`](adapters/STARTER.md) if you are solo or just getting started.
- Start with [`adapters/STANDARD.md`](adapters/STANDARD.md) if you expect parallel work and delegated execution.

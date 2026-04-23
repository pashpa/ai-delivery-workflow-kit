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

## Workflow baseline

This kit uses one public workflow baseline.

Why only one baseline:

- the workflow is meant to be adopted as a real operating system, not as a weakened sample;
- stripped-down workflow variants remove too much discipline from the parts that actually prevent agent drift;
- in practice, most teams adopting an AI delivery workflow need launch rituals, bounded task docs, and delegated-execution discipline from the beginning.

That baseline assumes:

- explicit PM -> Tech Lead -> Developer handoffs;
- canonical task docs;
- start acknowledgements;
- checkpoints and factual review;
- launch checklists for PM and TL;
- branch/worktree/process discipline.

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
- [`adapters/CANONICAL_BASELINE.md`](adapters/CANONICAL_BASELINE.md)

## Minimal adoption path

If you want to install this into another repo:

1. Read [`install/INSTALL_WORKFLOW_INTO_REPO.md`](install/INSTALL_WORKFLOW_INTO_REPO.md).
2. Use the canonical baseline doc as the installation baseline.
3. Copy and adapt the workflow docs into the target repo.
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

## Suggested next step

- Start with [`adapters/CANONICAL_BASELINE.md`](adapters/CANONICAL_BASELINE.md) and install it as the canonical workflow baseline.

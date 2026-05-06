# ai-delivery-workflow-kit

A reusable workflow kit for AI-assisted software delivery.

This repository is not a dump of one team's private process. It is a clean, public workflow system derived from real delivery practice and rewritten as a reusable kit.

## Start here

Most users should not read every file first.

If you are building a product with Codex App, open [`QUICKSTART.md`](QUICKSTART.md), copy the install prompt, and give your agent:

- this repo URL;
- your product repo;
- the instruction to install the workflow and stop before product implementation.

The agent should install the docs, root `AGENTS.md`, current work index, role rules, templates, and git rules into your repo.

Use it when you want an agent to install a structured workflow into a software repository and then work inside that repository with:

- clear CTO / Program Architect -> PM -> Tech Lead -> Developer handoffs;
- product-first delivery;
- explicit Initiative -> Track -> Lane -> Task work hierarchy;
- strict separation of agent contexts by role;
- explicit documentation truth;
- reviewable checkpoints;
- controlled delegation to subagents;
- explicit Definition of Ready / Done gates;
- modern browser, Computer Use, runtime, and post-merge QA boundaries;
- branch/worktree/process discipline;
- git freshness and merge lifecycle discipline.

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

- explicit CTO / Program Architect, PM, Tech Lead, Developer, QA, and Reviewer responsibilities;
- separate agent contexts for separate responsibilities;
- canonical task docs;
- start acknowledgements;
- checkpoints and factual review;
- launch checklists for PM and TL;
- branch/worktree/process discipline;
- advanced safeguards for subagent delegation, QA, runtime validation, post-merge
  proof, document hygiene, and stop-and-replan decisions.

Default model baseline:

- model: `GPT-5.5`
- reasoning: `medium`

If you want a different model, ask the CTO / workflow owner agent to update the repo-level baseline. Individual agents should not silently change model choices per task.

## Repository structure

- [`QUICKSTART.md`](QUICKSTART.md)
- [`workflow/README.md`](workflow/README.md)
- [`workflow/BASELINE.md`](workflow/BASELINE.md)
- [`workflow/core/WORKFLOW_CONSTITUTION.md`](workflow/core/WORKFLOW_CONSTITUTION.md)
- [`workflow/core/PROJECT_WORKFLOW.md`](workflow/core/PROJECT_WORKFLOW.md)
- [`workflow/core/TRACEABILITY_RULES.md`](workflow/core/TRACEABILITY_RULES.md)
- [`workflow/core/OPERATING_MODEL.md`](workflow/core/OPERATING_MODEL.md)
- [`workflow/core/AGENT_CONTEXT_RULES.md`](workflow/core/AGENT_CONTEXT_RULES.md)
- [`workflow/core/DOCUMENTATION_OWNERSHIP.md`](workflow/core/DOCUMENTATION_OWNERSHIP.md)
- [`workflow/core/GIT_OPERATIONS.md`](workflow/core/GIT_OPERATIONS.md)
- [`workflow/core/GIT_COOKBOOK.md`](workflow/core/GIT_COOKBOOK.md)
- [`workflow/policies/DEFINITION_OF_READY_AND_DONE.md`](workflow/policies/DEFINITION_OF_READY_AND_DONE.md)
- [`workflow/policies/SUBAGENT_DELEGATION_POLICY.md`](workflow/policies/SUBAGENT_DELEGATION_POLICY.md)
- [`workflow/policies/RUNTIME_DEVICE_VALIDATION_POLICY.md`](workflow/policies/RUNTIME_DEVICE_VALIDATION_POLICY.md)
- [`workflow/policies/DOCUMENT_HYGIENE_POLICY.md`](workflow/policies/DOCUMENT_HYGIENE_POLICY.md)
- [`workflow/guides/FRONTEND_QA_WITH_CODEX_BROWSER.md`](workflow/guides/FRONTEND_QA_WITH_CODEX_BROWSER.md)
- [`workflow/guides/COMPUTER_USE_QA_WORKFLOW.md`](workflow/guides/COMPUTER_USE_QA_WORKFLOW.md)
- [`workflow/guides/STOP_AND_REPLAN_RUNBOOK.md`](workflow/guides/STOP_AND_REPLAN_RUNBOOK.md)
- [`workflow/roles/CTO_WORKFLOW.md`](workflow/roles/CTO_WORKFLOW.md)
- [`workflow/roles/PM_WORKFLOW.md`](workflow/roles/PM_WORKFLOW.md)
- [`workflow/roles/PM_ONBOARDING.md`](workflow/roles/PM_ONBOARDING.md)
- [`workflow/roles/TECH_LEAD_WORKFLOW.md`](workflow/roles/TECH_LEAD_WORKFLOW.md)
- [`workflow/roles/TECH_LEAD_ONBOARDING.md`](workflow/roles/TECH_LEAD_ONBOARDING.md)
- [`workflow/roles/DEVELOPER_WORKFLOW.md`](workflow/roles/DEVELOPER_WORKFLOW.md)
- [`workflow/roles/DEVELOPER_ONBOARDING.md`](workflow/roles/DEVELOPER_ONBOARDING.md)
- [`workflow/roles/QA_WORKFLOW.md`](workflow/roles/QA_WORKFLOW.md)
- [`workflow/roles/SECURITY_AUDITOR_WORKFLOW.md`](workflow/roles/SECURITY_AUDITOR_WORKFLOW.md)
- [`workflow/prompts/PROMPT_BROWSER_QA_AGENT.md`](workflow/prompts/PROMPT_BROWSER_QA_AGENT.md)
- [`workflow/templates/`](workflow/templates)
- [`install/INSTALL_WORKFLOW_INTO_REPO.md`](install/INSTALL_WORKFLOW_INTO_REPO.md)
- [`install/AGENT_ADOPTION_PROMPT.md`](install/AGENT_ADOPTION_PROMPT.md)

## Minimal adoption path

If you want to install this into another repo:

1. Read [`QUICKSTART.md`](QUICKSTART.md).
2. Use [`workflow/BASELINE.md`](workflow/BASELINE.md) as the installation baseline.
3. Copy and adapt the workflow docs into the target repo.
4. Rewrite the target repo root `AGENTS.md` so that it points to the installed workflow docs.
5. Add a `CURRENT_WORK.md` index from [`workflow/templates/CURRENT_WORK_TEMPLATE.md`](workflow/templates/CURRENT_WORK_TEMPLATE.md).
6. Start using the role docs and templates immediately.

If you want an agent to do the installation for you:

1. Give the agent this repo.
2. Give the agent your target repo.
3. Use [`install/AGENT_ADOPTION_PROMPT.md`](install/AGENT_ADOPTION_PROMPT.md).

## Design principles

This kit optimizes for:

- reproducibility over chat-only improvisation;
- explicit truth over memory;
- clear handoffs over vague role overlap;
- separated agent contexts over one overloaded thread;
- bounded tasks and lanes over sprawling work;
- strong default models over premature cost optimization.

This kit does not try to be:

- a replacement for engineering judgment;
- a full project-management product;
- a copy of one company's private documentation tree.

## Suggested next step

- Start with [`QUICKSTART.md`](QUICKSTART.md).

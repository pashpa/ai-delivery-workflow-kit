# Quickstart

Use this if you want Codex App or another coding agent to install the workflow into your product repo.

## 1. The short version

Give your agent two things:

- this workflow kit: `https://github.com/pashpa/ai-delivery-workflow-kit`
- your target product repository

Then paste this:

```text
Install the workflow from https://github.com/pashpa/ai-delivery-workflow-kit into this target repository.

I want the installed workflow to become the operating system for product delivery in this repo.

Important:
- preserve the multi-agent role model;
- do not collapse CTO / Program Architect, PM, Tech Lead, Developer, and QA into one long-running agent context;
- use GPT-5.5 as the default execution baseline;
- install the workflow docs, root AGENTS.md, current work index, role docs, templates, and git rules that fit this repo;
- install the Definition of Ready / Done, subagent delegation, QA, runtime validation, post-merge validation, and document hygiene safeguards that fit this repo;
- adapt paths and commands to this repo instead of copying blindly;
- do not start product implementation yet.

After installation, report:
- files added or changed;
- repo-specific workflow decisions;
- how I should start the first Initiative;
- any open decisions I need to answer.
```

## 2. What this kit installs

The kit installs a repo-first AI delivery workflow:

- durable docs instead of chat-only decisions;
- Initiative -> Track -> Lane -> Task hierarchy;
- separate agent roles to protect context quality;
- product-first delivery;
- Tech Lead controlled delegation;
- explicit Ready / Done gates;
- reviewable checkpoints;
- QA evidence;
- modern browser QA, Computer Use QA, runtime/device proof, and post-merge validation boundaries;
- git freshness, branch, merge, and cleanup rules.

## 3. Why separate agents matter

Do not run the whole product through one endless agent thread.

The intended model is separate role contexts:

- CTO / Program Architect for workflow, escalation, and high-level constraints;
- PM for product truth when product work is needed;
- Tech Lead for lane planning, task packets, reviews, and merge readiness;
- Developer agents for bounded implementation tasks;
- QA agents for validation evidence.

Reason:

- context windows are limited;
- unrelated work pollutes reasoning;
- handoffs force important decisions into docs;
- each agent can focus on its role instead of carrying the whole project in memory.

A single human can still own the product. The agent contexts should remain separated.

## 4. Default model

The default execution baseline is GPT-5.5.

If you want a different model later, ask the CTO / workflow owner agent to update the repo-level model baseline in the installed workflow docs.

Do not let individual agents silently downgrade or improvise model choices per task.

## 5. After installation

Start by asking the workflow owner agent:

```text
Using the installed workflow, create the first Initiative and current work index for this product.
If product truth is unclear, route first to PM. If product truth is clear, route to the responsible Tech Lead.
```

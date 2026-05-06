# Quickstart

Use this if you want Codex App or another coding agent to install the workflow into your product repo and onboard you into using it.

## 1. The short version

Give your agent two things:

- this workflow kit: `https://github.com/pashpa/ai-delivery-workflow-kit`
- your target product repository

Then paste this:

```text
Install the workflow from https://github.com/pashpa/ai-delivery-workflow-kit into this target repository and onboard me into using it.

I want the installed workflow to become the operating system for product delivery in this repo.

Important:
- preserve the multi-agent role model;
- do not collapse CTO / Program Architect, PM, Tech Lead, Developer, and QA into one long-running agent context;
- follow `install/INSTALL_MANIFEST.md` for installation;
- follow `install/INSTALLER_ONBOARDING_PROTOCOL.md` for onboarding;
- fetch the kit once by `git clone` or GitHub archive, then copy the full `workflow/` tree;
- do not raw-fetch GitHub files one at a time;
- do not recreate canonical workflow docs manually with patches or editor writes;
- create root `AGENTS.md`, `CURRENT_WORK.md`, `PROJECT_CONTEXT.md`, and `workflow/onboarding/INSTALLER_ONBOARDING_CHECKLIST.md` from templates;
- inspect the repo before asking me broad questions;
- ask me only short batches of missing questions, at most three questions at a time;
- use the strongest practical coding/reasoning model available in this environment with medium/default reasoning, and record the actual baseline in the installed docs;
- install the workflow docs, root AGENTS.md, current work index, role docs, templates, and git rules that fit this repo;
- install the Definition of Ready / Done, subagent delegation, QA, runtime validation, post-merge validation, and document hygiene safeguards that fit this repo;
- adapt paths and commands to this repo instead of copying blindly;
- do not start product implementation yet.

If your terminal/tool execution is unavailable, do not switch to slow WebFetch reconstruction. Ask me to run the single bootstrap command from `install/INSTALL_MANIFEST.md`, then verify the install and continue onboarding.

After installation and onboarding, report:
- files added or changed;
- repo-specific workflow decisions;
- what you inferred from the repo;
- what you still need from me, if anything;
- the recommended first route: PM-first, TL-first, CTO-needed, or direct micro-task;
- the exact copy-paste prompt for the next agent session;
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
- git freshness, branch, merge, and cleanup rules;
- installer-led human onboarding with a local progress checklist.

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

Use the strongest practical coding/reasoning model available in your environment with medium/default reasoning.

Preferred baselines:

- Codex / OpenAI: strongest available GPT coding/reasoning model, medium reasoning.
- Claude: Sonnet for normal delivery; Opus only for difficult architecture, escalation, or deep review.
- Cursor or other tools: strongest practical coding model available, medium/default reasoning.

The installer should record the actual baseline in the installed workflow docs.

Do not let individual agents silently downgrade or improvise model choices per task.

## 5. After onboarding

The installer should end with a starter pack and the exact next-agent prompt.

Usually, the first working agent will be:

- PM, if product truth is unclear;
- TL, if product intent is clear and implementation needs planning;
- CTO / Program Architect, if cross-track architecture or workflow escalation is needed.

If you need to restart manually, ask the workflow owner agent:

```text
Using the installed workflow, create the first Initiative and current work index for this product.
If product truth is unclear, route first to PM. If product truth is clear, route to the responsible Tech Lead.
```

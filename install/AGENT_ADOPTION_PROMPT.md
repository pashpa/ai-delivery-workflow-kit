# Agent Adoption Prompt

Use this prompt when you want an agent to install this workflow into another repository.

```text
Use the repository `ai-delivery-workflow-kit` as the canonical source for workflow installation.

Your task:
install an appropriate version of that workflow into this target repository so that we can start working through it immediately.

What you must do:
1. Inspect the target repository first.
2. Install the canonical workflow baseline from the workflow kit.
3. Install a root `CURRENT_WORK.md` index from the kit template.
4. Copy and adapt only the workflow docs, policies, guides, prompts, roles, and templates that fit this repo.
5. Rewrite the target repo root `AGENTS.md` so it points to the installed workflow docs and reflects repo-specific execution rules.
6. Do not copy public-kit wording blindly if it does not fit the target repo.
7. Do not import unnecessary process overhead.
8. Preserve the core operating model:
   - docs are canonical truth
   - CTO / Program Architect is a workflow and escalation role, not a routine TL replacement
   - separate agent contexts by role are required for serious work
   - do not collapse product, TL, implementation, QA, and review into one long-running agent thread
   - product-first flow when product truth is unclear
   - PM -> TL -> Developer loop when PM work is needed
   - TL-direct route when product truth is already documented or the work is purely technical
   - Initiative -> Track -> Lane -> Task hierarchy
   - task docs and role handoffs
   - Definition of Ready / Done gates
   - subagent delegation rules
   - checkpoints
   - factual review
   - browser QA, Computer Use QA, runtime/device validation, and post-merge validation boundaries when relevant
   - git freshness, branch lifecycle, merge discipline, and packaging truth
   - strongest practical coding/reasoning model available in the environment, medium/default reasoning, recorded explicitly in the installed docs
9. At the end, report:
   - installed operating baseline
   - files added or changed
   - repo-specific adaptations made
   - any open decisions still needed

Important:
- treat the target repo root as control plane unless there is a better explicit repo-specific rule;
- do not start implementation work unrelated to workflow installation;
- keep the installation clean, bounded, and reviewable.
```

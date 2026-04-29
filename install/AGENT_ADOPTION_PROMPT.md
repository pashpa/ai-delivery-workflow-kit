# Agent Adoption Prompt

Use this prompt when you want an agent to install this workflow into another repository.

```text
Use the repository `ai-delivery-workflow-kit` as the canonical source for workflow installation.

Your task:
install an appropriate version of that workflow into this target repository so that we can start working through it immediately.

What you must do:
1. Inspect the target repository first.
2. Install the canonical workflow baseline from the workflow kit.
3. Copy and adapt only the workflow docs that fit this repo.
4. Rewrite the target repo root `AGENTS.md` so it points to the installed workflow docs and reflects repo-specific execution rules.
5. Do not copy public-kit wording blindly if it does not fit the target repo.
6. Do not import unnecessary process overhead.
7. Preserve the core operating model:
   - docs are canonical truth
   - CTO / Program Architect is a workflow and escalation role, not a routine TL replacement
   - product-first flow when product truth is unclear
   - PM -> TL -> Developer loop when PM work is needed
   - TL-direct route when product truth is already documented or the work is purely technical
   - Initiative -> Track -> Lane -> Task hierarchy
   - task docs and role handoffs
   - checkpoints
   - factual review
   - git freshness, branch lifecycle, merge discipline, and packaging truth
8. At the end, report:
   - installed operating baseline
   - files added or changed
   - repo-specific adaptations made
   - any open decisions still needed

Important:
- treat the target repo root as control plane unless there is a better explicit repo-specific rule;
- do not start implementation work unrelated to workflow installation;
- keep the installation clean, bounded, and reviewable.
```

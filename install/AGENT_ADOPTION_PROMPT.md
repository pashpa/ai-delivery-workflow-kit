# Agent Adoption Prompt

Use this prompt when you want an agent to install this workflow into another repository and onboard the human repo owner.

```text
Use the repository `ai-delivery-workflow-kit` as the canonical source for workflow installation.

Your task:
install an appropriate version of that workflow into this target repository, onboard the human repo owner, and prepare the first working route.

What you must do:
1. Inspect the target repository first.
2. Follow `install/INSTALL_MANIFEST.md`.
3. Fetch the workflow kit once by `git clone` or GitHub archive.
4. Copy the full `workflow/` tree byte-for-byte into the target repo.
5. Do not raw-fetch GitHub files one at a time.
6. Do not recreate canonical workflow docs manually with patches or editor writes.
7. Create or update target root `AGENTS.md` from `workflow/templates/ROOT_AGENTS_TEMPLATE.md`.
8. Create or update root `CURRENT_WORK.md` from `workflow/templates/CURRENT_WORK_TEMPLATE.md`.
9. Create or update root `PROJECT_CONTEXT.md` from `workflow/templates/PROJECT_CONTEXT_TEMPLATE.md`.
10. Create `workflow/onboarding/INSTALLER_ONBOARDING_CHECKLIST.md` from `workflow/templates/INSTALLER_ONBOARDING_CHECKLIST_TEMPLATE.md` and update it after each onboarding phase.
11. Follow `install/INSTALLER_ONBOARDING_PROTOCOL.md`.
12. Explain the workflow to the human in beginner-friendly language.
13. Ask the human only for missing facts after inspecting the repo.
14. Ask exactly one onboarding question at a time unless the human explicitly asks for batch mode.
15. After asking a question, stop and wait for the human answer.
16. Before every onboarding message, show the current stage using: `Stage`, `Done`, `Now`, `Next`.
17. Record each human answer in `PROJECT_CONTEXT.md` or the onboarding checklist before asking the next question.
18. Choose the first route: `PM-first`, `TL-first`, `CTO-needed`, or `direct-micro-task`.
19. Provide the exact copy-paste prompt for the next role agent.
20. Do not copy public-kit wording blindly if it does not fit the target repo.
21. Do not import unnecessary process overhead.
22. Preserve the core operating model:
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
23. At the end, report:
   - installed operating baseline
   - files added or changed
   - repo-specific adaptations made
   - workflow mental model explained to the human
   - inferred project facts
   - human-confirmed project facts
   - remaining open questions
   - selected first route and reason
   - next role agent to open
   - exact copy-paste prompt for that next agent
   - any open decisions still needed

Important:
- treat the target repo root as control plane unless there is a better explicit repo-specific rule;
- do not start product implementation;
- if the human asks you to start coding before onboarding is complete, record the request as future work and return to onboarding;
- if your terminal/tool execution is unavailable, use the no-shell fallback from `install/INSTALL_MANIFEST.md`: ask the human to run the single bootstrap command, then verify and continue onboarding;
- if clone/archive/copy is unavailable even for the human, stop and ask for a local kit path instead of reconstructing docs by hand;
- do not ask bundled onboarding questions by default;
- do not continue background work after asking a human question;
- keep the installation clean, bounded, and reviewable.
```

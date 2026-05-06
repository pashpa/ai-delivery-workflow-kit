# Installer Onboarding Protocol

Status: Active

Use this protocol when an agent installs this workflow into a target repository and the human repo owner also needs onboarding.

The installer is a temporary bootstrap workflow owner. It installs the workflow, teaches the human the minimum operating model, writes durable project context, prepares the first route, and then stops before product implementation.

## 1. Role boundary

The installer agent may:

- inspect the target repository;
- install and adapt workflow docs;
- create onboarding state files;
- explain the workflow to the human;
- infer project facts from the repo;
- ask short follow-up questions for missing facts;
- write durable project context;
- choose the first workflow route;
- provide copy-paste prompts for the next role agents.

The installer agent must not:

- start product implementation;
- become the long-running PM, TL, Developer, and QA context;
- launch Developer work before a canonical Task packet exists;
- ask broad discovery questions before inspecting the repo;
- keep onboarding truth only in chat;
- invent product truth that the repo or human has not confirmed.

## 2. Installation method

Before onboarding, follow:

- `install/INSTALL_MANIFEST.md`

Rules:

1. Fetch the kit once by clone or archive.
2. Copy the full `workflow/` tree byte-for-byte.
3. Create target root/context files from templates.
4. Do not raw-fetch and rewrite workflow docs one file at a time.
5. Do not summarize or translate canonical workflow docs during installation.

If the fast copy path is blocked, stop and ask the human for help. Do not hand-recreate the workflow.

## 3. Local progress tracking

During onboarding, create a local checklist in the target repo from:

- `workflow/templates/INSTALLER_ONBOARDING_CHECKLIST_TEMPLATE.md`

Recommended installed path:

- `workflow/onboarding/INSTALLER_ONBOARDING_CHECKLIST.md`

Create it as early as the target repo shape is known, and no later than Phase 2. If the checklist is created after Phase 1, immediately backfill Phase 0 and Phase 1 status before continuing.

Update the checklist after each phase.

Use statuses:

- `not-started`
- `in-progress`
- `blocked`
- `done`

The checklist is not a product plan. It is temporary onboarding state that proves what the installer has already completed and what remains.

## 4. Short iteration rule

The human should feel progress in small steps.

Rules:

1. Ask at most three questions in one message.
2. Prefer one to three short answer prompts over one large interview.
3. Do not ask questions whose answers can be inferred from files, package metadata, scripts, docs, git state, or existing tickets/design links in the repo.
4. Ask follow-up questions only for facts that affect the first route or installed workflow baseline.
5. After each answer batch, update the local onboarding checklist or project context before asking for more.

Maximum default onboarding question budget:

- 8 human questions total.

Exceed this only when the human explicitly asks for deeper onboarding or the repo cannot be operated safely without more facts.

## 5. Focus and derailment handling

If the human asks the installer to start coding, build a feature, debug a bug, redesign the product, or do unrelated work:

1. acknowledge the request briefly;
2. record it as a possible future Initiative, Track, Lane, or Task if useful;
3. explain that implementation starts after onboarding and route selection;
4. return to the current onboarding phase.

Do not argue at length. Do not switch roles silently.

Allowed exception:

- a tiny documentation edit that is required to complete workflow installation or onboarding.

## 6. Phase gates

The installer must follow these phases in order.

### Phase 0: Start contract

Confirm the operating contract:

- install workflow;
- onboard the human;
- inspect repo before asking broad questions;
- use fast clone/archive + copy installation;
- write durable context into the repo;
- prepare next-agent prompts;
- stop before product implementation.

Completion criteria:

- contract stated in chat;
- local repo path and target repo confirmed or inferred.

### Phase 1: Repo inspection

Inspect:

- repo type and shape;
- language and framework;
- package manager;
- scripts and commands;
- existing docs;
- existing workflow or agent instructions;
- git branch/status;
- test, build, lint, and run signals;
- deployment or packaging signals;
- product truth already present in the repo.

Completion criteria:

- inferred facts are listed;
- unknown facts are separated from inferred facts;
- no broad human interview happened before this phase.

### Phase 2: Workflow installation

Install through `install/INSTALL_MANIFEST.md`.

Completion criteria:

- full `workflow/` tree copied;
- root `AGENTS.md` created or updated from `workflow/templates/ROOT_AGENTS_TEMPLATE.md`;
- `CURRENT_WORK.md` created or updated from `workflow/templates/CURRENT_WORK_TEMPLATE.md`;
- `PROJECT_CONTEXT.md` created or updated from `workflow/templates/PROJECT_CONTEXT_TEMPLATE.md`;
- onboarding checklist exists;
- required files from the manifest pass the integrity check;
- repo-specific adaptations are recorded.

### Phase 3: Beginner explanation

Explain in beginner-friendly language:

- why the workflow exists;
- why one endless AI chat breaks down;
- why roles are separate agent contexts, not fake job titles;
- what PM, TL, Developer, QA, and CTO / Program Architect do;
- what Initiative, Track, Lane, Task, Start Ack, and Checkpoint mean;
- why important truth must live in docs and reviewable artifacts.

Completion criteria:

- explanation is short enough to read in one pass;
- no implementation work starts;
- human can see what role agent to open next.

### Phase 4: Missing facts loop

Ask only for missing facts that affect onboarding or route selection.

Recommended question order:

1. Is this a new project, existing product, feature, bug, or technical cleanup?
2. What is the nearest product or engineering goal?
3. Who is the user or consumer of this repo?
4. What must not be broken or changed?
5. Where does product truth currently live?
6. Which AI coding environment will be used?

Completion criteria:

- answers are captured;
- unanswered items are marked open;
- checklist is updated after each question batch.

### Phase 5: Durable context write

Write or update:

- `PROJECT_CONTEXT.md`
- `CURRENT_WORK.md`
- `workflow/onboarding/INSTALLER_ONBOARDING_CHECKLIST.md`

Completion criteria:

- inferred repo facts are recorded;
- human-confirmed facts are recorded separately;
- open questions are recorded;
- `CURRENT_WORK.md` reflects the initial state.

### Phase 6: First route selection

Choose exactly one first route:

- `PM-first`: product truth, scope, users, acceptance criteria, copy, pricing, or policy are unclear.
- `TL-first`: product intent is clear and implementation needs planning.
- `CTO-needed`: cross-track architecture, workflow ownership, or major escalation is needed.
- `direct-micro-task`: the requested work is tiny, documented, low-risk, and does not need role separation.

Completion criteria:

- one route selected;
- reason stated;
- next role agent identified;
- no Developer prompt is provided as active work unless a Task packet exists.

### Phase 7: Starter pack and stop

End with:

- files added or changed;
- repo-specific adaptations;
- beginner workflow summary;
- project context summary;
- selected first route;
- exact next-agent copy-paste prompt;
- optional later prompts for PM, TL, Developer, or QA;
- open decisions;
- clear statement that product implementation has not started.

Completion criteria:

- final response follows the starter pack format;
- local checklist status is complete or has explicit blockers;
- installer stops instead of drifting into delivery.

## 7. Model baseline policy

Record the actual model baseline in installed repo docs.

Preferred defaults:

- OpenAI / Codex: strongest available GPT coding/reasoning model, medium reasoning.
- Claude: Sonnet for normal delivery; Opus only for difficult architecture, escalation, or deep review.
- Cursor or other tools: strongest practical coding model available, medium/default reasoning.

Rules:

1. Do not silently downgrade per task.
2. If the tool cannot use the preferred model, record the available baseline explicitly.
3. Expensive or extra-deep models should be deliberate escalation choices, not the default for every bounded task.

## 8. Starter pack output template

Use this final shape:

```text
## Installation
- Files added or changed:
- Repo-specific adaptations:
- Intentionally skipped:

## Onboarding Summary
- Mental model:
- Role split:
- Core glossary:

## Project Context
- Inferred from repo:
- Confirmed by human:
- Still unknown:

## Recommended First Route
Route:
Reason:

## Start Next Agent
Open a new agent session for:
Prompt:

## Later Agent Prompts
PM:
TL:
Developer:
QA:

## Human Operating Notes
1.
2.
3.
```

Keep each section concise. Link to installed docs instead of restating the whole workflow.

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

If the fast copy path is blocked because the agent terminal is unavailable, use the no-shell fallback from `install/INSTALL_MANIFEST.md`:

- provide the single bootstrap command;
- ask the human to run it from the target repo directory;
- wait for "bootstrap complete";
- verify the installed files;
- continue onboarding.

Do not hand-recreate the workflow.

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

## 4. Conversation control

The installer owns the onboarding pace.

Every user-facing onboarding message must show where the process is:

```text
Stage: {phase number}/7 - {phase name}
Done: {one short fact}
Now: {current action}
Next: {next expected step}
```

Keep this status block short. It is a map, not a report.

Rules:

1. Ask exactly one onboarding question at a time by default.
2. After asking a human question, stop and wait for the answer.
3. Do not continue tool work after asking a question.
4. Do not ask another question until the previous answer has been recorded in `PROJECT_CONTEXT.md` or the onboarding checklist.
5. Do not bundle multiple questions unless the human explicitly asks for faster batch mode.
6. Do not give a broad lecture when a short orientation is enough for the current stage.
7. If the human asks "where are we?", answer with the current stage, what is done, what is blocked, and the next single action.

Allowed exception:

- During Phase 0, the installer may state the contract and then proceed without a question if the target repo is already clear.

## 5. Short iteration rule

The human should feel progress in small steps.

Rules:

1. Ask one question in one message.
2. Prefer short answer prompts over open-ended interviews.
3. Do not ask questions whose answers can be inferred from files, package metadata, scripts, docs, git state, or existing tickets/design links in the repo.
4. Ask follow-up questions only for facts that affect the first route or installed workflow baseline.
5. After each answer, update the local onboarding checklist or project context before asking for more.

Maximum default onboarding question budget:

- 8 human questions total.

Exceed this only when the human explicitly asks for deeper onboarding or the repo cannot be operated safely without more facts.

## 6. Focus and derailment handling

If the human asks the installer to start coding, build a feature, debug a bug, redesign the product, or do unrelated work:

1. acknowledge the request briefly;
2. record it as a possible future Initiative, Track, Lane, or Task if useful;
3. explain that implementation starts after onboarding and route selection;
4. return to the current onboarding phase.

Do not argue at length. Do not switch roles silently.

Allowed exception:

- a tiny documentation edit that is required to complete workflow installation or onboarding.

## 7. Phase gates

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

User-facing output:

- show `Stage: 0/7 - Start contract`;
- state that the installer will install, onboard, write context, choose the first route, and stop before implementation;
- do not ask product questions yet.

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

User-facing output:

- show `Stage: 1/7 - Repo inspection`;
- summarize only the most important inferred facts;
- do not ask questions until inspection is complete.

### Phase 2: Workflow installation

Install through `install/INSTALL_MANIFEST.md`.

Completion criteria:

- full `workflow/` tree copied;
- no-shell fallback used only if agent terminal execution was unavailable;
- root `AGENTS.md` created or updated from `workflow/templates/ROOT_AGENTS_TEMPLATE.md`;
- `CURRENT_WORK.md` created or updated from `workflow/templates/CURRENT_WORK_TEMPLATE.md`;
- `PROJECT_CONTEXT.md` created or updated from `workflow/templates/PROJECT_CONTEXT_TEMPLATE.md`;
- onboarding checklist exists;
- required files from the manifest pass the integrity check;
- repo-specific adaptations are recorded.

User-facing output:

- show `Stage: 2/7 - Workflow installation`;
- say whether the fast path, no-shell fallback, or existing local kit path was used;
- list only the main installed artifacts, not every copied file.

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

User-facing output:

- show `Stage: 3/7 - Beginner explanation`;
- keep explanation to 5 bullets or fewer;
- do not ask multiple questions at the end.

### Phase 4: Missing facts loop

Ask only for missing facts that affect onboarding or route selection.

Recommended question order:

1. Is this a new project, existing product, feature, bug, or technical cleanup?
2. What is the nearest product or engineering goal?
3. Who is the user or consumer of this repo?
4. What must not be broken or changed?
5. Where does product truth currently live?
6. Which AI coding environment will be used?

Ask these one at a time. After each answer, record it before asking the next question.

Completion criteria:

- answers are captured;
- unanswered items are marked open;
- checklist is updated after each answer.

User-facing output:

- show `Stage: 4/7 - Missing facts`;
- ask exactly one question;
- explain in one short sentence why that answer is needed;
- stop and wait.

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

User-facing output:

- show `Stage: 5/7 - Durable context`;
- summarize what was written;
- ask no question unless a required fact is still missing.

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

User-facing output:

- show `Stage: 6/7 - First route`;
- choose one route;
- give one short reason;
- do not start the next role agent in the same context.

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

User-facing output:

- show `Stage: 7/7 - Starter pack`;
- give the next single action for the human;
- provide the exact prompt for the next agent;
- state that product implementation has not started.

## 8. Model baseline policy

Record the actual model baseline in installed repo docs.

Preferred defaults:

- OpenAI / Codex: strongest available GPT coding/reasoning model, medium reasoning.
- Claude: Sonnet for normal delivery; Opus only for difficult architecture, escalation, or deep review.
- Cursor or other tools: strongest practical coding model available, medium/default reasoning.

Rules:

1. Do not silently downgrade per task.
2. If the tool cannot use the preferred model, record the available baseline explicitly.
3. Expensive or extra-deep models should be deliberate escalation choices, not the default for every bounded task.

## 9. Starter pack output template

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

# Project Workflow

Status: Active

This document describes the canonical CTO / Program Architect -> PM -> Tech Lead -> Developer -> Review loop.

The goal is to make delivery reproducible, reviewable, and usable by humans and agents under limited context.

## 1. Basic principle

Nothing important should live only in chat.

Decisions, scope, Tracks, Lanes, and Tasks must be reflected in:

- documentation;
- code;
- reviewable packages;
- checks and runtime evidence.

## 2. Main delivery flow for substantial product work

1. CTO / Program Architect frames the Initiative only when workflow or cross-track structure is needed.
2. PM prepares or updates product docs unless the product intent is already documented or the change is purely technical.
3. Architecture Track defines the system path when architecture is not already clear.
4. Delivery Planning Track splits the work into TL-owned Tracks or Lanes.
5. Foundation Track creates shared rails before parallel delivery when multiple TLs will build on common contracts.
6. Tech Lead creates Lane docs and canonical Task documents.
7. Tech Lead chooses execution mode.
8. Developer starts through an explicit `Start Ack`.
9. Developer executes the Task within scope.
10. Developer returns a checkpoint.
11. Tech Lead reviews factually.
12. The Task or Lane gets one of the allowed outcomes.
13. Documentation is updated.
14. The team moves to the next Task, Lane, or Track.

Product work does not always require PM.

Route changes as follows:

- use PM when product discovery, scope, acceptance, user journey, copy, pricing, or policy is unclear;
- use TL direct when product intent is already documented and the change is a bounded implementation or technical refinement;
- use CTO / Program Architect only for workflow, cross-track architecture, or escalation decisions.

## 3. Debug and investigation flow

Bug work has two valid modes:

- ordinary fix Task;
- investigation Task.

Canonical bug flow:

1. Tech Lead records the symptom and exact repro.
2. Tech Lead decides whether an ordinary fix Task is sufficient.
3. If not, an investigation task is opened.
4. Developer returns an investigation checkpoint:
   - reproduced or not reproduced
   - root cause proven or not proven
   - fix path identified or not identified
5. Tech Lead either:
   - opens a follow-up fix Task
   - or stops and replans

## 4. Role handoffs

### CTO / Program Architect -> PM or Tech Lead

CTO / Program Architect provides only high-level structure when needed:

- Initiative framing;
- expected Track outcome;
- workflow route;
- high-level constraints;
- escalation triggers.

CTO / Program Architect does not replace PM or TL ownership.

### PM -> Tech Lead

PM provides:

- product docs;
- expected outcome;
- scope;
- non-goals;
- dependencies;
- product-level definition of done.

### Tech Lead -> Developer

Tech Lead provides:

- canonical task document;
- links to related docs;
- current Track, Lane, and Task;
- acceptance criteria;
- stop factors;
- validation target.

For non-trivial implementation work, the default model is delegated execution:

- Tech Lead remains supervisor;
- Developer executes.

### Developer -> Tech Lead

Developer returns:

- branch, PR, or commit;
- what was done;
- what was not touched;
- acceptance status;
- checks run;
- CI status when applicable;
- runtime evidence when applicable;
- next-step recommendation.

Freeform summary alone is not enough for an active Task.

## 5. Packaging truth

Do not confuse:

- `local-accepted`
- `review-package-ready`
- `merged`
- `track-closed`

Rules:

1. a local checkpoint without a reviewable package is not `merged`;
2. a merged PR is not automatically `track-closed`;
3. closure requires an explicit closure decision;
4. if packaging strategy is unclear, define it before work spreads.

## 6. Execution mode

There are two practical execution modes.

### Direct execution

Use only when:

- the task is trivial;
- the task is a true micro-fix;
- the task is workflow-only or doc-only.

### Delegated execution

Default for non-trivial implementation work.

The delegated path requires:

- canonical task doc;
- explicit handoff packet;
- explicit `Start Ack`;
- checkpoint;
- factual review.

## 7. Model and reasoning baseline

For normal delivery work, the default execution baseline is:

- model: `GPT-5.5`
- reasoning: `medium`

If a team changes this baseline, it should do so explicitly at repo level rather than silently per task.

## 8. Launch rituals

Critical workflow rules should not live only in memory.

Use short operating checklists:

- PM launch checklist before non-trivial PM work;
- TL launch checklist before delegated execution.

These checklists exist to reduce drift after long threads, context compression, or team handoffs.

## 9. Documentation and git

Every role must leave durable outputs as defined in `workflow/core/DOCUMENTATION_OWNERSHIP.md`.

Every non-trivial branch or package must follow `workflow/core/GIT_OPERATIONS.md` or the target repo's adapted equivalent.

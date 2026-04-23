# Project Workflow

Status: Active

This document describes the canonical PM -> Tech Lead -> Developer -> Review loop.

The goal is to make delivery reproducible, reviewable, and usable by humans and agents under limited context.

## 1. Basic principle

Nothing important should live only in chat.

Decisions, scope, and stages must be reflected in:

- documentation;
- code;
- reviewable packages;
- checks and runtime evidence.

## 2. Main delivery flow

1. PM prepares or updates product docs.
2. Tech Lead reviews current repo and current documentation state.
3. Tech Lead defines the canonical technical path.
4. Tech Lead defines the current stage.
5. Tech Lead creates a canonical task document.
6. Tech Lead chooses the execution mode.
7. Developer starts through an explicit `Start Ack`.
8. Developer executes the stage within scope.
9. Developer returns a checkpoint.
10. Tech Lead reviews factually.
11. The stage gets one of the allowed outcomes.
12. Documentation is updated.
13. The team moves to the next stage.

## 3. Debug and investigation flow

Bug work has two valid modes:

- ordinary fix stage;
- investigation stage.

Canonical bug flow:

1. Tech Lead records the symptom and exact repro.
2. Tech Lead decides whether an ordinary fix stage is sufficient.
3. If not, an investigation task is opened.
4. Developer returns an investigation checkpoint:
   - reproduced or not reproduced
   - root cause proven or not proven
   - fix path identified or not identified
5. Tech Lead either:
   - opens a follow-up fix stage
   - or stops and replans

## 4. Role handoffs

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
- current stage;
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

Freeform summary alone is not enough for an active stage.

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

- model: `GPT-5.4`
- reasoning: `medium`

If a team changes this baseline, it should do so explicitly at repo level rather than silently per task.

## 8. Launch rituals

Critical workflow rules should not live only in memory.

Use short operating checklists:

- PM launch checklist before non-trivial PM work;
- TL launch checklist before delegated execution.

These checklists exist to reduce drift after long threads, context compression, or team handoffs.

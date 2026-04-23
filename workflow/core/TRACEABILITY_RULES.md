# Traceability Rules

Status: Active

This document defines how work should stay traceable across docs, execution, and review.

## 1. Every stage must point backward

Every active stage should link to:

- its product context;
- its technical context;
- its current task document.

## 2. Every stage must point forward

Every active stage should make the next reviewable artifact obvious:

- checkpoint;
- PR;
- review memo;
- blocker verdict;
- next stage.

## 3. Task docs are canonical execution anchors

Execution should not depend on chat reconstruction.

The canonical execution anchor is the task document, not a long thread.

## 4. Handoffs must preserve critical clauses

When a task is handed off, do not drop:

- acceptance criteria;
- scope and non-goals;
- stop factors;
- validation target;
- evidence requirements;
- freshness or sync gates if they exist.

## 5. Checkpoints must be reviewable

A checkpoint must make factual review possible.

That means it should include:

- what changed;
- current branch or package;
- checks run;
- acceptance status;
- open blockers or risks.

## 6. Old truth must not compete with current truth

If a plan, note, or path is obsolete, mark it.

Do not leave old material looking active when a new path exists.

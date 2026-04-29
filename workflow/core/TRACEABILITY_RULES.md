# Traceability Rules

Status: Active

This document defines how work should stay traceable across docs, execution, and review.

## 1. Every Task must point backward

Every active Task should link to:

- its product context;
- its technical context;
- its current Lane or Track document when applicable.

## 2. Every Task must point forward

Every active Task should make the next reviewable artifact obvious:

- checkpoint;
- PR;
- review memo;
- blocker verdict;
- next Task, Lane, or Track.

## 3. Task docs are canonical execution anchors

Execution should not depend on chat reconstruction.

The canonical execution anchor is the task document, not a long thread.

## 4. Track and Lane docs prevent context overload

Track and Lane docs should summarize only the context needed by their executors.

Do not force every agent to read every project document if a bounded handoff can preserve the critical clauses.

## 5. Handoffs must preserve critical clauses

When a task is handed off, do not drop:

- acceptance criteria;
- scope and non-goals;
- stop factors;
- validation target;
- evidence requirements;
- freshness or sync gates if they exist.

## 6. Checkpoints must be reviewable

A checkpoint must make factual review possible.

That means it should include:

- what changed;
- current branch or package;
- checks run;
- acceptance status;
- open blockers or risks.

## 7. Reviews must be linked

A review must link to:

- the checkpoint or package reviewed;
- the acceptance criteria used;
- checks or evidence considered;
- the formal outcome.

## 8. Old truth must not compete with current truth

If a plan, note, or path is obsolete, mark it.

Do not leave old material looking active when a new path exists.

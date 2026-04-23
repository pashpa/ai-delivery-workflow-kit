# Tech Lead Workflow

Status: Active

This document defines the target Tech Lead workflow.

## 1. Tech Lead role

Tech Lead is responsible for delivery control, not just ideas.

Tech Lead is expected to:

1. understand current repo and doc state;
2. define the canonical technical path;
3. define the current stage;
4. create or update task documents;
5. choose execution mode;
6. onboard delegated execution when needed;
7. review factually;
8. decide the next step.

By default, Tech Lead is not the primary code executor for non-trivial implementation stages.

## 2. Canonical TL cycle

1. Review incoming PM package and current repo state.
2. Define or update the technical path.
3. Define the current stage.
4. Create the canonical task doc.
5. Choose execution mode.
6. Launch execution.
7. Receive checkpoint.
8. Review factually.
9. Choose one formal outcome.
10. Update docs and move forward.

## 3. Execution mode

### Normal mode

For non-trivial implementation work:

- Tech Lead supervises;
- Developer executes.

### Exception path

Tech Lead may code directly only when one of these is true:

- true micro-fix;
- emergency unblock;
- doc-only or workflow-only change.

Direct TL coding should be treated as an exception, not the standard model.

## 4. Before implementation starts

Before a non-trivial stage starts, Tech Lead should define:

- branch;
- execution surface;
- owner;
- packaging mode;
- current stage artifact.

If the stage is bug or regression work, Tech Lead must decide whether it is:

- a normal fix stage;
- an investigation stage.

## 5. Delegated launch discipline

Before delegated execution, Tech Lead must:

- use the TL launch checklist;
- point to the canonical task doc;
- pass a lossless handoff packet;
- require `Start Ack`.

The launch is invalid if critical clauses are missing.

## 6. What TL must preserve in handoff

Do not drop:

- acceptance criteria;
- scope and non-goals;
- write scope;
- stop factors;
- validation target;
- evidence requirements;
- freshness or sync gates when relevant.

## 7. Review discipline

Tech Lead review must be factual.

Review should consider:

- diff or commit;
- acceptance criteria;
- checks and CI;
- screenshots or runtime evidence when applicable;
- open blockers or residual risk.

## 8. Do not confuse these states

- `local-accepted`
- `review-package-ready`
- `merged`
- `track-closed`

Merged does not automatically mean closed.

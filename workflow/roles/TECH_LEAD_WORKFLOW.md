# Tech Lead Workflow

Status: Active

This document defines the target Tech Lead workflow.

## 1. Tech Lead role

Tech Lead is responsible for delivery control, not just ideas.

Tech Lead is expected to:

1. understand current repo and doc state;
2. define the canonical technical path;
3. define the current Track, Lane, and Task;
4. create or update Lane and Task documents;
5. choose execution mode;
6. onboard delegated execution when needed;
7. review factually;
8. decide the next step for the owned Lane or Task.

By default, Tech Lead is not the primary code executor for non-trivial implementation Tasks.

Tech Lead owns delivery autonomy inside the assigned Lane. CTO / Program Architect should not be required for routine task acceptance, QA routing, or merge readiness.

## 2. Canonical TL cycle

1. Review incoming PM package and current repo state.
2. Define or update the technical path.
3. Define the current Track, Lane, and Task.
4. Create the canonical Lane or Task doc.
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

Before a non-trivial Task starts, Tech Lead should define:

- branch;
- execution surface;
- owner;
- packaging mode;
- current Track, Lane, and Task artifact.

Tech Lead should check `workflow/policies/DEFINITION_OF_READY_AND_DONE.md`
before launching non-trivial execution.

If the Task is bug or regression work, Tech Lead must decide whether it is:

- a normal fix Task;
- an investigation Task.

## 5. Delegated launch discipline

Before delegated execution, Tech Lead must:

- use the TL launch checklist;
- use `workflow/policies/SUBAGENT_DELEGATION_POLICY.md`;
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

For UI or runtime-sensitive work, review evidence against:

- `workflow/guides/FRONTEND_QA_WITH_CODEX_BROWSER.md`
- `workflow/guides/COMPUTER_USE_QA_WORKFLOW.md`
- `workflow/policies/RUNTIME_DEVICE_VALIDATION_POLICY.md`

For merged or deployed proof, use
`workflow/templates/POST_MERGE_VALIDATION_TEMPLATE.md`.

## 8. Do not confuse these states

- `local-accepted`
- `review-package-ready`
- `merged`
- `track-closed`

Merged does not automatically mean closed.

## 9. TL-owned documentation

Tech Lead should leave behind:

- Lane plan when the work is larger than one Task;
- canonical Task documents for delegated execution;
- handoff packets for Developer or QA agents;
- checkpoint review verdicts;
- branch/package readiness notes;
- updated technical docs when implementation changes the technical truth.

## 10. Git responsibility

For the assigned Lane or Task, Tech Lead owns:

- base freshness before launch;
- branch or worktree choice;
- packaging strategy;
- review-package readiness;
- merge readiness;
- post-merge status updates.

Use `workflow/core/GIT_OPERATIONS.md` unless the target repo provides a stricter adapted rule.

Security-sensitive work may require a Security Auditor pass using
`workflow/roles/SECURITY_AUDITOR_WORKFLOW.md`.

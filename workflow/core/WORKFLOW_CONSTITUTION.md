# Workflow Constitution

Status: Active

This document defines the non-negotiable rules of the workflow.

If a more specific workflow doc or a chat instruction conflicts with this document, this constitution wins unless the user explicitly overrides it.

## 1. Documentation-first

No substantial work should begin from chat alone.

Before delivery starts, there must be:

- product context;
- current stage;
- explicit owner;
- acceptance criteria;
- for non-trivial delegated execution, a canonical task document.

## 2. Chat is not source of truth

Chat is for:

- synchronization;
- short handoffs;
- statuses;
- next-step coordination.

Canonical truth lives in:

- documentation;
- code;
- reviewable diffs;
- CI;
- runtime evidence.

Delegation between agents is allowed, but delegation does not become a source of truth by itself.

## 3. Stage-based delivery

Work must move through explicit stages.

You may not move to the next stage until the current one is:

- defined;
- executed;
- checked;
- given a formal outcome.

This also applies to bug and regression work.

If a normal fix loop does not work, the team must open an explicit investigation stage instead of continuing blind patching.

## 4. One active canonical path

Every active track needs one canonical execution path.

That means:

- one current doc set;
- one current stage;
- one current sequence of work;
- explicit marking for historical or superseded material.

Parallel bounded slices are allowed only when they still belong to one canonical path and their execution truth is kept explicit.

## 5. Explicit ownership

Every artifact must have an owner.

- PM owns product truth.
- Tech Lead owns the technical path and delivery governance.
- Developer owns stage execution and checkpoint evidence.
- Reviewer owns the factual review verdict.

## 6. Review is factual

Acceptance cannot happen by impression alone.

Review must be grounded in:

- diff, PR, or commit;
- acceptance criteria;
- checks and CI when applicable;
- screenshots or runtime proof when the work is UI or runtime-sensitive.

## 7. Truth targets must be distinguished

Do not confuse:

- branch truth;
- review-package truth;
- merged truth;
- deployed truth;
- runtime or device truth.

If a task refers to deploy or production, the workflow must validate that exact target instead of silently substituting feature-branch or preview evidence.

## 8. Allowed review outcomes

After review, only these outcomes are allowed:

- `Accept`
- `Accept with follow-up`
- `Reject and retry`
- `Stop and replan`

## 9. No silent scope expansion

Do not silently expand scope.

If work requires changes to:

- data model;
- auth model;
- public contracts;
- security boundaries;
- deployment or runtime behavior;

the execution owner must stop and return the task for explicit review.

## 10. No blind fix loops

If one or two ordinary fix attempts do not close a bug, or if the suspected cause is weak, stop blind patching.

Open an investigation stage and require:

- exact repro;
- expected vs actual behavior;
- root-cause hypothesis;
- proof or falsification;
- explicit verdict on whether a real fix path exists.

## 11. Historical material must be marked

Old plans and old paths must not remain as if they are current.

Mark them explicitly as:

- `historical`
- `superseded`
- `reference only`

## 12. Limited context is assumed

The process must survive context compression and new participants.

That means the workflow must use:

- explicit current stage;
- explicit related docs;
- standard handoff artifacts;
- documented statuses.

## 13. Delegation does not replace governance

Tech Leads may delegate execution.

But delegation does not replace:

- canonical docs;
- task documents;
- start acknowledgement;
- checkpoints;
- review;
- acceptance.

For non-trivial implementation work, the normal operating split is:

- Tech Lead owns path, orchestration, and review;
- Developer owns code-writing execution.

## 14. Execution processes require ownership

Local execution processes are part of the execution surface.

That means:

- do not stack identical test runs without understanding the previous one;
- do not keep long-lived watchers, browser sessions, or dev servers without a clear owner and purpose;
- stop task-scoped processes when they are no longer needed.

# Workflow Constitution

Status: Active

This document defines the non-negotiable rules of the workflow.

If a more specific workflow doc or a chat instruction conflicts with this document, this constitution wins unless the user explicitly overrides it.

## 1. Documentation-first

No substantial work should begin from chat alone.

Before delivery starts, there must be:

- product context;
- current Initiative, Track, Lane, or Task;
- explicit owner;
- acceptance criteria;
- for non-trivial delegated execution, a canonical task document.

Use `workflow/policies/DEFINITION_OF_READY_AND_DONE.md` as the default gate for
whether work can start or close.

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

## 3. Product-first delivery

Substantial product work should normally start from product truth.

The default sequence is:

1. Product Definition Track
2. Architecture Track
3. Delivery Planning Track
4. Foundation Track
5. Parallel TL Delivery Tracks or Lanes
6. Release Hardening Track

Architecture may come first only when the product intent is already sufficiently documented or the work is purely technical.

You may not move to the next Track or Lane until the current one is:

- defined;
- executed;
- checked;
- given a formal outcome.

This also applies to bug and regression work.

If a normal fix loop does not work, the team must open an explicit investigation Task instead of continuing blind patching.

Use `workflow/guides/STOP_AND_REPLAN_RUNBOOK.md` when the current delivery path
is no longer rational.

## 4. Canonical work hierarchy

New work uses:

1. Initiative
2. Track
3. Lane
4. Task

Checkpoint and Review are not hierarchy levels by default. They are statuses or sections inside the owning Task or Lane unless the evidence is large enough to require a linked standalone artifact.

## 5. One active canonical path

Every active track needs one canonical execution path.

That means:

- one current doc set;
- one current Track, Lane, and Task where applicable;
- one current sequence of work;
- explicit marking for historical or superseded material.

Parallel bounded slices are allowed only when they still belong to one canonical path and their execution truth is kept explicit.

## 6. Explicit ownership

Every artifact must have an owner.

- CTO / Program Architect owns workflow rules, escalation rules, and super-high-level architecture constraints.
- PM owns product truth.
- Tech Lead owns the technical path, lane governance, task packets, branch/package readiness, and factual review for assigned lanes.
- Developer owns task execution and checkpoint evidence.
- QA owns validation evidence when assigned.
- Reviewer owns the factual review verdict.
- Security Auditor owns security findings and risk framing when assigned.

## 7. Review is factual

Acceptance cannot happen by impression alone.

Review must be grounded in:

- diff, PR, or commit;
- acceptance criteria;
- checks and CI when applicable;
- screenshots or runtime proof when the work is UI or runtime-sensitive.

## 8. Truth targets must be distinguished

Do not confuse:

- branch truth;
- review-package truth;
- merged truth;
- deployed truth;
- runtime or device truth.

If a task refers to deploy or production, the workflow must validate that exact target instead of silently substituting feature-branch or preview evidence.

## 9. Allowed review outcomes

After review, only these outcomes are allowed:

- `Accept`
- `Accept with follow-up`
- `Reject and retry`
- `Stop and replan`

## 10. No silent scope expansion

Do not silently expand scope.

If work requires changes to:

- data model;
- auth model;
- public contracts;
- security boundaries;
- deployment or runtime behavior;

the execution owner must stop and return the task for explicit review.

## 11. No blind fix loops

If one or two ordinary fix attempts do not close a bug, or if the suspected cause is weak, stop blind patching.

Open an investigation Task and require:

- exact repro;
- expected vs actual behavior;
- root-cause hypothesis;
- proof or falsification;
- explicit verdict on whether a real fix path exists.

## 12. Historical material must be marked

Old plans and old paths must not remain as if they are current.

Mark them explicitly as:

- `historical`
- `superseded`
- `reference only`

## 13. Limited context is assumed

The process must survive context compression and new participants.

That means the workflow must use:

- separate agent contexts for separate responsibilities;
- explicit current Initiative, Track, Lane, and Task where applicable;
- explicit related docs;
- standard handoff artifacts;
- documented statuses.

## 14. Delegation does not replace governance

Tech Leads may delegate execution.

But delegation does not replace:

- canonical docs;
- task documents;
- start acknowledgement;
- checkpoints;
- review;
- acceptance.

For non-trivial implementation work, the normal operating split is:

- Tech Lead owns path, orchestration, task handoff, branch/package readiness, and review;
- Developer owns code-writing execution.

Use `workflow/policies/SUBAGENT_DELEGATION_POLICY.md` for delegated execution
rules.

## 15. Git freshness is required

Assume another human or agent may have updated the remote repository.

Before non-trivial work, resume, handoff, or merge, run the repo freshness gate defined in `workflow/core/GIT_OPERATIONS.md` or the target repo's adapted equivalent.

Accepted operating-model, workflow, product, and architecture truth should be merged to remote main promptly after acceptance.

## 16. Execution processes require ownership

Local execution processes are part of the execution surface.

That means:

- do not stack identical test runs without understanding the previous one;
- do not keep long-lived watchers, browser sessions, or dev servers without a clear owner and purpose;
- stop task-scoped processes when they are no longer needed.

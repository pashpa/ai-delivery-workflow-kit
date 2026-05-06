# Document Hygiene Policy

Status: Active

This policy prevents workflow and product docs from becoming a pile of stale
plans.

## 1. Status is required

Every workflow, plan, Task, Lane, or Track doc should have a status.

Recommended statuses:

- `draft`
- `active`
- `ready for TL intake`
- `in progress`
- `blocked`
- `review-package-ready`
- `merged`
- `deployed`
- `closed`
- `superseded`
- `historical`
- `reference only`

Use repo-specific status names if needed, but do not leave current and old docs
indistinguishable.

## 2. Placement rule

Docs should live where their owner and scope make sense.

Recommended layout:

- `workflow/core/`: non-negotiable operating rules;
- `workflow/policies/`: cross-role gates and policies;
- `workflow/guides/`: practical runbooks and how-to guides;
- `workflow/roles/`: role responsibilities;
- `workflow/templates/`: reusable operating templates;
- `docs/product/` or repo-specific equivalent: product truth;
- `docs/architecture/` or repo-specific equivalent: architecture truth;
- `docs/tasks/`, `docs/tracks/`, or repo-specific equivalent: execution docs;
- `artifacts/`: evidence too large or noisy for canonical docs.

Do not bury canonical decisions in arbitrary notes.

## 3. Naming rule

Names should describe scope and purpose.

Good names:

- `TRACK_payments-foundation.md`
- `LANE_checkout-ui.md`
- `DEV_TASK_payment-webhook-signature.md`
- `POST_MERGE_VALIDATION_payment-webhook_PR-42.md`

Avoid:

- `notes.md`
- `final-final.md`
- `new-plan.md`
- `agent-output.md`

## 4. Superseded material

Old plans should not look current.

When a path changes:

- mark the old doc `superseded` or `historical`;
- link to the new canonical doc;
- keep useful evidence if needed;
- do not delete history just to make the tree look clean.

## 5. Scaling rule

Do not create a new doc for every thought.

Create a standalone doc only when it is:

- canonical truth;
- a reusable policy or template;
- a Task, Lane, Track, or Initiative artifact;
- evidence that is too large for the owning doc;
- a decision record worth preserving.

Otherwise, update the owning doc.

## 6. Archive rule

Archive only after current truth is clear.

Archive folders are for material that must remain available but should not guide
active execution.

An archived doc should either:

- clearly say why it is historical;
- link to the current replacement;
- be obviously unrelated to active work.

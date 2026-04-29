# DEV TASK Template

Date: YYYY-MM-DD
Status: draft
Owner: Tech Lead
Executor: Developer
Initiative: `<name>`
Track: `<name>`
Lane: `<name>`
Task: `<name>`
Task mode:

- `implementation`
- `investigation`

## 1. Basis

- Product docs:
- Architecture or decision doc:
- Development plan:
- Additional checklist or runbook:

## 2. Context

Short context:

- what already exists;
- why this Task is current;
- why this path is canonical.

Packaging mode:

- `per-task PR`
- `batched package`
- other:

Expected delivery trace:

- `local-accepted only`
- `review-package-ready`
- `must be merged separately`
- `must be included in a later package`

## 3. Freshness or sync gate

If the work may become stale because of parallel changes, define:

- what counts as stale;
- what evidence is required before resume;
- whether sync confirmation is mandatory.

If not needed, write `N/A`.

## 4. What to do

1. ...
2. ...
3. ...

### Planned items for this iteration

- [ ] item 1
- [ ] item 2
- [ ] item 3

## 5. Start Ack required

Before coding starts, the Developer must confirm:

- Task understood;
- execution surface understood;
- base understood;
- scope and non-goals understood;
- acceptance understood;
- checkpoint package understood;
- blockers on start.

## 6. What not to touch

- ...

## 7. Acceptance criteria

1. ...
2. ...
3. ...

For investigation Tasks, make the acceptance investigation-shaped:

- issue reproduced or disproved honestly;
- root cause proven or narrowed honestly;
- fix path identified or `Stop and replan`.

## 8. Evidence ownership

State explicitly:

- which artifacts the Developer brings directly;
- which evidence depends on CI, deploy, device, or external systems;
- whether blockers are acceptable;
- who owns unblock if the evidence path is external.

## 9. What to bring at checkpoint

- branch, PR, or commit
- delivery status
- planned-item status
- summary
- touched files
- checks run
- CI status
- screenshots or runtime proof if needed
- blockers or open tails

Checkpoint format:

- `workflow/templates/DEVELOPER_CHECKPOINT_TEMPLATE.md`

## 10. Stop factors

Stop and return the task if:

- scope must expand;
- auth, schema, contracts, or runtime model must change;
- acceptance cannot be closed without a new path;
- the Task needs a new decision;
- freshness gate blocks safe continuation;
- required evidence is impossible through the defined path.

## 11. Definition of done

The Task is done when:

- acceptance is closed;
- checkpoint evidence is attached;
- the result is reviewable by code, checks, and runtime proof when applicable.

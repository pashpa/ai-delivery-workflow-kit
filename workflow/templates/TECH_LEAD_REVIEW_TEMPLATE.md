# Tech Lead Review Template

Date: YYYY-MM-DD
Status: draft
Owner: Tech Lead

## 1. Reviewed artifacts

- task doc:
- PR / branch / commit:
- packaging mode:
- delivery status under review:
- related docs:
- CI:
- screenshots or runtime proof:
- QA surface used:
- post-merge validation, if required:
- security audit, if required:

## 1.1 Iteration plan status

- [ ] item 1 - `done / not done / blocked`
- [ ] item 2 - `done / not done / blocked`

## 2. Findings

List findings by priority.

- `P1` ...
- `P2` ...

If there are no blocking findings, state that explicitly.

## 3. Verdict

Choose exactly one:

- `Accept`
- `Accept with follow-up`
- `Reject and retry`
- `Stop and replan`

Use `Stop and replan` when the current path has failed or assumptions are no
longer valid. Do not continue blind fix loops.

## 4. Reasoning

- why this verdict is correct

## 5. Follow-up

- what still needs to happen, if applicable

## 6. Packaging / closure note

- can this be treated as `review-package-ready`:
- can this count toward track closure right now:
- if not, what exact package or merge trace is still missing:
- if deploy/runtime proof is required, what exact proof exists:
- if branch-only proof exists, is that enough for this Task:

## 7. Next step

- next Task, Lane, Track, or correction path

## 8. Docs to update

- current Task, Lane, or Track
- status
- historical or superseded marks
- plans or checklists

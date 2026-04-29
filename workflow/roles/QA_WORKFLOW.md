# QA Workflow

Status: Active

This document defines the QA agent role.

## 1. QA role

QA owns validation evidence for an assigned Task, Lane, or release package.

QA may be performed by:

- a human tester;
- a delegated QA subagent;
- a browser/device automation agent;
- a CI or test-runner operator.

## 2. QA starts from a validation request

QA should not start from vague chat instructions.

The request should include:

- Task, Lane, or package under test;
- acceptance criteria;
- validation target;
- environment;
- required commands or flows;
- evidence format;
- known risks or focus areas.

## 3. QA does not own product or architecture decisions

QA may discover issues, but QA does not silently change:

- product scope;
- technical path;
- contracts;
- release criteria.

If validation exposes one of those decisions, QA returns a blocker and the responsible PM, TL, or CTO decides.

## 4. QA evidence

QA returns:

- what was tested;
- what was not tested;
- environment and build/commit;
- commands or flows used;
- pass/fail result;
- screenshots, logs, traces, or recordings when relevant;
- defects with repro steps;
- residual risk;
- retest recommendation.

## 5. QA outcomes

Allowed QA outcomes:

- `Pass`
- `Pass with risk`
- `Fail`
- `Blocked`

QA outcome is evidence for TL or release review. It is not automatically a merge or release decision.

## 6. Process discipline

QA must not leave long-running validation processes, browsers, emulators, or servers alive unless the handoff explicitly assigns ownership.
